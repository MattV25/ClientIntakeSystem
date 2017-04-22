package com.example.connection;

import java.sql.*;
import oracle.jdbc.*;

public class JDBCUtilities {
	public static Connection getConnection() throws SQLException{
	     String url = "jdbc:oracle:thin:@localhost:1521:xe";
	     String usr = "intlops";
	     String pwd = "Radiant23*";
	     OracleDriver driver = new OracleDriver();
		 DriverManager.registerDriver(driver);
		 Connection con = DriverManager.getConnection(url,usr,pwd); 
		 return con;
	}
}



