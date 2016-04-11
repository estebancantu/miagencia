package com.miagencia.rest.dto;

import java.util.List;

public class MakeDTO {
	
	private Long id;
	
	private String name;
	
	private List<ModelDTO> models;

	
	
	
	
	
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

	public List<ModelDTO> getModels() {
		return models;
	}

	public void setModels(List<ModelDTO> models) {
		this.models = models;
	}

}
