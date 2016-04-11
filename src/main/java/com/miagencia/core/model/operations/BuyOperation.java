package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.PaymentType;
import com.miagencia.core.model.Vehicle;

/**
 * Operation generates when a car is buyed and in turn owned by this dealership.
 * 
 * @author estebancantu
 *
 */
@Entity
@Table(name="Purchases")
public class BuyOperation extends VehicleOperation {

	@Column(nullable = false)
	private int paidAmount;
	
	private PaymentType paymentType;
	
	
	
	public BuyOperation(Vehicle vehicle, Client sellerParty, int paidAmount, PaymentType paymentType) {
		
		super(vehicle, sellerParty);
		this.paidAmount = paidAmount;
		this.paymentType = paymentType;
	}

	public int getPaidAmount() {
		return paidAmount;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}
	
}
