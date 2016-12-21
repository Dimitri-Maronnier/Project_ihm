<?php
//Pour éviter à chaque fois de récrire cette commande

try
	{
		$mysql = new PDO('mysql:host=mysql-m1ihm.alwaysdata.net;dbname=m1ihm_gamiato', 'm1ihm', 'lourd');
        $mysql->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }
  catch(Exception $e)
  {
            die('Erreur : '.$e->getMessage());
  }

?>
