package com.miagencia.core.service;


import com.miagencia.core.model.Account;
import com.miagencia.rest.dto.AccountDTO;
import com.miagencia.rest.dto.operations.NewVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;


public interface VehicleOperationService {
	
	
	public void newVehicle(NewVehicleRequestDTO operationDto, AccountDTO accountDto);
	
	public void reserveVehicle(ReserveVehicleRequestDTO operationDto);
	
	public void sellVehicle(SellVehicleRequestDTO operationDto);
	

}
