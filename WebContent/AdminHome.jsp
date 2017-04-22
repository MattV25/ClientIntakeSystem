<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>Admin Home Page</title>
</head>
<body>
	<div class="col-sm-12 accheading">
		<p><a href="AdminHome.jsp">View Account Details</a><a href="AdminApprove.jsp">Approve Pending Accounts</a></p>
	</div>
	<section id="main">
		<div id="format">
			<p> Account Details </p>
		</div>
		<form class="form-horizontal" role="form">
			<div class="form-group">
    			<label class="control-label col-sm-4"> Account Name: </label>
    			<div class="col-sm-4"> 
      				<input type="text" class="form-control" id="accname" placeholder="Enter Account Name: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Change Password: </label>
    			<div class="col-sm-4">
      				<input type="password" class="form-control" id="pwd" placeholder="Enter Password: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Confirm Password: </label>
    			<div class="col-sm-4"> 
      				<input type="password" class="form-control" id="pwd" placeholder="Confirm Password: ">
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