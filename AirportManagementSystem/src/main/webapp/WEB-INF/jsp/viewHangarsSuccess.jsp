<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	
	 background-color: #cccccc; 
}

        a:visited {
  color: blue;
}

/* mouse over link */
a:hover {
  color: black;
}
</style>
</head>

<body>
<div class="container">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Hangar Details</h2>
        
       
       
  
        </div>
        
	</div>


<table border=2 align="center">
<tr><th>HangarId</th><th>ManagerId</th><th>PlaneId</th><th>ManagerAddressLine1</th><th>managerAddressLine2</th><th>city</th><th>state</th><th>zipCode</th></tr>


 <c:forEach var="display" items="${hangarsList}">

<tr>

<td><c:out value="${display.hangarId}"></c:out></td>

<td><c:out value="${display.managerId}"></c:out></td>
<td><c:out value="${display.planeId}" ></c:out></td>
<td><c:out value="${display. managerAddressLine1}" ></c:out></td>
<td><c:out value="${display.managerAddressLine2}" ></c:out></td>
<td><c:out value="${display.city}" ></c:out></td>
<td><c:out value="${display.state}" ></c:out></td>
<td><c:out value="${display.zipCode}" ></c:out></td>
 <td><a href="/getDetailsOfHangar/${display.hangarId}">Update</a>/<a href="/deleteHangar/${display.hangarId}">Delete</a></td>
</tr>
</c:forEach> 
</table>

<a href="/Admin" target="_self">Admin Home</a>

</body>
</html>
