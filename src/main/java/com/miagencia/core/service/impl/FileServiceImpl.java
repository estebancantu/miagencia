package com.miagencia.core.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.apache.poi.xwpf.usermodel.Borders;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.miagencia.core.dao.MakesAndModelsDAO;
import com.miagencia.core.dao.OperationDAO;
import com.miagencia.core.dao.SaleItemDAO;
import com.miagencia.core.dao.VehicleDAO;
import com.miagencia.core.dao.VehicleFeatureDAO;
import com.miagencia.core.dao.VehicleFeatureValueDAO;
import com.miagencia.core.model.Make;
import com.miagencia.core.model.Model;
import com.miagencia.core.model.SaleItem;
import com.miagencia.core.model.Vehicle;
import com.miagencia.core.model.operations.BuyOperation;
import com.miagencia.core.model.operations.ReservationOperation;
import com.miagencia.core.model.operations.SaleOperation;
import com.miagencia.core.model.operations.VehicleOperation;
import com.miagencia.core.service.FileService;

@Service
public class FileServiceImpl implements FileService {
	
	@Inject
	private VehicleDAO vehicleDAO;
	@Inject
	private MakesAndModelsDAO makesAndModelsDAO;
	@Inject
	private OperationDAO operationDAO;
	@Inject
    private VehicleFeatureDAO vehicleFeatureDAO;
	@Inject
	private SaleItemDAO saleItemDAO;
	@Autowired(required=false)
    ServletContext context;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z");
	

	public FileServiceImpl() {
        super();
        sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT"));
    }
	
	@Transactional
    public InputStream getSalesContractFile(Long vehicleId) {
	    try{
	        File templateFile = new File(getTempFolder() + File.separator + "doc_template.docx");
            FileInputStream finStream = new FileInputStream(templateFile.getAbsolutePath());
    	    Vehicle vehicle = vehicleDAO.find(vehicleId);
            Calendar calendar = Calendar.getInstance();
            Model model = makesAndModelsDAO.getModel(Long.valueOf(vehicle.getModelId()));
            Make make =  makesAndModelsDAO.getMake(Long.valueOf(vehicle.getMakeId()));
            BuyOperation buyOperation = operationDAO.findBuyOperationsByVehicleId(vehicle.getId());
            SaleOperation saleOperation = operationDAO.findSellOperationsByVehicleId(vehicle.getId());
            String fileName = "SalesContract-" + calendar.getTimeInMillis() + ".doc";
            String fileUrl = getTempFolder() + File.separator + fileName;
            XWPFDocument word = new XWPFDocument(finStream); 
            FileOutputStream out = new FileOutputStream(new File(fileUrl));
            createParagraphWithBorder(word, "BOLETO DE COMPRA VENTA AUTOMOTOR", ParagraphAlignment.CENTER, 20, false);
            createParagraph(word, "Conste por el presente que entre el Señor "+buyOperation.getClient().getFirstName()+" "+buyOperation.getClient().getLastName(), ParagraphAlignment.LEFT, false);
            createParagraph(word, "como VENDEDOR y el Señor "+saleOperation.getClient().getFirstName()+" "+saleOperation.getClient().getLastName(), ParagraphAlignment.LEFT, false);
            createParagraph(word, "como comprador se conviene lo siguiente:", ParagraphAlignment.LEFT, false);
            createParagraph(word,"El señor: "+buyOperation.getClient().getFirstName()+" "+buyOperation.getClient().getLastName()+" vende un: "+vehicle.getVehicleType().getText()+"  en las condiciones vistas.", ParagraphAlignment.LEFT);
            createParagraphWithBorder(word, "Marca: "+make.getName()+" Modelo: "+model.getName()+" Tipo: "+vehicle.getVehicleType().getText()+" Año: "+vehicle.getModelYear().getText()+
                    " Motor N. "+vehicle.getEngineNumber()+" Chasis N. "+vehicle.getChassisNumber()+" Dominio: "+vehicle.getPlate(), ParagraphAlignment.LEFT , false);
            createParagraph(word,"En la suma total de pesos: "+saleOperation.getSellingAmount(),ParagraphAlignment.LEFT);
            createParagraph(word,"Pagaderos de la siguiente forma: __________________________________________________________ __________________________________________________________"
                    + "________________________________________________________________________________________________________________",ParagraphAlignment.LEFT);
            createParagraph(word,"Esta unidad se entrega en el estado de uso en que se encuentra y que el comprador declara conocer, al igual que todo lo concerniente a "
                    + "la marca, modelo, numeros de motor y/o chasis del referido vehiculo, que ha sido revisado y constatado y acepta de plena"
                    + " conformidad, haciendose responsable civil y criminalmente, a partir de la fecha y hora de efectuada esta venta por"
                    + " cualquier accidente, daño y/o perjucio que pudiera ocasionar el vehiculo que es recibido en este acto con su documentacion"
                    + " completa y al dia. El comprador se compromente a efectuar la correspondiente transferencia de dominio del vehiculo "
                    + "dentro de los _____ dias de la fecha, de acuerdo a lo establecido al respecto por la ley 22.977 y sus normas complementarias, "
                    + "interpretativas y/o complementarias, estando a a su exclusivo cargo la totalidad de los gastos que demande la misma y los tramites"
                    + " y gestiones pertinentes, incluyendo la firma del formulario 08 o el que a tales fines lo subsista y/o reemplace y/o el otorgamiento "
                    + "de los poderes, todos ello en forma directa con el titular dominal. Transcurrido dicho plazo sin que realizara la transferencia el"
                    + " vendedor no se responsabiliza por los inconvenientes de cualquier indole que pudieran existir anteriores o posteriores a la fecha,"
                    + " que imposibilitan la efectivizacion de dicho tramite, incluyendo embargos y/o prendas o medidas judiciales de cualquier tipo sobre el"
                    + " vehiculo, al igual que deudas emergentes de patentes municipales y/o multas. Con absoluta conformidad del Comprador."
                    + "----------------------------------------------------------------------------------------------------/",ParagraphAlignment.LEFT,true);
            createParagraph(word, "En "+buyOperation.getClient().getCity()+" a los: "+calendar.get(Calendar.DAY_OF_MONTH)+" días del mes de "+getMonthForInt(calendar.get(Calendar.MONTH))+
                    " del año "+calendar.get(Calendar.YEAR)+" se firman dos ejemplares del mismo tenor y a un solo efecto.", ParagraphAlignment.LEFT, true);
            createParagraph(word,"OBSERVACIONES: ______________________________________________________________________________"
                    + "_______________________________________________________________________________________________________", ParagraphAlignment.LEFT,true);
            createParagraph(word,"_________________________________                ___________________________________", ParagraphAlignment.LEFT,false);
            createParagraph(word,"firma                                                                                firma", ParagraphAlignment.LEFT,false);
            
            XWPFTable table = word.createTable();
            XWPFTableRow tableRowOne = table.getRow(0);
            XWPFTableRow tableRowTwo = table.createRow();
            XWPFTableRow tableRowThree = table.createRow();
            XWPFTableRow tableRowFour = table.createRow();
            XWPFTableRow tableRowFive = table.createRow();
            
            tableRowOne.getCell(0).setText("COMPRADOR");
            tableRowOne.addNewTableCell().setText("VENDEDOR");
            
            tableRowTwo.getCell(0).setText("Nombre: "+saleOperation.getClient().getFirstName()+" "+saleOperation.getClient().getLastName());
            tableRowTwo.addNewTableCell().setText("Nombre: "+buyOperation.getClient().getFirstName()+" "+buyOperation.getClient().getLastName());
            
            tableRowThree.getCell(0).setText("Dirección: "+saleOperation.getClient().getAddress());
            tableRowThree.addNewTableCell().setText("Dirección: "+buyOperation.getClient().getAddress());
            
            tableRowFour.getCell(0).setText("Localidad: "+saleOperation.getClient().getCity());
            tableRowFour.addNewTableCell().setText("Localidad: "+buyOperation.getClient().getCity());
            
            tableRowFive.getCell(0).setText("Teléfono: "+saleOperation.getClient().getPhone());
            tableRowFive.addNewTableCell().setText("Teléfono: "+buyOperation.getClient().getPhone());
            
            word.write(out);
            out.close();
            File file = new File(fileUrl);
            return new FileInputStream(file);
	    } catch(Exception e){
	        e.printStackTrace();
	    }
	    return null;
    }

	
	@Transactional
    public InputStream getReceiptFile(Long vehicleId){
        try {
            File templateFile = new File(getTempFolder() + File.separator + "doc_template.docx");
            FileInputStream finStream = new FileInputStream(templateFile.getAbsolutePath());
            Vehicle vehicle = vehicleDAO.find(vehicleId);
            Calendar calendar = Calendar.getInstance();
            String fileName = "Receipt-" + calendar.getTimeInMillis() + ".doc";
            String fileUrl = getTempFolder() + File.separator + fileName;
            XWPFDocument word = new XWPFDocument(finStream); 
            FileOutputStream out = new FileOutputStream(new File(fileUrl));
            createParagraph(word, "RECIBO DE SEÑA", ParagraphAlignment.CENTER, 20, true);
            createParagraph(word, calendar.get(Calendar.DAY_OF_MONTH)+" de "+getMonthForInt(calendar.get(Calendar.MONTH))+" de "+calendar.get(Calendar.YEAR), ParagraphAlignment.RIGHT, true);
            BuyOperation buyOperation = operationDAO.findBuyOperationsByVehicleId(vehicle.getId());
            ReservationOperation reservation = operationDAO.findReservationOperationsByVehicleId(vehicle.getId());
            Model model = makesAndModelsDAO.getModel(Long.valueOf(vehicle.getModelId()));
            Make make =  makesAndModelsDAO.getMake(Long.valueOf(vehicle.getMakeId()));
            createParagraph(word, "RECIBI de "+reservation.getClient().getFirstName()+" "+reservation.getClient().getLastName()+" Doc. Id. "+reservation.getClient().getDni()+
                    " Domiciliado en "+reservation.getClient().getAddress()+" Localidad "+reservation.getClient().getCity()+" Tel. "+reservation.getClient().getPhone()+ " La cantidad de "
                            + "pesos argentinos $ "+reservation.getAdvancePayment()+" como seña del valor de venta establecido en $____________ para el vehiculo "+model.getName()+" en las condiciones vistas y que se encuentra.", ParagraphAlignment.LEFT, true);            
            createParagraph(word, "Marca "+make.getName()+ " Modelo "+model.getName()+" Color "+vehicle.getColor().getText()+" Tipo "+vehicle.getVehicleType().getText()+
                    " Motor "+vehicle.getEngineNumber()+ " Chasis "+vehicle.getChassisNumber()+ " Patente "+vehicle.getPlate()+" del año "+vehicle.getModelYear().getText()+" Localidad "+vehicle.getDealership().getLocation().getCity().getName(), ParagraphAlignment.LEFT);
            createParagraph(word, "Se recibe como parte de pago un automotor marca ________________________________ Modelo ________________________________ Tipo ________________ Color __________________ "+
                    " Motor ________________________________ Chasis ________________________________ Patente __________________ del año __________________  Localidad ______________________________"+
                    " libre de deudas y gravámenes, tasado en la suma de dólares estadounidenses billetes _____________________", ParagraphAlignment.LEFT);
            createParagraph(word, "El comprador deberá abonar el saldo a de su compra en el domicilio del vendedor dentro de los ____ días a contar desde la fecha sin necesidad de ningún requerimiento", ParagraphAlignment.LEFT, true);
            createParagraph(word, "En el caso de que el comprador no abonara el saldo de precio dentro del plazo establecido incurrirá en mora, de pleno derecho por el mero vencimiento del plazo pactado y automáticamente sin necesidad"
                    + "de requerimiento alguno, el vendedor queda facultado para dar por rescindido sin más trámite y de pleno derecho el contrato, sin necesidad de intervención judicial alguna,"
                    + "quedando a su exclusivo beneficio la suma percibida como seña", ParagraphAlignment.LEFT);
            createParagraph(word, "Observaciones _______________________________________________________________________ ___________________________________________________________________________________", ParagraphAlignment.LEFT);
            createParagraph(word, "____________________                   _______________________", ParagraphAlignment.CENTER, false);
            createParagraph(word, " firma comprador                                       firma vendedor", ParagraphAlignment.CENTER,true);
            //TODO: Los datos son del vendedor o de la agencia
            createParagraph(word, "Nombre y Apellido: "+buyOperation.getClient().getFirstName()+" "+buyOperation.getClient().getLastName(), ParagraphAlignment.LEFT,false);
            createParagraph(word, "Domicilio: "+buyOperation.getClient().getAddress()+", "+buyOperation.getClient().getCity(), ParagraphAlignment.LEFT, false);
            createParagraph(word, "Tel: "+buyOperation.getClient().getPhone()+" Doc. Identidad: "+buyOperation.getClient().getDni(), ParagraphAlignment.LEFT,false);
            createParagraph(word, "DATOS DEL VENDEDOR", ParagraphAlignment.CENTER);
            
            word.write(out);
            out.close();
            File file = new File(fileUrl);
            return new FileInputStream(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    private String getMonthForInt(int num) {
        String month = "wrong";
        DateFormatSymbols dfs = new DateFormatSymbols();
        String[] months = dfs.getMonths();
        if (num >= 0 && num <= 11 ) {
            month = months[num];
        }
        return month;
    }
    
    private XWPFParagraph createParagraph(XWPFDocument word, String text, ParagraphAlignment aligment){
        XWPFParagraph paragraph = word.createParagraph();
        XWPFRun run=paragraph.createRun();
        paragraph.setAlignment(aligment);
        run.setText(text);
        return paragraph;
    }
    
    private XWPFParagraph createParagraph(XWPFDocument word, String text, ParagraphAlignment aligment, Boolean addBreak){
        XWPFParagraph paragraph = createParagraph(word, text, aligment);
        if(addBreak){
            paragraph.createRun().addBreak();
        }
        return paragraph;
    }
    
    private XWPFParagraph createParagraphWithBorder(XWPFDocument word, String text, ParagraphAlignment aligment, Integer fontSize, Boolean addBreak){
        XWPFParagraph paragraph = createParagraph(word, text, aligment, fontSize, addBreak);
        paragraph.setBorderBottom(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderLeft(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderRight(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderTop(Borders.BASIC_BLACK_DASHES);
        return paragraph;
    }
    
    private XWPFParagraph createParagraphWithBorder(XWPFDocument word, String text, ParagraphAlignment aligment, Boolean addBreak){
        XWPFParagraph paragraph = createParagraph(word, text, aligment, addBreak);
        paragraph.setBorderBottom(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderLeft(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderRight(Borders.BASIC_BLACK_DASHES);
        paragraph.setBorderTop(Borders.BASIC_BLACK_DASHES);
        return paragraph;
    }
    
    private XWPFParagraph createParagraph(XWPFDocument word, String text, ParagraphAlignment aligment, Integer fontSize){
        XWPFParagraph paragraph = createParagraph(word, text, aligment);
        paragraph.createRun().setFontSize(fontSize);
        return paragraph;
    }
    
    private XWPFParagraph createParagraph(XWPFDocument word, String text, ParagraphAlignment aligment, Integer fontSize, Boolean addBreak){
        XWPFParagraph paragraph = createParagraph(word, text, aligment);
        paragraph.createRun().setFontSize(fontSize);
        if(addBreak){
        paragraph.createRun().addBreak();
        }
        return paragraph;
    }
    

    private InputStream getFile(String fileName, String extension){
        fileName = getTempFolder() + File.separator+ fileName + "."+extension;
        File file = new File(fileName);
        InputStream is = null;
        try {
            is = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return is;
    }  
	
	private String getTempFolder(){
	    String rootPath = System.getProperty("catalina.home");
        File dir = new File(rootPath + File.separator + "tmpFiles");
        if (!dir.exists())
            dir.mkdirs();
        return dir.getAbsolutePath();
	}

}
