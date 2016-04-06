package com.frontController.model;

import java.util.ArrayList;

public class Product {
	private Integer id;
	private String name;
	private String price;
	private String information;
	private int quantity;
	private ArrayList<String> descriptions;

	public Product() {
		descriptions = new ArrayList<String>();
	}

	public Product(Integer id) {
		this.id = id;

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void addDescription(String description) {
		descriptions.add(description);
	}

	public void printDescriptions() {
		for (String s : descriptions) {
			System.out.println(s);
		}
	}

}
