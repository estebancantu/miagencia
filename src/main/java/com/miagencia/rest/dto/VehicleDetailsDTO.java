package com.miagencia.rest.dto;

public class VehicleDetailsDTO {
	
	
	private VehicleDTO vehicleDto;
	
	private ClientDTO seller;
	
	private int sellingPrice;
	
	private int dealPrice;
	
	private boolean isSold;
	
	private boolean isBooked;

	// TODO falta lo de gastos
	
	
	
	
	
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
	
	
	

}
