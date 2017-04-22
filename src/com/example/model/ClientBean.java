package com.example.model;

public class ClientBean {
	
	private int clientID;
	private String accountName;
	private String street1;
	private String street2;
	private String city;
	private String state;
	private String zipcode;
	
	//Constructor
	public ClientBean(String accountName, String street1, String street2, String city, String state,
			String zipcode) {
		super();
		this.accountName = accountName;
		this.street1 = street1;
		this.street2 = street2;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	
	//Client ID
	public int getClientID() {
		return clientID;
	}
	public void setClientID(int clientID) {
		this.clientID = clientID;
	}
	
	//Account Name
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	
	//Street 1
	public String getStreet1() {
		return street1;
	}
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
	
	//Street 2
	public String getStreet2() {
		return street2;
	}
	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	
	//City
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	//State
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	//Zipcode
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}
