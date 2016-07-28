package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
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

	// Año
	@Column(name="MODEL_YEAR", nullable=false)
	private int modelYear;
	
	// Patente
	@Column(name="PLATE", nullable=false)
	private String plate;
	
	//Color
	@Column(name="COLOR", nullable=false)
	private String color;
	
	// Nro. de Chasis
	@Column(name="CHASSIS_NUMBER")
	private String chassisNumber;
	
	// Nro. de Motor
	@Column(name="ENGINE_NUMBER")
	private String engineNumber;
	
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
		
	// Descripción
	@Column(name="DESCRIPTION")
	private String description;
		
	// Ciudad. TODO Ver si se modela con un int
	@Column(name="CITY")
	private String city;
	
	@Column(name="PROVINCE_ID")
	private int provinceId;
		
	// Condición - Nuevo o usado.
	@Enumerated(EnumType.STRING)
	@Column(name="VEHICLE_CONDITION", nullable=false)
	private VehicleCondition vehicleCondition;
	
	@Column(name="IMAGE_URL")
	private String imageUrl;
	
	// direccion - asistida - electronica - hidraulica - mecanica
	//Options
	// cristales - manuales - electricos
	//puede tener una lista de atributos, para que se dibujen en la publicacion, como en mercadolibre

	//private List<String> features;
	// o List<Feature> features;
	// o List<Iteger> featureIds;
	// es como lo de make and model solo que es una lista, estudiar la mejor opcion
	

	//documentación?
	
	

	


	
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
		this.city = city;
		this.provinceId = provinceId;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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


	public int getProvinceId() {
		return provinceId;
	}


	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
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
	

}
