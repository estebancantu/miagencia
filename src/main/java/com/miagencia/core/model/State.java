
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
@Table(name="STATE")
public class State extends PersistableEntity{

	@Column(name="MERCADO_LIBRE_ID", nullable=false)
	private String mercadolibreId;
	@Column(name="NAME", nullable=false)
    private String name;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "COUNTRY_ID", nullable = false)
    private Country country;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "state")
	private List<City> cityList;
    
   

    public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public String getMercadolibreId() {
		return mercadolibreId;
	}

	public void setMercadolibreId(String mercadolibreId) {
		this.mercadolibreId = mercadolibreId;
	}
	
	

	public List<City> getCityList() {
		return cityList;
	}

	public void setCityList(List<City> cityList) {
		this.cityList = cityList;
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
