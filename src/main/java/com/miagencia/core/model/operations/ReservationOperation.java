package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.Vehicle;

/**
 * Operation generates when a Client reserve a car that it is on sale.
 * It can have an advance payment from the reservation holder.
 * The car is no longer offered for sale until the reservation holder buys the car,
 * or the reservation is cancelled, in which case the car is put on sale again and the dealership
 * keeps the advance payment.
 * 
 * @author estebancantu
 *
 */
@Entity
@Table(name="RESERVATIONS")
@PrimaryKeyJoinColumn(name="VEHICLE_OPERATION_ID") 
public class ReservationOperation extends VehicleOperation {
	
	@Column(name="ADVANCE_PAYMENT", nullable = false)
	private Long advancePayment;
	
	@Column(name="DAYS_ON_HOLD", nullable = false)
	private int daysOnHold;
	
	
	// No usar. Lo necesita Hibernate.
	public ReservationOperation() {
		// TODO Auto-generated constructor stub
	}

	
	public ReservationOperation(Vehicle vehicle, Client reservationHolder, Long advancePayment, int daysOnHold) {
		super(vehicle, reservationHolder);
		this.advancePayment = advancePayment;
		this.daysOnHold = daysOnHold;
	}	

	public Long getAdvancePayment() {
		return advancePayment;
	}

	public int getDaysOnHold() {
		return daysOnHold;
	}

}
