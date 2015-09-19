package com.miagencia.core.service;

import com.miagencia.core.entity.Vehicle;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleService {
	
	
	public Vehicle createVehicle(Vehicle data); // como se asocia a la agencia? en el servicio?
	
	public Vehicle findVehicle(Long vehicleId);

	public Vehicle updateVehicle(Long vehicleId, Vehicle data);
	
	public Vehicle deleteVehicle(Long vehicleId);
}
