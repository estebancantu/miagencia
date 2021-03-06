package com.miagencia.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.miagencia.core.service.MakesAndModelsService;
import com.miagencia.rest.dto.VehicleTypeDTO;
import com.miagencia.rest.dto.util.CustomResponseHeaders;

import javax.servlet.http.HttpServletRequest;


@RestController // NOTA teoricamente al usar REST CONTROLLER, no necesitamos poner @ResponseBody en cada metodo, probar.
@RequestMapping("/api/makesAndModels")
public class MakesAndModelsController {
	
	@Autowired
	private MakesAndModelsService makesAndModelsService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<List<VehicleTypeDTO>> getMakesAndModels(HttpServletRequest request) {
		
		List<VehicleTypeDTO> makesAndModels = makesAndModelsService.getAllMakesAndModels();
		
		return new ResponseEntity<List<VehicleTypeDTO>>(makesAndModels, new CustomResponseHeaders(request), HttpStatus.OK);
		
	}
	


}
