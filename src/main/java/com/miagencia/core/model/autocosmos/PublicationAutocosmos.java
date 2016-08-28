package com.miagencia.core.model.autocosmos;

import com.google.gson.annotations.SerializedName;

public class PublicationAutocosmos {

    @SerializedName("ExternalId")
    private String externalId;
    @SerializedName("Email")
    private String email;
    @SerializedName("Modelo")
    private Model model;
    @SerializedName("Version")
    private String version;
    @SerializedName("Anio")
    private Integer year;
    @SerializedName("Color")
    private String color;
    @SerializedName("Patente")
    private String plate;
    @SerializedName("Kilometraje")
    private Long kilometers;
    @SerializedName("Comentario")
    private String comment;
    @SerializedName("Moneda")
    private String currency = "http://www.autocosmos.com.ar/api2/monedas/1";
    @SerializedName("Precio")
    private Integer price;
    @SerializedName("Transmision")
    private String transmission;
    @SerializedName("Combustible")
    private String fuel;
    @SerializedName("Imagenes")
    private String[] images;
    @SerializedName("Opciones")
    private String[] options;
    @SerializedName("_location")
    private String location;

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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
