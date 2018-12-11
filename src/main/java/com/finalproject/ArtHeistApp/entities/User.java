package com.finalproject.ArtHeistApp.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer userid;
	private String email;
	private String type;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String email, String type) {
		super();
		this.email = email;
		this.type = type;
	}

	public User(Integer userid, String email, String type) {
		super();
		this.userid = userid;
		this.email = email;
		this.type = type;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
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

	@Override
	public String toString() {
		return "User [userid=" + userid + ", email=" + email + ", type=" + type + "]";
	}
	
	

}
