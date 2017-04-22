package com.example.model;
import org.apache.struts2.convention.annotation.*;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.ValidationAware;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

public class UserBean extends ActionSupport implements ValidationAware{
	private static final long serialVersionUID = 1L;
	private int userID;
	private String username;
	private String password;
	private String role;
	public boolean valid;

	public String execute() throws Exception {
		return "success";
	}
	
	//Constructor
	public UserBean(){
		
	}
	
	//Constructor
	public UserBean(String username, String password, String role) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
	}
	//Constructor
	public UserBean(String username, String password){
		super();
		this.username = username;
		this.password = password;
	}
	
	//User ID
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	//Username
	@RequiredStringValidator(type= ValidatorType.FIELD, message = "The username is required" )
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	//Password
	@RequiredStringValidator(type= ValidatorType.FIELD, message = "The password is required" )
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//Role
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public boolean isValid() {
		return valid;
	}

    public void setValid(boolean valid) {
    	this.valid = valid;
	}	
}
