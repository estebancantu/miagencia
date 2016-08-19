package com.miagencia.rest.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
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

import com.miagencia.core.service.ShareService;
import com.miagencia.rest.dto.OlxFileDTO;
import com.miagencia.rest.dto.ShareRequestDTO;
import com.miagencia.rest.dto.util.DTOValidator;

@RestController
@RequestMapping("/api/share")
public class ShareController {

	@Autowired
	private ShareService shareService;
	@Autowired(required=false)
    ServletContext context;
    
	
	@RequestMapping(value = "/facebook", method = RequestMethod.POST)
	public ResponseEntity<Void> shareFacebook(@RequestBody ShareRequestDTO shareRequestDTO) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Share Facebook fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
		}
		
		shareService.shareFacebook(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.set("Access-Control-Allow-Origin", "http://www.miagenciavirtual.com.ar:8080");
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); 
	}
	
	@RequestMapping(value = "/mercadoLibre", method = RequestMethod.POST)
	public ResponseEntity<Void> postMercadoLibre(@RequestBody ShareRequestDTO shareRequestDTO) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Post MercadoLibre fields are incorrect"); 
			return new ResponseEntity<Void>( HttpStatus.BAD_REQUEST);
		}
		
		shareService.postMercadoLibre(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.set("Access-Control-Allow-Origin", "http://www.miagenciavirtual.com.ar:8080");
		return new ResponseEntity<Void>(responseHeaders, HttpStatus.CREATED); 
	}
	
	@RequestMapping(value = "/olx", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<OlxFileDTO> postOLX(@RequestBody ShareRequestDTO shareRequestDTO, HttpServletRequest request, HttpServletResponse response) throws IOException{
		if (shareRequestDTO == null || !DTOValidator.validate(shareRequestDTO)){
			System.out.println("Post OLX fields are incorrect"); 
			return new ResponseEntity<OlxFileDTO>( HttpStatus.BAD_REQUEST);
		}
		
		String fileUrl = shareService.postOLX(shareRequestDTO);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		return new ResponseEntity<OlxFileDTO>(new OlxFileDTO("http://"+request.getServerName()+":"+request.getServerPort()+"/miagencia/api/share/olx/"+fileUrl), HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/olx/{fileName}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getOLX(@PathVariable String fileName) throws IOException{
        //TODO Agregar autenticacion para los archivos
        InputStream is = shareService.getOLXFile(fileName);

        final HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_XML);

        return new ResponseEntity<byte[]>(IOUtils.toByteArray(is), headers, HttpStatus.OK);
    }
}
