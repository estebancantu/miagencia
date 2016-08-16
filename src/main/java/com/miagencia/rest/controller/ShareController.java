package com.miagencia.rest.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miagencia.core.service.ShareService;
import com.miagencia.rest.dto.ShareRequestDTO;
import com.miagencia.rest.dto.util.DTOValidator;

@Controller
public class ShareController {

	@Autowired
	private ShareService shareService;
	
	@RequestMapping(value = "/shareFacebook", method = RequestMethod.POST)
	public ResponseEntity<Void> shareFacebook(@RequestBody ShareRequestDTO shareRequestDTO) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Share Facebook fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
		}
		
		shareService.shareFacebook(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); 
	}
	
	@RequestMapping(value = "/postMercadoLibre", method = RequestMethod.POST)
	public ResponseEntity<Void> postMercadoLibre(@RequestBody ShareRequestDTO shareRequestDTO) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Post MercadoLibre fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
		}
		
		shareService.postMercadoLibre(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); 
	}
	
	@RequestMapping(value = "/postOLX", method = RequestMethod.POST)
	public ResponseEntity<Void> postOLX(@RequestBody ShareRequestDTO shareRequestDTO) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Post MercadoLibre fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
		}
		
		shareService.postOLX(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); 
	}
}
