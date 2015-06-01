<?php
	include 'connexion.php';
	$nom_fourni = $_POST['nom'];
	$desc_fourni = $_POST['desc'];
	if(!empty($_POST['pays']))
	{
		$pays_fourn = $_POST['pays'];
		$pays_fourn = ucfirst($pays_fourn);
	}
	else
	{
		$pays_fourn = 'France';
	}
	
	$ajouter = "INSERT INTO FOURNISSEURS2 VALUES('NULL','$nom_fourni','$pays_fourn','$desc_fourni')";
	$connexion->query($ajouter);
?>