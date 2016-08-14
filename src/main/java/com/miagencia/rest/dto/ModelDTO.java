package com.miagencia.rest.dto;

public class ModelDTO {
	
	private Long id;
	
	private Long codInfoauto;
	
	private String name;

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

}
