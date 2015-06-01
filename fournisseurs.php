<?php
	include 'connexion.php';
	$resultats = $connexion->query('SELECT * FROM FOURNISSEURS');
	
	while($fournisseur = $resultats->fetch())
	{
		echo $fournisseur['NOM_FOURN']." (".$fournisseur['PAYS'].") : ".$fournisseur['DESC_FOURN']."<br><br><br>";
	}	
	$resultats->closeCursor();
	$connexion=null;
?>