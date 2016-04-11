package com.miagencia.core.model.operations;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.PaymentType;
import com.miagencia.core.model.Vehicle;

@Entity
@Table(name="Sales")
public class SaleOperation extends VehicleOperation {
	

	// TODO ver si hace falta incluir al seller, que pasa cuando es por cuenta de la agencia
	// TODO estudiar si tiene sentido que una Sale conozca a su Purchase o Consignation generadora.
	
	@Column(nullable = false)
	private int sellingAmount;
	
	private PaymentType paymentType;


	public SaleOperation(Vehicle vehicle, Client buyer, int sellingAmount, PaymentType paymentType) {
		
		super(vehicle, buyer);
		this.sellingAmount = sellingAmount;
		this.paymentType = paymentType;
	}
	

	public int getSellingAmount() {
		return sellingAmount;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}

}
