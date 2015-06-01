<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<?php
		include 'connexion.php';
		$resultats=$connexion->query('SELECT * FROM GALERIE');
		while($image = $resultats->fetch())
		{
		echo '<li data-target="#myCarousel" data-slide-to="'.$image['ID_IMG'].'"></li>';
		}
		?>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<?php
		$resultat=$connexion->query('SELECT * FROM GALERIE');
		while($images = $resultat->fetch())
		{
			echo '<div class="item';
			if ($images['ID_IMG']==0){echo ' active';}
			echo '"><img class="img-responsive center-block" src="'.$images['LIEN'].'"></div>';
		}
		?>
	</div>
	<!-- Controles -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Pr&eacute;c&eacute;dent</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Suivant</span>
	</a>
	<?php
	$resultats->closeCursor();
	$resultat->closeCursor();
	$connexion=null;
	?>
</div>