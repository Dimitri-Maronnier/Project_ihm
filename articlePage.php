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
                $reponse = $mysql->query('SELECT * FROM article WHERE id='.$id); 
                $donnees = $reponse->fetch();
                        echo '<div class = "container article-container-main" id="1">';
                        echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($donnees['date'])).'</aside>';

                        echo '<h2>' . htmlspecialchars(utf8_encode($donnees['title'])).'</h2>';
                        echo '<img src="img/' . htmlspecialchars(utf8_encode($donnees['img'])).'" alt="Art view">';
                        echo '<article class="article">' . htmlspecialchars(utf8_encode($donnees['content'])).'</article>';

                        echo '</div>';
    		}

    ?>
</div>

<div class="container jumbotron">
    <?php
    $reponse = $mysql->query('SELECT * FROM commentary WHERE isArticle=1 AND id_A="'.$id.'"');
     while ($donnees = $reponse->fetch())
    {
        echo '<div class = "container article-container-main" id="1"">';
      
        if ($userRank== "administrateur" or (isset($_SESSION['user']) and $_SESSION['user'] ==  $donnees['username']))
        {
            echo '<div class="b_ar">';
            echo '<form  method="post">';
            echo '<a href="modify.php?id='.$donnees['id'].'" class="bouton_ar" ><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></a>
            <a href="delete.php?id='.$donnees['id'].'" class="bouton_ar" ><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>';
            echo '</form>';
            echo '</div>';
        }
        
        echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($donnees['date'])).'</aside>';

        echo '<header>' . htmlspecialchars(utf8_encode($donnees['username'])).'</header>';
        echo '<article class="article">' . htmlspecialchars(utf8_encode($donnees['comment'])).'</article>';
        echo '</div>';

    }


    ?>

</div>
<?php
if ($userRank != "anonyme")    
{
?>
    <div class="container jumbotron">
        <form action="post.php?isArticle=1&id=<?php echo $id ?>&video=""" method="post">
        <div class="form-group">
        <label for="comment">Comment:</label>
        <textarea class="form-control" rows="5" id="content" name="content"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Comment</button>
        </form>
    </div>
<?php
}
?>


<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</body>
</html>