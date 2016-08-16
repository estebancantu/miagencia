package com.miagencia.core.model.olx;

public class PublicationOLX
{
    private ADS ADS;

    public ADS getADS ()
    {
        return ADS;
    }

    public void setADS (ADS ADS)
    {
        this.ADS = ADS;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [ADS = "+ADS+"]";
    }
}