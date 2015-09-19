package com.miagencia.core.entity;

import java.util.List;

/**
 * 19/9/2015
 * @author estebancantu
 *
 */
public class Dealership {
	
	private Long id;
	private String name;
	private Account Owner;
	private List<Vehicle> vehicles;
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Account getOwner() {
		return Owner;
	}
	public void setOwner(Account owner) {
		Owner = owner;
	}
	public List<Vehicle> getVehicles() {
		return vehicles;
	}
	public void setVehicles(List<Vehicle> vehicles) {
		this.vehicles = vehicles;
	}
	
}
