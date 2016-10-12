package com.miagencia.core.service;

import java.util.List;

import com.miagencia.rest.dto.VehicleDetailsDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleService {
	

	public VehicleDetailsDTO find(Long vehicleId);

	public List<VehicleSummaryDTO> getAllVehicles();
	
	public void delete(Long vehicleId);
	
	//public List<VehicleSummaryDTO> getAllVehiclesOnStock();

}
