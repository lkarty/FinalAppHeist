package com.finalproject.ArtHeistApp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "joblist")

public class Shopper {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer jobid;
	//private int objectid;
	private String title;
	private Integer price;
	private String shoppername;
	private String image;
	
	public Shopper(String shoppername) {
		this.shoppername = shoppername;
	}

	public Shopper() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Shopper(Integer objectid, String title, Integer price, String shoppername) {
		super();
		//this.objectid = objectid;
		this.title = title;
		this.price = price;
		this.shoppername = shoppername;
	}

	public Shopper(String title, Integer price, String shoppername, String image){
		super();
		// this.objectid = objectid;
		this.title = title;
		this.price = price;
		this.shoppername = shoppername;
		this.image=image;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getJobid() {
		return jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}



//	public int getObjectid() {
//		return objectid;
//	}
//
//	public void setObjectid(int objectid) {
//		this.objectid = objectid;
//	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getShoppername() {
		return shoppername;
	}

	public void setShoppername(String shoppername) {
		this.shoppername = shoppername;
	}



	@Override
	public String toString() {
		return "Shopper [ title=" + title + ", price=" + price + ", shoppername="
				+ shoppername + "]";
	}

}
