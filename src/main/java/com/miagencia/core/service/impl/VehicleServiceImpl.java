package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.service.VehicleService;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;

@Service
public class VehicleServiceImpl implements VehicleService {


	@Autowired
	private VehicleDAO vehicleDao;
	
	@Autowired
	private MakesAndModelsDAO makesAndModelsDao;
	
	@Autowired
	SaleItemDAO saleItemDao;
	

	//TODO chequear nulls en las respuestas de los daos antes de hacer las conversiones

	
	
	@Override
	@Transactional
	public VehicleDTO find(Long vehicleId) {
		
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		VehicleDTO vehicleDto = EntityDTOTranslator.buildVehicleDTO(vehicle);

		return vehicleDto;
	}

	
	
	@Override
	@Transactional
	public List<VehicleSummaryDTO> getAllVehicles() {
		
		List<VehicleSummaryDTO> vehiclesDto = new ArrayList<VehicleSummaryDTO>();
		
		List<Vehicle> vehicles = vehicleDao.getAllVehicles();
		
		for (Iterator<Vehicle> iterator = vehicles.iterator(); iterator.hasNext();) {
			
			Vehicle vehicle = (Vehicle) iterator.next();	
			
			String make = makesAndModelsDao.getMake( new Long(vehicle.getMakeId()));
			String model = makesAndModelsDao.getModel( new Long(vehicle.getModelId()));
			SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
			
			VehicleSummaryDTO vehicleDto = EntityDTOTranslator.buildVehicleSummaryDTO(vehicle, saleItem, make, model);
			
			vehiclesDto.add(vehicleDto);
		}
			
		return vehiclesDto;
	}

}
