package com.miagencia.core.model;

public enum VehicleType {
	

	CAR("Autos y camionetas", "MLA1744","378"), TRUCK("Camiones", "MLA1744","378"), MOTORBIKE("Motos", "MLA1763","379");

	
	private String text;
	private String mercadoLibreId;
	private String olxId;
	
	private VehicleType(String text, String mercadoLibreId, String olxId) {
		this.text = text;
		this.mercadoLibreId = mercadoLibreId;
		this.olxId = olxId;
	}
	
	public String getMercadoLibreId() {
		return mercadoLibreId;
	}

	public String getText() {
		return this.text;
	}
	
	
	
	public String getOlxId() {
		return olxId;
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
