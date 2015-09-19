package com.miagencia.core.entity;

import java.util.Date;

public class Vehicle {
	
	// Marca
	private String make;
	
	// Modelo
	private String model;
	
	// Propietario
	private Person Owner;

	// Año
	private Date year;
	
	// Patente
	private String plate;
	
	//Color
	private String colour;
	
	// Nro. de Chasis
	private String chassisNumber;
	
	// Nro. de Motor
	private String engineNumber;
	
	// Kilometraje
	private Long kilometers;
	
	//estado - available, sold, reserved?
	
	//documentación?
	
	// Descripción
	private String description;
	
	// Fotos?
	
	
	//puede tener una lista de atributos, para que se dibujen en la publicacion, como en mercadolibre
	// ej http://www.autotrader.com/
	// ej nafta/disel - aire - levantavidrios - cant puertas etc
	// ver en https://sell.autotrader.com/syc/car_details.jsf?conversationId=184283

}
