
package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CITY")
public class City extends PersistableEntity{

	@Column(name="MERCADO_LIBRE_ID", nullable=false)
    private String mercadolibreId;
	@Column(name="NAME", nullable=false)
	private String name;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "STATE_ID", nullable = false)
    private State state;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "city")
	private List<Neighborhood> neighborhoodList;

	
 

    public List<Neighborhood> getNeighborhoodList() {
		return neighborhoodList;
	}

	public void setNeighborhoodList(List<Neighborhood> neighborhoodList) {
		this.neighborhoodList = neighborhoodList;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public String getMercadolibreId() {
		return mercadolibreId;
	}

	public void setMercadolibreId(String mercadolibreId) {
		this.mercadolibreId = mercadolibreId;
	}

	/**
     * 
     * @return
     *     The name
     */
    public String getName() {
        return name;
    }

    /**
     * 
     * @param name
     *     The name
     */
    public void setName(String name) {
        this.name = name;
    }

}
