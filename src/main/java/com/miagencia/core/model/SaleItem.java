package com.miagencia.core.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="SALE_ITEMS")
public class SaleItem extends PersistableEntity {
	
	
	
	
	@OneToOne
	@JoinColumn(name="VEHICLE_ID", nullable=false)
	private Vehicle vehicle;
	
	@Column(name="SELLING_PRICE", nullable=false)
	private int sellingPrice;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS", nullable=false)
	private VehicleStatus status;
	
   /** 
    * Título de propiedad
    */
	@Column(name="HAS_REGISTRATION")
	private Boolean hasRegistration;
	
   /** 
    * Certificado de dominio
    */
	@Column(name="HAS_DOMAIN_CERTIFICATE")
	private Boolean hasDomainCertificate;
		
   /** 
    * Deuda patentes
    */
	@Column(name="TAX_DEBT")
	private int taxDebt;
	
   /** 
    * Multas 
    */
	@Column(name="TRAFFIC_TICKETS_DEBT")
	private int trafficTicketsDebt;
	
	/**
	 * Gastos
	 */
	@OneToMany(mappedBy="saleItem", cascade = CascadeType.ALL)
	private List<Expense> expenses = new ArrayList<Expense>();	
	
	
	
	
	
	private SaleItem() {
		
	}
	
	
	public SaleItem(Vehicle vehicle, int sellingPrice){
		
		this.vehicle = vehicle;
		this.sellingPrice = sellingPrice;
		this.status = VehicleStatus.AVAILABLE;
	}
	
	public SaleItem(Vehicle vehicle, int sellingPrice, boolean hasRegistration, boolean hasDomainCertificate, 
			int taxDebt, int trafficTicketsDebt){
		
		this.vehicle = vehicle;
		this.sellingPrice = sellingPrice;
		this.status = VehicleStatus.AVAILABLE;
		this.hasRegistration = hasRegistration;
		this.hasDomainCertificate = hasDomainCertificate;
		this.taxDebt = taxDebt;
		this.trafficTicketsDebt = trafficTicketsDebt;
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


	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}


	public boolean isHasRegistration() {
		return hasRegistration;
	}


	public void setHasRegistration(boolean hasRegistration) {
		this.hasRegistration = hasRegistration;
	}


	public boolean isHasDomainCertificate() {
		return hasDomainCertificate;
	}


	public void setHasDomainCertificate(boolean hasDomainCertificate) {
		this.hasDomainCertificate = hasDomainCertificate;
	}

	public int getTaxDebt() {
		return taxDebt;
	}

	public void setTaxDebt(int taxDebt) {
		this.taxDebt = taxDebt;
	}

	public int getTrafficTicketsDebt() {
		return trafficTicketsDebt;
	}

	public void setTrafficTicketsDebt(int trafficTicketsDebt) {
		this.trafficTicketsDebt = trafficTicketsDebt;
	}

}
