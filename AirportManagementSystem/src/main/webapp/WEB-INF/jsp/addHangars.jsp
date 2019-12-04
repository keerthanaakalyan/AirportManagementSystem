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
<script>
function goBack() {
  window.history.back();
}
</script>
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
  text-transform: uppercase;
}
div.col-sm-9 {
  font-size: 70%;
}
</style>


</head>
<body>


<button onclick="goBack()">Go Back</button>
<div class="container">
<form class="form-horizontal" role="form" action="addHangars" modelAttribute="plane" method="POST">
<h2>
<center>Hangar Details</center>
</h2>
<br>
<br>





<div class="form-group">
<label for="managername" class="col-sm-3 control-label">Manager Id
</label>
<div class="col-sm-9">
<input type="text" name="managerId" placeholder="Manager name"
class="form-control" autofocus>
</div>
</div>

<div class="form-group">
<label for="planename" class="col-sm-3 control-label">Plane name
</label>
<div class="col-sm-9">
<input type="text" name="planeId" placeholder="Plane name"
class="form-control" autofocus>
</div>
</div>

<div class="form-group">
<label for="addressLine1" class="col-sm-3 control-label">Address Line1</label>
<div class="col-sm-9">
<input type="text" name="managerAddressLine1" placeholder="Address Line1" class="form-control"
autofocus>
</div>
</div>


<div class="form-group">
<label for="addressLine2" class="col-sm-3 control-label">Address Line2
</label>
<div class="col-sm-9">
<input type="text" name="managerAddressLine2" placeholder="Address Line2"
class="form-control">
</div>
</div>
<div class="form-group">
				<label for="City" class="col-sm-3 control-label">City</label>
				<div class="col-sm-9">
				<select name="city" class="browser-default custom-select">
  <option selected>Select City</option>
  <option value="COIMBATORE">COIMBATORE</option>
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
<center><button type="submit" class="btn btn-primary btn-lg">ADD  HANGAR DETAILS</button></center>
</form></div>

</div>
</body>
</html>



