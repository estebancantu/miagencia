package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name="Reservations")
public class ReservationOperation extends VehicleOperation {
	
	@Column(nullable = false)
	private int advancePayment;
	
	private int daysOnHold;

	
	public ReservationOperation(Vehicle vehicle, Client reservationHolder, int advancePayment, int daysOnHold) {
		super(vehicle, reservationHolder);
		this.advancePayment = advancePayment;
		this.daysOnHold = daysOnHold;
	}	

	public int getAdvancePayment() {
		return advancePayment;
	}

	public int getDaysOnHold() {
		return daysOnHold;
	}

}
