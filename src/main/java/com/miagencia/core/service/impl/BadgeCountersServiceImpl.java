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
	public BadgeCountersDTO getBadgeCounters(Long accountId) {
		
		
		int clientsCount = clientDao.countTotalClients(accountId);
		int vehiclesCount = vehicleDao.countTotalVehicles(accountId);
		
		BadgeCountersDTO badgeCountersDto = new BadgeCountersDTO();
		badgeCountersDto.setClientsCount(clientsCount);
		badgeCountersDto.setVehiclesCount(vehiclesCount);
		
		return badgeCountersDto;
	}

}
