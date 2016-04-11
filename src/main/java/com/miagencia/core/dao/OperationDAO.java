package com.miagencia.core.dao;

import com.miagencia.core.model.operations.VehicleOperation;

public interface OperationDAO {
	
	public void add(VehicleOperation operation);
	
	public VehicleOperation find(Long operationId);

}
