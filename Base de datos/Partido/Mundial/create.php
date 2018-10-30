<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>Pagina De Usuarios</h1>
  <p>La Nueva Era!</p> 
</div>
  
<div class="container">
  <div class="">
    <div class="col-sm-4">
      <h3>Alerta</h3>
      <?php 
		include ('class.php');
			$conn = new Usuario();
				$conn->CrearUsuario($_POST['nombre'],$_POST['usuario'],$_POST['clave']);
	  ?>
      <p>Este Usuario a Sido Creado Correctamente</p>
      <form action="index.php">
    <input type="submit" value="Volver" />
	  </form>
    </div>
  </div>
</div>

</body>
</html>