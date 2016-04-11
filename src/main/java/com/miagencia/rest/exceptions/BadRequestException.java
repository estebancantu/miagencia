package com.miagencia.rest.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value= HttpStatus.BAD_REQUEST)
public class BadRequestException extends RuntimeException {
	
	// estas excepciones hay que tirarlas directamente en el controller al frontend,
	// lo que termina pasando es que la excepcion la atrapa spring, y como tiene
	// esa annotation entonces genera un response con el status code (bad request en este caso)
	// se pueden usar para wrapear la excepcion que tira el servicio donde esta la causa.

	public BadRequestException() {
	}

	public BadRequestException(Throwable cause) {
		super(cause);
	}
	
	

}
