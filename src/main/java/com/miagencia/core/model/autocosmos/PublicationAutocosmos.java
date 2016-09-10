package com.miagencia.core.model.autocosmos;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class PublicationAutocosmos implements Serializable{

    @JsonProperty("ExternalId")
    private String externalId;
    @JsonProperty("Email")
    private String email;
    @JsonProperty("Modelo")
    private Model model;
    @JsonProperty("Version")
    private String version;
    @JsonProperty("Anio")
    private Integer year;
    @JsonProperty("Color")
    private String color;
    @JsonProperty("Patente")
    private String plate;
    @JsonProperty("Kilometraje")
    private Long kilometers;
    @JsonProperty("Comentario")
    private String comment;
    @JsonProperty("Moneda")
    private String currency;
    @JsonProperty("Precio")
    private Integer price;
    @JsonProperty("Transmision")
    private String transmission;
    @JsonProperty("Combustible")
    private String fuel;
    @JsonProperty("Imagenes")
    private String[] images;
    @JsonProperty("Opciones")
    private String[] options;
    

    public String getExternalId() {
        return externalId;
    }

    public void setExternalId(String externalId) {
        this.externalId = externalId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Model getModel() {
        return model;
    }

    public void setModel(Model model) {
        this.model = model;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }

    public Long getKilometers() {
        return kilometers;
    }

    public void setKilometers(Long kilometers) {
        this.kilometers = kilometers;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String[] getImages() {
        return images;
    }

    public void setImages(String[] images) {
        this.images = images;
    }

    public String[] getOptions() {
        return options;
    }

    public void setOptions(String[] options) {
        this.options = options;
    }


}
