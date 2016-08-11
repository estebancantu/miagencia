
package com.miagencia.core.model.mercadolibre;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

@Generated("org.jsonschema2pojo")
public class Shipping {

    private Object profile_id;
    private String mode = "not_specified";
    private boolean local_pick_up = false;
    private boolean free_shipping = false;
    private List<Object> methods = new ArrayList<Object>();
    private Object dimensions = null;

    /**
     * 
     * @return
     *     The profile_id
     */
    public Object getProfile_id() {
        return profile_id;
    }

    /**
     * 
     * @param profile_id
     *     The profile_id
     */
    public void setProfile_id(Object profile_id) {
        this.profile_id = profile_id;
    }

    /**
     * 
     * @return
     *     The mode
     */
    public String getMode() {
        return mode;
    }

    /**
     * 
     * @param mode
     *     The mode
     */
    public void setMode(String mode) {
        this.mode = mode;
    }

    /**
     * 
     * @return
     *     The local_pick_up
     */
    public boolean isLocal_pick_up() {
        return local_pick_up;
    }

    /**
     * 
     * @param local_pick_up
     *     The local_pick_up
     */
    public void setLocal_pick_up(boolean local_pick_up) {
        this.local_pick_up = local_pick_up;
    }

    /**
     * 
     * @return
     *     The free_shipping
     */
    public boolean isFree_shipping() {
        return free_shipping;
    }

    /**
     * 
     * @param free_shipping
     *     The free_shipping
     */
    public void setFree_shipping(boolean free_shipping) {
        this.free_shipping = free_shipping;
    }

    /**
     * 
     * @return
     *     The methods
     */
    public List<Object> getMethods() {
        return methods;
    }

    /**
     * 
     * @param methods
     *     The methods
     */
    public void setMethods(List<Object> methods) {
        this.methods = methods;
    }

    /**
     * 
     * @return
     *     The dimensions
     */
    public Object getDimensions() {
        return dimensions;
    }

    /**
     * 
     * @param dimensions
     *     The dimensions
     */
    public void setDimensions(Object dimensions) {
        this.dimensions = dimensions;
    }

}
