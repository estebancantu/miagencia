package com.miagencia.core.dao;

import com.miagencia.core.entity.Vehicle;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleDAO {
	
	public Vehicle createVehicle(Vehicle data); // como se asocia a la agencia? en el servicio?
	
	public Vehicle findVehicle(Long vehicleId);

	public Vehicle updateVehicle(Long vehicleId, Vehicle data);
	
	public Vehicle deleteVehicle(Long vehicleId);

}
