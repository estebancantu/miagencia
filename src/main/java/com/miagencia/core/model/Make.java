package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.miagencia.rest.dto.ModelDTO;

@Entity
@Table(name="MAKES")
public class Make extends PersistableEntity {

	@Enumerated(EnumType.STRING)
	@Column(name="VEHICLE_TYPE", nullable=false)
	private VehicleType vehicleType;
	
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="INFOAUTO_MAKE", nullable=false)
	private Long infoautoMake;
	

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "make")
	private List<Model> models;
	
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


	public Long getInfoautoMake() {
		return infoautoMake;
	}


	public void setInfoautoMake(Long infoautoMake) {
		this.infoautoMake = infoautoMake;
	}


	public List<Model> getModels() {
		return models;
	}


	public void setModels(List<Model> models) {
		this.models = models;
	}
	
	
	
	
	
}
