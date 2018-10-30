<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<title>Resultado</title>
</head>
<body>
	<center>
	<h1>Resultado</h1>
	<hr>
<form method="POST" action="result2.php">
	<?php

	$radio = $_POST['id'];
	include ('class.php');
	$conn = new Usuario();
	$listar = $conn->mostrarUsuario($radio);
	echo $listar;
	?>
	<button type="submit" class="btn btn-default">UPDATE</button>
	<button type="submit" class="btn btn-default">DELETE</button>
	<button type="submit" class="btn btn-default">CREATE</button>
  </form>
	</center>
</body>
</html>

	