package Aja;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="joblist")

public class Shopper {
@Id
@GeneratedValue(strategy= GenerationType.IDENTITY)

private int objectid;
private String title;
private int price;
private String shoppername;

public Shopper(String shoppername) {
	this.shoppername= shoppername;
}

public Shopper() {
	super();
	// TODO Auto-generated constructor stub
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
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getShoppername() {
	return shoppername;
}
public void setShoppername(String shoppername) {
	this.shoppername = shoppername;
}
public Shopper(int objectid, String title, int price, String shoppername) {
	super();
	this.objectid = objectid;
	this.title = title;
	this.price = price;
	this.shoppername = shoppername;
}


@Override
public String toString() {
	return "Shopper [objectid=" + objectid + ", title=" + title + ", price=" + price + ", shoppername=" + shoppername
			+ "]";
}

}
