package com.miagencia.core.dao;

import java.util.Map;

import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;

public interface MakesAndModelsDAO {
	
	public Map<Long, String> getAllMakesForVehicleType(Long vehicleType);
	
	public Map<Long, String> getAllModelsForMake(Long make);
	
	public Make getMake(Long makeId);
	
	public Model getModel(Long modelId);

}
