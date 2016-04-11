package com.miagencia.core.service;

import com.miagencia.rest.dto.operations.BuyVehicleOperationDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleOperationDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleOperationDTO;
import com.miagencia.rest.dto.operations.SellVehicleOperationDTO;

public interface VehicleOperationService {
	

	public void buyVehicle(BuyVehicleOperationDTO operationDto);
	
	public void consignVehicle(ConsignVehicleOperationDTO operationDto);
	
	public void reserveVehicle(ReserveVehicleOperationDTO operationDto);
	
	public void sellVehicle(SellVehicleOperationDTO operationDto);
	

}
