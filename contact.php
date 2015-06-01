<p>Si vous &ecirc;tes connecté et que vous les laissez vides, les champs correspondant à votre nom et votre adresse mail seront automatiquement remplis.</p>
<form action="envoimail.php" method="POST">
	<div class="form-group">
		<label for="nomenv">Votre nom : <br></label>
		<input type="text" name="nomenv" id="nomenv" value="">
	</div>
	<div class="form-group">
		<label for="mailenv">Votre adresse mail :<br></label>
		<input type="email" name="mailenv" id="mailenv" value="">
	</div>
	<div class="form-group">
		<label for="message"> Votre message :<br></label>
		<textarea type="text" name="message" id="message"></textarea>
	</div>
	<button type="submit" class="btn btn-default">Envoyer le message</button>
</form>