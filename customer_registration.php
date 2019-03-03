<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Woman Web</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap-3.3.6-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="styles.css">
	<link rel="shortcut icon" href="assets/images/GG.jpeg">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top" id="topnav">
		<div class="container-fluid">
			<div class="navbar-header">
				<img src="assets/images/GG.jpeg" alt="Woman"  width="50px" height="60px" />
				<a href="index.php" class="navbar-brand">Woman</a>
			</div>
		</div>
	</div>
	<p><br><br></p>
	<p><br><br></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="err_msg"></div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Signup Form</div>
					<div class="panel-body">
				<form method="post" action="register.php">
					<div class="row">
						<div class="col-md-6">
							<label for="f_name">First Name</label>
							<input type="text" id="f_name" name="f_name" class="form-control" required>
						</div>
						<div class="col-md-6">
							<label for="f_name">Last Name</label>
							<input type="text" id="l_name" name="l_name" class="form-control" required >
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<label for="email">Email</label>
							<input type="text" id="email" name="email" class="form-control" required >
						</div>
						<div class="col-md-6">
							<label for="password">Password</label>
							<input type="password" id="password" name="password" class="form-control" required >
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<label for="mobile">Mobile</label>
							<input type="text" id="mobile" name="mobile" class="form-control" required >
						</div>
						<div class="col-md-6"></div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label for="address1">Address #1</label>
							<input type="textarea" id="address1" name="address1" class="form-control" required >
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<label for="address2">Address #2</label>
							<input type="textarea" id="address2" name="address2" class="form-control">
						</div>
					</div>
					<br><br>
					<div class="col-md-12">
						<input href="index.php"type="button" class="btn btn-primary" value="Signup" name="signup" id="signup_btn">
					</div>
					</div>
					</div>
					</form>
					<div class="panel-footer"></div>
			</div>
		</div>
			<div class="col-md-2"></div>
	</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
	<script src="assets/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
	<script src="main.js"></script>
</body>
<style> .foot{text-align: center;}
</style>
</html>
