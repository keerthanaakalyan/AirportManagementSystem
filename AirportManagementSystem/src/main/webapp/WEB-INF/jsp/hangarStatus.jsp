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
  background-image: url('image3.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 100%;

}
/* h2 {
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
} */
</style>


</head>
<body>



<div class="container">
<form class="form-horizontal" role="form" modelAttribute="hangarstatus" action="/addingHangar" method="post">
<h2>
<center>Hangar Status</center>
</h2>


<div class="form-group">
<label for="hangarId" class="col-sm-3 control-label">Hangar ID
*</label>
<div class="col-sm-9">
<input type="text" name="hangarId" placeholder="Hangar ID"
class="form-control" autofocus>
</div>
</div>
<div class="form-group">
<label for="managerId" class="col-sm-3 control-label">ManagerID*
</label>
<div class="col-sm-9">
<input type="text" name="managerId" placeholder="Manager Id"
class="form-control" autofocus>
</div>
</div>



<div class="form-group">
<label for="occupancyFromDate" class="col-sm-3 control-label">Occupancy From Date
</label>
<div class="col-sm-9">
<input type="date" name="occupancyFromDate" class="form-control" >
</div>
</div>


<div class="form-group">
<label for="occupancyTillDate" class="col-sm-3 control-label">Occupancy Till Date
</label>
<div class="col-sm-9">
<input type="date" name="occupancyTillDate" class="form-control">
</div>
</div>


<div class="form-group">
<label for="availableFromDate" class="col-sm-3 control-label">Available From Date
</label>
<div class="col-sm-9">
<input type="date" name="availableFromDate" class="form-control">
</div>
</div>

<div class="form-group">
<label for="availableTillDate" class="col-sm-3 control-label">Available Till Date
</label>
<div class="col-sm-9">
<input type="date" name="availableTillDate" class="form-control">
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-3">Status</label>
<div class="col-sm-6">
<div class="row">
<div class="col-sm-4">
<label class="radio-inline"> <label><input
type="radio" name="status" value="A" checked>Available</label>
</label>
</div>
<br>
<div class="col-sm-4">
<label class="radio-inline"> <label><input
type="radio" name="status" value="O">Occupied</label>
</label>
</div>
</div>



<button type="submit" class="btn btn-primary btn-block">Submit</button>
</form>

</div>

</div>
</body>
</html>
