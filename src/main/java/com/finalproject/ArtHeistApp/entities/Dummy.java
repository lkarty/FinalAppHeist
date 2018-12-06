package com.finalproject.ArtHeistApp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="dummyartworks")

public class Dummy {

@Id
@GeneratedValue(strategy= GenerationType.IDENTITY)

private int objectid;
private String title;
private String artist;
private int price;


public Dummy(int objectid, String title, String artist, int price) {
	super();
	this.objectid = objectid;
	this.title = title;
	this.artist = artist;
	this.setPrice(price);
}
public int getObjectid() {
	return objectid;
}
public void setObjectid(int objectid) {
	this.objectid = objectid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getArtist() {
	return artist;
}
public void setArtist(String artist) {
	this.artist = artist;
}
public Dummy() {
	super();
	// TODO Auto-generated constructor stub
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}




	

}
