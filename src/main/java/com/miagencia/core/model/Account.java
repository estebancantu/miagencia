 package com.miagencia.core.model;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;



 /**
  * 19/9/2015
  * @author estebancantu
  */
@Entity
@Table(name="ACCOUNTS")
public class Account extends PersistableEntity implements UserDetails {
	

	

	@Column(name="USERNAME", nullable=false)
	private String username;
	
	@Column(name="PASSWORD", nullable=false)
	private String password;
	
	@OneToOne(mappedBy="account", cascade=CascadeType.ALL)
	private Dealership dealership;
	
	@Column(name="ACTIVE", nullable=false)
	private boolean active;
	
	
	public Account(String username, String password) {
		this.username = username;
		this.password = password;
		this.active = true;
	}
	
	
	public Account() {
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


	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean isEnabled() {
		
		return isActive();
	}

}