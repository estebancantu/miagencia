package com.miagencia.core.dao;

import java.util.Map;

public interface MakesAndModelsDAO {
	
	public Map<Long, String> getAllMakesForVehicleType(Long vehicleType);
	
	public Map<Long, String> getAllModelsForMake(Long make);
	
	public String getMake(Long makeId);
	
	public String getModel(Long modelId);

}
