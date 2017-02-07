package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.Vehicle;

/**
 * 19/9/2015
 * @author estebancantu
 */
public interface VehicleDAO {
	

	/* No hay un método para dar de alta un vehículo directamente. Los vehículos
	 * se crean por cascade cuando se crea una nueva operación.
	 */
	
	public Vehicle find(Long vehicleId);
	
	public List<Vehicle> getAllVehicles(Long accountId);
	
	public void deleteVehicle(Long vehicleId);
	
	public int countTotalVehicles(Long accountId);


}
