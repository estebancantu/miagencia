	package com.miagencia.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.miagencia.core.service.ClientService;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.util.DTOValidator;


// TODO probar update
// TODO verificar si esta bueno el hecho que recupere un cliente por nombre y apellido para
// validar si existe previamente al momento de crear, no contempla que existan 2 juan perez

// TODO remplazar system out por loggin con log for j u otro asi

// security - authenticate on every request - stateless
// security - use api keys instead of  username/passwords
// http 401 - unauthenticated- el usuario no esta logueado
// http 403 - forbidden - el usuario esta logueado, pero no tiene permiso

// pagination? para levantar todos los autos, nos tiene que devolver x
// cantidad de autos, el prev y el next


// TODO versioning? Para poder cambiar la api mas adelante sin romper clientes
// TODO MIRAR TUTORIAL EN https://spring.io/guides/tutorials/bookmarks/

// TODO Falta manejar errores (usario no encontrado etc).

// https://api.twitter.com/1.1/lists/statuses.json

//Treat it like a sub-resource with RESTful principles. For example, GitHub's API lets you star a gist with  PUT /gists/:id/star and unstar with DELETE /gists/:id/star.


@RestController
@RequestMapping("/api/clients")
public class ClientController {
	
	
	@Autowired
	ClientService clientService;

	
	
	/**
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<List<ClientSummaryDTO>> getClients() {
		
		List<ClientSummaryDTO> clients = clientService.getAllClients();
		
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.set("TestHeaderKey", "TestHeaderData");
	    
		if(clients == null || clients.isEmpty()) {
			return new ResponseEntity<List<ClientSummaryDTO>>(responseHeaders, HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<List<ClientSummaryDTO>>(clients, responseHeaders, HttpStatus.OK);	
		
	}


	
	/**
	 * 
	 * @param clientId
	 * @return
	 */
	@RequestMapping(value = "/{clientId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<ClientDTO> getClientById(@PathVariable long clientId) {
		
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.set("TestHeaderKey", "TestHeaderData");
		
	    ClientDTO clientDto = null;
	    System.out.println("Fetching Client with id " + clientId);   
		clientDto = clientService.find(clientId);
		
		
		if(clientDto == null){
			System.out.println("Client with id " + clientId + " not found");
			return new ResponseEntity<ClientDTO>(responseHeaders, HttpStatus.NOT_FOUND);
		}

		return new ResponseEntity<ClientDTO>(clientDto, responseHeaders, HttpStatus.OK);	
	}
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ResponseEntity<Void> addClient(@RequestBody ClientDTO client,  UriComponentsBuilder ucBuilder) {
		
		
		// TODO revisar validacion, tal vez se pueda resolver con excepciones etc
		if (client == null || !DTOValidator.validFields(client)){
			System.out.println("Client fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
			// TODO MEJORAR PARA QUE DIGA QUE ANDUVO MAL, creo que se puede hacer en un header
		}
		
		System.out.println("Creating Client " + client.getFirstName() + " " + client.getLastName());
		
		if (clientService.isClientExist(client.getFirstName(), client.getLastName())) {
            System.out.println("A Client with name " + client.getFirstName() + " " + client.getLastName() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }
		
		
		Long clientId = clientService.add(client);

		
		HttpHeaders responseHeaders = new HttpHeaders();
		
		responseHeaders.set("entity_id", clientId.toString());
	    responseHeaders.setLocation(ucBuilder.path("/api/clients/{id}").buildAndExpand(clientId).toUri());
	    
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); // HTTP.201
	}
	
	
	
	/**
	 * 
	 * @param client
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.PUT)
	public ResponseEntity<Void> updateClient(@RequestBody ClientDTO client) {
		
		System.out.println("Updating Client " + client.getFirstName() + " " + client.getLastName());

		clientService.edit(client);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.OK);
				
	}


	
	/**
	 * 
	 * @param clientId
	 * @return
	 */
	@RequestMapping(value = "/{clientId}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteClient(@PathVariable long clientId) {
		  
		System.out.println("Fetching & Deleting User with id " + clientId);
		  
        ClientDTO client = clientService.find(clientId);
        if (client == null) {
            System.out.println("Unable to delete. Client with id " + clientId + " not found");
            return new ResponseEntity<Void>(HttpStatus.NOT_FOUND);
        }
        
        clientService.delete(clientId);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
	

	
}
