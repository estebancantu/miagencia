package com.miagencia.core.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.Version;


@MappedSuperclass
public class PersistableEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	

	private Timestamp createdAt;
	
	@Version
	private Timestamp updatedTime;
	
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public Timestamp getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(Timestamp updatedTime) {
		this.updatedTime = updatedTime;
	}
	
    @PrePersist
    void onCreate() {
        this.setCreatedAt(new Timestamp((new Date()).getTime()));
    }
}
