<?php 
	setcookie("token", "", time()-3600);
	setcookie("userid", "", time()-3600);
?>
<!DOCTYPE html>
<html> 
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Alu 3 A</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</head>
	<body >
		<?php
			echo "<p>Deconnexion en cours...</p>";
			echo "<script type='text/javascript'>document.location.replace('/');</script>";
		?>
	</body>
</html>