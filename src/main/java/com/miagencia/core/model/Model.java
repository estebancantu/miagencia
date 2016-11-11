package com.miagencia.core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="MODELS")
public class Model extends PersistableEntity {
 
	
	
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="MERCADO_LIBRE_ID", nullable=false)
	private String mercadoLibreId;
	
	@Column(name="COD_INFOAUTO", nullable=false)
	private Long codInfoauto;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAKE_ID", nullable = false)
	private Make make;

	@Column(name="OLX_ID", nullable=false)
	private String olxId;  
	
	@Column(name="AUTOCOSMOS_ID")
    private String autocosmosId;  
	
	
	
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMercadoLibreId() {
		return mercadoLibreId;
	}


	public void setMercadoLibreId(String mercadoLibreId) {
		this.mercadoLibreId = mercadoLibreId;
	}


	public Make getMake() {
		return make;
	}


	public void setMake(Make make) {
		this.make = make;
	}


	public String getOlxId() {
		return olxId;
	}


	public void setOlxId(String olxId) {
		this.olxId = olxId;
	}


	public Long getCodInfoauto() {
		return codInfoauto;
	}


	public void setCodInfoauto(Long codInfoauto) {
		this.codInfoauto = codInfoauto;
	}


    public String getAutocosmosId() {
        return autocosmosId;
    }


    public void setAutocosmosId(String autocosmosId) {
        this.autocosmosId = autocosmosId;
    }
	
	
}
