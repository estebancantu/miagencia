package com.miagencia.rest.dto;

import java.util.List;

public class MakeDTO {
	
	private Long id;
	
	private Long infoautoMake;
	
	private String name;
	
	private String olxId;  
	
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

	public Long getInfoautoMake() {
		return infoautoMake;
	}

	public void setInfoautoMake(Long infoautoMake) {
		this.infoautoMake = infoautoMake;
	}

	public String getOlxId() {
		return olxId;
	}

	public void setOlxId(String olxId) {
		this.olxId = olxId;
	}
	

}
