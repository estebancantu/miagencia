package com.miagencia.rest.dto.operations;

import com.miagencia.rest.dto.LocationDTO;
import com.miagencia.rest.dto.VehicleDTO;


/**
 * 
 ******************************************************************************
 * Request generado por el front-end para una nueva adquisición de vehículo 
 * de parte de la agencia. Esta adquisición puede ser tanto por una compra
 * de parte de la agencia a un vendedor (donde la agencia pasa a ser la dueña
 * del vehiculo), como también por una operación de 
 * concesión donde la agencia actúa de intermediario entre el vendedor y un 
 * futuro comprador. 
 * 
 ******************************************************************************
 * @author estebancantu
 *
 */
public class NewVehicleRequestDTO {
	
	
   /**
    * DTO del nuevo vehículo.
    */
	private VehicleDTO vehicleDto;
	
	/**
	  * DTO de la ubicaci�n del vehiculo.
	*/
	private LocationDTO locationDTO;
	
   /**
    * Para compra, es el id del vendedor.
    * Para concesión, es el id del cliente que deja su vehículo en concesión.
    */
	private Long clientId;
	
   /** 
	* Operacion de compra o de concesion. 
	*/
	private String operationType;
	
   /** 
	* Para compra, el precio al cual se adquiere el vehiculo.
	* Para concesión, es el precio que se acuerda pagar al vendedor una vez que 
	* el vehiculo sea vendido. 
	* Notar que es distinto del sellingPrice, que es el precio al cual la agencia pone el 
	* vehiculo a la venta. 
	* En caso de concesión, la comisión que recibe la agencia por vender el vehículo es la
	* diferencia entre sellingPrice - dealPrice.
	*/
	private int dealPrice;
	
   /** 
	* Precio al cual se pone el vehiculo a la venta. Aplica tanto a compra como concesión.
	*/
	private int sellingPrice;
	
   /**
    * Tipo de pago.
    */
	private String paymentType;
	
   /** 
    * Deuda patentes 
    */
	private int taxDebt;
	
   /** 
    * Multas 
    */
	private int trafficTicketsDebt;
	
   /** 
    * Título de propiedad 
    */
	private boolean hasRegistration;
	
   /** 
    * Certificado de dominio 
    */
	private boolean hasDomainCertificate;

	
	
	
	public VehicleDTO getVehicleDto() {
		return vehicleDto;
	}

	public void setVehicleDto(VehicleDTO vehicleDto) {
		this.vehicleDto = vehicleDto;
	}

	public Long getClientId() {
		return clientId;
	}

	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}

	public String getOperationType() {
		return operationType;
	}

	public void setOperationType(String operation) {
		this.operationType = operation;
	}

	public int getDealPrice() {
		return dealPrice;
	}

	public void setDealPrice(int dealPrice) {
		this.dealPrice = dealPrice;
	}

	public int getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
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

	public LocationDTO getLocationDTO() {
		return locationDTO;
	}

	public void setLocationDTO(LocationDTO locationDTO) {
		this.locationDTO = locationDTO;
	}
	
	

}
