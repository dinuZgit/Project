<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
  <%
  int x,y,z,a,b,c,d;
  
  		Class.forName("com.mysql.jdbc.Driver");
  		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","root");
  		Statement st = con.createStatement();
  		
  		String query1 = "Select Count(*) from fault where status='Pending'";
  		ResultSet rs1 = st.executeQuery(query1);
  		String Countrow1="";
  		while(rs1.next()){
  			
  			Countrow1 = rs1.getString(1);
  			
  		}
  		
  		
  	x= Integer.parseInt(Countrow1);	
  	
  	
  	String query2 = "Select Count(*) from fault where status='Completed'";
		ResultSet rs2 = st.executeQuery(query2);
		String Countrow2="";
		while(rs2.next()){
			
			Countrow2 = rs2.getString(1);
			
		}
		
	  	y= Integer.parseInt(Countrow2);	
	  	
	  	
	  	
		String query3 = "Select Count(*) from fault where priority='Urgent'";
		ResultSet rs3 = st.executeQuery(query3);
		String Countrow3="";
		while(rs3.next()){
			
			Countrow3 = rs3.getString(1);
			
		}
		
	  	z= Integer.parseInt(Countrow3);	
	
	  	
  		String query4 = "Select Count(*) from fault where priority='Not Urgent'";
  		ResultSet rs4 = st.executeQuery(query4);
  		String Countrow4="";
  		while(rs4.next()){
  			
  			Countrow4 = rs4.getString(1);
  			
  		}
  		
  		
  	a= Integer.parseInt(Countrow4);	
  	
  	
  	String query5 = "Select Count(*) from fault where category='Hardware'";
		ResultSet rs5 = st.executeQuery(query5);
		String Countrow5="";
		while(rs5.next()){
			
			Countrow5 = rs5.getString(1);
			
		}
		
	  	b= Integer.parseInt(Countrow5);	
	  	
	  	
	  	String query6 = "Select Count(*) from fault where category='Software'";
		ResultSet rs6 = st.executeQuery(query6);
		String Countrow6="";
		while(rs6.next()){
			
			Countrow6 = rs6.getString(1);
			
		}
		
	  	c= Integer.parseInt(Countrow6);	
	  	
	  	String query7 = "Select Count(*) from fault where category='Firewall'";
		ResultSet rs7 = st.executeQuery(query7);
		String Countrow7="";
		while(rs7.next()){
			
			Countrow7 = rs7.getString(1);
			
		}
		
	  	d= Integer.parseInt(Countrow7);	
	  	
	  	
	  	
	  	
	  	
  		
  
  %>     
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
	 	
	<title>Fault Dashboard</title>
</head>

<body>
	<div class="container-fluid" style="height: 1560px">
		<div class="row" >
			<div class="header">
				<img src="/Images/logo.png" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="dash" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="add">Add Employee</a>
							    <a href="remove">Remove Employee</a>
							    <a href="profile">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="payroll">Payroll System</a>
							    <a href="t&a">Time and Attendance System</a>
							    <a href="leave">Leaving System</a>
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
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
		<br><br><br>
	<center>
	<h3 id="demo"></h3></center>

    <script>

    var today = new Date()
    var curHr = today.getHours()

    if (curHr >= 0 && curHr < 12) {
        document.getElementById("demo").innerHTML = 'Automated Barcode Solutions wishes you a Good Morning!';
    }  else if (curHr >= 12 && curHr < 17) {
        document.getElementById("demo").innerHTML = 'Feeling tired? Take a few minutes, walk around and come back!;)';
    } else {
        document.getElementById("demo").innerHTML = 'Have a nice evening!';
    }
    
    </script>
    
    
	<div class="row" style="margin-top: 150px;height: 300px">
	<div class="col-md-5" style="background-color: rgba(255,255,255,0.8);margin-left: 90px;border-radius: 30px">
	<div id="canvas-holder">
	
		<canvas id="pie-chart"></canvas>
	</div>
	</div>
	
	<div class="col-md-5 ml-5" style="background-color: rgba(255,255,255,0.8);border-radius: 30px">
	<div id="canvas-holder" >
	
		<canvas id="pie-statuschart"></canvas>
	</div>
	</div>
	
	</div>
	
	
	<div class="row" style="margin-top: 120px;margin-left:90px;height: 600px">
	<div class="col-md-11" style="background-color: rgba(255,255,255,0.8);border-radius: 30px">
	<div id="canvas-holder" >
	
		<canvas id="bar-chartcategory"></canvas>
	</div>
	</div>
	</div>
	
	
<script type="text/javascript">
new Chart(document.getElementById("pie-chart"), {
    type: 'pie',
    data: {
      labels: ["Urgent", "Not Urgent"],
      datasets: [
        {
          label: "Total",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f"],
          data: [<%=z%>,<%=a%>]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Faults reported sorted by Priority',
        fontSize:20,
        fontStyle:'italic'
      }
    }
})
</script>


<script type="text/javascript">
new Chart(document.getElementById("pie-statuschart"), {
    type: 'pie',
    data: {
      labels: ["Pending","Completed"],
      datasets: [
        {
          label: "Total",
          backgroundColor: ["#008B8B", "#DA70D6"],
          data: [<%=x%>,<%=y%>]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Pending jobs vs Completed jobs',
        fontSize:20,
        fontStyle:'italic'
      }
    }
})
</script>
	
	<script type="text/javascript">
new Chart(document.getElementById("bar-chartcategory"), {
    type: 'bar',
    data: {
      labels: ["Hardware","Software","Firewall"],
      datasets: [
        {
          label: "Total",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f"],
          data: [<%=b%>,<%=c%>,<%=d%>]
        }
      ]
    },
    options: {
      legend: { display: false },
      scales: {
          yAxes: [{
                  display: true,
                  ticks: {
                      beginAtZero: true,
                      stepSize: 10,
                      max:50
                  }
              }]
      },
      
      title: {
        display: true,
        text: 'Reported cases frequency by category',
        fontSize:20,
        fontStyle:'italic'
      }
    }
})
</script>
	
	
	
	
	
  	
  	</div>
 
 	<footer class="page-footer" style="background-color:#5c5d60;">
		<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  	</footer>
  	
</body>
</html>