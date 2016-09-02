package com.miagencia.core.service.exceptions;

public enum ErrorCode {

    VEHICLE_NOT_FOUND(1001, "Vehicle not found"), LOCATION_NOT_FOUND(1002, "Location not found"),;
    
    
    private Integer code;
    private String message;
    
    private ErrorCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
    
  
    
}
