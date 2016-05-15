package com.miagencia.rest.dto.operations;


public class ReserveVehicleRequestDTO {
	
	
	private Long vehicleId;
	
	private Long clientId;
	
	private Long advancePayment;
	
	private int daysOnHold;

	
	
	public Long getAdvancePayment() {
		return advancePayment;
	}

	public void setAdvancePayment(Long advancePayment) {
		this.advancePayment = advancePayment;
	}

	public int getDaysOnHold() {
		return daysOnHold;
	}

	public void setDaysOnHold(int daysOnHold) {
		this.daysOnHold = daysOnHold;
	}

	public Long getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(Long vehicleId) {
		this.vehicleId = vehicleId;
	}

	public Long getClientId() {
		return clientId;
	}

	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}

}
