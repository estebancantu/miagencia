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

@Entity
@Table(name="SALES")
@PrimaryKeyJoinColumn(name="VEHICLE_OPERATION_ID") 
public class SaleOperation extends VehicleOperation {
	

	// TODO ver si hace falta incluir al seller, que pasa cuando es por cuenta de la agencia
	// TODO estudiar si tiene sentido que una Sale conozca a su Purchase o Consignment generadora.
	
	@Column(name="PAID_AMOUNT", nullable = false)
	private int paidAmount;
	
	@Enumerated(EnumType.STRING)
	@Column(name="PAYMENT_TYPE")
	private PaymentType paymentType;
	
	// DELIVERED
	
	// financiado
	
	// quien financia
	
	// cantidad de cuotas
	
	// CANCELED DEBT O ALGO ASI
	
	
	// No usar. Lo necesita Hibernate.
	public SaleOperation() {
		// TODO Auto-generated constructor stub
	}
	


	public SaleOperation(Vehicle vehicle, Client buyer, int paidAmount, PaymentType paymentType) {
		
		super(vehicle, buyer);
		this.paidAmount = paidAmount;
		this.paymentType = paymentType;
	}
	

	public int getSellingAmount() {
		return paidAmount;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}

}
