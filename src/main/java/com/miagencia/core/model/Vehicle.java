package com.miagencia.core.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
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
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "DEALER_ID", nullable = false)
    private Dealership dealer;
	

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
		
	// Lista de imagenes
	@ElementCollection
	@CollectionTable(name="IMAGE_URLS", joinColumns=@JoinColumn(name="VEHICLE_ID"))
	@Column(name="IMAGE_URL")
	private List<String> imageUrls = new ArrayList<String>();

	// Año
	@Enumerated(EnumType.STRING)
	@Column(name="MODEL_YEAR", nullable=false)
	private Year modelYear;
	
	//Color
	@Enumerated(EnumType.STRING)
	@Column(name="COLOR", nullable=false)
	private Color color;
	
	//Door
    @Enumerated(EnumType.STRING)
    @Column(name="DOOR_QUANTITY", nullable=false)
    private Door doorQuantity;

	
	// Kilometraje
	@Column(name="KILOMETERS", nullable=false)
	private Long kilometers;
	
	// combustible
	@Enumerated(EnumType.STRING)
	@Column(name="FUEL_TYPE")
	private FuelType fuelType;
	
	// Trasmisión - Automática, Manual, No especificada
	@Enumerated(EnumType.STRING)
	@Column(name="TRANSMISSION")
	private Transmission transmission;
		
	// Condición - Nuevo o usado.
	@Enumerated(EnumType.STRING)
	@Column(name="VEHICLE_CONDITION", nullable=false)
	private VehicleCondition vehicleCondition;
	
	// direccion - asistida - electronica - hidraulica - mecanica
	//Options
	// cristales - manuales - electricos
	//puede tener una lista de atributos, para que se dibujen en la publicacion, como en mercadolibre


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
			Year modelYear, String plate, Color color, String chassisNumber,
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



	public Year getModelYear() {
        return modelYear;
    }


    public void setModelYear(Year modelYear) {
        this.modelYear = modelYear;
    }


    public Color getColor() {
        return color;
    }


    public void setColor(Color color) {
        this.color = color;
    }


    public Door getDoorQuantity() {
        return doorQuantity;
    }


    public void setDoorQuantity(Door doorQuantity) {
        this.doorQuantity = doorQuantity;
    }


    public String getPlate() {
		return plate;
	}

	public void setPlate(String plate) {
		this.plate = plate;
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

	public List<VehicleFeatureValue> getFeaturesValues() {
		return featuresValues;
	}


	public void setFeaturesValues(List<VehicleFeatureValue> featuresValues) {
		this.featuresValues = featuresValues;
	}
	
	
	
	public Dealership getDealer() {
        return dealer;
    }


    public void setDealer(Dealership dealer) {
        this.dealer = dealer;
    }


	
	public String getMercadoLibreIdByFeature(String feature){
		for (VehicleFeatureValue vehicleFeatureValue : featuresValues) {
			if(vehicleFeatureValue.getFeature().getName().equals(feature)){
				return vehicleFeatureValue.getMercadoLibreId();
			}
		}
		return null;
	}


	public List<String> getImageUrls() {
		return imageUrls;
	}


	public void setImageUrls(List<String> imageUrls) {
		this.imageUrls = imageUrls;
	}


}
