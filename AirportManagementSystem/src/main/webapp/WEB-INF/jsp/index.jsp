<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.container {
  position: relative;
  text-align: center;
 
}
.centered1 {
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
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<div class="container">
<h1><i><center>AIRPORT MANAGEMENT SYSTEM</center></i></h1>
<img src="plane8.jpg" alt="Trulli" width="100%" height="100%">
 <div class="centered1">ADMIN</div>
 <input type="button" class="button1" value="Login" onclick="window.location.href = 'LoginAdmin';">
 <input type="button" class="button2" value="Register" onclick="window.location.href = 'toRegisterAdmin';">
  <div class="centered2">MANAGER</div>
  <input type="button" class="button3" value="Login">
 <input type="button" class="button4" value="Register">
 </div>
</body>
</html>
