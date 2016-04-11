package com.miagencia.core.model;

public enum VehicleCondition {
	
	NEW("Nuevo"), USED("Usado");
	
	private String text;
	
	private VehicleCondition(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static VehicleCondition fromString(String text) {
	    if (text != null) {
	      for (VehicleCondition vc : VehicleCondition.values()) {
	        if (text.equalsIgnoreCase(vc.text)) {
	          return vc;
	        }
	      }
	    }
	    return null;
	  }
	
	
}
