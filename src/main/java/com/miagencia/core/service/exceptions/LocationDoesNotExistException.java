package com.miagencia.core.service.exceptions;

public class LocationDoesNotExistException extends BaseException {

    public LocationDoesNotExistException() {
        super(ErrorCode.LOCATION_NOT_FOUND.getCode(), ErrorCode.LOCATION_NOT_FOUND.getMessage());
    }

}
