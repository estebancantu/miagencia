package com.miagencia.core.model;

public enum FuelType {
	
	GASOLINE("Nafta","1"), DIESEL("Diesel","2"), GNC("Nafta/GNC","3"), NOT_SPECIFIED("No especificada","1");
	
	
	private String text;
	private String olxId;
	
	private FuelType(String text, String olxId) {
		this.text = text;
		this.olxId = olxId;
	}
	
	public String getText() {
		return this.text;
	}
	
	public String getOlxId() {
        return olxId;
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
    
    public static String getOlxId(String text) {
        if (text != null) {
          for (FuelType ft : FuelType.values()) {
            if (text.equalsIgnoreCase(ft.text)) {
              return ft.getOlxId();
            }
          }
        }
        return null;
    }
}
