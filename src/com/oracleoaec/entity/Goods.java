package com.oracleoaec.entity;

import java.io.Serializable;

public class Goods implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	private String name;
	private float price;
	private int count;
	public Goods() {
		super();
	}
	public Goods(String name, float price, int count) {
		super();
		this.name = name;
		this.price = price;
		this.count = count;
	}
	public Goods(long id, String name, float price, int count) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.count = count;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", price=" + price + ", count=" + count + "]";
	}
	
	
}
