package com.miagencia.core.model.autocosmos;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Model implements Serializable {
    
    @JsonProperty("_location")
    private String location = "http://www.autocosmos.com.ar/api2/modelos/2506";
    
    public Model(String location) {
        super();
        this.location = location;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    
    
   

}
