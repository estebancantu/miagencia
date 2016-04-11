package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 * 19/9/2015
 * @author estebancantu
 *
 */
public class Dealership extends PersistableEntity {
	

	// byte[]	getImage() 
	
	private String name;
	
	@OneToOne
	@JoinColumn(name="accountId")
	@Column(nullable=false)
	private Account account;
	
	@OneToMany(targetEntity=Vehicle.class)
	private List<Vehicle> vehicles;
	
	@OneToMany(targetEntity=Client.class)
	private List<Client> clients;
	
	
	public Dealership(String name, Account account) {
		this.name = name;
		this.account = account;
	}

	
	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Account getAccount() {
		return account;
	}
	
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public List<Vehicle> getVehicles() {
		return vehicles;
	}
	
	public void setVehicles(List<Vehicle> vehicles) {
		this.vehicles = vehicles;
	}
	
	public List<Client> getClients() {
		return clients;
	}
	
	public void setClients(List<Client> clients) {
		this.clients = clients;
	}

}
