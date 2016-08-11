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
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAKE", nullable = false)
	private Make make;

	@Column(name="OLX_ID", nullable=false)
	private String olxId;  
	
	
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
	
	
	
	
}
