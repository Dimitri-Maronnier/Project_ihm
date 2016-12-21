<?php
		ini_set('session.cache_limiter','public');
		session_cache_limiter(false);
		session_start();
		//"vide" les variables session user et rank
		unset($_SESSION['user']);
		unset($_SESSION['rank']);
	header("Refresh:0; url=index.php");
exit;
?>