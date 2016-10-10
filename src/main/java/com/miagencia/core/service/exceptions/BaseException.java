package com.miagencia.core.service.exceptions;

public class BaseException  extends RuntimeException{
    
    private Integer code;
    
    public BaseException(Integer code, Throwable cause) {
        super(cause);
        this.code = code;
    }
    
    public BaseException(Integer code, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
    }
    
    public BaseException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
    
    

}
