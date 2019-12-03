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

<!-- <style>
body {
background-image: url("plane8.jpg");
background-color: #cccccc;
}
</style> -->


</head>
<body>



<div class="container">
<form class="form-horizontal" role="form" method="post" action="updatePlane">
<h2>
<center>Plane Details</center>
</h2>


<div class="form-group">
<label for="planename" class="col-sm-3 control-label">Plane name
</label>
<div class="col-sm-9">
<input type="text" name="planename" 
class="form-control" autofocus>
</div>
</div>
<div class="form-group">
<label for="ownername" class="col-sm-3 control-label">Owner name
</label>
<div class="col-sm-9">
<input type="text" name="ownername" 
class="form-control" autofocus>
</div>
</div>
<div class="form-group">
<label for="ownerFirstName" class="col-sm-3 control-label">Owner FirstName</label>
<div class="col-sm-9">
<input type="text" name="ownerFirstName"  class="form-control"
autofocus>
</div>
</div>


<div class="form-group">
<label for="ownerLastName" class="col-sm-3 control-label">Owner LastName
</label>
<div class="col-sm-9">
<input type="text" name="ownerLastName" 
class="form-control" name="emailname">
</div>
</div>
<div class="form-group">
<label for="ownerContactNumber" class="col-sm-3 control-label">Owner Contact Number</label>
<div class="col-sm-9">
<input type="text" name="ownerContactNumber" 
class="form-control">
</div>
</div>

<div class="form-group">
				<label for="ownerEmail" class="col-sm-3 control-label">Owner Email </label>
				<div class="col-sm-9">
<input type="text" name="ownerEmail"  class="form-control">
</div>
</div>
<div class="form-group">
<label for="contactNumber" class="col-sm-3 control-label">Plane Type
</label>
<div class="col-sm-9">
<input type="text" name="planeType"
class="form-control">

</div>
</div>

<div class="form-group">
<label for="altContactNumber" class="col-sm-3 control-label">Plane Capacity
</label>
<div class="col-sm-9">
<input type="text" name="planeCapacity" class="form-control">

</div>
</div>


<!-- <div class="form-group">
<label class="control-label col-sm-3">Gender</label>
<div class="col-sm-6">
<div class="row">
<div class="col-sm-4">
<label class="radio-inline"> <label><input
type="radio" name="gender" checked>Male</label>
</label>
</div>

<div class="col-sm-4">
<label class="radio-inline"> <label><input
type="radio" name="gender">Female</label>
</label>
</div>
</div>






<div class="form-group">
<div class="col-sm-9 col-sm-offset-3">
<span class="help-block">*Required fields</span>
</div>
</div> -->
<button type="submit" class="btn btn-primary btn-block">UPDATE  PLANE DETAILS</button>
</form>

</div>

</div>
</body>
</html>