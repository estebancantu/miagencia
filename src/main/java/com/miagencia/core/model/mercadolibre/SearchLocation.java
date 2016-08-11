
package com.miagencia.core.model.mercadolibre;

import javax.annotation.Generated;

import com.miagencia.core.model.City;
import com.miagencia.core.model.Neighborhood;
import com.miagencia.core.model.State;

@Generated("org.jsonschema2pojo")
public class SearchLocation {

    private Neighborhood neighborhood;
    private City city;
    private State state;

    /**
     * 
     * @return
     *     The neighborhood
     */
    public Neighborhood getNeighborhood() {
        return neighborhood;
    }

    /**
     * 
     * @param neighborhood
     *     The neighborhood
     */
    public void setNeighborhood(Neighborhood neighborhood) {
        this.neighborhood = neighborhood;
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

}
