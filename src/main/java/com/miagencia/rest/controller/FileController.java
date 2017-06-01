package com.miagencia.rest.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miagencia.core.service.FileService;

@Controller
@RequestMapping("/file")
public class FileController {
    
    @Autowired(required=false)
    ServletContext context;
    
    @Autowired(required=false)
    FileService fileService;
    
    @RequestMapping(value = "/receipt/{vehicleId}", method = RequestMethod.GET)
    public void getReceipt(@PathVariable Long vehicleId, HttpServletResponse response) throws IOException{
        InputStream is = fileService.getReceiptFile(vehicleId);
        response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
        response.addHeader("Content-Disposition", "attachment; filename=Seña.docx");
        org.apache.commons.io.IOUtils.copy(is, response.getOutputStream());
        response.flushBuffer();
        is.close();
    }
    
    @RequestMapping(value = "/salesContract/{vehicleId}", method = RequestMethod.GET)
    public void getSalesContract(@PathVariable Long vehicleId, HttpServletResponse response) throws IOException{
        InputStream is = fileService.getSalesContractFile(vehicleId);
        response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
        response.addHeader("Content-Disposition", "attachment; filename=Boleto.docx");
        org.apache.commons.io.IOUtils.copy(is, response.getOutputStream());
        response.flushBuffer();
        is.close();
    }
    
    

}
