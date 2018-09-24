<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
   <%@page import="java.sql.*"  %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/custom.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/proper.js"></script>
	<script src="/js/bootstrap.js"></script>
	 <script type="text/javascript" src="/js/bootstrapValidator.js"></script>
	<script src="/js/jquery.datetimepicker.full.js"></script>
		
	<title>Complete Job</title>
	
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
   							<button class="dropbtn dropdown-toggle">Visitor Management</button>
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
		
	<br><br>
		 <h2 style="text-align: center;">Service Call</h2>
		<br>
		
		<div class="row md-auto">
			<div class="col-md-12">
					<form:form  method ="POST" modelAttribute="sc" class="form-horizontal form-responsive" action = "/addto">
  				
  						<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    					<label class="control-label col-sm-2" for="fauid">Job ID</label>
    					<div class="col-sm-4">
    					      						F${sc.fauid} 
    					
      						<form:input type="hidden" path="fauid" class="form-control" id="fauid" name="fauid"/>
      						</div>
    					</div>
    					
    					<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    					<label class="control-label col-sm-2" for="custoID">Client Name</label>
    					<div class="col-sm-4">
    					<select style="width: 280px; height: 35px;padding: 8px" id="cliID" path="custoID" name="custoID">
      						<option value=""></option>
      						
      						<%
      						
      							try{
      								
      								String sql = "select clientID, name from client";
      								Class.forName("com.mysql.jdbc.Driver").newInstance();
      								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false", "root", "root");
      								Statement stm = con.createStatement();
      								ResultSet rs = stm.executeQuery(sql);
      								
      								while (rs.next()){
      									
      									%>
      									
      									<option value="<%= rs.getInt("clientID")%>"> <%= rs.getString("name") %></option>
      									<%
      								}
      								
      							}
      						
      							catch(Exception e){
      								
      								e.printStackTrace();
      								out.println("Error : " + e.getMessage());
      							}
      						
      						%>
      						
      						</select>
      						<div class = "has-error">
      						<form:errors path="custoID" class="help-inline"/>
      						</div>
      						</div>
    					</div>
    					
  						<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    					<label class="control-label col-sm-2" for="faultDesc">Fault Description</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="faultDesc" class="form-control" id="faultDesc" name="faultDesc"/>
      						<div class = "has-error">
      						<form:errors path="faultDesc" class="help-inline"/>
      						</div>
      						</div>
    					</div>
    					
 	 		
  					<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="workDetails">Work carried out</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="workDetails" class="form-control" id="workDetails" name="workDetails"/>
      						<div class = "has-error">
      						<form:errors path="workDetails" class="help-inline"/>
      						</div>
    					</div>
  					</div>
  				
  					<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="fullyFunc">Is system fully functional after repair?</label>
    					<div class="col-sm-4">
  							<div class="form-check">
  								<label class="form-check-label">
    								<input type="radio" class="form-check-input" path="fullyFunc" name="fullyFunc" value="1"/>Yes
 								</label>
							</div>
							<div class="form-check">
  								<label class="form-check-label">
    								<input type="radio" class="form-check-input" path="fullyFunc" name="fullyFunc" value="0"/>No
 								</label>
							</div>
							
    							<div class = "has-error">
      								<form:errors path="fullyFunc" class="help-inline"/>
      							</div>
      					</div>
      				</div>
      			
    				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="generalDesc">Description of the now repaired system</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="generalDesc" class="form-control" id="generalDesc" name="generalDesc"/>
      						<div class = "has-error">
      						<form:errors path="generalDesc" class="help-inline"/>
      						</div>
    					</div>
  					</div>
  				
  					
  					<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="datet">Date</label>
    					<div class="col-sm-4"> 
      						<form:input type="date" path="datet" class="form-control" id="datet" name="datet"/>
      						<div class = "has-error">
      						<form:errors path="datet" class="help-inline"/>
    					</div>
  					</div></div>
  				
  				
 	 			
  					<br><br><br><br>
	 				<div class="form-group" style="margin-left: 32%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "ssubmit" class="btn btn-primary">Submit</button>
      					<button type="reset" value="resets" class="btn btn-primary">Reset</button>
    				</div>
    				</div>
 	 				</div>
 	 			
				</form:form>
			
			</div>
  		</div>
  		
  		</div>
  		
  	
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>