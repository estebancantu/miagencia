package com.miagencia.rest.dto;

import java.util.List;

public class VehicleTypeDTO {
	
	private Long id;
	
	private String name;
	
	private List<MakeDTO> makes;

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

	public List<MakeDTO> getMakes() {
		return makes;
	}

	public void setMakes(List<MakeDTO> makes) {
		this.makes = makes;
	}
	
	

}
