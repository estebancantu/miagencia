package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleDTO;




public class ConsignVehicleRequestDTO {
	
	
	private VehicleDTO vehicleDto;
	
	private int offeringPrice;

	private Long clientId;
	
	
	
	
	

	public VehicleDTO getVehicleDto() {
		return vehicleDto;
	}

	public void setVehicleDto(VehicleDTO vehicleDto) {
		this.vehicleDto = vehicleDto;
	}

	public int getOfferingPrice() {
		return offeringPrice;
	}

	public void setOfferingPrice(int offeringPrice) {
		this.offeringPrice = offeringPrice;
	}

	public Long getClientId() {
		return clientId;
	}

	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}

}
