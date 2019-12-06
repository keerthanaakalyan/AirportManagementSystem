<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<style>
ul.a {
  list-style-type: circle;
}


  body {
  background-image: url('flight3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 100%;

}  
h2 {
  font-weight: bold;
  text-decoration: underline;
  text-shadow: 0 0 3px black;
  text-transform: uppercase;
}

div.form-group {
  font-size: 120%;
text-transform: capitalize;
}
div.col-sm-9 {
  font-size: 70%;
}
a:hover {
  color: black;
}
a.nav
{
text-align: center;
float: right;

}

a.nav:visited {
  color: black;

}

a.nav:link {color: black;}

a.nav:hover {
  color: red;
}
a.nav:active {color: red; }


.button {
  background-color: #ffffff ; 
  color: black; 
  border: 2px solid #ffffff;
  padding: 10px 5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
 /*  margin: 4px 2px; */
  /* -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s; */
  cursor: pointer;
  
 background-color: #008CBA;
  color: white; 
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
		<form class="form-horizontal" role="form">
			<h2>
				<center>Admin</center>
			</h2>
			 <font size="small"><a href="/" class="nav" align="middle" target="_blank">Logout</a></font>
			<br>
			<br>
			<br>
	<center> <a href="toaddPlane" class="button">Add Planes</a>	<a href="viewPlanes" class="button">View Planes</a>	 <a href="toGetPlaneId" class="button">Update Planes</a> </center>
	<br>	
	<br>
	<br>
	<center><a href="toaddPilot" class="button">Add Pilot</a>	<a href="viewPilots" class="button">View Pilot</a>	 <a href="toGetPilotId" class="button">Update Pilot</a> </center>
	<br>	
	<br>
	<br>
	<center><a href="toaddHangar" class="button">Add Hangars</a>	<a href="viewHangars" class="button">View Hangars</a>	 <a href="toGetHangarPlaneId" class="button">Update Hangars</a> </center>
		<br>
		<br>	
	<br>
	<center><a href="viewManagers" class="button">View Manager</a> </center>		
	
		
			
			
			
			
			
			
			
			
			

</body>
</html>


