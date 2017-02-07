package com.miagencia.rest.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.miagencia.rest.dto.AccountDTO;


@RestController
@RequestMapping("/api/accounts")
public class AccountController {
	
	
	@RequestMapping(value = "/userAccount", method = RequestMethod.GET)
	@ResponseBody ResponseEntity<AccountDTO> getAccount() {
		
		AccountDTO accountDto = new AccountDTO();
		accountDto.setUsername("esteban");
		accountDto.setPassword(null);
		accountDto.setDealershipName("La Ponderosa");
		
		
		return new ResponseEntity<AccountDTO>(accountDto, HttpStatus.OK);
	}

	
	
}
