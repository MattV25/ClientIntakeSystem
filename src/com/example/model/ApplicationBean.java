package com.example.model;

import java.util.Date;

public class ApplicationBean {
	
	private int applicationID;
	private int clientID;
	private String applicationStatus;
	private Date applicationDate;
	private float income;
	private float creditLimitRequest;
	
	//Constructor
	public ApplicationBean(int clientID,String applicationStatus, Date applicationDate, float income, float creditLimitRequest) {
		super();
		this.clientID = clientID;
		this.applicationStatus = applicationStatus;
		this.applicationDate = applicationDate;
		this.income = income;
		this.creditLimitRequest = creditLimitRequest;
	}
	
	//Application ID
	public int getApplicationID() {
		return applicationID;
	}
	public void setApplicationID(int applicationID) {
		this.applicationID = applicationID;
	}
	
	//Client ID
	public int getClientID() {
		return clientID;
	}
	public void setClientID(int clientID) {
		this.clientID = clientID;
	}
	
	//Application Status
	public String getApplicationStatus() {
		return applicationStatus;
	}
	public void setApplicationStatus(String applicationStatus) {
		this.applicationStatus = applicationStatus;
	}
	
	//Application Date
	public Date getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}
	
	//Income
	public float getIncome() {
		return income;
	}
	public void setIncome(float income) {
		this.income = income;
	}
	
	//Credit Limit
	public float getCreditLimitRequest() {
		return creditLimitRequest;
	}
	public void setCreditLimitRequest(float creditLimitRequest) {
		this.creditLimitRequest = creditLimitRequest;
	}
}
