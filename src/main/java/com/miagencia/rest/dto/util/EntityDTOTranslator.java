package com.miagencia.rest.dto.util;

import java.util.ArrayList;
import java.util.List;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.Color;
import com.miagencia.core.model.Door;
import com.miagencia.core.model.FuelType;
import com.miagencia.core.model.Location;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.PaymentType;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Transmission;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleCondition;
import com.miagencia.core.model.VehicleStatus;
import com.miagencia.core.model.VehicleType;
import com.miagencia.core.model.Year;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.ConsignmentOperation;
import com.miagencia.core.model.operations.ReservationOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.MakeDTO;
import com.miagencia.rest.dto.ModelDTO;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.VehicleDetailsDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;
import com.miagencia.rest.dto.operations.BuyVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ConsignVehicleRequestDTO;
import com.miagencia.rest.dto.operations.NewVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;

public class EntityDTOTranslator {
	
	public static Vehicle buildVehicle(VehicleDTO vehicleDto) {
		
		Vehicle vehicle = new Vehicle();
		
		// TODO chequear que los enums no sean null
		
		vehicle.setId(vehicleDto.getId());
		vehicle.setVehicleType(VehicleType.fromString(vehicleDto.getVehicleType()));
		vehicle.setMakeId(vehicleDto.getMake());
		vehicle.setModelId(vehicleDto.getModel());
		vehicle.setModelYear(Year.fromString(String.valueOf(vehicleDto.getYear())));
		vehicle.setPlate(vehicleDto.getPlate());
		vehicle.setColor(Color.fromString(vehicleDto.getColor()));
		vehicle.setDoorQuantity(Door.fromString(vehicleDto.getDoors().toString()));
		vehicle.setVehicleCondition(VehicleCondition.fromString(vehicleDto.getVehicleCondition()));
		vehicle.setChassisNumber(vehicleDto.getChassisNumber());
		vehicle.setEngineNumber(vehicleDto.getEngineNumber());
		vehicle.setKilometers(vehicleDto.getKilometers());
		vehicle.setFuelType(FuelType.fromString(vehicleDto.getFuelType()));
		vehicle.setTransmission(Transmission.fromString(vehicleDto.getTransmissionType()));
		vehicle.setDescription(vehicleDto.getDescription());
		vehicle.setVehicleCondition(VehicleCondition.fromString(vehicleDto.getVehicleCondition()));
		vehicle.setImageUrl(vehicleDto.getImageUrl());
		
		return vehicle;
	}
	
	
	// aca se pueden incluir propiedades de forma aplanada, estudiar si conviene
	
	
	public static VehicleDTO buildVehicleDTO(Vehicle vehicle) {
		
		VehicleDTO vehicleDto = new VehicleDTO();
		
		vehicleDto.setId(vehicle.getId());
		vehicleDto.setVehicleType(vehicle.getVehicleType().getText());
		vehicleDto.setMake(vehicle.getMakeId());
		vehicleDto.setModel(vehicle.getModelId());
		vehicleDto.setYear(vehicle.getModelYear().getText());
		vehicleDto.setPlate(vehicle.getPlate());
		vehicleDto.setColor(vehicle.getColor().getText());
		vehicleDto.setDoors(vehicle.getDoorQuantity().getText());
		vehicleDto.setVehicleCondition(vehicle.getVehicleCondition().getText());
		vehicleDto.setChassisNumber(vehicle.getChassisNumber());
		vehicleDto.setEngineNumber(vehicle.getEngineNumber());
		vehicleDto.setKilometers(vehicle.getKilometers());
		vehicleDto.setFuelType(vehicle.getFuelType().getText());
		vehicleDto.setTransmissionType(vehicle.getTransmission().getText());
		vehicleDto.setDescription(vehicle.getDescription());
		vehicleDto.setVehicleCondition(vehicle.getVehicleCondition().getText());
		vehicleDto.setImageUrl(vehicle.getImageUrl());
		
		return vehicleDto;
	}
	
	

	
	public static VehicleSummaryDTO buildVehicleSummaryDTO(Vehicle vehicle, SaleItem saleItem, String make, String model) {
		
		VehicleSummaryDTO vehicleDto = new VehicleSummaryDTO();
		
		vehicleDto.setId(vehicle.getId());
		vehicleDto.setMake(make);
		vehicleDto.setModel(model);
		vehicleDto.setYear(vehicle.getModelYear().toString());
		vehicleDto.setKilometers(vehicle.getKilometers());
		vehicleDto.setPrice(saleItem.getSellingPrice());
		vehicleDto.setImageUrl(vehicle.getImageUrl());
		
		// TODO chequear otros estados, delivered etc
		if (saleItem.getStatus().equals(VehicleStatus.SOLD)) {
			vehicleDto.setSold(Boolean.TRUE);
		}
		
		if (saleItem.getStatus().equals(VehicleStatus.RESERVED)) {
			vehicleDto.setBooked(Boolean.TRUE);
		}

		
		return vehicleDto;
	}
	
	
	
	public static VehicleDetailsDTO buildVehicleDetailsDTO(Vehicle vehicle, Client seller, SaleItem saleItem, String makeString, String modelString, Long codInfoauto) {
		
		VehicleDetailsDTO vehicleDetailsDto = new VehicleDetailsDTO();
		
		VehicleDTO vehicleDto = buildVehicleDTO(vehicle);
		
		vehicleDto.setMakeString(makeString);
		vehicleDto.setModelString(modelString);
		vehicleDto.setCodInfoauto(codInfoauto);
		
		ClientDTO clientDto = buildClientDTO(seller);
		
		
		vehicleDetailsDto.setSellingPrice(saleItem.getSellingPrice());
		
		// TODO chequear otros estados, delivered etc
		if (saleItem.getStatus().equals(VehicleStatus.SOLD)) {
			vehicleDetailsDto.setSold(Boolean.TRUE);
		}
		
		if (saleItem.getStatus().equals(VehicleStatus.RESERVED)) {
			vehicleDetailsDto.setBooked(Boolean.TRUE);
		}
		
		vehicleDetailsDto.setVehicleDto(vehicleDto);
		vehicleDetailsDto.setSeller(clientDto);
		
		return vehicleDetailsDto;
	}
	
	
	
	
	
	public static Client buildClient(ClientDTO clientDto) {
		
		Client client = new Client();
		
		client.setId(clientDto.getId());
		client.setDni(clientDto.getDni());
		client.setFirstName(clientDto.getFirstName());
		client.setLastName(clientDto.getLastName());
		client.setEmail(clientDto.getEmail());
		client.setPhone(clientDto.getPhone());
		client.setMobile(clientDto.getMobile());
		client.setAddress(clientDto.getAddress());
		client.setCity(clientDto.getCity());
		client.setProvince(clientDto.getProvince());
		client.setPostalCode(clientDto.getPostalCode());
		client.setCountry(clientDto.getCountry());
		client.setDateOfBirth(clientDto.getDateOfBirth());
		

		return client;
	}
	
	
	public static ClientDTO buildClientDTO(Client client) {
		
		ClientDTO clientDto = new ClientDTO();
		
		clientDto.setId(client.getId());
		clientDto.setDni(client.getDni());
		clientDto.setFirstName(client.getFirstName());
		clientDto.setLastName(client.getLastName());
		clientDto.setEmail(client.getEmail());
		clientDto.setPhone(client.getPhone());
		clientDto.setMobile(client.getMobile());
		clientDto.setAddress(client.getAddress());
		clientDto.setCity(client.getCity());
		clientDto.setProvince(client.getProvince());
		clientDto.setPostalCode(client.getPostalCode());
		clientDto.setCountry(client.getCountry());
		clientDto.setDateOfBirth(client.getDateOfBirth());
		
		return clientDto;
	}
	
	
	public static ClientSummaryDTO buildClientSummaryDTO(Client client) {
		
		ClientSummaryDTO clientDto = new ClientSummaryDTO();
		
		clientDto.setId(client.getId());
		clientDto.setFirstName(client.getFirstName());
		clientDto.setLastName(client.getLastName());
		clientDto.setEmail(client.getEmail());
		clientDto.setPhone(client.getPhone());
		
		
		return clientDto;
	
	}
	
	
	
	public static BuyOperation buildBuyOperation(NewVehicleRequestDTO buyVehicleRequestDto, Vehicle vehicle, Client sellerParty) {
		
		int paidAmount = buyVehicleRequestDto.getDealPrice();
		String paymentTypeString = buyVehicleRequestDto.getPaymentType();
		
		PaymentType paymentType = PaymentType.valueOf(paymentTypeString);
		
		BuyOperation buyOperation = new BuyOperation(vehicle, sellerParty, paidAmount, paymentType);
		
		return buyOperation;
	}
	
	
	public static ConsignmentOperation buildConsignmentOperation(NewVehicleRequestDTO consignVehicleRequestDto, Vehicle vehicle, Client sellerParty) {
		

		// TODO se puede guardar el offering price pero es lo mismo que guardarlo para buy
		// a lo mejor conviene que este en la operacion de venta nada mas porque en este punto no se sabe 
		// a cuanto se va a vender finalmente
		int dealPrice = consignVehicleRequestDto.getDealPrice();

		ConsignmentOperation consignmentOperation = new ConsignmentOperation(vehicle, sellerParty, dealPrice);
		
		return consignmentOperation;
	}
	
	
	
	public static ReservationOperation buildReservationOperation(ReserveVehicleRequestDTO reserveVehicleRequestDto, Vehicle vehicle, Client reservationHolder) {
		
		Long advancePayment = reserveVehicleRequestDto.getAdvancePayment();
		int daysOnHold = reserveVehicleRequestDto.getDaysOnHold();

		ReservationOperation reservationOperation = new ReservationOperation(vehicle, reservationHolder, advancePayment, daysOnHold);
		
		return reservationOperation;
	}
	
	
	public static SaleOperation buildSaleOperation(SellVehicleRequestDTO sellVehicleRequestDto, Vehicle vehicle, Client buyer) {
		
		int paidAmount = sellVehicleRequestDto.getPaidAmount();
		String paymentTypeString = sellVehicleRequestDto.getPaymentType();
		
		PaymentType paymentType = PaymentType.valueOf(paymentTypeString);

		SaleOperation saleOperation = new SaleOperation(vehicle, buyer, paidAmount, paymentType);
		
		return saleOperation;
	}
	
	
	
	public static MakeDTO buildMakeDTO(Make make ){
		
		
		MakeDTO makeDto = new MakeDTO();
		
		makeDto.setId(make.getId());
		makeDto.setInfoautoMake(make.getInfoautoMake());
		makeDto.setName(make.getName());
		makeDto.setOlxId(make.getOlxId());
		
		
		List<ModelDTO> modelsDto = new ArrayList<ModelDTO>(); 
		List<Model> models = make.getModels();
		
		for( Model model: models) {
		
			ModelDTO modelDto = buildModelDTO(model);
			modelsDto.add(modelDto);
			
		}
		
		makeDto.setModels(modelsDto);
		
		
		return makeDto;
	}
	
	
	
	public static ModelDTO buildModelDTO(Model model) {
		
		ModelDTO modelDto = new ModelDTO();
		
		modelDto.setId(model.getId());
		modelDto.setCodInfoauto(model.getCodInfoauto());
		modelDto.setName(model.getName());
		modelDto.setMercadoLibreId(model.getMercadoLibreId());
		modelDto.setOlxId(model.getOlxId());
		
		return modelDto;
		
	}

}
