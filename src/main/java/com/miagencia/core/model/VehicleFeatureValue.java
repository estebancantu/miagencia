package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="FEATURE_VALUE")
public class VehicleFeatureValue extends PersistableEntity{

	@Column(name="VALUE", nullable=false)
	private String value;
	
	@Column(name="MERCADO_LIBRE_ID", nullable=false)
	private String mercadoLibreId;
	
	@Column(name="OLX_ID", nullable=false)
	private String olxId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "FEATURE_ID", nullable = false)
	private VehicleFeature feature;
	
	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getMercadoLibreId() {
		return mercadoLibreId;
	}
	public void setMercadoLibreId(String mercadoLibreId) {
		this.mercadoLibreId = mercadoLibreId;
	}
	public VehicleFeature getFeature() {
		return feature;
	}
	public void setFeature(VehicleFeature feature) {
		this.feature = feature;
	}
	public String getOlxId() {
		return olxId;
	}
	public void setOlxId(String olxId) {
		this.olxId = olxId;
	}
	
	
	
	

}
