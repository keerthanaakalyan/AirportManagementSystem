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
</style>


</head>
<body>



	<div class="container">
		<form class="form-horizontal" role="form" action="getDetails2" modelAttribute="hangar" method="GET">
			<h2>
				<center>Hangar Details</center>
			</h2>


			<div class="form-group">
				<label for="hangarId" class="col-sm-3 control-label">HANGAR ID
					</label>
				<div class="col-sm-9">
					<input type="text" name="hangarId" placeholder="HangarId"
						class="form-control" autofocus>
				</div>
			</div>
			<button type="submit" class="btn btn-primary btn-block">UPDATE HANGAR DETAILS</button>
		</form>

	</div>
	</body>
	</html>

