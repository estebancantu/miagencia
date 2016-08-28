package com.miagencia.core.model;

public enum Year {

    DOS_MIL_DIESCISEIS("2016"), 
    DOS_MIL_QUINCE("2015"),
    DOS_MIL_CATORCE("2014"),
    DOS_MIL_TRECE("2013"),
    DOS_MIL_DOCE("2012"),
    DOS_MIL_ONCE("2011"),
    DOS_MIL_DIEZ("2010"),
    DOS_MIL_NUEVE("2009"),
    DOS_MIL_OCHO("2008"),
    DOS_MIL_SIETE("2007"),
    DOS_MIL_SEIS("2006"),
    DOS_MIL_CINCO("2005"),
    DOS_MIL_CUATRO("2004"),
    DOS_MIL_TRES("2003"),
    DOS_MIL_DOS("2002"),
    DOS_MIL_UNO("2001"),
    DOS_MIL("2000"),
    MIL_NOVESCIENTOS_NOVENTA_NUEVE("1999"),
    MIL_NOVESCIENTOS_NOVENTA_OCHO("1998"),
    MIL_NOVESCIENTOS_NOVENTA_SIETE("1997"),
    MIL_NOVESCIENTOS_NOVENTA_SEIS("1996"),
    MIL_NOVESCIENTOS_NOVENTA_CINCO("1995"),
    MIL_NOVESCIENTOS_NOVENTA_CUATRO("1994"),
    MIL_NOVESCIENTOS_NOVENTA_TRES("1993"),
    MIL_NOVESCIENTOS_NOVENTA_DOS("1992"),
    MIL_NOVESCIENTOS_NOVENTA_UNO("1991");
	
	
	private String text;
	
	private Year(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
	public static Year fromString(String text) {
	    if (text != null) {
	      for (Year ft : Year.values()) {
	        if (text.equalsIgnoreCase(ft.text)) {
	          return ft;
	        }
	      }
	    }
	    return null;
	  }
}
