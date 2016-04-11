package com.miagencia.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleStatus;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.ConsignmentOperation;
import com.miagencia.core.model.operations.ReservationOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.core.service.VehicleOperationService;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.operations.BuyVehicleOperationDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleOperationDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleOperationDTO;
import com.miagencia.rest.dto.operations.SellVehicleOperationDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;



@Service
public class VehicleOperationServiceImpl implements
		VehicleOperationService {
	
	
	@Autowired
	OperationDAO operationDao;
	
	@Autowired
	SaleItemDAO saleItemDao;
	


	
	
	
	
	
	@Override
	@Transactional
	public void buyVehicle(BuyVehicleOperationDTO operationDto) {
		
		VehicleDTO vehicleDto = operationDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		
		ClientDTO clientDto = operationDto.getClientDto();
		Client sellerParty = EntityDTOTranslator.buildClient(clientDto);
		
		BuyOperation buyOperation = EntityDTOTranslator.buildBuyOperation(operationDto, vehicle, sellerParty);
		
		operationDao.add(buyOperation);
		
		SaleItem saleItem = new SaleItem(vehicle, operationDto.getPaidAmount());
		saleItemDao.add(saleItem);
		
	}
	
	
	
	@Override
	@Transactional
	public void consignVehicle(ConsignVehicleOperationDTO operationDto) {
		
		VehicleDTO vehicleDto = operationDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		
		ClientDTO clientDto = operationDto.getClientDto();
		Client sellerParty = EntityDTOTranslator.buildClient(clientDto);
		
		ConsignmentOperation consignmentOperation = EntityDTOTranslator.buildConsignmentOperation(operationDto, vehicle, sellerParty);
		
		operationDao.add(consignmentOperation);
		
		SaleItem saleItem = new SaleItem(vehicle, operationDto.getOfferingPrice());
		saleItemDao.add(saleItem);
		
	}
	
	
	@Override
	@Transactional
	public void reserveVehicle(ReserveVehicleOperationDTO operationDto) {
		
		VehicleDTO vehicleDto = operationDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		
		ClientDTO clientDto = operationDto.getClientDto();
		Client sellerParty = EntityDTOTranslator.buildClient(clientDto);
		
		ReservationOperation reservationOperation = EntityDTOTranslator.buildReservationOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(reservationOperation);
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.RESERVED);
		saleItemDao.edit(saleItem);
	}
	
	
	@Override
	@Transactional
	public void sellVehicle(SellVehicleOperationDTO operationDto) {
		
		VehicleDTO vehicleDto = operationDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		
		ClientDTO clientDto = operationDto.getClientDto();
		Client sellerParty = EntityDTOTranslator.buildClient(clientDto);
		
		SaleOperation saleOperation = EntityDTOTranslator.buildSaleOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(saleOperation);
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.SOLD);
		saleItemDao.edit(saleItem);
	}
	


}
