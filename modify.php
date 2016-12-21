<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
    <title> Gamiato </title>
</head>
<body>
<?php
include_once 'header.php';
?>

<div class="container jumbotron">

	<h2>Modify Your Comment :</h2>
	<?php
	include_once 'includes/db_connect.php';
	//Modification contenu du commentaire

	if (isset($_GET['id']))
	{
		$id = $_GET['id'];;
		
		//Verification des droit pour eviter de supprimer a l'aide de l'url
		$reponse = $mysql->query('SELECT * FROM commentary WHERE id = '.$id);
		while ($donnees = $reponse->fetch())
		{
			if (($_SESSION['rank']!="administrateur" and $_SESSION['user']!=$donnees['username']))
			{
				echo "Insufficient right";
				exit();
			}
		}
		
		$reponse = $mysql->query('SELECT * FROM commentary WHERE id = '.$id);
		?>

		<br>		
		<?php
		while ($donnees = $reponse->fetch())
		{
			$contenu = htmlspecialchars(utf8_encode($donnees['comment']));
		}
		?>

		<form method="post">
	        <div class="form-group">
	        <label for="comment">Comment:</label>
	        <textarea class="form-control" rows="5" id="content" name="content"><?php echo $contenu; ?></textarea>
	        </div>
			<button type="submit" class="btn btn-primary">Comment</button>
		</form>
		<?php
		if (isset($_POST['content']))
		{

			
		    $req=$mysql->prepare('UPDATE commentary SET comment=?,date=? WHERE id='.$_GET['id']);
			date_default_timezone_set('Europe/Paris');
			$date =  date("Y-m-d H:i:s", time());
		    $req->execute(array(utf8_decode($_POST['content']),$date));
		    ?>
		    <script type="text/javascript"> window.history.go(-2);</script>
		    <?php
		}
	}
	else 
	{
		echo "Somethink wrong";
		exit();
	}
	?>

</div>	
</body>
</html>