package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Table(name="Vehicles")
public class Vehicle extends PersistableEntity {
	

	// TODO HAY QUE PONERLE UN OWNER / TITULAR
	
	// Auto-Camión, Moto.
	@Enumerated(EnumType.STRING)
	@Column(nullable=false)
	private VehicleType vehicleType;
	
	// Marca
	@Column(nullable=false)
	private int makeId;
	
	// Modelo
	@Column(nullable=false)
	private int modelId;
	
	// Agencia concesionaria 
	// @ManyToOne not null
	//private Dealership dealer;
	// TODO por ahora no pongamos una relacion de doble conocimiento, pongamos solo la
	// lista de vehicles en dealer. despues vemos si la necesitamos a esta

	// Año
	@Column(nullable=false)
	private int modelYear;
	
	// Patente
	@Column(nullable=false)
	private String plate;
	
	//Color
	@Column(nullable=false)
	private String colour;
	
	// Nro. de Chasis
	private String chassisNumber;
	
	// Nro. de Motor
	private String engineNumber;
	
	// Kilometraje
	@Column(nullable=false)
	private Long kilometers;
	
	// combustible
	@Enumerated(EnumType.STRING)
	@Column(nullable=false)
	private FuelType fuelType;
	
	// Trasmisión - Automática, Manual, No especificada
	@Enumerated(EnumType.STRING)
	@Column(nullable=false)
	private Transmission transmission;
		
	// Descripción
	private String description;
		
	// Ciudad. TODO Ver si se modela con un int
	private String city;
	

	private int provinceId;
		
	// Condición - Nuevo o usado.
	@Enumerated(EnumType.STRING)
	private VehicleCondition vehicleCondition;
	

	private String imageUrl;
	
	
	// Fotos?
	
	//documentación?
	
	// direccion - asistida - electronica - hidraulica - mecanica

	
	//Options
	// cristales - manuales - electricos
	//puede tener una lista de atributos, para que se dibujen en la publicacion, como en mercadolibre
	// ej http://www.autotrader.com/
	// ej nafta/disel - aire - levantavidrios - cant puertas etc
	// ver en https://sell.autotrader.com/syc/car_details.jsf?conversationId=184283


	
	public Vehicle(){
		// No-args constructor for Hibernate.
	}


	public Vehicle(VehicleType vehicleType, int makeId, int modelId,
			int modelYear, String plate, String colour, String chassisNumber,
			String engineNumber, Long kilometers, FuelType fuelType,
			Transmission transmission, String description, String city,
			int provinceId, VehicleCondition vehicleCondition) {
		
		super();
		this.vehicleType = vehicleType;
		this.makeId = makeId;
		this.modelId = modelId;
		this.modelYear = modelYear;
		this.plate = plate;
		this.colour = colour;
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

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
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
