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
        <br><br> <h2 style="color:#0fad00">Success</h2>
        
       
        <p style="font-size:20px;color:#5C5C5C;">Your details are submitted successfully.</p>
       
        <a href="" class="btn btn-success" onclick="window.location.href = 'LoginAdmin';">     Log in      </a>
    <br><br>
        </div>
        
	</div>

<h1> Plane Details</h1>
<table border=1 align="center">
<tr><th>PlaneId</th><th>FirstName</th><th>LastName</th><th>ownerId</th><th>ownerFirstName</th><th>ownerLastName</th><th>emailId</th><th>planeCapacity</th><th>planeType</th></tr>
<c:forEach var="display" items="${addedPlane}">

<tr>

<td><c:out value="${display.planeId}"></c:out></td>
<td><c:out value="${display.firstName}"></c:out></td>
<td><c:out value="${display.lastName}" ></c:out></td>
<td><c:out value="${display.ownerId}"></c:out></td>
<td><c:out value="${display.ownerFirstName}" ></c:out></td>
<td><c:out value="${display.ownerLastName}" ></c:out></td>
<td><c:out value="${display.emailId}" ></c:out></td>
<td><c:out value="${display.planeCapacity}" ></c:out></td>
<td><c:out value="${display.planeType}" ></c:out></td>

</tr>
</c:forEach>
</table>
<%-- Physician Name: ${addedPlan.firstName}
${addedPlan.lastName}<br>
Department: ${addedPlan.departmentName}<br>
Educational Qualification: ${addedPlan.educationalQualification}<br>
Y.O.P: ${addedPlan.yearsOfExperience}<br>
State: $addedPlan.state}<br>
Insurance Plan: ${addedPlan.insurancePlan}<br> --%>
</div>
</body>
</html>

