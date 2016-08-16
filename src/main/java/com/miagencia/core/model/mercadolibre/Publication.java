
package com.miagencia.core.model.mercadolibre;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

import com.miagencia.core.model.PersistableEntity;
import com.miagencia.core.model.VehicleFeature;

@Generated("org.jsonschema2pojo")
public class Publication extends PersistableEntity{

    private String site_id = "MLA";
    private String title;
    // VehicleType -> en realidad no, tengo que mandar la categoria mas acertada
    private String category_id;
    private Object official_store_id;
    private int price;
    private String currency_id = "ARS";
    private int available_quantity = 1;
    private String buying_mode = "classified";
    private String listing_type_id = "free";
    // VehicleCondition
    private String condition;
    private List<Picture> pictures = new ArrayList<Picture>();
    private Object video_id;
    private boolean accepts_mercadopago = false;
    private List<Object> non_mercado_pago_payment_methods = new ArrayList<Object>();
    private Shipping shipping = new Shipping();
    private SellerAddress seller_address;
    private SellerContact seller_contact = new SellerContact();
    private Location location;
    private List<Object> coverage_areas = new ArrayList<Object>();
    // Lista de Features
    private List<Attribute> attributes = new ArrayList<Attribute>();
    private List<Object> variations = new ArrayList<Object>();
    private String status = "active";
    private Object warranty;
    private boolean automatic_relist = false;

    /**
     * 
     * @return
     *     The site_id
     */
    public String getSite_id() {
        return site_id;
    }

    /**
     * 
     * @param site_id
     *     The site_id
     */
    public void setSite_id(String site_id) {
        this.site_id = site_id;
    }

    /**
     * 
     * @return
     *     The title
     */
    public String getTitle() {
        return title;
    }

    /**
     * 
     * @param title
     *     The title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 
     * @return
     *     The category_id
     */
    public String getCategory_id() {
        return category_id;
    }

    /**
     * 
     * @param category_id
     *     The category_id
     */
    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    /**
     * 
     * @return
     *     The official_store_id
     */
    public Object getOfficial_store_id() {
        return official_store_id;
    }

    /**
     * 
     * @param official_store_id
     *     The official_store_id
     */
    public void setOfficial_store_id(Object official_store_id) {
        this.official_store_id = official_store_id;
    }

    /**
     * 
     * @return
     *     The price
     */
    public int getPrice() {
        return price;
    }

    /**
     * 
     * @param price
     *     The price
     */
    public void setPrice(int price) {
        this.price = price;
    }

    /**
     * 
     * @return
     *     The currency_id
     */
    public String getCurrency_id() {
        return currency_id;
    }

    /**
     * 
     * @param currency_id
     *     The currency_id
     */
    public void setCurrency_id(String currency_id) {
        this.currency_id = currency_id;
    }

    /**
     * 
     * @return
     *     The available_quantity
     */
    public int getAvailable_quantity() {
        return available_quantity;
    }

    /**
     * 
     * @param available_quantity
     *     The available_quantity
     */
    public void setAvailable_quantity(int available_quantity) {
        this.available_quantity = available_quantity;
    }

    /**
     * 
     * @return
     *     The buying_mode
     */
    public String getBuying_mode() {
        return buying_mode;
    }

    /**
     * 
     * @param buying_mode
     *     The buying_mode
     */
    public void setBuying_mode(String buying_mode) {
        this.buying_mode = buying_mode;
    }

    /**
     * 
     * @return
     *     The listing_type_id
     */
    public String getListing_type_id() {
        return listing_type_id;
    }

    /**
     * 
     * @param listing_type_id
     *     The listing_type_id
     */
    public void setListing_type_id(String listing_type_id) {
        this.listing_type_id = listing_type_id;
    }

    /**
     * 
     * @return
     *     The condition
     */
    public String getCondition() {
        return condition;
    }

    /**
     * 
     * @param condition
     *     The condition
     */
    public void setCondition(String condition) {
        this.condition = condition;
    }

    /**
     * 
     * @return
     *     The pictures
     */
    public List<Picture> getPictures() {
        return pictures;
    }

    /**
     * 
     * @param pictures
     *     The pictures
     */
    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }

    /**
     * 
     * @return
     *     The video_id
     */
    public Object getVideo_id() {
        return video_id;
    }

    /**
     * 
     * @param video_id
     *     The video_id
     */
    public void setVideo_id(Object video_id) {
        this.video_id = video_id;
    }

    /**
     * 
     * @return
     *     The accepts_mercadopago
     */
    public boolean isAccepts_mercadopago() {
        return accepts_mercadopago;
    }

    /**
     * 
     * @param accepts_mercadopago
     *     The accepts_mercadopago
     */
    public void setAccepts_mercadopago(boolean accepts_mercadopago) {
        this.accepts_mercadopago = accepts_mercadopago;
    }

    /**
     * 
     * @return
     *     The non_mercado_pago_payment_methods
     */
    public List<Object> getNon_mercado_pago_payment_methods() {
        return non_mercado_pago_payment_methods;
    }

    /**
     * 
     * @param non_mercado_pago_payment_methods
     *     The non_mercado_pago_payment_methods
     */
    public void setNon_mercado_pago_payment_methods(List<Object> non_mercado_pago_payment_methods) {
        this.non_mercado_pago_payment_methods = non_mercado_pago_payment_methods;
    }

    /**
     * 
     * @return
     *     The shipping
     */
    public Shipping getShipping() {
        return shipping;
    }

    /**
     * 
     * @param shipping
     *     The shipping
     */
    public void setShipping(Shipping shipping) {
        this.shipping = shipping;
    }

    /**
     * 
     * @return
     *     The seller_address
     */
    public SellerAddress getSeller_address() {
        return seller_address;
    }

    /**
     * 
     * @param seller_address
     *     The seller_address
     */
    public void setSeller_address(SellerAddress seller_address) {
        this.seller_address = seller_address;
    }

    /**
     * 
     * @return
     *     The seller_contact
     */
    public SellerContact getSeller_contact() {
        return seller_contact;
    }

    /**
     * 
     * @param seller_contact
     *     The seller_contact
     */
    public void setSeller_contact(SellerContact seller_contact) {
        this.seller_contact = seller_contact;
    }

    /**
     * 
     * @return
     *     The location
     */
    public Location getLocation() {
        return location;
    }

    /**
     * 
     * @param location
     *     The location
     */
    public void setLocation(Location location) {
        this.location = location;
    }

    /**
     * 
     * @return
     *     The coverage_areas
     */
    public List<Object> getCoverage_areas() {
        return coverage_areas;
    }

    /**
     * 
     * @param coverage_areas
     *     The coverage_areas
     */
    public void setCoverage_areas(List<Object> coverage_areas) {
        this.coverage_areas = coverage_areas;
    }

    /**
     * 
     * @return
     *     The attributes
     */
    public List<Attribute> getAttributes() {
        return attributes;
    }

    /**
     * 
     * @param attributes
     *     The attributes
     */
    public void setAttributes(List<Attribute> attributes) {
        this.attributes = attributes;
    }

    /**
     * 
     * @return
     *     The variations
     */
    public List<Object> getVariations() {
        return variations;
    }

    /**
     * 
     * @param variations
     *     The variations
     */
    public void setVariations(List<Object> variations) {
        this.variations = variations;
    }

    /**
     * 
     * @return
     *     The status
     */
    public String getStatus() {
        return status;
    }

    /**
     * 
     * @param status
     *     The status
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 
     * @return
     *     The warranty
     */
    public Object getWarranty() {
        return warranty;
    }

    /**
     * 
     * @param warranty
     *     The warranty
     */
    public void setWarranty(Object warranty) {
        this.warranty = warranty;
    }

    /**
     * 
     * @return
     *     The automatic_relist
     */
    public boolean isAutomatic_relist() {
        return automatic_relist;
    }

    /**
     * 
     * @param automatic_relist
     *     The automatic_relist
     */
    public void setAutomatic_relist(boolean automatic_relist) {
        this.automatic_relist = automatic_relist;
    }

}
