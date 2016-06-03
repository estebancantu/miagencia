package com.miagencia.core.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="Clients")
public class Client extends PersistableEntity {

	// TODO no mapea bien los timestamps a las fechas, revisar. Arriba en PersistableEntity esta el createdAt
	
	// HAY QUE VER SI ESTO PUEDE SER PERSONA FISICA O JURIDICA

	
	private Long dni;
	
	@Column(nullable=false)
	private String firstName;
	
	@Column(nullable=false)
	private String lastName;
	
	@Column(nullable=false)
	private String email;
	
	private String phone;
	
	private String mobile;
	
	private String address;
	
	private String city;
	
	private String province;
	
	private String postalCode;
	
	private String country;
	
	//private int buysCount;
	
	//private int sellsCount;
	
	//private int questionsCount;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateOfBirth;

	

	

	
	// TODO Supuesto no-arg constructor para hibernate. Probar y borrar si no se necesita
	public Client()  {
		
	}

	public Client(Long dni, String firstName, String lastName, String email,
			String phone, String mobile, String address, String city,
			String province, String postalCode, String country) {
		
		// TODO recordar el dateOfBirth
		super();
		this.dni = dni;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.mobile = mobile;
		this.address = address;
		this.city = city;
		this.province = province;
		this.postalCode = postalCode;
		this.country = country;
	}

	
	public Long getDni() {
		return dni;
	}

	public void setDni(Long dni) {
		this.dni = dni;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}


	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

}
