package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.model.VehicleType;
import com.miagencia.core.service.MakesAndModelsService;
import com.miagencia.rest.dto.MakeDTO;
import com.miagencia.rest.dto.ModelDTO;
import com.miagencia.rest.dto.VehicleTypeDTO;

@Service
public class MakesAndModelsServiceImpl implements MakesAndModelsService {

	
	@Autowired
	private MakesAndModelsDAO makesAndModelsDao;
	
	@Override
	@Transactional
	public List<VehicleTypeDTO> getAllMakesAndModels() {
		
		
		List<VehicleTypeDTO> vehicleTypesDto = new ArrayList<VehicleTypeDTO>();
		
		for (VehicleType type : VehicleType.values()) {
			
			VehicleTypeDTO vehicleTypeDto = new VehicleTypeDTO();
			vehicleTypeDto.setId(Long.valueOf(type.ordinal()));
			vehicleTypeDto.setName(type.getText());
			
			List<MakeDTO> makesAndModels = makesAndModelsDao.getAllMakesAndModels(vehicleTypeDto.getId());			
			vehicleTypeDto.setMakes(makesAndModels);	
			
			vehicleTypesDto.add(vehicleTypeDto);
			
		}	

		return vehicleTypesDto;
	}

	
	
}
