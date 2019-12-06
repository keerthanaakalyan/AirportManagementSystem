<!DOCTYPE html>
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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

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
<form class="form-horizontal" role="form" method="post" action="/delete2" modelAttribute="hangarDetails">
<h2>
<center>Hangar Details</center>
</h2>


<div class="form-group">
<label for="hangarId" class="col-sm-3 control-label">HangarId
</label>
<div class="col-sm-9">
<input readOnly type="text" name="hangarId" 
class="form-control" autofocus value=${hangarDetails.hangarId}>
</div>
</div>
<div class="form-group">
<label for="managerId" class="col-sm-3 control-label">ManagerId
</label>
<div class="col-sm-9">
<input   readOnly type="text" name="managerId" 
class="form-control" autofocus value=${hangarDetails.managerId}>
</div>
</div>
<div class="form-group">
<label for="planeId" class="col-sm-3 control-label">planeId</label>
<div class="col-sm-9">
<input readOnly type="text" name="planeId"  class="form-control"
autofocus value=${hangarDetails.planeId}>
</div>
</div>


<div class="form-group">
<label for="managerAddressLine1" class="col-sm-3 control-label">Manager Address Line1
</label>
<div class="col-sm-9">
<input readOnly type="text" name="managerAddressLine1" 
class="form-control" autofocus value=${hangarDetails.managerAddressLine1}>
</div>
</div>
<div class="form-group">
<label for="managerAddressLine2" class="col-sm-3 control-label">Manager Address Line2</label>
<div class="col-sm-9">
<input readOnly type="text" name="managerAddressLine2" 
class="form-control" value=${hangarDetails.managerAddressLine2}>
</div>
</div>

<div class="form-group">
				<label for="city" class="col-sm-3 control-label">City </label>
				<div class="col-sm-9">
<input readOnly type="text" name="city"  class="form-control" value=${hangarDetails.city}>
</div>
</div>
<div class="form-group">
<label for="state" class="col-sm-3 control-label">state
</label>
<div class="col-sm-9">
<input readOnly type="text" name="state"
class="form-control"  value=${hangarDetails.state}>

</div>
</div>

<div class="form-group">
<label for="zipCode" class="col-sm-3 control-label">zipCode
</label>
<div class="col-sm-9">
<input readOnly type="text" name="zipCode" class="form-control" value=${hangarDetails.zipCode}>

</div>
</div>



<center><input type="submit" class="btn btn-primary btn-lg" value="DELETE HANGAR DETAILS"></input></center>

</form>

</div>

</div>
</body>
</html>
