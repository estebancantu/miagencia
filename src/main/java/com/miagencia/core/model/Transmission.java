package com.miagencia.core.model;

public enum Transmission {
	AUTOMATIC("Automatica"), MANUAL("Manual"), NOT_SPECIFIED("No especificada");
	
	
	private String text;
	
	private Transmission(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static Transmission fromString(String text) {
	    if (text != null) {
	      for (Transmission t : Transmission.values()) {
	        if (text.equalsIgnoreCase(t.text)) {
	          return t;
	        }
	      }
	    }
	    return null;
	  }
}
