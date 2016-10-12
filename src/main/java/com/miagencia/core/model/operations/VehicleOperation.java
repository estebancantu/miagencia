package com.miagencia.core.model.operations;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.Table;

import com.miagencia.core.model.Client;
import com.miagencia.core.model.PersistableEntity;
import com.miagencia.core.model.Vehicle;

// EL MAPEO HAY QUE HACERLO CON TABLE PER SUB CLASS (o joined). 
// OSEA UNA TABLA POR CADA SUB CLASE Y UNA PARA ESTA CLASE TAMBIEN,
// Y TODO SE HACE CON JOINS. NO HAY INFO REPETIDA EN LAS TABLAS COMO 
// CON LA ESTRATEGIA DE TABLE PER CONCRETE CLASS.

@Entity
@Table(name="VEHICLE_OPERATION")
@Inheritance(strategy=InheritanceType.JOINED)
public abstract class VehicleOperation extends PersistableEntity {
	
	
	public static final String BUY ="BUY";
	public static final String CONSIGNMENT ="CONSIGNMENT";
	public static final String RESERVATION ="RESERVATION";
	public static final String SALE ="SALE";

	
	
	
	@ManyToOne(fetch=FetchType.EAGER, cascade = CascadeType.ALL )
	@JoinColumn(name="VEHICLE_ID", nullable = false)
	private Vehicle vehicle;

	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="CLIENT_ID", nullable=false)
	private Client client;

	

	public VehicleOperation(Vehicle vehicle, Client client){
		
		this.vehicle = vehicle;
		this.client = client;
	}


	// No usar. Lo necesita hibernate.
	public VehicleOperation() {
		// TODO Auto-generated constructor stub
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
