package com.finalproject.ArtHeistApp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "acceptedjobs")
public class Acceptedjobs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String title;
	private String shoppername;
	private Integer price;
	private String heisteremail;
	
	public Acceptedjobs() {
		// TODO Auto-generated constructor stub
	}

	public Acceptedjobs(String title, String shoppername, Integer price, String heisteremail) {
		super();
		this.title = title;
		this.shoppername = shoppername;
		this.price = price;
		this.heisteremail = heisteremail;
	}

	public Acceptedjobs(Integer id, String title, String shoppername, Integer price, String heisteremail) {
		super();
		this.id = id;
		this.title = title;
		this.shoppername = shoppername;
		this.price = price;
		this.heisteremail = heisteremail;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getShoppername() {
		return shoppername;
	}

	public void setShoppername(String shoppername) {
		this.shoppername = shoppername;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getHeisteremail() {
		return heisteremail;
	}

	public void setHeisteremail(String heisteremail) {
		this.heisteremail = heisteremail;
	}

	@Override
	public String toString() {
		return "Acceptedjobs [id=" + id + ", title=" + title + ", shoppername=" + shoppername + ", price=" + price
				+ ", heisteremail=" + heisteremail + "]";
	}

	
	
}
