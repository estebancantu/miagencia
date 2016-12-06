package com.miagencia.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.service.BadgeCountersService;
import com.miagencia.rest.dto.BadgeCountersDTO;


@Service
public class BadgeCountersServiceImpl implements BadgeCountersService {
	
	
	@Autowired
	private ClientDAO clientDao;
	
	
	@Autowired
	private VehicleDAO vehicleDao;

	@Override
	@Transactional
	public BadgeCountersDTO getBadgeCounters() {
		
		
		int clientsCount = clientDao.countTotalClients();
		int vehiclesCount = vehicleDao.countTotalVehicles();
		
		BadgeCountersDTO badgeCountersDto = new BadgeCountersDTO();
		badgeCountersDto.setClientsCount(clientsCount);
		badgeCountersDto.setVehiclesCount(vehiclesCount);
		
		return badgeCountersDto;
	}

}
