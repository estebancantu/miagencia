package com.miagencia.core.model;

import java.util.List;

import javax.persistence.CascadeType;
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
@Table(name="DEALERSHIPS")
public class Dealership extends PersistableEntity {
	

	
	// byte[]	getImage() 
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="E_MAIL", nullable=false)
	private String email;
	
	@Column(name="PHONE")
	private String phone;
	
	@OneToOne
	@JoinColumn(name="ACCOUNT_ID", nullable=false)
	private Account account;
	
	// TODO Las relaciones entre vehicle/dealership  y client/dealership se hicieron unidireccionales y estan mapeadas del lado hijo (Vehicle y 
	// Client respectivamente. Cuando se llegue a necesitar traer todos los autos de una agencia,
	// usar una query en el DAO, no agregar asociacion bidireccional porque es dificil de mantener.
	// Esto lo hacemos para que sea escalable, esperamos en un momento tener muchos autos y clientes
	// por agencia, y eso no es bueno si la relacion es bidireccional, porque hay que agregarle la 
	// complejidad de lazy del lado del Dealership para que este objeto no sea super pesado.)


	
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
