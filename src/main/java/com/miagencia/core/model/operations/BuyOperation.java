package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.PrimaryKeyJoinColumn;
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
@Table(name="PURCHASES")
@PrimaryKeyJoinColumn(name="VEHICLE_OPERATION_ID")  
public class BuyOperation extends VehicleOperation {

	@Column(name="PAID_AMOUNT", nullable = false)
	private int paidAmount;
	
	@Enumerated(EnumType.STRING)
	@Column(name="PAYMENT_TYPE")
	private PaymentType paymentType;
	
	
	// No usar. Lo necesita Hibernate.
	public BuyOperation() {		
		// TODO Auto-generated constructor stub
	}
	
	
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
