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

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="/css/glyphican.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	 	
	<title>Today's Jobs</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 2000px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.png" style="width:12%;margin-left: 2%">
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
  				 			<button class="dropbtn dropdown-toggle"><a href="/faultdash" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="/form">Add Fault</a>
							    <a href="/pendingurgent">Pending urgent jobs</a>
							    <a href="/finished">Finished Jobs</a>
      							<div class="dropdown-divider"></div>
							    <a href="/detail">Jobs List</a>
							    <a href="/todayj">Today's Jobs</a>
							    <a href="/monreport">Get Monthly Report</a>
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
		
		<h1 align="center">Details of jobs assigned for today</h1>
			<br>
   
		<form:form >
		<div class="table-responsive">
			<table id="t01" class="table table-striped table-bordered">
					<tr><th>ID</th><th>Nature</th><th>Priority</th>
					<th>Category</th>
					<th>Client ID</th><th>Branch ID</th><th>Description</th>
					<th>Reported By</th><th>Fixed By</th><th>Reported On</th>
					<th>Edit</th><th>Delete</th><th>Assigned</th><th>Complete Job</th></tr>  

   			<c:forEach var="fault" items="${list}"> 
   			<tr>  
   				<td>${fault.faID}</td>  
   				<td>${fault.nature}</td> 
   				<td>${fault.priority}</td>  
   				
  				 <td>${fault.category}</td>  
   				<td>${fault.cliID}</td> 
   				<td>${fault.brID}</td>  
   				<td>${fault.descrip}</td>  
   				<td>${fault.reportedBy}</td>  
   				<td>${fault.fixedBy}</td>
   				<td>${fault.reportedOn}</td>
   				<td><a href="/editfault/${fault.id}" class="ed"><span class="glyphicon glyphicon-pencil"></span></a></td>  
   				<td><a href="/deletefault/${fault.id}" class="del"><span class="glyphicon glyphicon-trash"></span></a></td>  
   				<td>
    					<c:choose>
    						<c:when test="${fault.isassigned}"><a href="/viewtec/${fault.id}"><span class="glyphicon glyphicon-folder-open"></span></a></c:when>
    						<c:otherwise><a href="/assign/${fault.id}"><span class="glyphicon glyphicon-user"></span></a></c:otherwise>
    					</c:choose>
								</td>
				<td>
				<c:choose>
    						<c:when test="${fault.status=='Pending'}"><a href="/servicall/${fault.id}" class="com"><span class="glyphicon glyphicon-check"></span></a></c:when>
    						<c:otherwise><span class="glyphicon glyphicon-hand-right"></span></a></c:otherwise>
    					</c:choose>
				
				</td>
   			</tr>  
   
   			</c:forEach> 
   
   
  			 </table> 
  			 </div> 
  		<br><br><br><br>
   
  
   		</form:form>
		
	<script type="text/javascript">
	
	$(document).ready(function(){
		  $(".del").click(function(){
		    if (!confirm("Do you want to delete?")){
		      return false;
		    }
		  });
		});
	
	$(document).ready(function(){
		  $(".ed").click(function(){
		    if (!confirm("Do you want to edit?")){
		      return false;
		    }
		  });
		});
	
	$(document).ready(function(){
		  $(".com").click(function(){
		    if (!confirm("Complete Job?")){
		      return false;
		    }
		  });
		});
	
	</script>
  
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>