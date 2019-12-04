<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.pt-3-half {
padding-top: 1.4rem;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="card">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Manager Selection</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Manager Id</th>
            <th class="text-center">First Name</th>
            <th class="text-center">Last Name</th>
            <th class="text-center">Age</th>
            <th class="text-center">Gender</th>
            <th class="text-center">DOB</th>
            <th class="text-center">Contact Number</th>
            <th class="text-center">Alternate Contact Number</th>
            <th class="text-center">Email Id</th>
          </tr>
        </thead>
         <tbody>
        <c:forEach var="user" items="${managersList}">
        
          <tr>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.managerId}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.firstName}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.lastName}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.age}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.gender}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.dob}" /> </td>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.contactNumber}" /> </td>
            <%-- <td class="pt-3-half" contenteditable="true"> <c:out value="${user.alternateContactNumber}" /> </td> --%>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.emailId}" /> </td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">ACCEPT</button></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">DECLINE</button></span>
            </td>
          </tr>
            
   
</c:forEach>
</body>
</html>

