package com.example.dao.impl;
import java.sql.*;
import com.example.connection.JDBCUtilities;
import com.example.model.ApplicationBean;
import com.example.model.ClientBean;
import com.example.model.UserBean;
import java.math.*;

public class IOpsDAOImpl {

	private static Connection con;
	public IOpsDAOImpl() throws SQLException{
		con = JDBCUtilities.getConnection(); 
	}
	//Authenticate method to Login
	public UserBean authenticate(UserBean user) throws SQLException {
		PreparedStatement ps = con.prepareStatement("select * from users where username=? and password=?");
		ps.setString(1,user.getUsername());
		ps.setString(2,user.getPassword());
		ResultSet rs = ps.executeQuery();
		boolean check = rs.next();
		if(!check){
			user.setValid(false);
		}
		else if(check){
			String username = rs.getString("username");
            String password = rs.getString("password");
			user.setUsername(username);
	        user.setPassword(password);
	        user.setValid(true);
	        con.close();
		}
		return user;
	}
	//Register method for new users
	public void register(UserBean user,ClientBean client) throws SQLException {
		//Insert data for "users" table
		BigDecimal primaryKey = null;
		PreparedStatement psuser = con.prepareStatement("insert into users (username,password,role) values (?,?,?)",new String[] { "user_id" });
		psuser.setString(1,user.getUsername());
		psuser.setString(2,user.getPassword());
		psuser.setString(3,user.getRole());
		psuser.executeUpdate();
		ResultSet generatedKeys = psuser.getGeneratedKeys();
		if (null != generatedKeys && generatedKeys.next()) {
		     primaryKey = generatedKeys.getBigDecimal(1);
		}
		psuser.close();
		//Insert data for "client" table
		PreparedStatement psclient = con.prepareStatement("insert into client (user_id,accountname,street1,street2,city,state,zipcode) values (?,?,?,?,?,?,?)"); 
		psclient.setBigDecimal(1,primaryKey); 
		psclient.setString(2,client.getAccountName()); 
		psclient.setString(3,client.getStreet1());  
		psclient.setString(4,client.getStreet2());  
		psclient.setString(5,client.getCity());  
		psclient.setString(6,client.getState());  
		psclient.setString(7,client.getZipcode());  
		psclient.executeUpdate();
		psclient.close();
		con.close();
	}   
	//Update Application Information
	public void updateApplication(UserBean user,ClientBean client) throws SQLException {
		PreparedStatement psuser = con.prepareStatement("update users set password=? where username=?");
		psuser.setString(1,user.getPassword());
		psuser.setString(2,user.getUsername());
		psuser.executeUpdate();
		psuser.close();
		
		PreparedStatement psclient = con.prepareStatement("update client set accountname=?,street1=?,street2=?,city=?,state=?,zipcode=? where accountname=?");
		psclient.setString(1,client.getAccountName());
		psclient.setString(2,client.getStreet1());
		psclient.setString(3,client.getStreet2());
		psclient.setString(4,client.getCity());
		psclient.setString(5,client.getState());
		psclient.setString(6,client.getZipcode());
		psclient.setString(7,client.getAccountName());
		psclient.executeUpdate();
		psclient.close();
		con.close();
	}
	//Submit Credit Application Request
	public void submitRequest(ApplicationBean app) throws SQLException{
		PreparedStatement ps = con.prepareStatement("insert into applications (client_id,applicationstatus,applicationdate,income,creditlimitrequest) values (?,?,?,?,?)");
		ps.setInt(1,app.getClientID());
		ps.setString(2,app.getApplicationStatus());
		ps.setDate(3,(Date) app.getApplicationDate());
		ps.setFloat(4,app.getIncome());
		ps.setFloat(5,app.getCreditLimitRequest());
		ps.executeUpdate();
		ps.close();
		con.close();
	}
}
