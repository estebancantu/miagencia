package com.miagencia.rest.dto;

public class VehicleSummaryDTO {
	
	
	
	private Long id;
	
	private String make;
	
	private String model;
	
	private int year;
	
	private Long kilometers;
	
	private int price;
	
	private String imageUrl;
	
	private boolean isSold;
	
	private boolean isBooked;
	
	private int imageCount;

	
	// images cant, para la camarita que dice cuantas fotos tiene
	// cuando sea una lista de imagenes
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public Long getKilometers() {
		return kilometers;
	}

	public void setKilometers(Long kilometers) {
		this.kilometers = kilometers;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public boolean isSold() {
		return isSold;
	}

	public void setSold(boolean isSold) {
		this.isSold = isSold;
	}

	public boolean isBooked() {
		return isBooked;
	}

	public void setBooked(boolean isBooked) {
		this.isBooked = isBooked;
	}

	public int getImageCount() {
		return imageCount;
	}

	public void setImageCount(int imageCount) {
		this.imageCount = imageCount;
	}

}
