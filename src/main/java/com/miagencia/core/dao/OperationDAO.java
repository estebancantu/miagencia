package com.miagencia.core.dao;

import java.util.List;
import com.miagencia.core.model.operations.VehicleOperation;


public interface OperationDAO {
	
	public void add(VehicleOperation operation);
	
	public VehicleOperation find(Long operationId);
	
	public List<VehicleOperation> findOperationsByVehicleId(Long vehicleId);

}
