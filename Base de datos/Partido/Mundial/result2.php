<?php 

	include ('class.php');
$conn = new Usuario();
	$conn->ModificarUsuario($_POST['id'],$_POST['nombre'],$_POST['usuario']);
	
 ?>
 <a href="index.php">volver</a>