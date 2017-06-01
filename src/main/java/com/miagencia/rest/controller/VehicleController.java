package com.miagencia.rest.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.miagencia.core.model.Account;
import com.miagencia.core.service.AccountService;
import com.miagencia.core.service.VehicleService;
import com.miagencia.rest.dto.AccountDTO;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.VehicleDetailsDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;
import com.miagencia.rest.dto.util.CustomResponseHeaders;


@RestController
@RequestMapping("/api/vehicles")
public class VehicleController {
	
	// para el get, el objeto retornado puede no tener por ejemlo el contacto u objetos
	// y colecciones relacionadas, sino que puede tener solo el id.
	// si el cliente despues lo necesita hace otra llamada despues
	
	//Also, you do not always need to send ObjectIds for the nested elements, the API itself will reveal the relationships (that is kind of the purpose of rest), and thus, from your example, the entry would like this:

	//	entry{
	//	  Id: "42",
	//	  prop1: '_',
	//	  prop2: '_',
	//	}
	//	If someone wanted to find all the orders for an entry, they will issue something like this:

	//	https://www.example.com/entries/42/orders


	
	@Autowired
	VehicleService vehicleService;
	
	@Autowired
	AccountService accountService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)

	public @ResponseBody ResponseEntity<List<VehicleSummaryDTO>> getVehicles(HttpServletRequest request, Principal principal) {

		
		// Get logged user account
		AccountDTO account = accountService.find(principal.getName());
		
		// Fetch all vehicles for this user
		List<VehicleSummaryDTO> vehiclesDto = vehicleService.getAllVehicles(account.getId());

		if(vehiclesDto == null || vehiclesDto.isEmpty()){
			return new ResponseEntity<List<VehicleSummaryDTO>>(new CustomResponseHeaders(request), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<VehicleSummaryDTO>>(vehiclesDto, new CustomResponseHeaders(request), HttpStatus.OK);
	}
	
	
	
	
	
	@RequestMapping(value = "/{vehicleId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<VehicleDetailsDTO> getVehicleById(@PathVariable long vehicleId, HttpServletRequest request) {
		
	    VehicleDetailsDTO vehicleDetailsDto = null;
	    System.out.println("Fetching Vehicle with id " + vehicleId);   
		vehicleDetailsDto = vehicleService.find(vehicleId);

		if(vehicleDetailsDto == null){
			System.out.println("Vehicle with id " + vehicleId + " not found");
			return new ResponseEntity<VehicleDetailsDTO>(new CustomResponseHeaders(request), HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<VehicleDetailsDTO>(vehicleDetailsDto, new CustomResponseHeaders(request), HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value = "/{vehicleId}", method = RequestMethod.DELETE)
	public @ResponseBody ResponseEntity<Void> deleteVehicle(@PathVariable long vehicleId) {
		  
		System.out.println("Fetching & Deleting Vehicle with id " + vehicleId);

      
      vehicleService.delete(vehicleId);
      return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
	
	

}
