package com.miagencia.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.miagencia.core.service.VehicleService;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;


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
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<List<VehicleSummaryDTO>> getVehicles() {
		
		List<VehicleSummaryDTO> vehiclesDto = vehicleService.getAllVehicles();
		
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.set("TestHeaderKey", "TestHeaderData");
		
		if(vehiclesDto == null || vehiclesDto.isEmpty()){
			return new ResponseEntity<List<VehicleSummaryDTO>>(responseHeaders, HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<VehicleSummaryDTO>>(vehiclesDto, responseHeaders, HttpStatus.OK);
	}
	
	
	
	
	
	@RequestMapping(value = "/{vehicleId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<VehicleDTO> getVehicleById(@PathVariable long vehicleId) {
		
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.set("TestHeaderKey", "TestHeaderData");
		
	    VehicleDTO vehicleDto = null;
	    System.out.println("Fetching Vehicle with id " + vehicleId);   
		vehicleDto = vehicleService.find(vehicleId);

		if(vehicleDto == null){
			System.out.println("Vehicle with id " + vehicleId + " not found");
			return new ResponseEntity<VehicleDTO>(responseHeaders, HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<VehicleDTO>(vehicleDto, responseHeaders, HttpStatus.OK);		
	}
	
	
	// TODO puede ser un nuevo vehiculo que le vendieron a la agencia o una consignacion
//	@RequestMapping(value = "/", method = RequestMethod.POST)
//	public ResponseEntity<Void> addVehicle(@RequestBody Vehicle vehicle,  UriComponentsBuilder ucBuilder) {
		
	//	Client seller = vehicle.get
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
	//	if (vehicle == null || !validFields(vehicle)){
//			System.out.println("Vehicle fields are incorrect"); 
//			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
	//	}
	
		
//	}
		
	// 
	

}
