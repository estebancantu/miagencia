package com.miagencia.core.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="EXPENSES")
public class Expense extends PersistableEntity {

	
	@Column(name="NAME")
	private String name;

	@Column(name="COST")
	private int cost;
	
	@Column(name="PAID")
	private boolean paid;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="SALE_ITEM_ID", nullable = false)
	private SaleItem saleItem;

	
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}

	public SaleItem getSaleItem() {
		return saleItem;
	}

	public void setSaleItem(SaleItem saleItem) {
		this.saleItem = saleItem;
	}
	
}
