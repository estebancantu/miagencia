
package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="COUNTRIES")
public class Country extends PersistableEntity {

	@Column(name="MERCADO_LIBRE_ID", nullable=false)
    private String mercadolibreId;
	@Column(name="OLX_ID", nullable=false)
    private String olxId;
    @Column(name="NAME", nullable=false)
    private String name;
    
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "country")
    private List<State> stateList;
    
    

	public List<State> getStateList() {
		return stateList;
	}

	public void setStateList(List<State> stateList) {
		this.stateList = stateList;
	}
	

	public String getOlxId() {
		return olxId;
	}

	public void setOlxId(String olxId) {
		this.olxId = olxId;
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

	public String getMercadolibreId() {
		return mercadolibreId;
	}

	public void setMercadolibreId(String mercadolibreId) {
		this.mercadolibreId = mercadolibreId;
	}
    
    

}
