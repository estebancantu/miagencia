package com.miagencia.core.model;

public enum VehicleType {
	
	CAR("Autos y camionetas"), TRUCK("Camiones"), MOTORBIKE("Motos");
	
	private String text;
	
	private VehicleType(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static VehicleType fromString(String text) {
	    if (text != null) {
	      for (VehicleType vt : VehicleType.values()) {
	        if (text.equalsIgnoreCase(vt.text)) {
	          return vt;
	        }
	      }
	    }
	    return null;
	  }
}
