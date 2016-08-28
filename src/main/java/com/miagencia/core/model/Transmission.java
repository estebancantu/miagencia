package com.miagencia.core.model;

public enum Transmission {
	AUTOMATIC("Automatica","2"), MANUAL("Manual","1"), NOT_SPECIFIED("No especificada","1");
	
	
	private String text;
	private String olxId;
	
	private Transmission(String text, String olxId) {
		this.text = text;
		this.olxId = olxId;
	}
	
	public String getText() {
		return this.text;
	}
	
	public String getOlxId() {
        return olxId;
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
    
    public static String getOlxId(String text) {
        if (text != null) {
          for (Transmission ft : Transmission.values()) {
            if (text.equalsIgnoreCase(ft.text)) {
              return ft.getOlxId();
            }
          }
        }
        return null;
    }
}
