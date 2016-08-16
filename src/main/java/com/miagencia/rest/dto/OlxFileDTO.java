package com.miagencia.rest.dto;

public class OlxFileDTO {

    private String fileUrl;

    public String getFileUrl() {
        return fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public OlxFileDTO(String fileUrl) {
        super();
        this.fileUrl = fileUrl;
    }
    
    
    
}
