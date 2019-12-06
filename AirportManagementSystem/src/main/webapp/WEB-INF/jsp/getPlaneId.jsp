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

<script>
function validateForm1() {
  var x = document.forms["myForm"]["planeId"].value;
 
  if (x == "") {
    alert("PlaneId  must be filled out");
    return false;
  }
  
 
	  
  
  
}
</script>

</head>
<body>



	<div class="container">
		<form class="form-horizontal" role="form" name="myForm" action="/getDetails" modelAttribute="plane" method="GET"  onsubmit="return validateForm1()">
			<h2>
				<center>Plane Details</center>
			</h2>
<br>
<br>

			<div class="form-group">
				<label for="planeId" class="col-sm-3 control-label">PLANE ID
					</label>
				<div class="col-sm-9">
					<input type="text" name="planeId" placeholder="PlaneId"
						class="form-control" autofocus>
				</div>
			</div>
			<center><button type="submit" class="btn btn-primary btn-lg">UPDATE PLANE DETAILS</button></center>
		</form>

	</div>
	</body>
	</html>