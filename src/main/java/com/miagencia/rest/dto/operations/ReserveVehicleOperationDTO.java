package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.VehicleOperationDTO;

public class ReserveVehicleOperationDTO extends VehicleOperationDTO {
	
	
	private int advancePayment;
	
	private int daysOnHold;

	public int getAdvancePayment() {
		return advancePayment;
	}

	public void setAdvancePayment(int advancePayment) {
		this.advancePayment = advancePayment;
	}

	public int getDaysOnHold() {
		return daysOnHold;
	}

	public void setDaysOnHold(int daysOnHold) {
		this.daysOnHold = daysOnHold;
	}
	
	
	

}
