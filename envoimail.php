<?php 
	include 'connexion.php';
	$verificationuser=false;
	$userid=$_COOKIE['userid'];
		$userchk = $connexion->query("SELECT TOKEN FROM UTILISATEURS WHERE ID_USER='$userid'");
		$userchk = $userchk->fetch();
	if(isset($_COOKIE['userid']) and !empty($_COOKIE['userid']) and isset($_COOKIE['token']) and !empty($_COOKIE['token']))
	{
		

		$ver = $_COOKIE['token']===$userchk['TOKEN'];
		if($ver)
		{
			$verificationuser=true;
		}
	}
	
	if(empty($_POST['nomenv']) and $verificationuser)
	{
		$nomenv=$userchk['USERNAME'];
	}
	else
	{
		$nomenv=$_POST['nomenv'];
	}
	if(empty($_POST['mailenv']) and $verificationuser)
	{
		$mailenv=$userchk['EMAIL'];
	}
	else
	{
		$mailenv=$_POST['mailenv'];
	}
	if(!empty($_POST['message']))
	{
		$msg=$_POST['message'];
		htmlspecialchars($msg);
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
		$headers .= 'FROM:' . htmlspecialchars($mailenv);
		$to = 'admin@alu3a.esy.es';
		$subject = "Message envoyé par : ".$nomenv."(<i>".$mailenv."</i>)";
		$message = $msg."<br><br><br>".$subject;
		mail($to,$subject,$message,$headers);
		echo "Mail envoy&eacute; !";
	}
	else
	{
		echo "Rentrez un message !";
	}
	sleep(3);
	echo "<script type='text/javascript'>document.location.replace('/');</script>";
?>

