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
	<link rel="stylesheet" href="/css/glyphican.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/proper.js"></script>
	<script src="/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/bootstrapValidator.js"></script>
	<script src="/js/Chart.bundle.min.js"></script>
		
	<title>Add Fault</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 1500px">
		<div class="row" >
			<div class="header">
				<img src="/Images/logo.png" style="width:12%;margin-left: 2%">
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
		 <h2 style="text-align: center;">Report Fault</h2>
		<br>
		
		<div class="row md-auto">
			<div class="col-md-12">
				<form:form  method ="POST" modelAttribute="fault" id="validateForm1" class="form-horizontal form-responsive" action = "report">
  				
  				<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="nature">Nature</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="nature" class="form-control" id="nature" name="nature"/>
      						<div class = "has-error">
      						<form:errors path="nature" class="help-inline"/>
      						</div>
      						</div>
    					</div>
    					
 	 		
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="category">Category</label>
    					<div class="col-sm-4"> 
      						<select style="width: 280px; height: 35px;padding: 8px" id="category" path="category" name="category">
      						<option value=""></option>
      						<option value="Hardware">Hardware</option>
      						<option value="Software">Software</option>
      						<option value="Firewall">Firewall</option>
      						</select>
      						<div class = "has-error">
      						<form:errors path="category" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="priority">Priority :</label>
    					<div class="col-sm-4">
      						<select style="width: 280px; height: 35px;padding: 8px" id="priority" path="priority" name="priority">
      						<option value=""></option>
      						<option value="Urgent">Urgent</option>
      						<option value="Not Urgent">Not Urgent</option>
      						</select>
      						<div class = "has-error">
      						<form:errors path="priority" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="cliID">Client Name :</label>
    					<div class="col-sm-4">
      						<select style="width: 280px; height: 35px;padding: 8px" id="cliID" path="cliID" name="cliID">
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
      						<form:errors path="cliID" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
 	 			<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="brID">Branch Name :</label>
    					<div class="col-sm-4"> 
    					<select style="width: 280px; height: 35px;padding: 8px" id="brID" path="brID" name="brID">
      						<option value=""></option>
      						
      						<%
      						
      							try{
      								
      								String sql = "select branchID, Bcity from branch";
      								Class.forName("com.mysql.jdbc.Driver").newInstance();
      								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false", "root", "root");
      								Statement stm = con.createStatement();
      								ResultSet rs = stm.executeQuery(sql);
      								
      								while (rs.next()){
      									
      									%>
      									
      									<option value="<%= rs.getInt("branchID")%>"> <%= rs.getString("Bcity") %></option>
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
      						<form:errors path="brID" class="help-inline"/>
      						</div>
    					</div>
    					</div>
    				
    			<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="descrip">Description  :</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="descrip" class="form-control" id="descrip" name="descrip"/>
      						<div class = "has-error">
      						<form:errors path="descrip" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="reportedBy">Reported By  :</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="reportedBy" class="form-control" id="reportedBy" name="reportedBy"/>
      						<div class = "has-error">
      						<form:errors path="reportedBy" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="fixedBy">Fixed By  : </label>
    					<div class="col-sm-4"> 
      						<form:input type="date" path="fixedBy" class="form-control" id="fixedBy" name="fixedBy"/>
      						<div class = "has-error">
      						<form:errors path="fixedBy" class="help-inline"/>
    					</div>
  				</div></div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="reportedOn">Reported On  : </label>
    					<div class="col-sm-4"> 
      						<form:input type="date" path="reportedOn" class="form-control" id="reportedOn" name="reportedOn"/>
      						<div class = "has-error">
      						<form:errors path="reportedOn" class="help-inline"/>
    					</div>
  				</div></div>
  				
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="status">Status</label>
    					<div class="col-sm-4">
      						<select style="width: 280px; height: 35px;padding: 8px" id="status" path="status" name="status">
      						<option value=""></option>
      						<option value="Pending">Pending</option>
      						<option value="Completed" disabled>Completed</option>
      						</select>
      						<div class = "has-error">
      						<form:errors path="status" class="help-inline"/>
    					</div>
       </div>
 	 			</div>
  				<br><br><br><br>
	 			<div class="form-group" style="margin-left: 32%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "submit" class="btn btn-primary">Submit</button>
      					<button type="reset" value="resetf" class="btn btn-primary">Reset</button>
    				</div>
    				</div>
 	 			</div>
				</form:form>
			</div>
  		</div>
  		</div>
  		
  		<script type="text/javascript">
  		
  		$(function(){
  		    var dtToday = new Date();
  		    
  		    var month = dtToday.getMonth() + 1;
  		    var day = dtToday.getDate();
  		    var year = dtToday.getFullYear();
  		    if(month < 10)
  		        month = '0' + month.toString();
  		    if(day < 10)
  		        day = '0' + day.toString();
  		    
  		    var maxDate = year + '-' + month + '-' + day;
  		    //alert(maxDate);
  		    $('#reportedOn').attr('max', maxDate);
  		});
  		
  		$(function(){
  		    var dtToday = new Date();
  		    
  		    var month = dtToday.getMonth() + 1;
  		    var day = dtToday.getDate();
  		    var year = dtToday.getFullYear();
  		    if(month < 10)
  		        month = '0' + month.toString();
  		    if(day < 10)
  		        day = '0' + day.toString();
  		    
  		    var minDate = year + '-' + month + '-' + day;
  		    //alert(maxDate);
  		    $('#fixedBy').attr('min', minDate);
  		});
	 
	   			$(document).ready(function() {
				$('#validateForm1').bootstrapValidator({
					feedbackIcons: {
						valid: 'glyphicon glyphicon-ok',
						invalid: 'glyphicon glyphicon-remove',
						validating: 'glyphicon glyphicon-refresh'
					},
					fields: {
						
						nature: {
							validators: {
								stringLength: {
									min: 5,
									message: 'Enter nature of fault reported with minimum of 5 letters length'
								},
								
								notEmpty: {
									message: 'Nature field is required'
								}
							}
						},
						
						category: {
							validators: {
								notEmpty: {
									message: 'Category field is required'
								}
							}
						},
			
						priority: {
							validators: {
								notEmpty: {
									message: 'Priority field is required'
								}
							}
						},
						
						cliID: {
							validators: {
								notEmpty: {
									message: 'Client Name field is required'
								}
							}
						},
			
						brID: {
							validators: {
								notEmpty: {
									message: 'Branch Name field is required'
								}
							}
						},
					

						descrip: {
							validators: {
								stringLength: {
									min: 10,
									message: 'Description should be at least 10 letters long'
								},
								notEmpty: {
									message: 'Description field is required'
								},
								
								regexp:{
										regexp: /^[a-zA-Z0-9_\.]+$/,
										message: 'Description can only have letters, numbers, dots and underscores'
								}
							}
						},
						
						reportedBy: {
							validators: {
								stringLength: {
									min: 5,
									message: 'Name of the person reporting on behalf of client should be at least 5 letters long'
								},
								
								notEmpty: {
									message: 'Reported By field is required'
								}
							}
						},
						
						fixedBy: {
							validators: {
								notEmpty: {
									message: 'Fixed By field is required'
								}
							}
						},
						
						reportedOn: {
							validators: {
								notEmpty: {
									message: 'Reported on field is required'
								}
							}
						},
						
						status: {
							validators: {
								notEmpty: {
									message: 'Status field is required'
								}
							}
						},
						
						}
					});
				});
	   			
			</script>
  	
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>