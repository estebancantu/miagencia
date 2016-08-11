package com.miagencia.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.miagencia.core.dao.CityDAO;
import com.miagencia.core.dao.ClientDAO;
import com.miagencia.core.dao.CountryDAO;
import com.miagencia.core.dao.NeighborhoodDAO;
import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.StateDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Location;
import com.miagencia.core.model.Neighborhood;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleStatus;
import com.miagencia.core.model.operations.ReservationOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.core.model.operations.VehicleOperation;
import com.miagencia.core.service.VehicleOperationService;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.operations.NewVehicleRequestDTO;
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
	
	@Autowired
	CountryDAO countryDAO;
	
	@Autowired
	StateDAO stateDAO;
	
	@Autowired
	CityDAO cityDAO;
	
	@Autowired
	NeighborhoodDAO neighborhoodDAO;
	
	
	@Override
	@Transactional
	public void newVehicle(NewVehicleRequestDTO newVehicleRequestDto) {
		
		VehicleDTO vehicleDto = newVehicleRequestDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto); // TODO falta features

		if(newVehicleRequestDto.getLocationDTO() != null) {
			Location location = new Location();
			location.setAddressLine(newVehicleRequestDto.getLocationDTO().getAddress());
			location.setZipCode(newVehicleRequestDto.getLocationDTO().getZipCode());
			location.setLatitude(newVehicleRequestDto.getLocationDTO().getLatitude());
			location.setLongitude(newVehicleRequestDto.getLocationDTO().getLongitude());
			location.setOpenHours(newVehicleRequestDto.getLocationDTO().getOpenHours());
			if(newVehicleRequestDto.getLocationDTO().getCountryId() != null){
				location.setCountry(countryDAO.find(newVehicleRequestDto.getLocationDTO().getCountryId()));
			}
			if(newVehicleRequestDto.getLocationDTO().getStateId() != null){
				location.setState(stateDAO.find(newVehicleRequestDto.getLocationDTO().getStateId()));
			}
			if(newVehicleRequestDto.getLocationDTO().getCityId() != null){
				location.setCity(cityDAO.find(newVehicleRequestDto.getLocationDTO().getCityId()));
			}
			if(newVehicleRequestDto.getLocationDTO().getNeighborhoodId() != null){
				location.setNeighborhood(neighborhoodDAO.find(newVehicleRequestDto.getLocationDTO().getNeighborhoodId()));
			}
			vehicle.setLocation(location);
		}
		
		Client client = clientDao.find(newVehicleRequestDto.getClientId());
		
		VehicleOperation operation = null;
		String opType = newVehicleRequestDto.getOperationType();
		
		if(opType.equals(VehicleOperation.BUY)){
			
			operation = EntityDTOTranslator.buildBuyOperation(newVehicleRequestDto, vehicle, client);

		}
		else if
		   (opType.equals(VehicleOperation.CONSIGNMENT)) {
			
			operation = EntityDTOTranslator.buildConsignmentOperation(newVehicleRequestDto, vehicle, client);
		}
		// else tirar excepcion porque la operacion es invalida
		

	
		operationDao.add(operation);
		
		
		
		SaleItem saleItem = new SaleItem(vehicle, newVehicleRequestDto.getSellingPrice(), 
				newVehicleRequestDto.isHasRegistration(), newVehicleRequestDto.isHasDomainCertificate(),
				newVehicleRequestDto.getTaxDebt(), newVehicleRequestDto.getTrafficTicketsDebt());
		
		saleItemDao.add(saleItem);
		
	}
	
	

	
	
	
	
	
	
	
/*	@Override
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
		
	}*/
	
	
	
/*	@Override
	@Transactional
	public void consignVehicle(ConsignVehicleRequestDTO consignRequestDto) {
		
		VehicleDTO vehicleDto = consignRequestDto.getVehicleDto();
		Vehicle vehicle = EntityDTOTranslator.buildVehicle(vehicleDto);
		

		Client sellerParty = clientDao.find(consignRequestDto.getClientId());
		
		ConsignmentOperation consignmentOperation = EntityDTOTranslator.buildConsignmentOperation(consignRequestDto, vehicle, sellerParty);
		
		operationDao.add(consignmentOperation);
		
		SaleItem saleItem = new SaleItem(vehicle, consignRequestDto.getOfferingPrice());
		saleItemDao.add(saleItem);
		
	}*/
	
	
	@Override
	@Transactional
	public void reserveVehicle(ReserveVehicleRequestDTO operationDto) {
		
		Long vehicleId = operationDto.getVehicleId();
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		Long clientId = operationDto.getClientId();
		Client sellerParty = clientDao.find(clientId);
		
		// TODO chequear que el vehiculo no este ya reservado o no este vendido, si es asi
		// lanzar una excepcion
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.RESERVED);
		saleItemDao.edit(saleItem);
		
		ReservationOperation reservationOperation = EntityDTOTranslator.buildReservationOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(reservationOperation);
		

	}
	
	
	@Override
	@Transactional
	public void sellVehicle(SellVehicleRequestDTO operationDto) {
		
		
		Long vehicleId = operationDto.getVehicleId();
		Vehicle vehicle = vehicleDao.find(vehicleId);
		
		Long clientId = operationDto.getBuyerId();
		Client sellerParty = clientDao.find(clientId);
		
		// TODO chequear que el auto no este vendido ya, si es asi tirar una excepcion
		SaleItem saleItem = saleItemDao.getSaleItemByVehicleId(vehicle.getId());
		saleItem.setStatus(VehicleStatus.SOLD);
		saleItemDao.edit(saleItem);
		
		SaleOperation saleOperation = EntityDTOTranslator.buildSaleOperation(operationDto, vehicle, sellerParty);
	
		operationDao.add(saleOperation);
		

	}
	


}
