package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleOperationDTO;

public class BuyVehicleOperationDTO extends VehicleOperationDTO {
	
	
	private Long id;
	
	private int paidAmount;
	
	private String paymentType;

	
	
	
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

}
