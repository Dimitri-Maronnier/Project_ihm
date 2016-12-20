


<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#liste-cate-nav" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand title" href="index.php">Gamiato</a>
        </div>

        <div class="collapse navbar-collapse" id="liste-cate-nav">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home<span class="sr-only"></span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Game<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Review</a></li>
                        <li><a href="#">Test</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">News</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Sales</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hardware<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Review</a></li>
                        <li><a href="#">Test/Benchmark</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">News</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Sales</a></li>
                    </ul>
                </li>
                <li><a href="bundles.php">Bundle</a></li>
                <li><a href="#">Forum</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
            <?php


            include_once 'includes/db_connect.php';

            //initialisation de la variable rang de l'utilisateur
            $userRank =  "anonyme";
            session_start();

            if (isset($_SESSION['user'] ))
            {

                echo '<li><a href="#"> Welcome '.$_SESSION['user'].'</a></li>';
                echo '<li><a href="logout.php">Log Out</a></li>';
                //sauvegarde du rang de l'utilisateur
                $userRank = $_SESSION['rank'];
            }
            else 
            {
                ?>
                
                
            
                <li><a href="register.php">Sign Up</a></li>
                <li><a href="login.php">Login</a></li>   

                

                <?php
            }

            ?>



            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </form>
        </div>
    </div>
</nav>