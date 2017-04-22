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
<title>Credit Application</title>
</head>
<body>
	<section id="main">
		<div id="format">
			<p> Apply for Credit </p>
		</div>
		<form class="form-horizontal" role="form" method="post" action="src/com/example/servlets/CreditServlet">
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Client ID: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="clientid" name="clientid" placeholder="Enter Client ID: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Request Date: </label>
    			<div class="col-sm-4"> 
      				<input type="date" class="form-control" id="requestdate" name="requestdate" placeholder="Enter request date: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Income: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="income" name="income" placeholder="Enter income: ">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="control-label col-sm-4"> Credit Limit Request Amount: </label>
    			<div class="col-sm-4">
      				<input type="text" class="form-control" id="creditlimit" name="creditlimit" placeholder="Enter credit limit: ">
    			</div>
  			</div>
  			<div class="form-group">
  				<div class="col-sm-9" style="align: right">
  				<button type="submit" class="btn btn-default">Apply</button>
  				</div>
  			</div>
  		</form>
  	</section>
  	<div class="push"></div>
</body>
</html>
<%@ include file="footer.jsp" %>