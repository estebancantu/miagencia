package com.miagencia.core.model.operations;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.PersistableEntity;
import com.miagencia.core.model.Vehicle;

// EL MAPEO HAY QUE HACERLO CON TABLE PER SUB CLASS (o joined). 
// OSEA UNA TABLA POR CADA SUB CLASE Y UNA PARA ESTA CLASE TAMBIEN,
// Y TODO SE HACE CON JOINS. NO HAY INFO REPETIDA EN LAS TABLAS COMO 
// CON LA ESTRATEGIA DE TABLE PER CONCRETE CLASS.

@MappedSuperclass
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class VehicleOperation extends PersistableEntity {
	
	
	public static final String BUY ="BUY";
	public static final String CONSIGNMENT ="CONSIGNMENT";
	public static final String RESERVATION ="RESERVATION";
	public static final String SALE ="SALE";

	
	private Date operationDate;
	
	
	@ManyToOne(fetch=FetchType.EAGER, cascade = CascadeType.ALL )
	private Vehicle vehicle;

	
	@OneToOne(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name="clientId", nullable=false)
	private Client client;
	

	public VehicleOperation(Vehicle vehicle, Client client){
		
		this.vehicle = vehicle;
		this.client = client;
		this.operationDate = new Date();
	}


	public Date getOperationDate() {
		return operationDate;
	}

	public void setOperationDate(Date operationDate) {
		this.operationDate = operationDate;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

}
