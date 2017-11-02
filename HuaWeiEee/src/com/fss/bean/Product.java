package com.fss.bean;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {

	/**
	 * 首页
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String sort;
	private String name;
	private String desca;
	private String tag;
	private String price;
	private String image;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesca() {
		return desca;
	}

	public void setDesca(String desca) {
		this.desca = desca;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
