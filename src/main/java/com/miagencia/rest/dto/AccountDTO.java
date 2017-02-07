package com.miagencia.rest.dto;

public class AccountDTO {
	
	
	private Long id;
	
	private String username;
	
	private String password;
	
	private String email;
	
	private String dealershipName;
	
	
	
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDealershipName() {
		return dealershipName;
	}
	
	public void setDealershipName(String dealershipName) {
		this.dealershipName = dealershipName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
