package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.Vehicle;

@Entity
@Table(name="CONSIGNMENTS")
@PrimaryKeyJoinColumn(name="VEHICLE_OPERATION_ID") 
public class ConsignmentOperation extends VehicleOperation {
	
	@Column(name="DEAL_PRICE", nullable = false)
	private int dealPrice;
	
	
	// No usar. Lo necesita Hibernate.
	public ConsignmentOperation() {
		// TODO Auto-generated constructor stub
	}
	
	public ConsignmentOperation(Vehicle vehicle, Client sellerParty, int dealPrice) {		
		super(vehicle, sellerParty);
		this.dealPrice = dealPrice;
	}

	public int getDealPrice() {
		return dealPrice;
	}

}