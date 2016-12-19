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

			<form class="form-signin" method="post">
				<h2 class="form-signin-heading">Please Login</h2>

				<label for="inputEmail" class="sr-only">Username</label>
				<input type="text" id="inputEmail" class="form-control" placeholder="Username" required autofocus name="login">
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password" >
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</form>

		</div> <!-- /container -->
				
		<?php
		include_once 'includes/functions.php';
		
		if (isset($_POST['login']) && isset($_POST['password']))
			{
			$username = $_POST['login'];
			$password = $_POST['password']; 
			if (login($username, $password, $mysql) != null) {
				//On affecte a Session[use] username et a Session[rank] la valeur retourner par login
				$_SESSION['user'] =$username;
				$_SESSION['rank']=login($username, $password, $mysql);
				echo '<meta http-equiv="refresh" content="0; url=index.html">';		
				
			}
			else
			{
				?>
				<p> Wrong Password and/or Username;</p>
				<?php
			}		 	
		}
		?>

	</body>
</html>