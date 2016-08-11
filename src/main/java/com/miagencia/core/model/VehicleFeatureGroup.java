package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="FEATURE_GROUP")
public class VehicleFeatureGroup  extends PersistableEntity{

	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="MERCADO_LIBRE_ID", nullable=false)
	private String mercadoLibreId;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "group")
	private List<VehicleFeature> features;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<VehicleFeature> getFeatures() {
		return features;
	}

	public void setFeatures(List<VehicleFeature> features) {
		this.features = features;
	}

	public String getMercadoLibreId() {
		return mercadoLibreId;
	}

	public void setMercadoLibreId(String mercadoLibreId) {
		this.mercadoLibreId = mercadoLibreId;
	}
	
	
	
	

}
