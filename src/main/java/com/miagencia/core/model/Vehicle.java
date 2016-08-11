package com.miagencia.core.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="VEHICLES")
public class Vehicle extends PersistableEntity {
	

	// TODO HAY QUE PONERLE UN OWNER / TITULAR
	
	// Auto-Camión, Moto.
	@Enumerated(EnumType.STRING)
	@Column(name="VEHICLE_TYPE", nullable=false)
	private VehicleType vehicleType;
	
	// Marca
	@Column(name="MAKE_ID", nullable=false)
	private int makeId;
	
	// Modelo
	@Column(name="MODEL_ID", nullable=false)
	private int modelId;
	
	// Agencia concesionaria 
	// @ManyToOne not null
	//private Dealership dealer;
	// TODO por ahora no pongamos una relacion de doble conocimiento, pongamos solo la
	// lista de vehicles en dealer. despues vemos si la necesitamos a esta
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "LOCATION_ID")
	private Location location;
	
	// Patente
	@Column(name="PLATE", nullable=false)
	private String plate;

	// Nro. de Chasis
	@Column(name="CHASSIS_NUMBER")
	private String chassisNumber;
	
	// Nro. de Motor
	@Column(name="ENGINE_NUMBER")
	private String engineNumber;
	
	// Descripción
	@Column(name="DESCRIPTION")
	private String description;
		
	@Column(name="IMAGE_URL")
	private String imageUrl;

	// Los campos a partir de ac� se pueden reemplazar con features
	// Año
	@Column(name="MODEL_YEAR", nullable=false)
	private int modelYear;
	
	//Color
	@Column(name="COLOR", nullable=false)
	private String color;

	
	// Kilometraje
	@Column(name="KILOMETERS", nullable=false)
	private Long kilometers;
	
	// combustible
	@Enumerated(EnumType.STRING)
	@Column(name="FUEL_TYPE", nullable=false)
	private FuelType fuelType;
	
	// Trasmisión - Automática, Manual, No especificada
	@Enumerated(EnumType.STRING)
	@Column(name="TRANSMISSION", nullable=false)
	private Transmission transmission;
		
	// Condición - Nuevo o usado.
	@Enumerated(EnumType.STRING)
	@Column(name="VEHICLE_CONDITION", nullable=false)
	private VehicleCondition vehicleCondition;
	
	// direccion - asistida - electronica - hidraulica - mecanica
	//Options
	// cristales - manuales - electricos
	//puede tener una lista de atributos, para que se dibujen en la publicacion, como en mercadolibre

	//private List<String> features;
	// o List<Feature> features;
	// o List<Iteger> featureIds;
	// es como lo de make and model solo que es una lista, estudiar la mejor opcion
	

	//documentación?
	
	


	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "VEHICLE_FEATURE_VALUE", catalog = "miagencia", joinColumns = { 
			@JoinColumn(name = "VEHICLE_ID", nullable = false, updatable = false) }, 
			inverseJoinColumns = { @JoinColumn(name = "FEATURE_VALUE_ID", 
					nullable = false, updatable = false) })
	private List<VehicleFeatureValue> featuresValues;

	


	
	public Vehicle(){
	// No-args constructor for Hibernate.
	}


	public Vehicle(VehicleType vehicleType, int makeId, int modelId,
			int modelYear, String plate, String color, String chassisNumber,
			String engineNumber, Long kilometers, FuelType fuelType,
			Transmission transmission, String description, String city,
			int provinceId, VehicleCondition vehicleCondition) {
		
		super();
		this.vehicleType = vehicleType;
		this.makeId = makeId;
		this.modelId = modelId;
		this.modelYear = modelYear;
		this.plate = plate;
		this.color = color;
		this.chassisNumber = chassisNumber;
		this.engineNumber = engineNumber;
		this.kilometers = kilometers;
		this.fuelType = fuelType;
		this.transmission = transmission;
		this.description = description;
		this.vehicleCondition = vehicleCondition;

	}


	public int getModelYear() {
		return modelYear;
	}

	public void setModelYear(int modelYear) {
		this.modelYear = modelYear;
	}

	public String getPlate() {
		return plate;
	}

	public void setPlate(String plate) {
		this.plate = plate;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getChassisNumber() {
		return chassisNumber;
	}

	public void setChassisNumber(String chassisNumber) {
		this.chassisNumber = chassisNumber;
	}

	public String getEngineNumber() {
		return engineNumber;
	}

	public void setEngineNumber(String engineNumber) {
		this.engineNumber = engineNumber;
	}

	public Long getKilometers() {
		return kilometers;
	}

	public void setKilometers(Long kilometers) {
		this.kilometers = kilometers;
	}

	public FuelType getFuelType() {
		return fuelType;
	}

	public void setFuelType(FuelType fuelType) {
		this.fuelType = fuelType;
	}

	public Transmission getTransmission() {
		return transmission;
	}

	public void setTransmission(Transmission transmission) {
		this.transmission = transmission;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public int getMakeId() {
		return makeId;
	}


	public void setMakeId(int makeId) {
		this.makeId = makeId;
	}


	public int getModelId() {
		return modelId;
	}


	public void setModelId(int modelId) {
		this.modelId = modelId;
	}


	public VehicleType getVehicleType() {
		return vehicleType;
	}


	public void setVehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}


	public VehicleCondition getVehicleCondition() {
		return vehicleCondition;
	}


	public void setVehicleCondition(VehicleCondition vehicleCondition) {
		this.vehicleCondition = vehicleCondition;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public List<VehicleFeatureValue> getFeaturesValues() {
		return featuresValues;
	}


	public void setFeaturesValues(List<VehicleFeatureValue> featuresValues) {
		this.featuresValues = featuresValues;
	}
	
	
	
	public Location getLocation() {
		return location;
	}


	public void setLocation(Location location) {
		this.location = location;
	}


	public String getOlxIdByFeature(String feature){
		for (VehicleFeatureValue vehicleFeatureValue : featuresValues) {
			if(vehicleFeatureValue.getFeature().getName().equals(feature)){
				return vehicleFeatureValue.getOlxId();
			}
		}
		return null;
	}
	
	public String getMercadoLibreIdByFeature(String feature){
		for (VehicleFeatureValue vehicleFeatureValue : featuresValues) {
			if(vehicleFeatureValue.getFeature().getName().equals(feature)){
				return vehicleFeatureValue.getMercadoLibreId();
			}
		}
		return null;
	}
	
}
