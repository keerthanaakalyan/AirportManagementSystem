<!DOCTYPE html>
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">


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
</style>
<script>
function validateForm1() {
  var x = document.forms["myForm"]["pilotname"].value;
  var y = document.forms["myForm"]["licenseNumber"].value;
  var z = document.forms["myForm"]["ssn"].value;
  var a = document.forms["myForm"]["zipCode"].value;
  var b = document.forms["myForm"]["ssn"].value;
  if (x == "") {
    alert("Pilot Name must be filled out");
    return false;
  }
  
  if ((y == "") ){
	    alert("License Number must be filled out ");
	    return false;
	  }
   if( (y.length !== 6))
	  {
	   
	  alert("Please input exactly 6 numbers!");
	  return false;
	  } 
    if( (a.length !== 6) )
	  {
	   
	  alert("Please enter valid 6 digit ZipCode");
	  return false;
	  }  
   
  
  if (z == "") {
	    alert("ssn must be filled out");
	    return false;
	  }
  if (b == "") {
	    alert("SSN must be filled out");
	    return false;
	  }
  if (b.length !== 4) {
	    alert("SSN should be 4 digit number!");
	    return false;
	  }
  
  
}
</script>

</head>
<body>


	<div class="container">
		<form class="form-horizontal" name="myForm"  role="form" method="post" action="/addPilot" modelAttribute="pilot"  onsubmit="return validateForm1()" >
			<h2>
				<center>Pilot Details</center>
			</h2>

<br>
<br>
			<div class="form-group">
				<label for="pilotname" class="col-sm-3 control-label" >Pilot name
					</label>
				<div class="col-sm-9">
					<input type="text" name="pilotname" placeholder="Pilot name"
						class="form-control" autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="licenseNumber" class="col-sm-3 control-label">License Number
					</label>
				<div class="col-sm-9">
					<input type="text" name="licenseNumber" placeholder="License Number"
						class="form-control" autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="addressLine1" class="col-sm-3 control-label">Address Line1</label>
				<div class="col-sm-9">
					<input type="text" name="addressLine1" placeholder="Address Line1" class="form-control"
						autofocus>
				</div>
			</div>


			<div class="form-group">
				<label for="addressLine2" class="col-sm-3 control-label">Address Line2
					 </label>
				<div class="col-sm-9">
					<input type="text" name="addressLine2" placeholder="Address Line2"
						class="form-control" name="emailname">
				</div>
			</div>
			
			<div class="form-group">
				<label for="city" class="col-sm-3 control-label">City</label>
				<div class="col-sm-9">
				<select name="city" class="browser-default custom-select">
  <option selected>Select City</option>
  <option value="MADURAI">MADURAI</option>
  <option value="CHENNAI">CHENNAI</option>
  <option value="KOLLAM">KOLLAM</option>
  <option value="CBE">CBE</option>
  <option value="TRICHY">TRICHY</option>
  <option value="MYSORE">MYSORE</option>
  <option value="VIJAYAWADA">VIJAYAWADA</option>
</select>
				
				</div>
			</div>	
<div class="form-group">
				<label for="state" class="col-sm-3 control-label">State</label>
				<div class="col-sm-9">
				<select name="state" class="browser-default custom-select">
  <option selected>Select State</option>
  <option value="TAMILNADU">TAMILNADU</option>
  <option value="KERALA">KERALA</option>
  <option value="JHARKHAND">JHARKHAND</option>
  <option value="GOA">GOA</option>
  <option value="KARNATAKA">KARNATAKA</option>
  <option value="DELHI">DELHI</option>
  <option value="MAHARASHTRA">MAHARASHTRA</option>
</select>
				
				</div>
			</div>

			<div class="form-group">
				<label for="zipCode" class="col-sm-3 control-label">Zip Code
			</label>
				<div class="col-sm-9">
					<input type="text" name="zipCode" placeholder="Zip Code" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="ssn" class="col-sm-3 control-label">SSN
					</label>
				<div class="col-sm-9">
					<input type="text" name="ssn"
						placeholder="SSN" class="form-control">

				</div>
			</div>

			

			
					<center><button type="submit" class="btn btn-primary btn-lg"   onsubmit="return validateForm()" >ADD  PILOT DETAILS</button></center>
		</form>

	</div>

	</div>
</body>
</html>
