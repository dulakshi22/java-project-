package com.adm;

public class admin {
	
	private String  adminID;
	private  String  name;
	private  String  phonenumber;
	private  String  email;
	private   String  username; 
	private  String password;
	public admin(String adminID, String name, String phonenumber, String email, String username, String password) {


		this.adminID = adminID;
		this.name = name;
		this.phonenumber = phonenumber;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public String getAdminID() {
		return adminID;
	}
	public String getName() {
		return name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	
	
	
}
