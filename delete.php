<?php
include_once 'includes/db_connect.php';

//Suppresion de l'article liée à l'id
session_cache_expire('private_no_expire, must-revalidate');
session_start();
if (isset($_GET['id']))
{
	//Verification des droit pour eviter de supprimer a l'aide de l'url
	$reponse = $mysql->query('SELECT * FROM commentary WHERE id = '.$_GET['id']);
	while ($donnees = $reponse->fetch())
	{
		if (($_SESSION['rank']!="administrateur" and $_SESSION['user']!=$donnees['username']))
		{
			echo "Insufficient right";
			exit();
		}
	}
	$req=$mysql->prepare('DELETE FROM commentary WHERE id='.$_GET['id']);
    ?>
    <script type="text/javascript"> window.history.go(-1);</script>
    <?php
}
else
{
	echo "Somethink wrong"; 
	exit();
}
    
$req->execute();
        

?>
