
package com.miagencia.core.model.mercadolibre;


public class Location{

	
    private String address_line = "Calle 13 n124";
	private String zip_code;
    private Neighborhood neighborhood;
	private City city;
	private State state;
    private Country country;
    private String latitude = "-34.9985848" ;
    private String longitude = "-58.052689";
    private String open_hours;

    /**
     * 
     * @return
     *     The address_line
     */
    public String getAddress_line() {
        return address_line;
    }

    /**
     * 
     * @param address_line
     *     The address_line
     */
    public void setAddress_line(String address_line) {
        this.address_line = address_line;
    }

    /**
     * 
     * @return
     *     The zip_code
     */
    public String getZip_code() {
        return zip_code;
    }

    /**
     * 
     * @param zip_code
     *     The zip_code
     */
    public void setZip_code(String zip_code) {
        this.zip_code = zip_code;
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

    /**
     * 
     * @return
     *     The open_hours
     */
    public String getOpen_hours() {
        return open_hours;
    }

    /**
     * 
     * @param open_hours
     *     The open_hours
     */
    public void setOpen_hours(String open_hours) {
        this.open_hours = open_hours;
    }

}
