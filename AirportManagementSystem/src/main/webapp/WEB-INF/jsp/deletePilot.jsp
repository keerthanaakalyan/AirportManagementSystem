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
<form class="form-horizontal" role="form" method="post" action="/deletePilot" modelAttribute="pilot">
<h2>
<center>Pilot Details</center>
</h2>

<div class="form-group">
<label for="pilotId" class="col-sm-3 control-label">Pilot Id
</label>
<div class="col-sm-9">
<input readOnly type="text" name="pilotId" 
class="form-control" autofocus value=${pilot.pilotId}>
</div>
</div>
<div class="form-group">
<label for="pilotId" class="col-sm-3 control-label">Plane Id
</label>
<div class="col-sm-9">
<input readOnly type="text" name="planeId" 
class="form-control" autofocus value=${pilot.planeId}>
</div>
</div>
<div class="form-group">
<label for="licenseNumber" class="col-sm-3 control-label">License Number
</label>
<div class="col-sm-9">
<input readOnly type="text" name="licenseNumber" 
class="form-control" autofocus value=${pilot.licenseNumber}>
</div>
</div>
<div class="form-group">
<label for="addressLine1" class="col-sm-3 control-label">Address line 1</label>
<div class="col-sm-9">
<input readOnly type="text" name="addressLine1"  class="form-control"
autofocus value=${pilot.addressLine1}>
</div>
</div>

<div class="form-group">
<label for="addressLine2" class="col-sm-3 control-label">Address line 2</label>
<div class="col-sm-9">
<input readOnly type="text" name="addressLine2"  class="form-control"
autofocus value=${pilot.addressLine2}>
</div>
</div>

<div class="form-group">
<label for="city" class="col-sm-3 control-label">City
</label>
<div class="col-sm-9">
<input readOnly type="text" name="city" 
class="form-control" name="city" value=${pilot.city}>
</div>
</div>

<div class="form-group">
				<label for="state" class="col-sm-3 control-label">State</label>
				<div class="col-sm-9">
				<select contenteditable="false" name="state" class="browser-default custom-select">
  <option selected >${pilot.state}</option>
  <option value="COIMBATORE" >COIMBATORE</option>
  <option value="KOCHI">KOCHI</option>
  <option value="RANCHI">RANCHI</option>
  <option value="PANAJI">PANAJI</option>
  <option value="BANGALORE">BANGALORE</option>
  <option value="NOnameA">NOnameA</option>
  <option value="MUMBAI">MUMBAI</option>
</select>
				
				</div>
			</div>


<div class="form-group">
				<label for="zipCode" class="col-sm-3 control-label">ZipCode </label>
				<div class="col-sm-9">
<input readOnly type="text" name="zipCode"  class="form-control" value=${pilot.zipCode}>
</div>
</div>
<div class="form-group">
<label for="ssn" class="col-sm-3 control-label">SSN
</label>
<div class="col-sm-9">
<input readOnly type="text" name="ssn"
class="form-control"  value=${pilot.ssn}>

</div>
</div>




<center><button type="submit" class="btn btn-primary btn-lg">DELETE  PILOT DETAILS</button></center>
</form>

</div>

</div>
</body>
</html>
