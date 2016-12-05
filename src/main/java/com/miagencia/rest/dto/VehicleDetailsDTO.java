package com.miagencia.rest.dto;

import java.util.List;

public class VehicleDetailsDTO {
	
	
	private VehicleDTO vehicleDto;
	
	private int daysInDealership;
	
	private ClientDTO seller;
	
	private int sellingPrice;
	
	private int dealPrice;
	
	private boolean isSold;
	
	private boolean isBooked;
	
	private List<VehicleOperationDTO> operations;

	
	
	
	
	
	public VehicleDTO getVehicleDto() {
		return vehicleDto;
	}

	public void setVehicleDto(VehicleDTO vehicleDto) {
		this.vehicleDto = vehicleDto;
	}

	public ClientDTO getSeller() {
		return seller;
	}

	public void setSeller(ClientDTO seller) {
		this.seller = seller;
	}

	public int getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public boolean isSold() {
		return isSold;
	}

	public void setSold(boolean isSold) {
		this.isSold = isSold;
	}

	public boolean isBooked() {
		return isBooked;
	}

	public void setBooked(boolean isBooked) {
		this.isBooked = isBooked;
	}

	public int getDealPrice() {
		return dealPrice;
	}

	public void setDealPrice(int dealPrice) {
		this.dealPrice = dealPrice;
	}

	public int getDaysInDealership() {
		return daysInDealership;
	}

	public void setDaysInDealership(int daysInDealership) {
		this.daysInDealership = daysInDealership;
	}

	public List<VehicleOperationDTO> getOperations() {
		return operations;
	}

	public void setOperations(List<VehicleOperationDTO> operations) {
		this.operations = operations;
	}


}
