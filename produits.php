<?php
	include 'connexion.php';
	
	$resultats = $connexion->query('SELECT * FROM TYPE_PRODUIT');
	
	echo "<div class='dropdown'>";
	echo "<button class='btn btn-default dropdown-toggle' type='button' id='dropdownMenu1' data-toggle='dropdown' aria-expanded='true'>Type de produit<span class='caret'></span></button>";
	echo "<ul class='dropdown-menu' role='menu' aria-labelledby='dropdownMenu1'>";
	
	echo "<section>";
	while($categorie = $resultats->fetch())
	{
		echo "<li role='presentation'><a role='menuitem' tabindex='-1' href ng-click=\"ch=".$categorie['CODE_TYPE']."\">".$categorie['LIB_TYPE']."</a></li>";
	}	
	echo "</ul></div>";
	
	$resultat = $connexion->query('SELECT * FROM TYPE_PRODUIT');
	while($type = $resultat->fetch())
	{
		$code=$type['CODE_TYPE'];
		echo "<div class=\"panel\" ng-show=\"ch===".$code."\">";
		$produits = $connexion->query("SELECT * FROM PRODUITS WHERE CODE_TYPE='$code' ");
		while($produit = $produits->fetch())
		{
			echo "<div class='media'>";
				echo "<div class='media-left'>";
					echo "<img class=\"media-object\" src=\"".$produit['IMAGE']."\">";
				echo "</div>";
				echo "<div class='media-body'>";
					echo "<h4 class='media-heading'>".$produit['REFERENCE']."</h4>";
					if (isset($produit['DESC_PROD']))
					{
						echo $produit['DESC_PROD'];
					}
				echo "</div>";
			echo "</div>";
		}
		echo "</div>";
	}
	echo "</section>";
?>