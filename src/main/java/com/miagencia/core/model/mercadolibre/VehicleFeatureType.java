package com.miagencia.core.model.mercadolibre;

public enum VehicleFeatureType {
	
	BOOLEAN("boolean"), string("string"), list("list");
	
	private String text;
	
	private VehicleFeatureType(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
}
