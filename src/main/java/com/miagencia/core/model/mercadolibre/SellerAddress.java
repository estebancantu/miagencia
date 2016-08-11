
package com.miagencia.core.model.mercadolibre;

import javax.annotation.Generated;

import com.miagencia.core.model.City;
import com.miagencia.core.model.Country;
import com.miagencia.core.model.State;

@Generated("org.jsonschema2pojo")
public class SellerAddress {

    private String comment;
    private String address_line;
    private String zip_code;
    private City city;
    private State state;
    private Country country;
    private String latitude;
    private String longitude;
    private SearchLocation search_location;

    /**
     * 
     * @return
     *     The comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * 
     * @param comment
     *     The comment
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

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

    /**
     * 
     * @return
     *     The city
     */
    public City getCity() {
        return city;
    }

    /**
     * 
     * @param city
     *     The city
     */
    public void setCity(City city) {
        this.city = city;
    }

    /**
     * 
     * @return
     *     The state
     */
    public State getState() {
        return state;
    }

    /**
     * 
     * @param state
     *     The state
     */
    public void setState(State state) {
        this.state = state;
    }

    /**
     * 
     * @return
     *     The country
     */
    public Country getCountry() {
        return country;
    }

    /**
     * 
     * @param country
     *     The country
     */
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
     *     The search_location
     */
    public SearchLocation getSearch_location() {
        return search_location;
    }

    /**
     * 
     * @param search_location
     *     The search_location
     */
    public void setSearch_location(SearchLocation search_location) {
        this.search_location = search_location;
    }

}
