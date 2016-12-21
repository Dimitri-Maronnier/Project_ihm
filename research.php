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

	<aside id="filters-sidebar">
		<div class="border-div">
		    <div id="checkboxSites">
		        <h3>Filter</h3>
		        <div class="checkbox">
		            <a href='research.php?filter="review"&request=<?php if(isset($_POST['request'])){ echo $_POST['request'];} elseif (isset($_GET['request'])) {echo $_GET['request'];} ?>'><label>Review</label></a>
		        </div>
		        <div class="checkbox">
		            <a href='research.php?filter="test"&request=<?php if(isset($_POST['request'])){ echo $_POST['request'];} elseif (isset($_GET['request'])) {echo $_GET['request'];} ?>'><label>Test</label></a>
		        </div>
		        <div class="checkbox">
		            <a href='research.php?filter="new"&request=<?php if(isset($_POST['request'])){ echo $_POST['request'];} elseif (isset($_GET['request'])) {echo $_GET['request'];} ?>'s><label>New</label></a>
		        </div>
		    </div>
		</div>
	</aside>

<?php
if((isset($_POST['request']) && $_POST['request'] != NULL) or (isset($_GET['request']) && $_GET['request'] != NULL)) 
{

	if(isset($_POST['request'])){ 
		$request = htmlspecialchars($_POST['request']);
	} elseif (isset($_GET['request'])) {
		$request = htmlspecialchars($_GET['request']);
	}
	 
	if(isset($_GET['filter'])){
		$query = $mysql->query("SELECT * FROM article WHERE title LIKE '%$request%' AND id IN ( SELECT id FROM article WHERE type=".$_GET['filter'].") ORDER BY date DESC");
	}else{
		$query = $mysql->query("SELECT * FROM article WHERE title LIKE '%$request%' ORDER BY date DESC");
	}

	$nb_resultats = $query->rowCount();

	if($nb_resultats != 0) 

	{

		

		?>

		<h2>Results:.</h2>

		<p style="text-align: center;">We found <?php echo $nb_resultats;
		if($nb_resultats > 1) { echo ' results'; } else { echo ' result'; } 

		?>

		

	

		<?php

           	while ($donnees = $query->fetch())
            {
                	
                    echo '<div class = "container article-container" id="1"">';
                    echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($donnees['date'])).'</aside>';

                    echo '<header>' . htmlspecialchars(utf8_encode($donnees['title'])).'</header>';
                    echo '<img src="img/' . htmlspecialchars(utf8_encode($donnees['img'])).'" alt="Art view">';
                    echo '<article class="article-min">' . htmlspecialchars(utf8_encode(substr($donnees['content'],0,900))).'</article>';
                    if($donnees['type']=="new"){
                        echo '<a href="articlePage.php?id='.$donnees['id'].'"><button type="submit" class="btn btn-lg btn-primary btn-block" >Learn More</button></a>';
                    }else{
                        echo '<a href="gamePage.php?game='.$donnees['game'].'&target='.$donnees['type'].'"><button type="submit" class="btn btn-lg btn-primary btn-block" >Learn More</button></a>';
                    }
                    
                   
                    echo '</div>';
                
            }
	

	} 

	else

	{ 

	?>

		<h2>Empty result</h2>

		<?php

	}

		

}

?>

<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</body>
</html>