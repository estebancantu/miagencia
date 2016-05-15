package com.miagencia.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.miagencia.core.service.VehicleOperationService;
import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;
import com.miagencia.rest.dto.util.DTOValidator;




@RestController
@RequestMapping("/api/operations")
public class OperationController {
	
	
	@Autowired
	VehicleOperationService vehicleOperationService;
	
	
	
	
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/buyVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> buyVehicle(@RequestBody BuyVehicleRequestDTO buyRequestDto,  UriComponentsBuilder ucBuilder) {
		
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (buyRequestDto == null || !DTOValidator.validateBuyRequestDTO(buyRequestDto) ){
			
			System.out.println("Operation fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Buy Operation ");

		
		vehicleOperationService.buyVehicle(buyRequestDto);

		
		HttpHeaders responseHeaders = new HttpHeaders();
	  //  responseHeaders.setLocation(ucBuilder.path("/api/operations/{id}").buildAndExpand(client.getId()).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
	}
	
	
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/consignVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> consignVehicle(@RequestBody ConsignVehicleRequestDTO consignRequestDto,  UriComponentsBuilder ucBuilder) {
		
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (consignRequestDto == null ){
			System.out.println("Operation fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Consignment Operation ");

		
		vehicleOperationService.consignVehicle(consignRequestDto);

		
		HttpHeaders responseHeaders = new HttpHeaders();
	  //  responseHeaders.setLocation(ucBuilder.path("/api/operations/{id}").buildAndExpand(client.getId()).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
	}
	
	
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/reserveVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> reserveVehicle(@RequestBody ReserveVehicleRequestDTO reserveRequestDto,  UriComponentsBuilder ucBuilder) {
		
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (reserveRequestDto == null ){
			
			System.out.println("Operation fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Reservation Operation ");

		
		vehicleOperationService.reserveVehicle(reserveRequestDto);

		
		HttpHeaders responseHeaders = new HttpHeaders();
	  //  responseHeaders.setLocation(ucBuilder.path("/api/operations/{id}").buildAndExpand(client.getId()).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
	}
	
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/sellVehicle", method = RequestMethod.POST)
	public ResponseEntity<Void> sellVehicle(@RequestBody SellVehicleRequestDTO sellRequestDto,  UriComponentsBuilder ucBuilder) {
		
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (sellRequestDto == null ){
			
			System.out.println("Operation fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Sale Operation ");

		
		vehicleOperationService.sellVehicle(sellRequestDto);

		
		HttpHeaders responseHeaders = new HttpHeaders();
	  //  responseHeaders.setLocation(ucBuilder.path("/api/operations/{id}").buildAndExpand(client.getId()).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
	}
	

	

}
