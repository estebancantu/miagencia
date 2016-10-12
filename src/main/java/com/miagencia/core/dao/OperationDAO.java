package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.core.model.operations.VehicleOperation;


public interface OperationDAO {
	
	public void add(VehicleOperation operation);
	
	public VehicleOperation find(Long operationId);
	
	public List<VehicleOperation> findOperationsByVehicleId(Long vehicleId);
	public BuyOperation findBuyOperationsByVehicleId(Long vehicleId);
	
	public SaleOperation findSellOperationsByVehicleId(Long vehicleId);
	
	public void delete(Long operationId);
}
