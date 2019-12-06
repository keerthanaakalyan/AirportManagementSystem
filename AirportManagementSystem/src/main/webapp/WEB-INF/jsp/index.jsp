<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.container {
  position: relative;
  text-align: center;
 
}
body {
  background-image: url('flight3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 100%;

} 
/* .centered1 {
  position: absolute;
  top: 30%;
  left: 50%;
  font-weight: bold;
  font-size: 30px;
  transform: translate(-50%, -50%);
}
.centered2 {
  position: absolute;
  top: 40%;
  left: 50%;
  font-weight: bold;
  font-size: 30px;
  transform: translate(-50%, -50%);
}
.button1
{
 position: absolute;
  top: 35%;
  left: 45%;
  background-color:#add8e6;
color: black;
    transform: translate(-50%, -50%);
   display: inline-block;
}
.button2
{
 position: absolute;
  top: 35%;
  left: 55%;
   background-color:#add8e6 ;
color: black;
    transform: translate(-50%, -50%);
   display: inline-block;
}
.button3
{
 position: absolute;
  top: 45%;
  left: 45%;
   background-color:#add8e6 ;
color: black;
    transform: translate(-50%, -50%);
   display: inline-block;
}
.button4
{
 position: absolute;
  top: 45%;
  left: 55%;
   background-color:#add8e6;
color: black;
    transform: translate(-50%, -50%);
   display: inline-block;
} */

a:link, a:visited {
  /* background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block; */
  
  background-color: #ffffff ; 
  color: black; 
  border: 2px solid #ffffff;
  padding: 10px 24px;
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

a:hover, a:active {
  background-color: green;
}
.centered1
{
	
  font-weight: bold;
  font-size:large;
   text-decoration: underline;
 
  text-transform: uppercase;
}

.centered2
{
	
  font-weight: bold;
  font-size:large;
   text-decoration: underline;
  
  text-transform: uppercase;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<div class="container">
<h1><i><center>AIRPORT MANAGEMENT SYSTEM</center></i></h1>
<br>
<br>
<div class="centered1">ADMIN</div>
 <!-- <br>
<br>
 <input type="button" class="button1" value="Login" onclick="window.location.href = 'LoginAdmin';">
 <input type="button" class="button2" value="Register" onclick="window.location.href = 'toRegisterAdmin';">
 <<br>
<br>
  <div class="centered2">MANAGER</div>
  <br>
  <br>
  <input type="button" class="button3" value="Login" onclick="window.location.href = 'toLoginManager';">
 <input type="button" class="button4" value="Register" onclick="window.location.href = 'toRegisterManager';"> -->
 <br>

  
 <a  href = 'LoginAdmin'  target="_self">Login</a>
 <a  href = 'toRegisterAdmin' target="_self">Register</a>
 <br>
  <br>
  <br>
  <br>
  <br>
 <div class="centered2">MANAGER</div>
 <br>

  
  <a href='toLoginManager' target="_self">Login</a>
 <a href=' toRegisterManager' target="_self">Register</a>
 </div>
 
</body>
</html>
