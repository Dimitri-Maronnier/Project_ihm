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
<!-- Carousel
    ================================================== -->
<div id="landCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#landCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#landCarousel" data-slide-to="1"></li>
        <li data-target="#landCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1 class="title">Bienvenue sur GAMIATO</h1>
                    <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1 class="title">Test de FFXV</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="gamePage.php" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1 class="title">Dishonored 2 est-il jouable ?</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#landCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#landCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->



<div class="container" id="main-container">

    <div class="container" id="sub-container">
        <div class="container" id="all-article-container">

            <?php
            $reponse = $mysql->query('SELECT * FROM article WHERE 1 ORDER BY date DESC');
             while ($donnees = $reponse->fetch())
            {
                echo '<div class = "container article-container" id="1"">';
                echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($donnees['date'])).'</aside>';

                echo '<header>' . htmlspecialchars(utf8_encode($donnees['title'])).'</header>';
                echo '<img src="img/' . htmlspecialchars(utf8_encode($donnees['img'])).'" alt="Art view">';
                echo '<article class="article-min">' . htmlspecialchars(utf8_encode(substr($donnees['content'],0,900))).'</article>';
                if($donnees['type']=="new"){
                    echo '<form action="articlePage.php?id='.$donnees['id'].'" method="post">';
                }else{
                    echo '<form action="gamePage.php?game='.$donnees['game'].'&target='.$donnees['type'].'" method="post">';
                }
                echo '<button type="submit" class="btn btn-lg btn-primary btn-block" >Learn More</button>';
                echo'</form>';
                echo '</div>';
            }
            ?>


     
        </div>

        <div class="container" id="hot-news">
            <h1 class="title">Hot News On the Grill</h1>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>

<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>