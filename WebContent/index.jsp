<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<head>
<title>Client Intake System</title>
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/f0e68862fa.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<html>
<body>
	<section id="main">
			<div id="format">
				<p>IntlOps Client Intake System<p>
			</div>
			<p>User must either Login or Register in order to use application</p>
			
			<a href="Login.jsp" class="btn btn-default btn-lg">Login</a>
			<a href="Register.jsp" class="btn btn-default btn-lg">Register</a>
	</section>
	
	<div class="push"></div>   
	<%@ include file="footer.jsp" %>
</body>
</html>

