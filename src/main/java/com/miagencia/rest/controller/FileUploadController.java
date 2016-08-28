package com.miagencia.rest.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miagencia.rest.dto.ImageUploadResponseDTO;

@Controller
@RequestMapping("/pics")
public class FileUploadController {
	
	
	@Autowired(required=false)
    ServletContext context;
	
	
    private static final Logger logger = LoggerFactory
            .getLogger(FileUploadController.class);
	
	

    
    @RequestMapping(value = "/{picName}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getPicture(@PathVariable String picName) throws IOException {
    	
    	
    	// TODO workaround, solucionar y borrar despues
    	picName = picName + ".jpg";
    	
    	// TODO chequear nulls, que el archivo exista etc
    	String rootPath = System.getProperty("catalina.home");
    	String path = rootPath + File.separator + "tmpFiles" + File.separator + picName;
    	
        InputStream in = context.getResourceAsStream(path);
        File file = new File(path);
        InputStream is = new FileInputStream(file);
        // TODO chequear que no sea null

        final HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);
        headers.set("Access-Control-Allow-Origin", "http://www.miagenciavirtual.com.ar:8080");

        return new ResponseEntity<byte[]>(IOUtils.toByteArray(is), headers, HttpStatus.CREATED);
    }
	
	
	

	@RequestMapping(method = RequestMethod.POST, value = "/upload")
	public @ResponseBody ResponseEntity<ImageUploadResponseDTO> handleFileUpload(@RequestParam("name") String name,
								   @RequestParam("file") MultipartFile file,
								   RedirectAttributes redirectAttributes) {
		
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.set("Access-Control-Allow-Origin", "http://www.miagenciavirtual.com.ar:8080");
		if (name.contains("/")) {
			responseHeaders.set("message", "Folder separators not allowed");
			return new ResponseEntity<ImageUploadResponseDTO>(responseHeaders, HttpStatus.BAD_REQUEST);
			
		}
		if (name.contains("/")) {
			responseHeaders.set("message", "Relative pathnames not allowed");
			return new ResponseEntity<ImageUploadResponseDTO>(responseHeaders, HttpStatus.BAD_REQUEST);
		}
		
		
		
		String newFilenameBase = UUID.randomUUID().toString();
		logger.info("newFilenameBase: " + newFilenameBase);
		
		
		String originalFileExtension = name.substring(
                name.lastIndexOf("."));
		logger.info("originalFileExtension: " + originalFileExtension);


        String newFilename = newFilenameBase + originalFileExtension;
        logger.info("newFilename: " + newFilename);
 
        ImageUploadResponseDTO responseDto = new ImageUploadResponseDTO();
        responseDto.setImageUrl(newFilename);
		

		if (!file.isEmpty()) {
			try {
				
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
				
				File newFile = new File(dir.getAbsolutePath() + "/" + newFilename);
				FileOutputStream fileOutputStream = new FileOutputStream(newFile);
				BufferedOutputStream stream = new BufferedOutputStream(fileOutputStream);
				
				byte[] bytes = file.getBytes();
				stream.write(bytes);
				
               // FileCopyUtils.copy(file.getInputStream(), stream);
				stream.close();
				
				logger.info("Server File Location="
                        + dir.getAbsolutePath() + "/" + newFilename);
				
				responseHeaders.set("message", "You successfully uploaded " + name );
				responseHeaders.set("fileName", newFilename);
				

			}
			catch (Exception e) {
				
				responseHeaders.set("message", "You failed to upload " + name + " => " + e.getMessage());
				return new ResponseEntity<ImageUploadResponseDTO>(responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
		else {
			
			responseHeaders.set("message", "You failed to upload " + name + " because the file was empty");
			return new ResponseEntity<ImageUploadResponseDTO>(responseHeaders, HttpStatus.BAD_REQUEST);

		}
		
		return new ResponseEntity<ImageUploadResponseDTO>( responseDto ,responseHeaders, HttpStatus.CREATED);	
	}
	
	
	
	
	
    @RequestMapping(value = "/legalDocument/{documentName}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getLegalDocument(@PathVariable String documentName) throws IOException {
    	
    	
    	// TODO workaround, solucionar y borrar despues
    	documentName = documentName + ".pdf";
    	
    	// TODO chequear nulls, que el archivo exista etc
    	String rootPath = System.getProperty("catalina.home");
    	String path = rootPath + File.separator + "tmpFiles" + File.separator + "legalDocuments" + File.separator + documentName;
    	
        InputStream in = context.getResourceAsStream(path);
        File file = new File(path);
        InputStream is = new FileInputStream(file);
        // TODO chequear que no sea null

        final HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PDF);

        return new ResponseEntity<byte[]>(IOUtils.toByteArray(is), headers, HttpStatus.CREATED);
    }
	
	
	
	
	
	

}
