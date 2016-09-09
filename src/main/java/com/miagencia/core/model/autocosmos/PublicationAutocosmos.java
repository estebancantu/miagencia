package com.miagencia.core.model.autocosmos;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class PublicationAutocosmos implements Serializable{

    @JsonProperty("ExternalId")
    private String externalId = "MXP-004";
    @JsonProperty("Email")
    private String email = "rsilvera@liricus.com.ar";
    @JsonProperty("Modelo")
    private Model model = new Model("http://www.autocosmos.com.ar/api2/modelos/2506");
    @JsonProperty("Version")
    private String version="xDrive 28iA";
    @JsonProperty("Anio")
    private Integer year= 2010;
    @JsonProperty("Color")
    private String color = "Bronce";
    @JsonProperty("Patente")
    private String plate = "LML-234";
    @JsonProperty("Kilometraje")
    private Long kilometers = 450000l;
    @JsonProperty("Comentario")
    private String comment = "Esto es una publicación de prueba";
    @JsonProperty("Moneda")
    private String currency = "ARS";
    @JsonProperty("Precio")
    private Integer price = 230000;
    @JsonProperty("Transmision")
    private String transmission = "AT";
    @JsonProperty("Combustible")
    private String fuel = "gasolina";
    @JsonProperty("Imagenes")
    private String[] images = {"http://mlm-s1-p.mlstatic.com/bmw-x1-2010-5p-xdrive-28ia-top-line-aut-13077-MLM6062016880_032014-O.jpg"};
    @JsonProperty("Opciones")
    private String[] options = {"DVD Player","Aire Acondicionado","Rines deportivos"};
    

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
