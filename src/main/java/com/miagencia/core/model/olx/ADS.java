package com.miagencia.core.model.olx;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "ADS")
public class ADS
{
    private AD AD;

    public AD getAD ()
    {
        return AD;
    }

    public void setAD (AD AD)
    {
        this.AD = AD;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [AD = "+AD+"]";
    }
}