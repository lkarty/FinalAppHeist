package com.finalproject.ArtHeistApp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="users")
public class User {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)

	private int userid;
	private String email;
	private String type;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(int userid, String email, String type) {
		super();
		this.userid = userid;
		this.email = email;
		this.type = type;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
		
}
