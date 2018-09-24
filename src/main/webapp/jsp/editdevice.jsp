<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/custom.css">
	
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	 	
	<title>Edit Device Details</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 1500px">
		<div class="row" >
			<div class="header">
				<img src="/Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="#">Add Employee</a>
							    <a href="#">Remove Employee</a>
							    <a href="#">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#">Payroll System</a>
							    <a href="#">Time and Attendance System</a>
							    <a href="#">Leaving System</a>
  							</div> 
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Client Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
 							</div>
 						</div>
					 	<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Sales Management</a></button>
 							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Order Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Inventory Management</a></button>
							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
							</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Payment Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
						      	<div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
  				 			<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Visitor Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add appointment</a>
							    <a href="#">Remove appointment</a>
					
      							<div class="dropdown-divider"></div>
							    <a href="#"> Appointment Log</a>
							    <a href="#"> Event Log</a>
							
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
		
		<br>
		<br>
		<div class="form-container">
		<h1 align="center">Edit Entry</h1>
			<br>
			
			
   
   		<form:form method="POST" modelAttribute="eddevice"  class="form-horizontal" action="/edsave">

			<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="deviceID">Job ID</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="deviceID" class="form-control" id="deviceID" name="deviceID"/>
      						
      						</div>
    					</div>
		
			<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="model">Model</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="model" class="form-control" id="model" name="model"/>
      						<div class="has-error">
								<form:errors path="model" class="help-inline"/>
							</div>
      						</div>
    					</div>

			<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="unitPrice">Unit Price</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="unitPrice" class="form-control" id="unitPrice" name="unitPrice"/>
      						<div class="has-error">
								<form:errors path="unitPrice" class="help-inline"/>
							</div>
      						</div>
    					</div>

			<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="name">Name</label>
    					<div class="col-sm-4">
							<form:input type="text" path="name" id="name" name="name" class="form-control"/>
								<div class="has-error">
								<form:errors path="name" class="help-inline"/>
							</div>
						</div>
				</div>
			
			
			<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="manufacturer">Manufacturer </label>
    					<div class="col-sm-4">
							<form:input type="text" path="manufacturer" id="manufacturer" name="manufacturer" class="form-control"/>
								<div class="has-error">
								<form:errors path="manufacturer" class="help-inline"/>
							</div>
						</div>
				</div>
			
			
			<div class="form-group" style="margin-left: 42%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "editd" class="btn btn-primary">Edit</button>
    				</div>
    				</div>
 	 			</div>
	
	</form:form>
	
	</div>
</div>
<footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>