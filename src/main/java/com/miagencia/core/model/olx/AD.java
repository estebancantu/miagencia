package com.miagencia.core.model.olx;

import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.adapters.XmlAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import javax.xml.bind.annotation.XmlAccessType;

@XmlAccessorType(XmlAccessType.FIELD)
public class AD {
	
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
	private String id;
	private String vehicleMake;
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String title;
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String description;
	@XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String category;
    private String price;
    private String priceCurrency;
    private String vehicleFuel;
    private String vehicleColor;
    private String vehicleMileage;
    private String vehicleCondition;
    private String vehicleModel;
    private String vehicleYear;
    private String[] imageUrl;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String contactPhone;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String contactEmail;
    private String contactName;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationNeighborhood;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationCity;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationState;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationCountry;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationLongitude;
    @XmlJavaTypeAdapter(value = AdaptorCDATA.class)
    private String locationLatitud;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getVehicleMake() {
		return vehicleMake;
	}
	public void setVehicleMake(String vehicleMake) {
		this.vehicleMake = vehicleMake;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPriceCurrency() {
		return priceCurrency;
	}
	public void setPriceCurrency(String priceCurrency) {
		this.priceCurrency = priceCurrency;
	}
	public String getVehicleMileage() {
		return vehicleMileage;
	}
	public void setVehicleMileage(String vehicleMileage) {
		this.vehicleMileage = vehicleMileage;
	}
	public String getVehicleCondition() {
		return vehicleCondition;
	}
	public void setVehicleCondition(String vehicleCondition) {
		this.vehicleCondition = vehicleCondition;
	}
	public String getVehicleModel() {
		return vehicleModel;
	}
	public void setVehicleModel(String vehicleModel) {
		this.vehicleModel = vehicleModel;
	}
	public String getVehicleYear() {
		return vehicleYear;
	}
	public void setVehicleYear(String vehicleYear) {
		this.vehicleYear = vehicleYear;
	}
	public String[] getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String[] imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	public String getContactEmail() {
		return contactEmail;
	}
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	public String getLocationNeighborhood() {
		return locationNeighborhood;
	}
	public void setLocationNeighborhood(String locationNeighborhood) {
		this.locationNeighborhood = locationNeighborhood;
	}
	public String getLocationCity() {
		return locationCity;
	}
	public void setLocationCity(String locationCity) {
		this.locationCity = locationCity;
	}
	public String getLocationState() {
		return locationState;
	}
	public void setLocationState(String locationState) {
		this.locationState = locationState;
	}
	public String getLocationCountry() {
		return locationCountry;
	}
	public void setLocationCountry(String locationCountry) {
		this.locationCountry = locationCountry;
	}
	public String getLocationLongitude() {
		return locationLongitude;
	}
	public void setLocationLongitude(String locationLongitude) {
		this.locationLongitude = locationLongitude;
	}
	public String getLocationLatitud() {
		return locationLatitud;
	}
	public void setLocationLatitud(String locationLatitud) {
		this.locationLatitud = locationLatitud;
	}
	public String getVehicleFuel() {
		return vehicleFuel;
	}
	public void setVehicleFuel(String vehicleFuel) {
		this.vehicleFuel = vehicleFuel;
	}
	public String getVehicleColor() {
		return vehicleColor;
	}
	public void setVehicleColor(String vehicleColor) {
		this.vehicleColor = vehicleColor;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
    
    
}