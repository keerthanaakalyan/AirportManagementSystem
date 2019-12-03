<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
body {
	background-image: url("flight1.jpg");
	 background-color: #cccccc; 
}


body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] ,input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  box-sizing: border-box;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}

input[type=submit]:hover {
  opacity: 0.8;
}



.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.image {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}



}
</style>
</head>

    <body>
    <h2>Admin Login Form</h2>
      <div class="imgcontainer">
    <img src="admin4.jpg" alt="Avatar" class="image">
  </div>
  <center>
      <div class="container">
        <form:form id="loginForm" class="form-horizontal" action="CheckLoginAdmin" modelAttribute="loginBean">
          
            <form:label path="emailId">Username</form:label>
            <form:input type="text" path="emailId" /><br>
            <form:errors path="emailId" />
            <form:label path="password">password</form:label>
            <form:input type="password" path="password" /><br>
            <form:errors path="password" />
            <input type="submit" value="Submit" />
        </form:form>
        </div>
        </center>
    </body>
</html>