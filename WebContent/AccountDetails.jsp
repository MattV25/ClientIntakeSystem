<%@ page language="java" import="java.sql.*,oracle.jdbc.*,javax.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="HeaderLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/f0e68862fa.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
<title>Account Details</title>
</head>
<body>
<%
     String url = "jdbc:oracle:thin:@localhost:1521:xe";
     String usr = "states";
     String pwd = "Radiant23*";
     OracleDriver driver = new OracleDriver();
     DriverManager.registerDriver(driver);
     Connection conn = DriverManager.getConnection(url,usr,pwd);
     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("select state from states order by state asc");
%>
	<div class="col-sm-12 accheading">
		<p><a href="AccountDetails.jsp">View Account Details</a><a href="CreditApply.jsp">Apply for Credit</a></p>
	</div>
	<section id="main">
		<div id="format">
			<p> Account Details </p>
		</div>
		<form class="form-horizontal" role="form" method="post" action="src/com/example/servlets/UpdateAppServlet">
			<div class="form-group">
    			<label class="control-label col-sm-4"> Account Name: </label>
    			<div class="col-sm-4"> 
      				<input type="text" class="form-control" id="accname" name="accountName" placeholder="Enter Account Name: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Change Password: </label>
    			<div class="col-sm-4">
      				<input type="password" class="form-control" id="pwd" name="password" placeholder="Enter Password: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Confirm Password: </label>
    			<div class="col-sm-4"> 
      				<input type="password" class="form-control" id="pwd" name="password" placeholder="Confirm Password: ">
    			</div>
  			</div><br>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Address Line 1: </label>
    			<div class="col-sm-4"> 
      				<input type="text" class="form-control" id="address1" name="address1" placeholder="Enter Address Line 1: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Address Line 2: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="address2" name="address2" placeholder="Enter Address Line 2: ">
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
  				<button type="submit" class="btn btn-default">Update</button>
  				</div>
  			</div>
  		</form>
	</section>
	<div class="push"></div>
</body>
</html>
<%@ include file="footer.jsp" %>