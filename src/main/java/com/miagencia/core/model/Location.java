
package com.miagencia.core.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="LOCATION")
public class Location extends PersistableEntity{

	
	@OneToOne(mappedBy="location", cascade=CascadeType.ALL)
	private Dealership dealership;
	
	@Column(name="ADDRESS_LINE", nullable=false)
    private String addressLine;
	@Column(name="ZIP_CODE", nullable=false)
	private String zipCode;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "NEIGHBORHOOD_ID", nullable = false)
    private Neighborhood neighborhood;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CITY_ID", nullable = false)
	private City city;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STATE_ID", nullable = false)
	private State state;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "COUNTRY_ID", nullable = false)
    private Country country;
	@Column(name="LATITUDE", nullable=false)
    private String latitude;
	@Column(name="LONGITUDE", nullable=false)
    private String longitude;
	@Column(name="OPEN_HOURS", nullable=false)
    private String openHours;

   
  

    public Dealership getDealership() {
		return dealership;
	}

	public void setDealership(Dealership dealership) {
		this.dealership = dealership;
	}

	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Neighborhood getNeighborhood() {
		return neighborhood;
	}

	public void setNeighborhood(Neighborhood neighborhood) {
		this.neighborhood = neighborhood;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	/**
     * 
     * @return
     *     The latitude
     */
    public String getLatitude() {
        return latitude;
    }

    /**
     * 
     * @param latitude
     *     The latitude
     */
    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    /**
     * 
     * @return
     *     The longitude
     */
    public String getLongitude() {
        return longitude;
    }

    /**
     * 
     * @param longitude
     *     The longitude
     */
    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

	public String getOpenHours() {
		return openHours;
	}

	public void setOpenHours(String openHours) {
		this.openHours = openHours;
	}

   
}
