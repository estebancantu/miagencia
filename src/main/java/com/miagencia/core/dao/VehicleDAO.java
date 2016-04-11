package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.Vehicle;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleDAO {
	


	
	public Vehicle find(Long vehicleId);
	
	public List<Vehicle> getAllVehicles();


}
