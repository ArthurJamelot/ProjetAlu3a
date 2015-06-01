<?php
	$serveur = "mysql.hostinger.fr";
	$username = "***";
	$password = "***";
	$bdd = "u784152348_alu3a";
	
	try {
    	$connexion = new PDO("mysql:host=$serveur;dbname=$bdd", $username, $password);
    	$connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	}
	catch(PDOException $e)
		{
    	echo "Connexion échouée: " . $e->getMessage();
    	}
?>