package com.miagencia.rest.dto;

public class ModelDTO {
	
	private Long id;
	
	private Long codInfoauto;
	
	private String name;
	
	private String mercadoLibreId;
	
	private String olxId;  
	

	public Long getId() {
		return id;
	}

	
	
	
	
	
	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getCodInfoauto() {
		return codInfoauto;
	}

	public void setCodInfoauto(Long codInfoauto) {
		this.codInfoauto = codInfoauto;
	}

	public String getMercadoLibreId() {
		return mercadoLibreId;
	}

	public void setMercadoLibreId(String mercadoLibreId) {
		this.mercadoLibreId = mercadoLibreId;
	}

	public String getOlxId() {
		return olxId;
	}

	public void setOlxId(String olxId) {
		this.olxId = olxId;
	}
	

}
