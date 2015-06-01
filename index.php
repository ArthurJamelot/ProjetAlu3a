<!DOCTYPE html>
<html ng-app="alu3a"> 
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Alu 3 A</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#ajouterfournisseur").submit(function(){
					nom = $(this).find("input[name=nom]").val();
					pays = $(this).find("input[name=pays]").val();
					desc = $(this).find("textarea[name=desc]").val();
					$.post("chfourn.php", {nom: nom, pays: pays, desc: desc});
					return false;
				});
				$("#ajouterproduit").submit(function(){
					ref = $(this).find("input[name=ref]").val();
					image = $(this).find("input[name=image]").val();
					descproduit = $(this).find("textarea[name=descproduit]").val();
					cat = $(this).find("select[name=cat]").val();
					fourni = $(this).find("select[name=fourni]").val();
					$.post("chprod.php", {ref: ref, image: image, descproduit: descproduit, cat: cat, fourni: fourni});
					return false;
				});
			});
		</script>
	</head>
	<body>
	<?php include 'connexion.php'; ?>
		<div class="well media"> <!-- Header du site -->
			<div class="media-left media-middle">
				<img class="media-object" src="./alu3a.jpg">
			</div>
			<div class="media-body media-middle">
				<h1 class="media-body">Bienvenue sur le site web d'Alu3A !</h1>
			</div>
		</div>
		<section ng-controller="ongletsController">
			<ul class="nav nav-pills"> <!-- Menu -->
				<li ng-class="{active: $parent.estChoisi(1)}">
					<a href ng-click="ong=1">Accueil</a>
				</li>
				<li ng-class="{active: $parent.estChoisi(2)}">
					<a href ng-click="ong=2">Nos fournisseurs</a>
				</li>
				<li  ng-class="{active: $parent.estChoisi(3)}">
					<a href ng-click="ong=3">Nos produits</a>
				</li>
				<li ng-class="{active: $parent.estChoisi(4)}">
					<a href ng-click="ong=4">Notre histoire</a>
				</li>
				<li ng-class="{active: $parent.estChoisi(5)}">
					<a href ng-click="ong=5">Quelques réalisations</a>
				</li>
				<?php 
					$adminchk = $connexion->query("SELECT ID_USER,TOKEN FROM UTILISATEURS WHERE ID_USER=1");
					$adminchk = $adminchk->fetch();
					$verificationadmin=false;
					$ver1 = $_COOKIE['userid']===$adminchk['ID_USER'];
					$ver2 = $_COOKIE['token']===$adminchk['TOKEN'];
					if(isset($_COOKIE['token']) and isset($_COOKIE['userid']) and !empty($_COOKIE['token']) and !empty($_COOKIE['userid']) and $ver1 and $ver2)
					{
						$verificationadmin=true;
					}
				?>
					<li ng-class="{active: $parent.estChoisi(6)}" ng-show="<?php echo $verificationadmin; ?>"> <!-- Cet onglet ne sera disponible que pour l'administrateur -->
						<a href ng-click="ong=6">Ajouter ou modifier un fournisseur</a>
					</li>
					<li ng-class="{active: $parent.estChoisi(7)}" ng-show="<?php echo $verificationadmin; ?>"> <!-- Cet onglet ne sera disponible que pour l'administrateur -->
						<a href ng-click="ong=7">Ajouter ou modifier un produit</a>
					</li>
					<li ng-class="{active: $parent.estChoisi(8)}" ng-show="!<?php echo $verificationadmin; ?>"><!--Cet onglet ne sera pas disponible pour l'administrateur-->
					<a href ng-click="ong=8">Envoyer un e-mail</a>
				</li>
			</ul>
			<!-- Debut des differents panneaux affichés par le menu -->
			<div class="panel" ng-show="estChoisi(1)">
				<img src="http://img11.hostingpics.net/pics/145644PICT0002.jpg"></img>
			</div>
			<div fournisseurs class="panel" ng-show="estChoisi(2)"></div>
			<div produit class="panel" ng-show="estChoisi(3)"></div>
			<div presentation class="panel" ng-show="estChoisi(4)"></div>
			<div quelques-realisations class="panel" ng-show="estChoisi(5)"></div>
			<div ajout class="panel" ng-show="estChoisi(6)">
				<p>Ce formulaire est utilisé de la même façon pour modifier et ajouter un fournisseur.<br>Vous pouvez laisser la case description vide</p>
				<form method="post" action="#" id="ajouterfournisseur" novalidate>
					<div class="form-group">
						<label for="nom">Nom du fournisseur :<br></label>
						<input type="text" name="nom" id="nom" value="" placeholder="Nom du fournisseur" required></input>
					</div>
					<div class="form-group">
						<label for="pays">Pays du fournisseur :<br></label>
						<input type="text" name="pays" id="pays" value="" placeholder="Pays du fournisseur (France par défaut)" ></input>
					</div>
					<div class="form-group">
						<label for="desc">Description du fournisseur :<br></label>
						<textarea type="text" name="desc" id="desc" value="" placeholder="Description du fournisseur" ></textarea>
					</div>
					<button type="submit" class="btn btn-default">Ajouter/modifier</button>
				</form>
			</div>
			<div ajout class="panel" ng-show="estChoisi(7)">
				<p>Ce formulaire est utilisé de la même façon pour modifier et ajouter un produit.<br>Vous pouvez laisser la case description vide</p>
				<form method="post" action="#" id="ajouterproduit" novalidate>
					<div class="form-group">
						<label for="ref">Référence du produit :<br></label>
						<input type="text" name="ref" id="ref" value="" placeholder="Référence" required></input>
					</div>
					<div class="form-group">
						<label for="image">Image du produit (lien uniquement) :<br></label>
						<input type="url" name="image" id="image" value="" placeholder="Image du produit" required></input>
					</div>
					<div class="form-group">
						<label for="descproduit">Description du produit :<br></label>
						<textarea type="text" name="descproduit" id="descproduit" value="" placeholder="Description du produit" ></textarea>
					</div>
					<div class="form-group">
						<label for="cat">Type de produit :<br></label>
						<select name="cat" id="cat">
							<?php 
								$resultats = $connexion->query('SELECT * FROM TYPE_PRODUIT');
								while($categorie = $resultats->fetch())
								{
									echo "<option value=".$categorie['CODE_TYPE'].">".$categorie['LIB_TYPE']."</option>";
								}
							?>
						</select>
					</div>
					<div class="form-group">
						<label for="fourni">Fournisseur du produit :<br></label>
						<select name="fourni" id="fourni">
							<?php 
								$resultats = $connexion->query('SELECT * FROM FOURNISSEURS');
								while($choixfournisseur = $resultats->fetch())
								{
									echo "<option value=".$choixfournisseur['CODE_FOURN'].">".$choixfournisseur['NOM_FOURN']."</option>";
								}
							?>
						</select>
					</div>
					<button type="submit" class="btn btn-default">Ajouter/modifier</button>
				</form>
			</div>
			<div contact class="panel" ng-show="estChoisi(8)"></div>
		</section>
		<!-- Footer contenant les boutons de connexion, d'inscription et de deconnexion -->
		<?php
			if(!isset($_COOKIE['token']))
			{
				?>
				<a class="btn btn-default" href="inscription.php" role="button">S'inscrire</a>
				<a class="btn btn-default" href="connecter.php" role="button">Se connecter</a>
				<?php
			}
			else
			{
				echo "<a class='btn btn-default' href='deconnecter.php' role='button'>Se déconnecter</a>";
			}
		?>
		</div>
	<?php $connexion=null ?>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script type = "text/javascript" src="./app.js"></script>
	</body>
</html>