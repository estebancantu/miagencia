package com.miagencia.core.model.autocosmos;

import com.google.gson.annotations.SerializedName;

public class Model {
    
    @SerializedName("_location")
    private String location;
    @SerializedName("_title")
    private String title;
    
    public Model(String location, String title) {
        super();
        this.location = location;
        this.title = title;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    
    
   

}
