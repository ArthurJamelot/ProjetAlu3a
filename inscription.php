<?php
	if (isset($_COOKIE['token']))
	{
		echo "<script type='text/javascript'>document.location.replace('/');</script>";

	}
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
			if(!isset($_COOKIE['token']))
			{
		?>
			<form method="post" action="inscription.php" novalidate>
				<div class="form-group">
					<label for="login">Nom d'utilisateur<br></label>
					<input type="text" name="login" id="login" value="" placeholder="Nom d'utilisateur" required>
				</div>
				<div class="form-group">
					<label for="mdp">Mot de passe<br></label>
					<input type="password" name="mdp" id="mdp" value="" placeholder="Mot de passe" required>
				</div>
				<div class="form-group">
					<label for="email">Adresse mail<br></label>
					<input type="email" name="email" id="email" value="" placeholder="Entrez votre e-mail" required>
				</div>
				<button type="submit" class="btn btn-default">S'inscrire</button>
			</form>
		<?php 
			}
			include 'connexion.php';
			
			$login = $_POST['login'];
			$motdepass = $_POST['mdp'];
			if (isset($_POST['email'])){
				$mail = $_POST['email'];
			}
			else
			{
				$mail='NULL';
			}

			if (isset($_POST['login'])){
				$tester = $connexion->query("SELECT COUNT(*) FROM UTILISATEURS WHERE USERNAME='$login'");
				$tester = $tester->fetchColumn();
				if ($tester !== "0") {die("Nom d&apos;utilisateur non disponible");}
				
				// crypter le mot de passe :
				$motdepass = password_hash($motdepass, PASSWORD_DEFAULT);
				
				$inserer="INSERT INTO UTILISATEURS VALUES('NULL','$login','$motdepass','$mail','NULL')";
				$connexion->query($inserer);
				echo "Vous etes desormais inscrit !";
			}
			
			$connexion = null;
		?>
	</body>
</html>