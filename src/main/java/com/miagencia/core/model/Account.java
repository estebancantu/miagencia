 package com.miagencia.core.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;



 /**
  * 19/9/2015
  * @author estebancantu
  */
@Entity
public class Account extends PersistableEntity {
	

	
	// falta email
	
	private String username;
	
	private String password;
	
	@OneToOne(mappedBy="account", cascade=CascadeType.ALL)
	@Column(nullable=false)
	private Dealership dealership;
	
	private boolean active;
	
	
	public Account(String username, String password) {
		this.username = username;
		this.password = password;
		this.active = true;
	}
	
	
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	@JsonIgnore
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public Dealership getDealership() {
		return dealership;
	}

	public void setDealership(Dealership dealership) {
		this.dealership = dealership;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}