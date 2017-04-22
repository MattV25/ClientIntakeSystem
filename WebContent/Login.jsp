<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://use.fontawesome.com/f0e68862fa.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="JavaScript/IOpsJS.js"></script>
<title>Login Form</title>
</head>
	<body>
	<section id="main">
		<div id="format">
			<p> Login </p>
		</div>
		<s:form class="form-horizontal" role="form" method="post" action="login">
  			<div class="form-group">
    			<s:label cssClass="control-label col-sm-4"> Username: </s:label>
    			<div class="col-sm-4">
      				<s:textfield type="text" class="form-control" id="username" name="username" placeholder="Enter username: ">
      				<s:fielderror fieldName="username" labelposition="left" /></s:textfield>
    			</div>
  			</div>
  			<div class="form-group">
    			<s:label class="control-label col-sm-4"> Password: </s:label>
    			<div class="col-sm-4"> 
      				<s:textfield type="password" class="form-control" id="password" name="password" placeholder="Enter password: ">
      				<s:fielderror fieldName="password"/></s:textfield> 
    			</div>
  			</div>
  			<div class="form-group">
  				<div class="col-sm-9" style="align: right">
  				<s:submit type="submit" class="btn btn-default" method="execute"/>
  				</div>
  			</div>
  			<br><br>
  			<div class="form-group"> 
  				<label class="control-label col-sm-4"> Forget Password? </label>
  				<div class="regbutton col-sm-4">
  				<a href="Help.jsp" type="submit" class="btn btn-default">Help</a>
  				</div>
      		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4"> Need to Register? </label>
    			<div class="regbutton col-sm-4">
    			<a href="Register.jsp" type="submit" class="btn btn-default">Register</a>
    			</div>
    		</div>
  		</s:form>
  	</section>
  	<div class="push"></div>
	</body>
</html>
<%@ include file="footer.jsp" %>