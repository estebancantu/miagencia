package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.miagencia.core.model.mercadolibre.VehicleFeatureType;

@Entity
@Table(name="FEATURE")
public class VehicleFeature extends PersistableEntity{

	public static final String COLOR = "Color";
	public static final String FUEL = "Combustible";
	public static final String KILOMETER_MERCADOLIBRE_ID = "MLA1744-KMTS";
	public static final String COLOR_MERCADOLIBRE_ID = "MLA1744-COLOREXT";
	public static final String FUEL_MERCADOLIBRE_ID = "MLA1744-COMBUS";
    public static final String DOOR_MERCADOLIBRE_ID = "MLA1744-DOOR";
    public static final String YEAR_MERCADOLIBRE_ID = "MLA1744-YEAR";
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="MERCADO_LIBRE_ID", nullable=false)
	private String mercadoLibreId;
	
	@Enumerated(EnumType.STRING)
	@Column(name="MERCADO_LIBRE_TYPE", nullable=false)
	private VehicleFeatureType vehicleFeatureType;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GROUP_ID", nullable = false)
	private VehicleFeatureGroup group;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "feature")
	private List<VehicleFeatureValue> featureValue;
	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<VehicleFeatureValue> getFeatureValue() {
		return featureValue;
	}
	public void setFeatureValue(List<VehicleFeatureValue> featureValue) {
		this.featureValue = featureValue;
	}
	public VehicleFeatureGroup getGroup() {
		return group;
	}
	public void setGroup(VehicleFeatureGroup group) {
		this.group = group;
	}
	public String getMercadoLibreId() {
		return mercadoLibreId;
	}
	public void setMercadoLibreId(String mercadoLibreId) {
		this.mercadoLibreId = mercadoLibreId;
	}
	public VehicleFeatureType getVehicleFeatureType() {
		return vehicleFeatureType;
	}
	public void setVehicleFeatureType(VehicleFeatureType vehicleFeatureType) {
		this.vehicleFeatureType = vehicleFeatureType;
	}

	
	

}
