package com.miagencia.core.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.PostData;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.mercadolibre.sdk.Meli;
import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.dao.VehicleFeatureDAO;
import com.miagencia.core.dao.VehicleFeatureValueDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.VehicleFeature;
import com.miagencia.core.model.VehicleFeatureValue;
import com.miagencia.core.model.autocosmos.PublicationAutocosmos;
import com.miagencia.core.model.mercadolibre.Attribute;
import com.miagencia.core.model.mercadolibre.City;
import com.miagencia.core.model.mercadolibre.Country;
import com.miagencia.core.model.mercadolibre.Location;
import com.miagencia.core.model.mercadolibre.Neighborhood;
import com.miagencia.core.model.mercadolibre.Picture;
import com.miagencia.core.model.mercadolibre.PublicationMercadoLibre;
import com.miagencia.core.model.mercadolibre.State;
import com.miagencia.core.model.olx.AD;
import com.miagencia.core.model.olx.ADS;
import com.miagencia.core.model.olx.PublicationOLX;
import com.miagencia.core.service.ShareService;
import com.miagencia.core.service.exceptions.LocationDoesNotExistException;
import com.miagencia.core.service.exceptions.VehicleDoesNotExistException;
import com.miagencia.rest.dto.ShareRequestDTO;
import com.ning.http.client.FluentStringsMap;
import com.ning.http.client.Response;

@Service
@PropertySource("classpath:/config_share.properties")
public class ShareServiceImpl implements ShareService {
	
    
    private static final String CONTENT_TYPE_JSON = "application/json";
    private static final String HTTP_METHOD_AUTOCOSMOS = "POST";
    private static final String SEPARATOR_AUTOCOSMOS = "\n";
    private static final String URL_AUTOCOSMOS = "http://www.autocosmos.com.ar";
    private static final String URI_AUTOCOSMOS = "/api2/ClasificadosUsados";
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    private static final String HEADER_USER_SIGNATURE = "X-ACS-User-Signature";
    private static final String USER_SIGNATURE = "Y1w2VkMO+YtHdQENZRm5wQ==";
    
    
    private static final String HEADER_DATE = "Date";
    private static final String HEADER_CONTENT_MD5 = "Content-MD5";
    private static final String HEADER_CONTENT_AUTHORIZATION =  "Authorization";
    private static final String URL_MI_AGENCIA =  "http://www.miagenciavirtual.com.ar:8080/miagencia/";
    private static final String AUTOCOSMOS_APP_KEY =  "93c2f0719aee492e85c4ff79e57e1070";
    private static final String AUTOCOSMOS_APP_SECRET =  "7758bb7418eb4c48a179893af27ca5d0";
    
   
    
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
	private VehicleFeatureValueDAO vehicleFeatureValueDAO;
	@Inject
    private VehicleFeatureDAO vehicleFeatureDAO;
	@Inject
	private SaleItemDAO saleItemDAO;
	@Autowired(required=false)
    ServletContext context;
	//@Inject
	private RestTemplate restTemplate;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z");
	
	//@Inject
	public ShareServiceImpl() {
        super();
        this.restTemplate = new RestTemplate();
        List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
        converters.add(new MappingJackson2HttpMessageConverter());
        restTemplate.setMessageConverters(converters);
        sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT"));
    }

    @Override
	@Transactional
	public void shareFacebook(ShareRequestDTO shareRequestDTO) {
		Facebook facebook = new FacebookTemplate(shareRequestDTO.getToken(), FACEBOOK_NAMESPACE);
		//FACEBOOK_APP_ID
		Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
		Make make = makesAndModelsDAO.getMake(new Long(vehicle.getMakeId()));
        Model model = makesAndModelsDAO.getModel(new Long(vehicle.getModelId()));
		if(vehicle != null){
			facebook.feedOperations().post(new PostData("me").message("En venta: " + makesAndModelsDAO.getModel(new Long(vehicle.getModelId())).getName())
			    .link("http://www.google.com.ar/#q="+makesAndModelsDAO.getModel(new Long(vehicle.getModelId())).getName())
			    .picture(URL_MI_AGENCIA.concat("pics/"+vehicle.getImageUrls().get(0)))
			    .caption( make.getName()+" "+model.getName())
			    .name( make.getName()+" "+model.getName())
			    .description(vehicle.getPublicDescription()));
		}
		
	}

	@Override
	@Transactional
	public void postMercadoLibre(ShareRequestDTO shareRequestDTO) throws Exception {
		Meli m = new Meli(MERCADOLIBRE_APP_ID, MERCADOLIBRE_SECRET);
		Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
		if (vehicle != null) {
			PublicationMercadoLibre publication = createMercadoLibrePublication(vehicle);
			FluentStringsMap params = new FluentStringsMap();
			params.add("access_token", shareRequestDTO.getToken());
			Response r = m.post("/items", params, new Gson().toJson(publication));
			if(r.getStatusCode() != 201){
			    throw new Exception("Error posting to MercadoLibre"+ r.getResponseBody());
			}
			String[] locations=r.getHeader("Location").split("/");
			r = m.put("/items/"+locations[locations.length - 1]+"/description", params, "{\"text\":\""+vehicle.getPublicDescription()+"\"}");
			if(r.getStatusCode() != 200){
                throw new Exception("Error posting to MercadoLibre"+ r.getResponseBody());
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
	
	
    @Override
    @Transactional
    public void postAutocosmos(ShareRequestDTO shareRequestDTO) throws Exception {
        Vehicle vehicle = vehicleDAO.find(shareRequestDTO.getVehicleId());
        if (vehicle != null) {
            PublicationAutocosmos publication = createAutocosmosPublication(vehicle);
            String date = sdf.format(new Date());
            ObjectMapper mapper = new ObjectMapper();
            String md5 = DigestUtils.md5Hex(mapper.writeValueAsString(publication));
            String auth = createAuthAutocosmos(date, md5);
            doPostAutocosmos(publication, auth, date, md5);
        }
    }
	
    private void doPostAutocosmos(PublicationAutocosmos publication, String auth, String date, String md5) {
	    MultiValueMap<String, String> headers = new LinkedMultiValueMap<String, String>();
	    headers.add(HEADER_CONTENT_AUTHORIZATION, "ACS-H "+AUTOCOSMOS_APP_KEY+":"+auth);
	    headers.add(HEADER_CONTENT_MD5, md5);
	    headers.add(HEADER_DATE, date);
	    headers.add(HEADER_CONTENT_TYPE, CONTENT_TYPE_JSON);
	    headers.add(HEADER_USER_SIGNATURE, USER_SIGNATURE);
	    HttpEntity<PublicationAutocosmos> request = new HttpEntity<PublicationAutocosmos>(publication, headers);
	    try{
	        restTemplate.postForObject(URL_AUTOCOSMOS.concat(URI_AUTOCOSMOS), request, PublicationAutocosmos.class);
	    }catch (HttpClientErrorException e){
	        System.err.println(e.getResponseBodyAsString());
	        throw e;
	    }
	   
    }

    private String createAuthAutocosmos(String date, String md5) throws InvalidKeyException, UnsupportedEncodingException, NoSuchAlgorithmException {
        String httpMethod = HTTP_METHOD_AUTOCOSMOS.concat(SEPARATOR_AUTOCOSMOS);
        String md5Header = md5.concat(SEPARATOR_AUTOCOSMOS);
        String contentType = CONTENT_TYPE_JSON.concat(SEPARATOR_AUTOCOSMOS); 
        String dateHeader = date.concat(SEPARATOR_AUTOCOSMOS);
        String URI = URI_AUTOCOSMOS;
        String userSignature = HEADER_USER_SIGNATURE.toLowerCase().concat(":").concat(USER_SIGNATURE).concat(SEPARATOR_AUTOCOSMOS);
	    return getSignature(httpMethod.concat(md5Header).concat(contentType).concat(dateHeader).concat(userSignature).concat(URI));
    }
    
    private String getSignature(String canonical) throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException {
        String result = new String(java.nio.charset.Charset.forName("UTF-8").encode(canonical).array());
        Mac sha256_HMAC = Mac.getInstance("HmacSHA256");
        SecretKeySpec secret_key = new SecretKeySpec(AUTOCOSMOS_APP_SECRET.getBytes("UTF-8"), "HmacSHA256");
        sha256_HMAC.init(secret_key);
        String base64Result = Base64.encodeBase64String(sha256_HMAC.doFinal(result.getBytes()));
        return base64Result;
    }

    private PublicationAutocosmos createAutocosmosPublication(Vehicle vehicle){
	    PublicationAutocosmos publication = new PublicationAutocosmos();
	    publication.setExternalId("MiAgenciaVirtual-"+vehicle.getId().toString());
	    publication.setEmail(vehicle.getDealership().getEmail());
	    Model model = makesAndModelsDAO.getModel(new Long(vehicle.getModelId()));
	    if(model != null && model.getAutocosmosId() != null   && !model.getAutocosmosId().isEmpty()) {
	        publication.setModel(new com.miagencia.core.model.autocosmos.Model(model.getAutocosmosId()));
	    } else {
	        throw new VehicleDoesNotExistException();
	    }
	    publication.setVersion(model.getName());
	    publication.setYear(Integer.getInteger(vehicle.getModelYear().getText()));
	    publication.setColor(vehicle.getColor().getText());
	    publication.setPlate(vehicle.getPlate());
	    publication.setKilometers(vehicle.getKilometers());
	    publication.setComment(vehicle.getPublicDescription());
	    SaleItem saleItem = saleItemDAO.getSaleItemByVehicleId(vehicle.getId());
        if(saleItem != null){
            publication.setPrice(saleItem.getSellingPrice());
        }
        publication.setTransmission(vehicle.getTransmission().getText());
        publication.setFuel(vehicle.getFuelType().getText());
        String[] urls = {URL_MI_AGENCIA.concat("pics/"+vehicle.getImageUrls().get(0))};
        publication.setImages(urls);
	    return publication;
	}
	
	public InputStream getOLXFile(String fileName){
	    fileName = getTempFolder() + File.separator+ fileName + ".xml";
        File file = new File(fileName);
        InputStream is = null;
        try {
            is = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return is;
	}
	
    private String createOlxXML(PublicationOLX publicationOLX) {
        try {
            JAXBContext context = JAXBContext.newInstance(ADS.class);
            Marshaller m = context.createMarshaller();
            m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
            String fileName =  "OLX-" + new Date().getTime() + ".xml";
            String fileUrl = getTempFolder() + File.separator + fileName;
            m.marshal(publicationOLX.getADS(), new File(fileUrl));
            return fileName;
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
		ad.setContactEmail(vehicle.getDealership().getEmail());
		ad.setContactPhone(vehicle.getDealership().getPhone());
		ad.setContactName(vehicle.getDealership().getName());
		String[] urls = {URL_MI_AGENCIA.concat("pics/"+vehicle.getImageUrls().get(0))};
		ad.setImageUrl(urls);
				
		//TODO validate title and description values
		ad.setTitle(make.getName() + " " + model.getName());
		ad.setDescription(make.getName() + " " + model.getName());
		
		ad.setId("OLX-"+vehicle.getId());
		
		if(vehicle.getDealership().getLocation().getNeighborhood() != null && vehicle.getDealership().getLocation().getNeighborhood().getOlxId() != null
		            && !vehicle.getDealership().getLocation().getNeighborhood().getOlxId().isEmpty()) {
		    ad.setLocationNeighborhood(vehicle.getDealership().getLocation().getNeighborhood().getOlxId());
		} else {
		    if(vehicle.getDealership().getLocation().getNeighborhood() != null){
		        throw new LocationDoesNotExistException();
		    }
		}
		if(vehicle.getDealership().getLocation().getCity() != null && vehicle.getDealership().getLocation().getCity().getOlxId() != null
                && !vehicle.getDealership().getLocation().getCity().getOlxId().isEmpty()) {
		ad.setLocationCity(vehicle.getDealership().getLocation().getCity().getOlxId());
		} else {
		    throw new LocationDoesNotExistException();
		}
		
		if(vehicle.getDealership().getLocation().getState() != null && vehicle.getDealership().getLocation().getState().getOlxId() != null
                && !vehicle.getDealership().getLocation().getState().getOlxId().isEmpty()) {
		ad.setLocationState(vehicle.getDealership().getLocation().getState().getOlxId());
		} else {
		    throw new LocationDoesNotExistException();
		}
		if(vehicle.getDealership().getLocation().getCountry() != null && vehicle.getDealership().getLocation().getCountry().getOlxId() != null
                && !vehicle.getDealership().getLocation().getCountry().getOlxId().isEmpty()) {
		ad.setLocationCountry(vehicle.getDealership().getLocation().getCountry().getOlxId());
		} else {
		    throw new LocationDoesNotExistException();
		}
		ad.setLocationLatitud(vehicle.getDealership().getLocation().getLatitude());
		ad.setLocationLongitude(vehicle.getDealership().getLocation().getLongitude());
		
		SaleItem saleItem = saleItemDAO.getSaleItemByVehicleId(vehicle.getId());
		if(saleItem != null){
			ad.setPrice(String.valueOf(saleItem.getSellingPrice()));
		}
		ad.setPriceCurrency("ARS");
		if(make.getOlxId() != null && !make.getOlxId().isEmpty()){
		    ad.setVehicleMake(make.getOlxId());
		} else {
		    throw new VehicleDoesNotExistException();
		}
		if(model.getOlxId() != null && !model.getOlxId().isEmpty()){
		    ad.setVehicleModel(model.getOlxId());
		} else {
		    throw new VehicleDoesNotExistException();
		}
		ad.setVehicleMileage(vehicle.getKilometers().toString());
		ad.setVehicleYear(vehicle.getModelYear().getText());
		
		ad.setVehicleColor(vehicle.getColor().getText());
		ad.setVehicleFuel(vehicle.getFuelType().getText());
		
		ADS ads = new ADS();
		ads.setAD(ad);
		publication.setADS(ads);
		return publication;
	}

	private PublicationMercadoLibre createMercadoLibrePublication(Vehicle vehicle){
		PublicationMercadoLibre publication = new PublicationMercadoLibre();
		
		Make make = makesAndModelsDAO.getMake(new Long(vehicle.getMakeId()));
		Model model = makesAndModelsDAO.getModel(new Long(vehicle.getModelId()));
		publication.setTitle(model.getName());
		if(model.getMercadoLibreId() == null || model.getMercadoLibreId().isEmpty()){
		    throw new VehicleDoesNotExistException();
		}
		publication.setCategory_id(model.getMercadoLibreId());
		SaleItem saleItem = saleItemDAO.getSaleItemByVehicleId(vehicle.getId());
		if(saleItem != null){
			publication.setPrice(saleItem.getSellingPrice());
		}
		publication.setCondition(vehicle.getVehicleCondition().getMercadoLibreId());
		publication.getPictures().add(new Picture(URL_MI_AGENCIA.concat("pics/"+vehicle.getImageUrls().get(0))));
		publication.setAttributes(createMercadoLibreAttributes(vehicle));
		
		Location location = new Location();
		location.setAddress_line(vehicle.getDealership().getLocation().getAddressLine());
		location.setZip_code(vehicle.getDealership().getLocation().getZipCode());
		location.setLatitude(vehicle.getDealership().getLocation().getLatitude());
		location.setLongitude(vehicle.getDealership().getLocation().getLongitude());
		location.setOpen_hours(vehicle.getDealership().getLocation().getOpenHours());
		if(vehicle.getDealership().getLocation().getCountry() != null && vehicle.getDealership().getLocation().getCountry().getMercadolibreId() != null &&
		        !vehicle.getDealership().getLocation().getCountry().getMercadolibreId().isEmpty()){
			location.setCountry(new Country(vehicle.getDealership().getLocation().getCountry().getMercadolibreId(), vehicle.getDealership().getLocation().getCountry().getName()));
		} else {
		    throw new LocationDoesNotExistException();
		}
		if(vehicle.getDealership().getLocation().getState() != null && vehicle.getDealership().getLocation().getState().getMercadolibreId() != null &&
                !vehicle.getDealership().getLocation().getState().getMercadolibreId().isEmpty()){
			location.setState(new State(vehicle.getDealership().getLocation().getState().getMercadolibreId(), vehicle.getDealership().getLocation().getState().getName()));
		} else {
            throw new LocationDoesNotExistException();
        }
		if(vehicle.getDealership().getLocation().getCity() != null && vehicle.getDealership().getLocation().getCity().getMercadolibreId() != null &&
                !vehicle.getDealership().getLocation().getCity().getMercadolibreId().isEmpty()){
			location.setCity(new City(vehicle.getDealership().getLocation().getCity().getMercadolibreId(), vehicle.getDealership().getLocation().getCity().getName()));
		} else {
            throw new LocationDoesNotExistException();
        }
		if(vehicle.getDealership().getLocation().getNeighborhood() != null){
		    if(vehicle.getDealership().getLocation().getNeighborhood().getMercadolibreId() != null && !vehicle.getDealership().getLocation().getNeighborhood().getMercadolibreId().isEmpty()){
		        location.setNeighborhood(new Neighborhood(vehicle.getDealership().getLocation().getNeighborhood().getMercadolibreId(), vehicle.getDealership().getLocation().getNeighborhood().getName()));
		    } else {
	            throw new LocationDoesNotExistException();
	        }
		} 
		publication.setLocation(location);
		return publication;		
	}
	
	private List<Attribute> createMercadoLibreAttributes(Vehicle vehicle){
		List<Attribute> list = new ArrayList<Attribute>();
		//TODO App is not ready to allow this
		/*for (VehicleFeatureValue featureValue : vehicle.getFeaturesValues()) {
			Attribute attribute = new Attribute();
			attribute.setId(featureValue.getFeature().getMercadoLibreId());
			attribute.setName(featureValue.getFeature().getName());
			attribute.setValue_id(featureValue.getMercadoLibreId());
			attribute.setValue_name(featureValue.getValue());
			attribute.setAttribute_group_id(featureValue.getFeature().getGroup().getMercadoLibreId());
			list.add(attribute);
		}*/
		//TODO Guardar feature en vez de tener campo est�tico
		list.add(createMercadoLibreKmsAttribute(vehicle));
		list.add(createMercadoLibreAttribute(vehicle.getColor().getText()));
		list.add(createMercadoLibreAttribute(vehicle.getFuelType().getText()));
		list.add(createMercadoLibreAttribute(vehicle.getDoorQuantity().getText()));
		list.add(createMercadoLibreAttribute(vehicle.getModelYear().getText()));
		return list;
	}
	
	private Attribute createMercadoLibreAttribute(String value){
        VehicleFeatureValue featureValue = vehicleFeatureValueDAO.findMercadoLibreFeatureByValue(value);
        Attribute attribute = new Attribute();
        attribute.setId(featureValue.getFeature().getMercadoLibreId());
        attribute.setName(featureValue.getFeature().getName());
        attribute.setValue_id(featureValue.getMercadoLibreId());
        attribute.setValue_name(featureValue.getValue());
        attribute.setAttribute_group_id(featureValue.getFeature().getGroup().getMercadoLibreId());
        return attribute;
    }
	
	private Attribute createMercadoLibreKmsAttribute(Vehicle vehicle){
	    VehicleFeature feature = vehicleFeatureDAO.findByMercadoLibreId(VehicleFeature.KILOMETER_MERCADOLIBRE_ID);
		Attribute attribute = new Attribute();
		attribute.setId(feature.getMercadoLibreId());
		attribute.setName(feature.getName());
		attribute.setValue_name(vehicle.getKilometers().toString());
		attribute.setAttribute_group_id(feature.getGroup().getMercadoLibreId());
		return attribute;
	}
	
	private String getTempFolder(){
	    String rootPath = System.getProperty("catalina.home");
        File dir = new File(rootPath + File.separator + "tmpFiles");
        if (!dir.exists())
            dir.mkdirs();
        return dir.getAbsolutePath();
	}

}
