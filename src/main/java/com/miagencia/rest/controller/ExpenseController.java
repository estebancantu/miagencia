package com.miagencia.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.miagencia.core.service.ExpenseService;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.ExpenseDTO;
import com.miagencia.rest.dto.util.DTOValidator;

@RestController
@RequestMapping("/api/vehicles/{vehicleId}/expenses")
public class ExpenseController {
	
	
	@Autowired
	ExpenseService expenseService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<List<ExpenseDTO>> getExpenses(@PathVariable long vehicleId) {
		
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.set("TestHeaderKey", "TestHeaderData");
		
		List<ExpenseDTO> expenses = expenseService.getAllExpenses(vehicleId);
		
		if(expenses == null || expenses.isEmpty()) {
			return new ResponseEntity<List<ExpenseDTO>>(responseHeaders, HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<ExpenseDTO>>(expenses, responseHeaders, HttpStatus.OK);
		
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ResponseEntity<Void> addExpense(@PathVariable long vehicleId,
			@RequestBody ExpenseDTO expenseDto, UriComponentsBuilder ucBuilder) {

		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (expenseDto == null || !DTOValidator.validateFields(expenseDto)){
			System.out.println("Expense fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Expense " + expenseDto.getName());
		
		Long expenseId = expenseService.add(expenseDto, vehicleId);

		
		HttpHeaders responseHeaders = new HttpHeaders();
		
		responseHeaders.set("entity_id", expenseId.toString());
	    responseHeaders.setLocation(ucBuilder.path("/api/expenses/{id}").buildAndExpand(expenseId).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
		
	}
	
	
	
	
	/**
	 * 
	 * @param clientId
	 * @return
	 */
	@RequestMapping(value = "/{expenseId}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteClient(@PathVariable long vehicleId, @PathVariable long expenseId) {
		  
		System.out.println("Fetching & Deleting Expense with id " + expenseId);

        
        expenseService.delete(expenseId);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
	
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.PUT)
	public ResponseEntity<Void> updateExpense(@PathVariable long vehicleId,
			@RequestBody ExpenseDTO expenseDto, UriComponentsBuilder ucBuilder) {
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (expenseDto == null || !DTOValidator.validateFields(expenseDto)){
			System.out.println("Expense fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Updating Expense " + expenseDto.getName());
		
		expenseService.edit(expenseDto);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.OK);
				
	}
	
	
	
		
}
