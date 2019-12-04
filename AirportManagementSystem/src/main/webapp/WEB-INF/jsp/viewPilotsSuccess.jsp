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
        <br><br> <h2 style="color:#0fad00">Pilot Details</h2>
        
       
       
  
        </div>
        
	</div>


<table border=2 align="center">
<tr><th>PilotId</th><th>PlaneId</th><th>addressLine1</th><th>addressLine2</th><th>city</th><th>state</th><th>zipCode</th><th>ssn</th></tr>


 <c:forEach var="display" items="${pilotsList}">

<tr>

<td><c:out value="${display.pilotId}"></c:out></td>
<td><c:out value="${display.planeId}"></c:out></td>
<td><c:out value="${display.addressLine1}"></c:out></td>
<td><c:out value="${display.addressLine2}" ></c:out></td>
<td><c:out value="${display.city}" ></c:out></td>
<td><c:out value="${display.state}" ></c:out></td>
<td><c:out value="${display.zipCode}" ></c:out></td>
<td><c:out value="${display.ssn}" ></c:out></td>
 <td><a href="/getDetailsOfPilot/${display.pilotId}">Update</a>/<a href="/deleteDetailsOfPilot/${display.pilotId}">Delete</a></td>
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

