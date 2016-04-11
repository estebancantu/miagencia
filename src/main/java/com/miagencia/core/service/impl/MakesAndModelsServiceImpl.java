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
			vehicleTypeDto.setMakes(new ArrayList<MakeDTO>());
			
		
			Map<Long, String> makes = makesAndModelsDao.getAllMakesForVehicleType(vehicleTypeDto.getId());
			
			for(Map.Entry<Long, String> make : makes.entrySet()) {
				
			
				MakeDTO makeDto = new MakeDTO();
				makeDto.setId(make.getKey());
				makeDto.setName(make.getValue());
				makeDto.setModels(new ArrayList<ModelDTO>());
				
			
				Map<Long, String> models = makesAndModelsDao.getAllModelsForMake(make.getKey());
				
				for(Map.Entry<Long, String> model : models.entrySet()) {
					
					ModelDTO modelDto = new ModelDTO();
					modelDto.setId(model.getKey());
					modelDto.setName(model.getValue());
					
					makeDto.getModels().add(modelDto);
				}
				
				vehicleTypeDto.getMakes().add(makeDto);
			}

			
			vehicleTypesDto.add(vehicleTypeDto);
			
		}	

		return vehicleTypesDto;
	}

	
	
}
