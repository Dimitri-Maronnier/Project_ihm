<?php
 	include_once 'includes/db_connect.php';   
    session_cache_expire('private_no_expire, must-revalidate');
	session_start();
    if (isset($_POST['content']) and isset($_GET['isArticle']) and isset($_GET['id']) and isset($_GET['video']))
    {
        $req=$mysql->prepare('INSERT INTO commentary (id,date,username,isArticle,id_A,url_V,comment) VALUES("",?,?,?,?,?,?)');
        date_default_timezone_set('Europe/Paris');
        $date =  date("Y-m-d H:i:s", time());

        
        $req->execute(array($date,$_SESSION['user'],$_GET['isArticle'],$_GET['id'],$_GET['video'],utf8_decode($_POST['content'])));
       
	    ?>
	    <script type="text/javascript"> window.history.go(-1);</script>
	    <?php
    }
?>