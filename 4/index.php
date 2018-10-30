<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Tabla</title>
</head>
<body>
	<center>
	<form action="result.php" method="POST" name="form">
		<table class="table">
			<thead class="thead-green">
			    <tr>
			      <th scope="col">Id</th>
			      <th scope="col">Nombre</th>
			      <th scope="col">Usuario</th>
			      <th scope="col">Clave</th>
			    </tr>
			</thead>
			<tbody>
				<?php
				require 'class.php';
				$conn = new Usuario();
  				$listar = $conn->listarUsuarios();
				foreach ($listar as $resultadoListar){
  					echo "<tr>
  							<td>"
  							.'<input type="radio" name="id" value="'.$resultadoListar[0].'">'.$resultadoListar[0]."<td>".$resultadoListar[1]."</td>"."<td>".$resultadoListar[2]."</td>"."<td>".$resultadoListar[3]."</td></tr>";
 				}
				?>
			</tbody>
		</table>
		<input type="submit" class="button" name="">
	</form>
		<br>
<form action="create.php" method="POST">
      <label for="Nombre">Nombre</label>
      <input type="text" name="nombre">
      <label for="clave">Password</label>
      <input type="password" name="clave">
      <label for="Usuario">Usuario</label>
      <input type="text" name="usuario">
	<button type="submit" class="btn btn-primary">Crear</button>
</form>

	</center>
</body>
</html>