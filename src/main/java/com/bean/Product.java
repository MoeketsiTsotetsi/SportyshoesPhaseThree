package com.bean;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int p_id;
	private String p_name;
	private float price;
	private String url ;
	private String category;
	private int quantity;
	@OneToMany(mappedBy = "pro_id",cascade = CascadeType.ALL)
	private List<Order>orders;
	

	public int getP_id() {
		return p_id;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public int getQty() {
		return quantity;
	}

	public void setQty(int qty) {
		this.quantity = qty;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	

}
