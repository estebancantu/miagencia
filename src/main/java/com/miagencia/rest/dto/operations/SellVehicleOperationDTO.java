package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleOperationDTO;

public class SellVehicleOperationDTO extends VehicleOperationDTO {
	
	private int sellingAmount;
	
	private String paymentType;

	
	
	
	public int getSellingAmount() {
		return sellingAmount;
	}

	public void setSellingAmount(int sellingAmount) {
		this.sellingAmount = sellingAmount;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

}
