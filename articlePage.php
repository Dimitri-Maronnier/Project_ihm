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
    <?php
    		if(isset($_GET['id']))
    		{
    			$id=$_GET['id'];
                $reponse = $mysql->query('SELECT * FROM article WHERE id='.$_GET['id']); 
                $donnees = $reponse->fetch();
                        echo '<div class = "container article-container-main" id="1" onclick="articleClick()">';
                        echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($donnees['date'])).'</aside>';

                        echo '<h2>' . htmlspecialchars(utf8_encode($donnees['title'])).'</h2>';
                        echo '<img src="img/' . htmlspecialchars(utf8_encode($donnees['img'])).'" alt="Art view">';
                        echo '<article class="article">' . htmlspecialchars(utf8_encode($donnees['content'])).'</article>';

                        echo '</div>';
    		}

    ?>
</div>


<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</body>
</html>