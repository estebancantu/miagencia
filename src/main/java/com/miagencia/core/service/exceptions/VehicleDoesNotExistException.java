package com.miagencia.core.service.exceptions;

public class VehicleDoesNotExistException extends BaseException {
	
	/**
     * 
     */
    private static final long serialVersionUID = 1L;

	public VehicleDoesNotExistException() {
	    super(ErrorCode.VEHICLE_NOT_FOUND.getCode(), ErrorCode.VEHICLE_NOT_FOUND.getMessage());
	}

}
