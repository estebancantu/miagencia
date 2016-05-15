package com.miagencia.core.service;


import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;


public interface VehicleOperationService {
	

	public void buyVehicle(BuyVehicleRequestDTO operationDto);
	
	public void consignVehicle(ConsignVehicleRequestDTO operationDto);
	
	public void reserveVehicle(ReserveVehicleRequestDTO operationDto);
	
	public void sellVehicle(SellVehicleRequestDTO operationDto);
	

}
