package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Table(name="MAKES")
public class Make extends PersistableEntity {

	@Enumerated(EnumType.STRING)
	@Column(name="vehicleType", nullable=false)
	private VehicleType vehicleType;
	
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="OLX_ID", nullable=false)
	private String olxId;  


	public VehicleType getVehicleType() {
		return vehicleType;
	}


	public void setVehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getOlxId() {
		return olxId;
	}


	public void setOlxId(String olxId) {
		this.olxId = olxId;
	}
	
	
	
}
