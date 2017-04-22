<%@ page language="java" import="java.sql.*,oracle.jdbc.*,javax.sql.*,com.example.dao.impl.*,com.example.servlets.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/f0e68862fa.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
<title>Registration</title>
</head>
<body>

<%
     String url = "jdbc:oracle:thin:@localhost:1521:xe";
     String usr = "intlops";
     String pwd = "Radiant23*";
     OracleDriver driver = new OracleDriver();
     DriverManager.registerDriver(driver);
     Connection conn = DriverManager.getConnection(url,usr,pwd);
     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("select state_name from demo_states order by state_name asc");
%>

	<section id="main">
		<div id="format">
			<p> Register </p>
		</div>
		<form class="form-horizontal" method="post" action="src/com/example/servlets/RegisterServlet">
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Username: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="username" name="username" placeholder="Enter username: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Password: </label>
    			<div class="col-sm-4"> 
      				<input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Company Name: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="cmpyname" name="accountName" placeholder="Enter Company Name: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Has this company applied before? </label>
      				<div class="radio col-sm-4">
  						<label class="radio-inline"><input type="radio" id="appyes" name="appbefore">Yes</label>
  						<label class="radio-inline"><input type="radio" id="appno" name="appbefore">No</label>
					</div>
      		</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Address Line 1: </label>
    			<div class="col-sm-4"> 
      				<input type="text" class="form-control" id="address1" name="street1" placeholder="Enter Address Line 1: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Address Line 2: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="address2" name="street2" placeholder="Enter Address Line 2: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> State: </label>
    			<div class="col-sm-1 stateselect"> 
      				<select name="state">
      					<%  while(rs.next()){ %>
            			<option><%= rs.getString(1)%></option><% } %>
        			</select>
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> City: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="city" name="city" placeholder="Enter city: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Zipcode: </label>
    			<div class="col-sm-4"> 
      				<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="Enter zipcode: ">
    			</div>
  			</div>
  			<div class="form-group">
  				<div class="col-sm-9" style="align: right">
  				<input type="submit" class="btn btn-default" value="Register">
  				</div>
  			</div><br>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Already have account? </label>
    			<div class="col-sm-4 regbutton"> 
      				<a href="Login.jsp" type="submit" class="btn btn-default">Login</a>
    			</div>
  			</div>
  		</form>
  	</section>
	<div class="push"></div>
</body>
</html>
<%@ include file="footer.jsp" %>