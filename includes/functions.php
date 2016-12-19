<?php
include_once 'db_connect.php';

/*
*	Fonction login
*	Teste pour tous les username et password de la table members s'ils valent les username et password donnée en paramétre 
*	Si oui renvoie le rang de l'utilisateur
*	Sinon renvoie la chaine null
*/
function login($username, $password, $mysql) {

	if ($reponse =$mysql->query('SELECT * FROM members WHERE 1')) {

		while ($donnees = $reponse->fetch())
		{
			 if ($donnees['username'] == $username and $donnees['password'] == $password) {
				return $donnees['rank'];
			}
		}
	}
	else
	{
		return null;
	}
}

/*
*	Fonction register
*	Vérifie si pour tous les username et mail de la table members aucun ne vaut se donnée en paramétre
*	Si oui insére dans la table members l'username, le password,l'email et la date courante et met pour rang membre et renvoie true
*	Sinon renvoie false
*/
function register($username, $password,$email, $mysql) {

	if ($reponse =$mysql->query('SELECT * FROM members WHERE 1 ')) {

		while ($donnees = $reponse->fetch())
		{
			 if ($donnees['username'] == $username or $donnees['email'] == $email ) {
				return false;
			}
		}
		$req=$mysql->prepare('INSERT INTO members (id,username,password,email,rank,date) VALUES("",?,?,?,?,?)');
		date_default_timezone_set('Europe/Paris');
		$date =  date("Y-m-d H:i:s", time());

		$req->execute(array($username,$password,$email,'membre',$date));
		return true;

	}
	else
	{
		return false;
	}
}

?>