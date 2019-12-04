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
</style>
</head>

<body>
<div class="container">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Plane Details</h2>
        
       
       
  
        </div>
        
	</div>


<table border=2 align="center">
<tr><th>PlaneId</th><th>ownerId</th><th>ownerFirstName</th><th>ownerLastName</th><th>emailId</th><th>planeCapacity</th><th>planeType</th><th>Action</th></tr>


 <c:forEach var="display" items="${planesList}">

<tr>

<td><c:out value="${display.planeId}"></c:out></td>

<td><c:out value="${display.ownerId}"></c:out></td>
<td><c:out value="${display.ownerFirstName}" ></c:out></td>
<td><c:out value="${display.ownerLastName}" ></c:out></td>
<td><c:out value="${display.ownerEmail}" ></c:out></td>
<td><c:out value="${display.planeCapacity}" ></c:out></td>
<td><c:out value="${display.planeType}" ></c:out></td>
 <td><a href="/getDetailsOfPlane/${display.planeId}">Update</a>/<a href="/planeId">ViewPilots</a><a href="/deletePlane/${display.planeId}">Delete</a></td>
</tr>
</c:forEach> 
</table>
<%-- firstName: ${addedPlan.firstName}<br>
lastName:${addedPlan.lastName}<br>
ownerFirstName: ${addedPlan.ownerFirstName}<br>
ownerLastName: ${addedPlan.ownerLastName}<br>
emailId: ${addedPlan.emailId}<br>
planeCapacity: $addedPlan.planeCapacity}<br>
planeType: ${addedPlan.planeType}<br>
</table>
</div> --%>
<%-- Physician Name: ${addedPlan.firstName}
${addedPlan.lastName}<br>
Department: ${addedPlan.departmentName}<br>
Educational Qualification: ${addedPlan.educationalQualification}<br>
Y.O.P: ${addedPlan.yearsOfExperience}<br>
State: $addedPlan.state}<br>
Insurance Plan: ${addedPlan.insurancePlan}<br> --%>
</body>
</html>

