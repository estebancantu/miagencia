package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleDTO;




public class BuyVehicleRequestDTO {
	
	//TODO esto que es?
	private Long id;
	
	private VehicleDTO vehicleDto;
	
	private Long sellerId;
	
	private int paidAmount;
	
	private String paymentType;
	
	private int offeringAmount;
	
	

	
	
	

	
	
	
	
	public VehicleDTO getVehicleDto() {
		return vehicleDto;
	}

	public void setVehicleDto(VehicleDTO vehicleDto) {
		this.vehicleDto = vehicleDto;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(int paidAmount) {
		this.paidAmount = paidAmount;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public Long getSellerId() {
		return sellerId;
	}

	public void setSellerId(Long sellerId) {
		this.sellerId = sellerId;
	}

	public int getOfferingAmount() {
		return offeringAmount;
	}

	public void setOfferingAmount(int offeringAmount) {
		this.offeringAmount = offeringAmount;
	}
}
