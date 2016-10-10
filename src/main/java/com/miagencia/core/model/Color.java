package com.miagencia.core.model;

public enum Color {

    
    BLANCO("Blanco", "13","http://www.autocosmos.com.ar/api2/colores/1887"),
    NEGRO("Negro","2","http://www.autocosmos.com.ar/api2/colores/1899"),
    GRIS("Gris","9","http://www.autocosmos.com.ar/api2/colores/1892"),
    ROJO("Rojo","11","http://www.autocosmos.com.ar/api2/colores/1903"),
    AZUL("Azul","3", "http://www.autocosmos.com.ar/api2/colores/1883"),
    VERDE("Verde","8","http://www.autocosmos.com.ar/api2/colores/1904"),
    AMARILLO("Amarillo","14","http://www.autocosmos.com.ar/api2/colores/1881"),
    OTROS("Otros","1","http://www.autocosmos.com.ar/api2/colores/1907");
	
	
	private String text;
	private String olxId;
	private String autocosmosId;
	
	private Color(String text, String olxId, String autocosmosId) {
		this.text = text;
		this.olxId = olxId;
		this.autocosmosId = autocosmosId;
	}
	
	public String getText() {
		return this.text;
	}
	
	
	public String getOlxId() {
        return olxId;
    }
	
	

    public String getAutocosmosId() {
        return autocosmosId;
    }

    public static Color fromString(String text) {
	    if (text != null) {
	      for (Color ft : Color.values()) {
	        if (text.equalsIgnoreCase(ft.text)) {
	          return ft;
	        }
	      }
	    }
	    return null;
	}
    
    public static String getOlxId(String text) {
        if (text != null) {
          for (Color ft : Color.values()) {
            if (text.equalsIgnoreCase(ft.text)) {
              return ft.getOlxId();
            }
          }
        }
        return null;
    }
    
    public static String getAutocosmosId(String text) {
        if (text != null) {
          for (Color ft : Color.values()) {
            if (text.equalsIgnoreCase(ft.text)) {
              return ft.getAutocosmosId();
            }
          }
        }
        return null;
    }
}
