package com.miagencia.core.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.ConsignmentOperation;
import com.miagencia.core.model.operations.VehicleOperation;
import com.miagencia.core.service.ExpenseService;
import com.miagencia.core.service.VehicleService;
import com.miagencia.rest.dto.ExpenseDTO;
import com.miagencia.rest.dto.VehicleDetailsDTO;
import com.miagencia.rest.dto.VehicleOperationDTO;
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
	
	@Autowired
	OperationDAO operationDao;
	
	@Autowired
	ClientDAO clientDao;
	
	@Autowired
	ExpenseService expenseService;
	

	

	//TODO chequear nulls en las respuestas de los daos antes de hacer las conversiones

	
	
	@Override
	@Transactional
	public VehicleDetailsDTO find(Long vehicleId) {
		
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		// hay que ir a buscar el cliente vendedor, eso solo lo conoce la operacion
		// de compra o concesion
		List<VehicleOperation> operations;
		
		operations = operationDao.findOperationsByVehicleId(vehicleId);
		VehicleOperation newVehicleOperation = null;
		
		
		List<VehicleOperationDTO> vehicleOperationDtos;
		
		
		vehicleOperationDtos = EntityDTOTranslator.buildVehicleOperationDtos(operations);
		
		for (Iterator iterator = operations.iterator(); iterator.hasNext();) {
			VehicleOperation vehicleOperation = (VehicleOperation) iterator
					.next();
			
			if(vehicleOperation.getClass().equals(BuyOperation.class)
					|| vehicleOperation.getClass().equals(ConsignmentOperation.class)){
				
				newVehicleOperation = vehicleOperation;
				break;
			}
			
		}
		
		Make make = makesAndModelsDao.getMake( new Long(vehicle.getMakeId()));
		String makeString = make.getName();
		Model model = makesAndModelsDao.getModel( new Long(vehicle.getModelId()));
		String modelString = model.getName();
		
		Long codInfoauto = model.getCodInfoauto();
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicleId);


		VehicleDetailsDTO vehicleDetailsDto = EntityDTOTranslator.buildVehicleDetailsDTO(vehicle, newVehicleOperation, saleItem, makeString, modelString, codInfoauto, vehicleOperationDtos);

		return vehicleDetailsDto;
	}

	
	
	@Override
	@Transactional
	public List<VehicleSummaryDTO> getAllVehicles() {
		
		List<VehicleSummaryDTO> vehiclesDto = new ArrayList<VehicleSummaryDTO>();
		
		List<Vehicle> vehicles = vehicleDao.getAllVehicles();
		
		for (Iterator<Vehicle> iterator = vehicles.iterator(); iterator.hasNext();) {
			
			Vehicle vehicle = (Vehicle) iterator.next();	
			
			Make make = makesAndModelsDao.getMake( new Long(vehicle.getMakeId()));
			String makeString = make.getName();
			Model model = makesAndModelsDao.getModel( new Long(vehicle.getModelId()));
			String modelString = model.getName();
			
			SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
			
			List<ExpenseDTO> expenseDtos = expenseService.getAllExpenses(vehicle.getId());
			
			List<VehicleOperation> operations;
			operations = operationDao.findOperationsByVehicleId(vehicle.getId());
				
			
			int paidPrice = 0;
			
			for (Iterator iterator2 = operations.iterator(); iterator2.hasNext();) {
				VehicleOperation vehicleOperation = (VehicleOperation) iterator2
						.next();
				
				if(vehicleOperation.getClass().equals(BuyOperation.class)) {
					
					paidPrice = ((BuyOperation)vehicleOperation).getPaidAmount();
				}
				else if	(vehicleOperation.getClass().equals(ConsignmentOperation.class)){
					
					paidPrice = ((ConsignmentOperation)vehicleOperation).getDealPrice();
				}	
			}
			
			
			VehicleSummaryDTO vehicleDto = EntityDTOTranslator.buildVehicleSummaryDTO(vehicle, saleItem, makeString, modelString, paidPrice, expenseDtos);
			
			vehiclesDto.add(vehicleDto);
		}
			
		return vehiclesDto;
	}



	@Override
	@Transactional
	public void delete(Long vehicleId) {
		
		
		// primero borrar sale item. Por cascade se borran las Expenses
			SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicleId);
			saleItemDao.delete(saleItem.getId());
			
		// borrar las operaciones asociadas
			List<VehicleOperation> operations = operationDao.findOperationsByVehicleId(vehicleId);
			
			for( VehicleOperation operation: operations ) {
				operationDao.delete(operation.getId());
			}
			
			// no es necesario borrar el vehiculo explicitamente, ya que la VehicleOperation tiene
			// cascade all en su miembro vehicle, si eventualmente esto cambia recordar que hay que 
			// borrar el vehiculo aca usando el vehicleDao.delete(vehicleId);
		
	}




}
