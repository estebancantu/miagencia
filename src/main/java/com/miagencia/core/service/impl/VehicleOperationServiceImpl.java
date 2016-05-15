package com.miagencia.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleStatus;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.ConsignmentOperation;
import com.miagencia.core.model.operations.ReservationOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.core.service.VehicleOperationService;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;
import com.miagencia.rest.dto.util.EntityDTOTranslator;



@Service
public class VehicleOperationServiceImpl implements
		VehicleOperationService {
	
	
	@Autowired
	OperationDAO operationDao;
	
	@Autowired
	SaleItemDAO saleItemDao;
	
	@Autowired
	ClientDAO clientDao;
	
	@Autowired
	VehicleDAO vehicleDao;
	


	
	
	
	
	
	@Override
	@Transactional
	public void buyVehicle(BuyVehicleRequestDTO buyRequestDto) {
		
		VehicleDTO vehicleDto = buyRequestDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		
		
		Client sellerParty;
		
		// por el momento esto de dar de alta un nuevo cliente en el mismo dto de la operacion no lo usamos 
//		if (buyRequestDto.getSellerId() == null ) {
			
//			ClientDTO clientDto = buyRequestDto.getClientDto();
//			sellerParty = EntityDTOTranslator.buildClient(clientDto);
//		}
		
//		else {
			sellerParty = clientDao.find(buyRequestDto.getSellerId());
//		}
		
		
		
		BuyOperation buyOperation = EntityDTOTranslator.buildBuyOperation(buyRequestDto, vehicle, sellerParty);
		
		operationDao.add(buyOperation);
		
		SaleItem saleItem = new SaleItem(vehicle, buyRequestDto.getOfferingAmount());
		saleItemDao.add(saleItem);
		
	}
	
	
	
	@Override
	@Transactional
	public void consignVehicle(ConsignVehicleRequestDTO consignRequestDto) {
		
		VehicleDTO vehicleDto = consignRequestDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		

		Client sellerParty = clientDao.find(consignRequestDto.getClientId());
		
		ConsignmentOperation consignmentOperation = EntityDTOTranslator.buildConsignmentOperation(consignRequestDto, vehicle, sellerParty);
		
		operationDao.add(consignmentOperation);
		
		SaleItem saleItem = new SaleItem(vehicle, consignRequestDto.getOfferingPrice());
		saleItemDao.add(saleItem);
		
	}
	
	
	@Override
	@Transactional
	public void reserveVehicle(ReserveVehicleRequestDTO operationDto) {
		
		Long vehicleId = operationDto.getVehicleId();
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		Long clientId = operationDto.getClientId();
		Client sellerParty = clientDao.find(clientId);
		
		
		ReservationOperation reservationOperation = EntityDTOTranslator.buildReservationOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(reservationOperation);
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.RESERVED);
		saleItemDao.edit(saleItem);
	}
	
	
	@Override
	@Transactional
	public void sellVehicle(SellVehicleRequestDTO operationDto) {
		
		
		Long vehicleId = operationDto.getVehicleId();
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		Long clientId = operationDto.getBuyerId();
		Client sellerParty = clientDao.find(clientId);

		
		SaleOperation saleOperation = EntityDTOTranslator.buildSaleOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(saleOperation);
		
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.SOLD);
		saleItemDao.edit(saleItem);
	}
	


}
