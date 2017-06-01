package com.miagencia.rest.dto.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.miagencia.core.model.Account;
import com.miagencia.core.model.Client;
import com.miagencia.core.model.Color;
import com.miagencia.core.model.Dealership;
import com.miagencia.core.model.Door;
import com.miagencia.core.model.Expense;
import com.miagencia.core.model.FuelType;
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
import com.miagencia.core.model.operations.VehicleOperation;
import com.miagencia.rest.dto.AccountDTO;
import com.miagencia.rest.dto.ClientDTO;
import com.miagencia.rest.dto.ClientSummaryDTO;
import com.miagencia.rest.dto.ExpenseDTO;
import com.miagencia.rest.dto.MakeDTO;
import com.miagencia.rest.dto.ModelDTO;
import com.miagencia.rest.dto.VehicleDTO;
import com.miagencia.rest.dto.VehicleDetailsDTO;
import com.miagencia.rest.dto.VehicleOperationDTO;
import com.miagencia.rest.dto.VehicleSummaryDTO;
import com.miagencia.rest.dto.operations.NewVehicleRequestDTO;
import com.miagencia.rest.dto.operations.ReserveVehicleRequestDTO;
import com.miagencia.rest.dto.operations.SellVehicleRequestDTO;

public class EntityDTOTranslator {
	
	public static Vehicle buildVehicle(VehicleDTO vehicleDto, Dealership dealership) {
		
		Vehicle vehicle = new Vehicle();

		
		vehicle.setId(vehicleDto.getId());
		vehicle.setVehicleType(VehicleType.fromString(vehicleDto.getVehicleType()));
		vehicle.setMakeId(vehicleDto.getMake());
		vehicle.setModelId(vehicleDto.getModel());
		vehicle.setModelYear(Year.fromString(String.valueOf(vehicleDto.getYear())));
		vehicle.setPlate(vehicleDto.getPlate());
		vehicle.setColor(Color.fromString(vehicleDto.getColor()));
		vehicle.setDoorQuantity(Door.fromString(vehicleDto.getDoors()));
		vehicle.setVehicleCondition(VehicleCondition.fromString(vehicleDto.getVehicleCondition()));
		vehicle.setChassisNumber(vehicleDto.getChassisNumber());
		vehicle.setEngineNumber(vehicleDto.getEngineNumber());
		vehicle.setKilometers(vehicleDto.getKilometers());
		vehicle.setFuelType(FuelType.fromString(vehicleDto.getFuelType()));
		vehicle.setTransmission(Transmission.fromString(vehicleDto.getTransmissionType()));
		vehicle.setPublicDescription(vehicleDto.getPublicDescription());
		vehicle.setPrivateDescription(vehicleDto.getPrivateDescription());
		vehicle.setImageUrls(vehicleDto.getImageUrls());
	
		vehicle.setDealership(dealership);

		
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
		
		if (vehicle.getColor() != null) {
			vehicleDto.setColor(vehicle.getColor().getText());
		}
		
		if (vehicle.getDoorQuantity() != null) {
			vehicleDto.setDoors(vehicle.getDoorQuantity().getText());
		}
		
		vehicleDto.setVehicleCondition(vehicle.getVehicleCondition().getText());
		vehicleDto.setChassisNumber(vehicle.getChassisNumber());
		vehicleDto.setEngineNumber(vehicle.getEngineNumber());
		vehicleDto.setKilometers(vehicle.getKilometers());
		
		if (vehicle.getFuelType() != null) { // fuel type is not mandatory
			vehicleDto.setFuelType(vehicle.getFuelType().getText());
		}
		else {
			vehicleDto.setFuelType(FuelType.NOT_SPECIFIED.getText());
		}
		
		if ( vehicle.getTransmission() != null ) { // transmission is not mandatory
			vehicleDto.setTransmissionType(vehicle.getTransmission().getText());
		} else {
			vehicleDto.setTransmissionType(Transmission.NOT_SPECIFIED.getText());
		}
		
		vehicleDto.setPublicDescription(vehicle.getPublicDescription());
		vehicleDto.setPrivateDescription(vehicle.getPrivateDescription());
		
		for(String imageUrl: vehicle.getImageUrls()) {
			vehicleDto.getImageUrls().add(imageUrl);
		}
		
		return vehicleDto;
	}
	
	

	
	public static VehicleSummaryDTO buildVehicleSummaryDTO(Vehicle vehicle, SaleItem saleItem, String make, String model, int paidPrice, List<ExpenseDTO> expenseDtos) {
		
		VehicleSummaryDTO vehicleDto = new VehicleSummaryDTO();
		
		vehicleDto.setId(vehicle.getId());
		vehicleDto.setMake(make);
		vehicleDto.setModel(model);
		vehicleDto.setYear(vehicle.getModelYear().getText());
		vehicleDto.setPlate(vehicle.getPlate());
		vehicleDto.setKilometers(vehicle.getKilometers());
		vehicleDto.setPrice(saleItem.getSellingPrice());
		
		// TODO calcular profit
		vehicleDto.setProfit(calculateProfit(paidPrice, saleItem.getSellingPrice(), expenseDtos));
		
		// devolvemos solo la primera imagen, que es la imagen destacada que se va a mostrar en el home
		vehicleDto.setImageUrl(vehicle.getImageUrls().get(0));
		vehicleDto.setImageCount(vehicle.getImageUrls().size());
		
		
		
		// TODO cuando ande el created at, usar esa fecha. Ver si no hay problema
		// con el updated time cuando se edita y se guarda un auto.
		vehicleDto.setDaysInDealership(daysBetween(vehicle.getUpdatedTime(), new Date()));
	
		
		// TODO chequear otros estados, delivered etc
		if (saleItem.getStatus().equals(VehicleStatus.SOLD)) {
			vehicleDto.setSold(Boolean.TRUE);
		}
		
		if (saleItem.getStatus().equals(VehicleStatus.RESERVED)) {
			vehicleDto.setBooked(Boolean.TRUE);
		}

		
		return vehicleDto;
	}
	
	
	
	public static VehicleDetailsDTO buildVehicleDetailsDTO(Vehicle vehicle, VehicleOperation operation, SaleItem saleItem,
			String makeString, String modelString, Long codInfoauto, List<VehicleOperationDTO> operationDtos) {
		
		
		
		
		VehicleDetailsDTO vehicleDetailsDto = new VehicleDetailsDTO();
		
		VehicleDTO vehicleDto = buildVehicleDTO(vehicle);
		
		vehicleDto.setMakeString(makeString);
		vehicleDto.setModelString(modelString);
		vehicleDto.setCodInfoauto(codInfoauto);
		
		ClientDTO clientDto = buildClientDTO(operation.getClient());
		
		
		vehicleDetailsDto.setSellingPrice(saleItem.getSellingPrice());
		
		if(operation instanceof BuyOperation ) {
			vehicleDetailsDto.setDealPrice(((BuyOperation)operation).getPaidAmount());
		}
		
		if(operation instanceof ConsignmentOperation ) {
			vehicleDetailsDto.setDealPrice(((ConsignmentOperation)operation).getDealPrice());
		}
		
		// TODO chequear otros estados, delivered etc
		if (saleItem.getStatus().equals(VehicleStatus.SOLD)) {
			vehicleDetailsDto.setSold(Boolean.TRUE);
		}
		
		if (saleItem.getStatus().equals(VehicleStatus.RESERVED)) {
			vehicleDetailsDto.setBooked(Boolean.TRUE);
		}
		
		vehicleDetailsDto.setVehicleDto(vehicleDto);
		vehicleDetailsDto.setSeller(clientDto);
		
		
		vehicleDetailsDto.setOperations(operationDtos);
		
		return vehicleDetailsDto;
	}
	
	
	public static List<VehicleOperationDTO> buildVehicleOperationDtos(List<VehicleOperation> vehicleOperations) {
		
		List<VehicleOperationDTO> operationDtos = new ArrayList<VehicleOperationDTO>();
		
		
		for (VehicleOperation operation: vehicleOperations) {
			
			
			VehicleOperationDTO operationDto = new VehicleOperationDTO();
			
			Client client = operation.getClient();
			
			operationDto.setDate(operation.getUpdatedTime()); // TODO cuando ande cambiar por CREATED_AT
			
			operationDto.setClientId(String.valueOf(client.getId()));
			operationDto.setClientName(client.getFirstName() + " " + client.getLastName());
			
			if(operation.getClass().equals(BuyOperation.class)) {
				operationDto.setOperationType(VehicleOperation.BUY);
				operationDto.setBuyOperationPaidAmount(String.valueOf(((BuyOperation)operation).getPaidAmount()));
			} else
				
			if (operation.getClass().equals(ConsignmentOperation.class)) {
				operationDto.setOperationType(VehicleOperation.CONSIGNMENT);
				operationDto.setConsignmentOperationDealPrice(String.valueOf(((ConsignmentOperation)operation).getDealPrice()));
			} else 
				
			if (operation.getClass().equals(ReservationOperation.class)) {
				operationDto.setOperationType(VehicleOperation.RESERVATION);
				operationDto.setReservationOperationAdvancePayment(String.valueOf(((ReservationOperation)operation).getAdvancePayment()));
			} else 
			
			if (operation.getClass().equals(SaleOperation.class)) {
				operationDto.setOperationType(VehicleOperation.SALE);
				operationDto.setSaleOperationSaleAmount(String.valueOf(((SaleOperation)operation).getSellingAmount()));
			} 
			
			operationDtos.add(operationDto);
			
		}
		
		
		
		return operationDtos;	
		
	}
	
	
	
	
	
	public static Client buildClient(ClientDTO clientDto, Dealership dealership) {
		
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

		client.setDealership(dealership);
		
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
	
	public static Expense buildExpense(ExpenseDTO expenseDto) {
		
		Expense expense = new Expense();
		
		expense.setId(expenseDto.getId());
		expense.setCost(expenseDto.getCost());
		expense.setName(expenseDto.getName());
		expense.setPaid(expenseDto.isPaid());


		return expense;
	}
	
	
	public static ExpenseDTO buildExpenseDTO(Expense expense) {
		
		ExpenseDTO expenseDto = new ExpenseDTO();
		
		expenseDto.setId(expense.getId());
		expenseDto.setDate(expense.getUpdatedTime()); // TODO cuando ande cambiar por CREATED_AT
		expenseDto.setCost(expense.getCost());
		expenseDto.setName(expense.getName());
		expenseDto.setPaid(expense.isPaid());


		return expenseDto;
	}
	
	
	 private static int daysBetween(Date d1, Date d2){
         return (int)( (d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
	 }
	 
	 private static int calculateProfit(int paidPrice, int sellingPrice, List<ExpenseDTO> expenseDtos) {
		 
		 int totalExpenses = 0;
		 
		 for (ExpenseDTO expense : expenseDtos) {			 
			 totalExpenses = totalExpenses + expense.getCost();
		 }
 
		 return sellingPrice - ( paidPrice + totalExpenses );
	 }
	 
	 
		public static AccountDTO buildAccountDTO(Account account) {
			
			AccountDTO accountDto = new AccountDTO();
			
			accountDto.setId(account.getId());
			accountDto.setUsername(account.getUsername());
			accountDto.setPassword(null);
			accountDto.setDealershipName(account.getDealership().getName());
			accountDto.setEmail(account.getDealership().getEmail());
			
			return accountDto;
		}
		

}
