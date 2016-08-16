package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.VehicleType;
import com.miagencia.core.service.MakesAndModelsService;
import com.miagencia.rest.dto.MakeDTO;
import com.miagencia.rest.dto.ModelDTO;
import com.miagencia.rest.dto.VehicleTypeDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;

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
			
			List<Make> makesAndModels = makesAndModelsDao.getAllMakesAndModels(type);		
			List<MakeDTO> makesAndModelsDtos = new ArrayList<MakeDTO>();
			
			for(Make make: makesAndModels) {
				
				MakeDTO makeDto = EntityDTOTranslator.buildMakeDTO(make);
				makesAndModelsDtos.add(makeDto);
				
			}

			vehicleTypeDto.setMakes(makesAndModelsDtos);	
			
			vehicleTypesDto.add(vehicleTypeDto);
			
		}	

		return vehicleTypesDto;
	}

	
	
}
