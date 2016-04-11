package com.miagencia.core.model;

public enum FuelType {
	
	GASOLINE("Nafta"), DIESEL("Diesel"), GNC("Nafta/GNC"), NOT_SPECIFIED("No especificada");
	
	
	private String text;
	
	private FuelType(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static FuelType fromString(String text) {
	    if (text != null) {
	      for (FuelType ft : FuelType.values()) {
	        if (text.equalsIgnoreCase(ft.text)) {
	          return ft;
	        }
	      }
	    }
	    return null;
	  }
}
