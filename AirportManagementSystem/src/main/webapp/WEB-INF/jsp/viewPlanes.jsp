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
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">AVAILABLE PLANE</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Plane Id</th>
            
          </tr>
        </thead>
         <tbody>
        <c:forEach var="user" items="${plane}">
        
          <tr>
            <td class="pt-3-half" contenteditable="true"> <c:out value="${user.planeId}" /> </td>
            
     
          </tr>
            
   
</c:forEach>
</body>
</html>

