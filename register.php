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
				<h2 class="form-signin-heading">Please register</h2>
				<div class="form-signin">
					<label for="user">Username:</label>
					<input type="text" class="form-control" placeholder="Username" require name="username">
				</div>

				<div class="form-signin">
					<label for="email">Email address:</label>
					<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus name="email">
				</div>

				<div class="form-signin">
					<label for="password">Password:</label>
					<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password">
				</div>

				<div class="form-signin">
					<label for="confirmpwd">Confirm Password:</label>
					<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="confirmpwd">
				</div>

				<button type="submit" class="btn btn-lg btn-primary btn-block" >Register</button>
			</form>
		
			<?php
			include_once 'includes/functions.php';	
			if (isset($_POST['username'], $_POST['email'], $_POST['password'],$_POST['confirmpwd'])) 
			{

				if($_POST['password']!=$_POST['confirmpwd'])
				{
					echo "Les deux mots de passe doivent etre identique";
					exit;
				}
				else
				{
					//On filtre les différentes variable
					$username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
					$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
					$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
					
					if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
						echo "Email isn't valid</p>";
						exit;
					}
					
					if (register($username, $password, $email,$mysql)) 
					{
						echo "Register success";
						$_SESSION['user'] =$username;
						$_SESSION['rank']=login($username, $password, $mysql);
						echo '<meta http-equiv="refresh" content="0; url=index.php">';			
						exit;
					}
					else
					{
						echo "Register failed";
					}
				}
				
			}
			?>		
		
	</div>
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>	
</body>
</html>