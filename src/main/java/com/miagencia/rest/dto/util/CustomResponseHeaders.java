package com.miagencia.rest.dto.util;

import org.springframework.http.HttpHeaders;

public class CustomResponseHeaders extends HttpHeaders{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    public CustomResponseHeaders() {
        super();
        set("Access-Control-Allow-Origin", "http://www.miagenciavirtual.com.ar:8080");
    }

}
