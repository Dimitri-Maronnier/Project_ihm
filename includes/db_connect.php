<?php
//Pour éviter à chaque fois de récrire cette commande

try
	{
		$mysql = new PDO('mysql:host=localhost;dbname=Gamiato', 'root', 'root');
        $mysql->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }
  catch(Exception $e)
  {
            die('Erreur : '.$e->getMessage());
  }

?>