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

    <?php
    if(isset($_GET['game']))
    {
        $game=$_GET['game'];
        $reponse = $mysql->query('SELECT * FROM games WHERE title="'.$game.'"'); 
        $donnees = $reponse->fetch();
        $reponse = $mysql->query('SELECT * FROM article WHERE game="'.$game.'" AND type="review"');
        $review = $reponse->fetch();
        $reponse = $mysql->query('SELECT * FROM article WHERE game="'.$game.'" AND type="test"');
        $test = $reponse->fetch();  
        ?>
        <div class="container" id="main-container">

            <div class="container gameTitle">
                <?php
                echo '<h1>'.$donnees['title'].'</h1>';
                ?>
            </div>

            <div class="bs-example">
                <ul class="nav nav-tabs" id="myTab">
                    <?php
                    if(isset($_GET['target']) and $_GET['target'] == "profil" ){
                        echo '<li class="active"><a href="#sectionProfil">Profil</a></li>';
                    }else{
                        echo '<li><a href="#sectionProfil">Profil</a></li>';
                    }
                    if(isset($_GET['target']) and $_GET['target'] == "review" ){
                        echo '<li class="active"><a href="#sectionReview">Review</a></li>';
                    }else{
                        echo '<li><a href="#sectionReview">Review</a></li>';
                    }
                    if(isset($_GET['target']) and $_GET['target'] == "test" ){
                        echo '<li class="active"><a href="#sectionTest">Test</a></li>';
                    }else{
                        echo '<li><a href="#sectionTest">Test</a></li>';
                    }                        
                    ?>   
                    <li><a href="#sectionNews">News</a></li>
                    <li><a href="#sectionVideo">Video</a></li>
    
                    
                </ul>
            </div>
            <div class="tab-content">
                <?php
                if(isset($_GET['target']) and $_GET['target'] == "profil" ){
                    echo '<div id="sectionProfil" class="tab-pane fade in active container article-container">';
                }else{
                    echo '<div id="sectionProfil" class="tab-pane fade container article-container">';
                }
                ?>
                    <?php
                    echo '<img src="img/'.$donnees['cover'].'" alt="cover" width="25%" height="25%">';
                    ?>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Editor</th>
                                <th>Developer</th>
                                <th>Type</th>
                                <th>Multiplayer</th>
                                <th>Release</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <?php
                            echo '<td>'.$donnees['editor'].'</td>';
                            echo '<td>'.$donnees['developer'].'</td>';
                            echo '<td>'.$donnees['type'].'</td>';
                            echo '<td>'.$donnees['multiplayer'].'</td>';
                            echo '<td>'.$donnees['release'].'</td>';
                            ?>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <?php
                if(isset($_GET['target']) and $_GET['target'] == "review" ){
                    echo '<div id="sectionReview" class="tab-pane fade in active container article-container">';
                }else{
                    echo '<div id="sectionReview" class="tab-pane fade container article-container">';
                }
                ?>
                    <?php
                    if($review != null){
                        echo '<aside class="aside1">'.$review['date'].'</aside>';

                        echo '<article>'.htmlspecialchars(utf8_encode($review['content'])).'</article>';
                     }else{
                        echo "<article>This game isn't got a review yet</article>";
                     
                    }
                    ?>
                </div>
                <?php
                if(isset($_GET['target']) and $_GET['target'] == "test" ){
                     echo '<div id="sectionTest" class="tab-pane fade in active container article-container">';
                }else{
                     echo '<div id="sectionTest" class="tab-pane fade container article-container">';
                }
                ?>
               
                    <?php
                    if($test != null){
                        echo '<aside class="aside1">'.$test['date'].'</aside>';

                        echo '<article>'.htmlspecialchars(utf8_encode($test['content'])).'</article>';
                    }else{
                        echo "<article>This game isn't got a test yet</article>";
                    }
                    ?>
                </div>

                <div id="sectionNews" class="tab-pane fade container article-container tab-container">
                    <?php
                    $reponse = $mysql->query('SELECT * FROM article WHERE 1 ORDER BY date DESC');
                     while ($n_donnees = $reponse->fetch())
                    {
                        if($n_donnees['game'] == $game and $n_donnees['type'] == "new"){
                            echo '<div class = "container article-container-lil" id="1">';
                            echo '<aside class="aside1">' . htmlspecialchars(utf8_encode($n_donnees['date'])).'</aside>';

                            echo '<header>' . htmlspecialchars(utf8_encode($n_donnees['title'])).'</header>';
                            echo '<img src="img/' . htmlspecialchars(utf8_encode($n_donnees['img'])).'" alt="Art view">';
                            echo '<article class="article-min">' . htmlspecialchars(utf8_encode(substr($n_donnees['content'],0,100))).'</article>';
                            echo '<form action="articlePage.php?id='.$n_donnees['id'].'" method="post">';
                            echo '<button type="submit" class="btn btn-lg btn-primary btn-block" >Learn More</button>';
                            echo '</form>';
                            echo '</div>';

                        }
                    }
                    ?>

                </div>


                <div id="sectionVideo" class="tab-pane fade container article-container">
            
                
                  <a href="videoPage.php?video=otVk3EEjgd8">
                    <img src="http://i1.ytimg.com/vi/otVk3EEjgd8/default.jpg" alt="miniature" />
                  </a>
                  <a href="videoPage.php?video=CNM6o9um1dc">
                    <img src="http://i1.ytimg.com/vi/CNM6o9um1dc/default.jpg" alt="miniature" />
                  </a>
             
                </div>
            </div>



            <div class="container"><header>Related</header></div>
            
            
            <div class="container related-container">
                <?php
                $reponse = $mysql->query('SELECT * FROM games WHERE title<>"'.$donnees['title'].'"');
                while ($gr_donnees = $reponse->fetch())
                {
                    if($gr_donnees['type'] == $donnees['type'] or $gr_donnees['developer'] == $donnees['developer'] ){
                        echo '<div class = "container">';
                            echo '<a href="gamePage.php?game='.$gr_donnees['title'].'&target=profil"><img class="relatedImg" src="img/'.$gr_donnees['cover'].'" alt="Icnone" width="25%" height="25%"></a> ';
                            echo '<header>'.$gr_donnees['title'].'</header>';
                        echo '</div>';
                    }
                }
                ?>                      
            </div>

        </div>
    <?php
    }
    ?>
   

<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>

<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="js/gamePage.js"></script>
</body>
</html>