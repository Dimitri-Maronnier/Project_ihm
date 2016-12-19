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
<div id="includeHeader"></div>


<div class="container jumbotron">
    <?php
    		if(isset($_GET['video']))
    		{
    			$video=$_GET['video'];
    			echo ' <iframe width="620" height="360" src="https://www.youtube.com/embed/'.$video.'" frameborder="0" allowfullscreen ></iframe>'; 
    		}

    ?>
</div>

<div class="container jumbotron">

</div>

<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="js/videoPage.js"></script>
</body>
</html>