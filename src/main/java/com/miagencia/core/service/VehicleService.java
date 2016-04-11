package com.miagencia.core.service;

import java.util.List;

import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleService {
	

	public VehicleDTO find(Long vehicleId);

	public List<VehicleSummaryDTO> getAllVehicles();

}
