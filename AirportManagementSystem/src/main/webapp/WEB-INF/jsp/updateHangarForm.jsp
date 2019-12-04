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
<form class="form-horizontal" role="form" method="post" action="updateHangar" modelAttribute="hangarDetails">
<h2>
<center>Hangar Details</center>
</h2>


<div class="form-group">
<label for="hangarId" class="col-sm-3 control-label">HangarId
</label>
<div class="col-sm-9">
<input type="text" name="hangarId" 
class="form-control" autofocus value=${hangarDetails.hangarId}>
</div>
</div>
<div class="form-group">
<label for="managerId" class="col-sm-3 control-label">ManagerId
</label>
<div class="col-sm-9">
<input type="text" name="managerId" 
class="form-control" autofocus value=${hangarDetails.managerId}>
</div>
</div>
<div class="form-group">
<label for="planeId" class="col-sm-3 control-label">planeId</label>
<div class="col-sm-9">
<input type="text" name="planeId"  class="form-control"
autofocus value=${hangarDetails.planeId}>
</div>
</div>


<div class="form-group">
<label for="managerAddressLine1" class="col-sm-3 control-label">Manager Address Line1
</label>
<div class="col-sm-9">
<input type="text" name="managerAddressLine1" 
class="form-control" autofocus value=${hangarDetails.managerAddressLine1}>
</div>
</div>
<div class="form-group">
<label for="managerAddressLine2" class="col-sm-3 control-label">Manager Address Line2</label>
<div class="col-sm-9">
<input type="text" name="managerAddressLine2" 
class="form-control" value=${hangarDetails.managerAddressLine2}>
</div>
</div>

<div class="form-group">
				<label for="city" class="col-sm-3 control-label">City </label>
				<div class="col-sm-9">
<input type="text" name="city"  class="form-control" value=${hangarDetails.city}>
</div>
</div>
<div class="form-group">
<label for="state" class="col-sm-3 control-label">state
</label>
<div class="col-sm-9">
<input type="text" name="state"
class="form-control"  value=${hangarDetails.state}>

</div>
</div>

<div class="form-group">
<label for="zipCode" class="col-sm-3 control-label">zipCode
</label>
<div class="col-sm-9">
<input type="text" name="zipCode" class="form-control" value=${hangarDetails.zipCode}>

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
<input type="submit" class="btn btn-primary btn-block" value="UPDATE HANGAR DETAILS"></input>

</form>

</div>

</div>
</body>
</html>
