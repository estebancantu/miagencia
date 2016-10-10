package com.miagencia.core.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * 19/9/2015
 * @author estebancantu
 *
 */
@Entity
@Table(name="DEALERSHIP")
public class Dealership extends PersistableEntity {
	

	
	// byte[]	getImage() 
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="E_MAIL", nullable=false)
	private String email;
	
	@Column(name="PHONE")
	private String phone;
	
	@OneToOne
	@JoinColumn(name="ACCOUNT_ID")
	private Account account;
	
	@OneToMany(targetEntity=Vehicle.class)
	private List<Vehicle> vehicles;
	
	@OneToMany(targetEntity=Client.class)
	private List<Client> clients;
	
	@OneToOne
	@JoinColumn(name="LOCATION_ID")
	private Location location;
	


	
	
	
	
	
	public Dealership() {
	}
	
	

	public Dealership(String name, Account account) {
		super();
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




	public String getEmail() {
        return email;
    }



    public void setEmail(String email) {
        this.email = email;
    }



    public String getPhone() {
        return phone;
    }



    public void setPhone(String phone) {
        this.phone = phone;
    }



    public Location getLocation() {
		return location;
	}




	public void setLocation(Location location) {
		this.location = location;
	}

	
}
