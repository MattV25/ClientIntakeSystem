<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="HeaderLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Home</title>
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/f0e68862fa.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
	<section id="main">
		<div id="format">
			<p>Client Home Page<p>
		</div>
		<div style="inline">	
			<a href="AccountDetails.jsp" class="btn btn-default btn-lg">Update Account</a>
			<a href="CreditApply.jsp" class="btn btn-default btn-lg">Apply For Credit</a>
		</div>
	</section>
	
	<div class="push"></div>   
	<%@ include file="footer.jsp" %>
</body>
</html>