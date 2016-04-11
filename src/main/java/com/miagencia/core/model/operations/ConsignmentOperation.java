package com.miagencia.core.model.operations;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.Vehicle;

@Entity
@Table(name="Consignations")
public class ConsignmentOperation extends VehicleOperation {
	
	private int offeringPrice;
	
	public ConsignmentOperation(Vehicle vehicle, Client sellerParty, int offeringPrice) {		
		super(vehicle, sellerParty);
		this.offeringPrice = offeringPrice;
	}

	public int getOfferingPrice() {
		return offeringPrice;
	}

}