<?php
	include 'connexion.php';
	$reference_p = $_POST['ref'];
	$image_p = $_POST['image'];
	$desc_p = $_POST['descproduit'];
	$cat_p = $_POST['cat'];
	$fourni_p = $_POST['fourni'];
	
	$ajouter = "INSERT INTO PRODUITS2 VALUES('$reference_p','$image_p','$desc_p','$cat_p')";
	$connexion->query($ajouter);
	
	$lier = "INSERT INTO LIEN_PROD_FOURN VALUES('$fourni_p','$reference_p')";
	$connexion->query($lier);
?>