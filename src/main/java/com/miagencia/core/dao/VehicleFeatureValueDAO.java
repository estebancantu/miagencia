package com.miagencia.core.dao;

import java.util.List;

import com.miagencia.core.model.VehicleFeatureValue;

public interface VehicleFeatureValueDAO {

	
	public List<VehicleFeatureValue> findValueByName(String valueName);
}
