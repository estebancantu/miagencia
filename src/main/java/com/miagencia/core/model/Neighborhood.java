
package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="NEIGHBORHOOD")
public class Neighborhood extends PersistableEntity{

	@Column(name="MERCADO_LIBRE_ID", nullable=false)
    private String mercadolibreId;
	@Column(name="NAME", nullable=false)
	private String name;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "CITY_ID", nullable = false)
	private City city;

	
    public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
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
