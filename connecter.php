<?php
	include 'connexion.php';
	
	if (isset($_POST['login']) and isset($_POST['mdp']))
	{
		$login=$_POST['login'];
		$mdp=$_POST['mdp'];
		
		$requete = $connexion->query("SELECT * FROM UTILISATEURS WHERE USERNAME='$login' OR EMAIL='$login'");
		$requete = $requete->fetch();
		$iduser= $requete['ID_USER'];
		
		$verif = password_verify($mdp,$requete['PASS']);
		if ($verif){
			setcookie('userid',$iduser,0);
			$token = uniqid(rand(),true);
			setcookie('token',$token,0,null,null,false,true);
			$connexion->query("UPDATE UTILISATEURS SET TOKEN='$token' WHERE ID_USER='$iduser'");
			echo "Connexion reussie !";
		}
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
	if($verif)
	{
		echo "<script type='text/javascript'>document.location.replace('/');</script>";
	}
	if (!isset($_COOKIE['token'])){ ?>
		<form method="post" action="connecter.php">
			<div class="form-group">
				<label for="login">Nom d'utilisateur<br></label>
				<input type="text" name="login" value="" placeholder="Nom d'utilisateur ou e-mail" required>
			</div>
			<div class="form-group">
				<label for="mdp">Mot de passe<br></label>
				<input type="password" name="mdp" value="" placeholder="Mot de passe" required>
			</div>
			<button type="submit" class="btn btn-default">Se connecter</button>
		</form>
	<?php
	}
	else
	{
		echo "Vous &ecirc;tes d&eacute;j&agrave; connect&eacute";
		echo "<script type='text/javascript'>document.location.replace('/');</script>";
	}
	$connexion=null;
	?>
	</body>
</html>