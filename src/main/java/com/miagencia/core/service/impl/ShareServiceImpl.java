package com.miagencia.core.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.PostData;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.mercadolibre.sdk.Meli;
import com.mercadolibre.sdk.MeliException;
import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleFeature;
import com.miagencia.core.model.VehicleFeatureValue;
import com.miagencia.core.model.mercadolibre.Attribute;
import com.miagencia.core.model.mercadolibre.City;
import com.miagencia.core.model.mercadolibre.Country;
import com.miagencia.core.model.mercadolibre.Location;
import com.miagencia.core.model.mercadolibre.Neighborhood;
import com.miagencia.core.model.mercadolibre.Publication;
import com.miagencia.core.model.mercadolibre.State;
import com.miagencia.core.model.olx.AD;
import com.miagencia.core.model.olx.ADS;
import com.miagencia.core.model.olx.PublicationOLX;
import com.miagencia.core.service.ShareService;
import com.miagencia.rest.dto.ShareRequestDTO;
import com.ning.http.client.FluentStringsMap;
import com.ning.http.client.Response;

@Service
@PropertySource("classpath:/config_share.properties")
public class ShareServiceImpl implements ShareService {
	
	@Value("${facebook.namespace}")
	private static String FACEBOOK_NAMESPACE;
	@Value("${facebook.app.id}")
	private static String FACEBOOK_APP_ID;
	@Value("${mercadolibre.app.id}")
	private static Long MERCADOLIBRE_APP_ID;
	@Value("${mercadolibre.secret}")
	private static String MERCADOLIBRE_SECRET;
	
	@Inject
	private VehicleDAO vehicleDAO;
	@Inject
	private MakesAndModelsDAO makesAndModelsDAO;
	@Inject
	private SaleItemDAO saleItemDAO;
	@Autowired(required=false)
    ServletContext context;

	@Override
	@Transactional
	public void shareFacebook(ShareRequestDTO shareRequestDTO) {
		Facebook facebook = new FacebookTemplate(shareRequestDTO.getToken(), FACEBOOK_NAMESPACE, FACEBOOK_APP_ID);
		Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
		if(vehicle != null){
			facebook.feedOperations().post(new PostData("me").message("En venta: "+ makesAndModelsDAO.getMake(new Long(vehicle.getMakeId())).getName() + " " + makesAndModelsDAO.getModel(new Long(vehicle.getModelId())).getName())
			    .link("http://miagenciavirtual.com.ar:8080/miagencia/app/index.html#/carDetails/"+vehicle.getId(), vehicle.getImageUrl(), null, 
			    		null, vehicle.getDescription()));
		}
		
	}

	@Override
	@Transactional
	public void postMercadoLibre(ShareRequestDTO shareRequestDTO) {
		Meli m = new Meli(MERCADOLIBRE_APP_ID, MERCADOLIBRE_SECRET);
		Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
		if (vehicle != null) {
			Publication publication = createMercadoLibrePublication(vehicle);
		
			FluentStringsMap params = new FluentStringsMap();
			params.add("access_token", shareRequestDTO.getToken());
			try {
				Response r = m.post("/items", params, new Gson().toJson(publication));
				System.out.println(r.getStatusCode());
			} catch (MeliException e) {
				//TODO throw exception and convert to a valid REST response
				e.printStackTrace();
			}
		}
	}
	
	@Override
	@Transactional
	public String postOLX(ShareRequestDTO shareRequestDTO) {
		Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
		String fileUrl = null;
		if (vehicle != null) {
			PublicationOLX publication = createOLXPublication(vehicle);
			fileUrl = createOlxXML(publication);
		}
		return fileUrl;
	}
	
	public InputStream getOLXFile(String fileName){
	    fileName = fileName + ".xml";
        File file = new File(fileName);
        InputStream is = null;
        try {
            is = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return is;
	}
	
	private String createOlxXML(PublicationOLX publicationOLX){
		  try {
	            JAXBContext context = JAXBContext.newInstance(ADS.class);
	            Marshaller m = context.createMarshaller();
	            m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
	            String fileUrl = "OLX-"+new Date().getTime()+".xml";
	            m.marshal(publicationOLX.getADS(), new File(fileUrl));
	            return fileUrl;
	        } catch (JAXBException e) {
	            e.printStackTrace();
	            return null;
	        }
	}
	
	private PublicationOLX createOLXPublication(Vehicle vehicle) {
		PublicationOLX publication = new PublicationOLX();
		Make make = makesAndModelsDAO.getMake(new Long(vehicle.getMakeId()));
		Model model = makesAndModelsDAO.getModel(new Long(vehicle.getModelId()));
		AD ad = new AD();
		ad.setCategory(vehicle.getVehicleType().getOlxId());
		//TODO
		ad.setContactEmail("contacto@miagenciavirtual.com");
		ad.setContactPhone("221611331");
		ad.setContactName("Mi Agencia Virtual");
		//TODO
		//ad.setImageUrl(imageUrl);
				
		//TODO validate title and description values
		ad.setTitle(make.getName() + " " + model.getName());
		ad.setDescription(make.getName() + " " + model.getName());
		
		ad.setId("OLX-"+vehicle.getId());
		
		//TODO Set location of dealership
		ad.setLocationNeighborhood(vehicle.getLocation().getNeighborhood().getOlxId());
		ad.setLocationCity(vehicle.getLocation().getCity().getOlxId());
		ad.setLocationState(vehicle.getLocation().getState().getOlxId());
		ad.setLocationCountry(vehicle.getLocation().getCountry().getOlxId());
		ad.setLocationLatitud(vehicle.getLocation().getLatitude());
		ad.setLocationLongitude(vehicle.getLocation().getLongitude());
		
		SaleItem saleItem = saleItemDAO.getSaleItemByVehicleId(vehicle.getId());
		if(saleItem != null){
			ad.setPrice(String.valueOf(saleItem.getSellingPrice()));
		}
		//TODO 
		ad.setPriceCurrency("ARS");
		ad.setVehicleMake(make.getOlxId());
		ad.setVehicleModel(model.getOlxId());
		ad.setVehicleMileage(vehicle.getKilometers().toString());
		ad.setVehicleYear(String.valueOf(vehicle.getModelYear()));
		
		//TODO Features
		ad.setVehicleColor(vehicle.getOlxIdByFeature(VehicleFeature.COLOR));
		ad.setVehicleFuel(vehicle.getOlxIdByFeature(VehicleFeature.FUEL));
		
		ADS ads = new ADS();
		ads.setAD(ad);
		publication.setADS(ads);
		return publication;
	}

	private Publication createMercadoLibrePublication(Vehicle vehicle){
		Publication publication = new Publication();
		Make make = makesAndModelsDAO.getMake(new Long(vehicle.getMakeId()));
		Model model = makesAndModelsDAO.getModel(new Long(vehicle.getModelId()));
		publication.setTitle(make.getName() + " " + model.getName());
		publication.setCategory_id(model.getMercadoLibreId());
		SaleItem saleItem = saleItemDAO.getSaleItemByVehicleId(vehicle.getId());
		if(saleItem != null){
			publication.setPrice(saleItem.getSellingPrice());
		}
		publication.setCondition(vehicle.getVehicleCondition().getMercadoLibreId());
		//TODO
		//publication.getPictures().add(new Picture(vehicle.getImageUrl()));
		publication.setAttributes(createMercadoLibreAttributes(vehicle));
		
		Location location = new Location();
		location.setAddress_line(vehicle.getLocation().getAddressLine());
		location.setZip_code(vehicle.getLocation().getZipCode());
		location.setLatitude(vehicle.getLocation().getLatitude());
		location.setLongitude(vehicle.getLocation().getLongitude());
		location.setOpen_hours(vehicle.getLocation().getOpenHours());
		if(vehicle.getLocation().getCountry() != null){
			location.setCountry(new Country(vehicle.getLocation().getCountry().getMercadolibreId(), vehicle.getLocation().getCountry().getName()));
		}
		if(vehicle.getLocation().getState() != null){
			location.setState(new State(vehicle.getLocation().getState().getMercadolibreId(), vehicle.getLocation().getState().getName()));
		}
		if(vehicle.getLocation().getCity() != null ){
			location.setCity(new City(vehicle.getLocation().getCity().getMercadolibreId(), vehicle.getLocation().getCity().getName()));
		}
		if(vehicle.getLocation().getNeighborhood() != null){
			location.setNeighborhood(new Neighborhood(vehicle.getLocation().getNeighborhood().getMercadolibreId(), vehicle.getLocation().getNeighborhood().getName()));
		}
		publication.setLocation(location);
		return publication;		
	}
	
	private List<Attribute> createMercadoLibreAttributes(Vehicle vehicle){
		List<Attribute> list = new ArrayList<Attribute>();
		for (VehicleFeatureValue featureValue : vehicle.getFeaturesValues()) {
			Attribute attribute = new Attribute();
			attribute.setId(featureValue.getFeature().getMercadoLibreId());
			attribute.setName(featureValue.getFeature().getName());
			attribute.setValue_id(featureValue.getMercadoLibreId());
			attribute.setValue_name(featureValue.getValue());
			attribute.setAttribute_group_id(featureValue.getFeature().getGroup().getMercadoLibreId());
			list.add(attribute);
		}
		list.add(createMercadoLibreKmsAttribute(vehicle));
		return list;
	}
	
	private Attribute createMercadoLibreKmsAttribute(Vehicle vehicle){
		//TODO El newCar deberia guardar esta Feature en vez del campo KM 
		Attribute attribute = new Attribute();
		attribute.setId("MLA1744-KMTS");
		attribute.setName("Kilómetros");
		attribute.setValue_name(vehicle.getKilometers().toString());
		attribute.setAttribute_group_id("FIND");
		return attribute;
	}

	private String getOLXFileFolder(){
	    String rootPath = System.getProperty("catalina.home");
	    return rootPath + File.separator + "olx" + File.separator;
	}
}
