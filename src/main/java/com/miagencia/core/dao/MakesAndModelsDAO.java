package com.miagencia.core.dao;

import java.util.List;
import java.util.Map;

import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.VehicleType;


public interface MakesAndModelsDAO {
	
	@Deprecated
	public Map<Long, String> getAllMakesForVehicleType(VehicleType vehicleType);
	
	public List<Make> getAllMakesAndModels(VehicleType vehicleType);
	
	public Make getMake(Long makeId);
	
	public Model getModel(Long modelId);


}
