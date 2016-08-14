package com.miagencia.core.dao;

import java.util.List;
import java.util.Map;

import com.miagencia.rest.dto.MakeDTO;

public interface MakesAndModelsDAO {
	
	@Deprecated
	public Map<Long, String> getAllMakesForVehicleType(Long vehicleType);
	
	public String getMake(Long makeId);
	
	public String getModel(Long modelId);
	
	public List<MakeDTO> getAllMakesAndModels(Long vehicleType);

}
