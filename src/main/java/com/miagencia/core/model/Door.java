package com.miagencia.core.model;

public enum Door {
    
    DOS("2"), TRES("3"), CUATRO("4"), CINCO("5");
	
	
	private String text;
	
	private Door(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static Door fromString(String text) {
	    if (text != null) {
	      for (Door ft : Door.values()) {
	        if (text.equalsIgnoreCase(ft.text)) {
	          return ft;
	        }
	      }
	    }
	    return null;
	  }
}
