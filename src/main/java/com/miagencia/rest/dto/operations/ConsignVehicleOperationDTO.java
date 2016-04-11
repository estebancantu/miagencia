package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleOperationDTO;

public class ConsignVehicleOperationDTO extends VehicleOperationDTO {
	
	private int offeringPrice;

	
	
	public int getOfferingPrice() {
		return offeringPrice;
	}

	public void setOfferingPrice(int offeringPrice) {
		this.offeringPrice = offeringPrice;
	}


}
