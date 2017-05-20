package com.miagencia.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.miagencia.core.service.BadgeCountersService;
import com.miagencia.core.service.ClientService;
import com.miagencia.core.service.VehicleService;
import com.miagencia.rest.dto.BadgeCountersDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.util.CustomResponseHeaders;

import javax.servlet.http.HttpServletRequest;


@RestController
@RequestMapping("/api/badgeCounters")
public class BadgeCountersController {
	
	@Autowired
	BadgeCountersService badgeCountersService;

	
	
	
	/**
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<BadgeCountersDTO> getBadgeCounters(HttpServletRequest request) {
		

		BadgeCountersDTO badgeCountersDto = badgeCountersService.getBadgeCounters();

		return new ResponseEntity<BadgeCountersDTO>(badgeCountersDto, new CustomResponseHeaders(request), HttpStatus.OK);
		
	}

}
