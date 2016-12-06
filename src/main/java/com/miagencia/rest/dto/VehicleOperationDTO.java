package com.miagencia.rest.dto;

import java.util.Date;

public class VehicleOperationDTO {
	
	
	private Date date;
	
	private String operationType;
	
	private String clientName;
	
	private String clientId;
	
	private String buyOperationPaidAmount;
	
	private String consignmentOperationDealPrice;
	
	private String reservationOperationAdvancePayment;
	
	private String saleOperationSaleAmount;

	
	
	
	
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getOperationType() {
		return operationType;
	}

	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getBuyOperationPaidAmount() {
		return buyOperationPaidAmount;
	}

	public void setBuyOperationPaidAmount(String buyOperationPaidAmount) {
		this.buyOperationPaidAmount = buyOperationPaidAmount;
	}

	public String getConsignmentOperationDealPrice() {
		return consignmentOperationDealPrice;
	}

	public void setConsignmentOperationDealPrice(
			String consignmentOperationDealPrice) {
		this.consignmentOperationDealPrice = consignmentOperationDealPrice;
	}

	public String getReservationOperationAdvancePayment() {
		return reservationOperationAdvancePayment;
	}

	public void setReservationOperationAdvancePayment(
			String reservationOperationAdvancePayment) {
		this.reservationOperationAdvancePayment = reservationOperationAdvancePayment;
	}

	public String getSaleOperationSaleAmount() {
		return saleOperationSaleAmount;
	}

	public void setSaleOperationSaleAmount(String saleOperationSaleAmount) {
		this.saleOperationSaleAmount = saleOperationSaleAmount;
	}

}
