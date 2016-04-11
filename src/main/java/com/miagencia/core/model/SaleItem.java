package com.miagencia.core.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="SaleItems")
public class SaleItem extends PersistableEntity {
	
	// TODO falta hacer algo con el id para terminar el mapeo, revisar
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="vehicleId", nullable=false)
	private Vehicle vehicle;
	
	private int sellingPrice;
	
	@Enumerated(EnumType.STRING)
	private VehicleStatus status;
	
	private int daysInDealership;
	
	
	private SaleItem() {
		
	}
	
	
	public SaleItem(Vehicle vehicle, int sellingPrice){
		
		this.vehicle = vehicle;
		this.sellingPrice = sellingPrice;
		this.status = VehicleStatus.AVAILABLE;
		this.daysInDealership = 0;
	}


	public int getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public VehicleStatus getStatus() {
		return status;
	}

	public void setStatus(VehicleStatus status) {
		this.status = status;
	}

	public int getDaysInDealership() {
		return daysInDealership;
	}

	public void setDaysInDealership(int daysInDealership) {
		this.daysInDealership = daysInDealership;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

}
