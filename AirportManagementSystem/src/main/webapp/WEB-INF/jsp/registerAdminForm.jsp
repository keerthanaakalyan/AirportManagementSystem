
<!DOCTYPE html>
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" name="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" name="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	background-image: url("flight1.jpg");
	 background-color: #cccccc; 
}
</style>


</head>
<body>



	<div class="container">
		<form class="form-horizontal" action="registerAdmin" modelAttribute="admin" method="post">
			<h2>
				<center>Admin Registration</center>
			</h2>


			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">First
					Name*</label>
				<div class="col-sm-9">
					<input type="text" name="firstName" placeholder="First Name"
						class="form-control" autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-3 control-label">Last
					Name</label>
				<div class="col-sm-9">
					<input type="text" name="lastName" placeholder="Last Name"
						class="form-control" autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="age" class="col-sm-3 control-label">Age</label>
				<div class="col-sm-9">
					<input type="text" name="age" placeholder="Age" class="form-control"
						autofocus>
				</div>
			</div>


			<div class="form-group">
				<label for="emailname" class="col-sm-3 control-label">Email
					name* </label>
				<div class="col-sm-9">
					<input type="email" name="emailId" placeholder="Emailname"
						class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password*</label>
				<div class="col-sm-9">
					<input type="password" name="password" placeholder="Password"
						class="form-control">
				</div>
			</div>

			<div class="form-group">
				<label for="dob" class="col-sm-3 control-label">Date of
					Birth*</label>
				<div class="col-sm-9">
					<input type="date" name="dob" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="contactNumber" class="col-sm-3 control-label">Contact
					number </label>
				<div class="col-sm-9">
					<input type="text" name="contactNumber"
						placeholder="Contact number" class="form-control">

				</div>
			</div>

			<div class="form-group">
				<label for="altContactNumber" class="col-sm-3 control-label">Alternate
					Phone number </label>
				<div class="col-sm-9">
					<input type="text" name="altContactNumber"
						placeholder="Alternate Phone number" class="form-control">

				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-3">Gender</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-4">
							<label class="radio-inline"> <input
									type="radio" name="gender" value="m"checked>Male</label>
							
						</div>

						<div class="col-sm-4">
							<label class="radio-inline"> <input
									type="radio" name="gender"value="f">Female</label>
							
						</div>
					</div>
					</div>
                 <div class="form-group">
						<div class="col-sm-9 col-sm-offset-3">
							<span class="help-block">*Required fields</span>
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Register</button>
		</form>

	</div>

	</div>
</body>
</html>