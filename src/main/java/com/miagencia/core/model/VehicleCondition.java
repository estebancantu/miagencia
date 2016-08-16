package com.miagencia.core.model;

public enum VehicleCondition {
	
	NEW("Nuevo","new", "1"), USED("Usado","used", "2");
	
	private String text;
	private String mercadoLibreId;
	private String olxId;
	
	private VehicleCondition(String text, String mercadoLibreId, String olxId) {
		this.text = text;
		this.mercadoLibreId = mercadoLibreId;
		this.olxId = olxId;
	}
	
	public String getOlxId() {
		return olxId;
	}

	public String getMercadoLibreId() {
		return mercadoLibreId;
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
