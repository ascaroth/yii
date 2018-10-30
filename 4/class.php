<?php  
	class Usuario{
		public $server ='localhost';
		public $username='root';
		public $password='';
		public $database='persona';

		function Usuario(){
			$this->conexion = @new mysqli($this->server, $this->username, $this->password, $this->database);
			if ($this->conexion->connect_error){
				die('Error de conexion:' . $this->conexion->connect_error);
			}
		}

		function listarUsuarios(){
			$sql="SELECT * FROM persona.persona pe ";
			$query=$this->conexion->query($sql) or die("Error en: $sql: ". mysql_error());
			$listarusr  = array();
			while ($row = $query->fetch_array()){
				$listarusr[] = $row;	
			}
			return $listarusr;
		}

		function mostrarUsuario($xxx){
			$sql="SELECT * FROM persona.persona pe where pers_id=$xxx";
			$query=$this->conexion->query($sql) or die("Error en: $sql: ". mysql_error());
			$listarusr  = array();
			$row = $query->fetch_row();
			echo $row[0]." ".$row[1];	
			echo '<br>';
			echo '<input type="hidden" name="id" value="'.$row[0].'">';
			echo '<input type="text" disabled="disabled" value="'.$row[0].'">';
			echo '<input type="text" name="nombre" value="'.$row[1].'">';
			echo '<input type="text" name="usuario" value="'.$row[2].'">';

		}

		function ModificarUsuario($id,$nombre,$usuario){
			$sql="UPDATE persona.persona SET pers_nombre='$nombre', pers_usuario='$usuario'  where pers_id=$id";
			$query=$this->conexion->query($sql) or die("Error en: $sql: ". mysql_error());

		}
		function EliminarUsuario($id){
			$sql="DELETE FROM persona.persona where pers_id=$id";
			$query=$this->conexion->query($sql) or die("Error en: $sql: ". mysql_error());

		}
		function CrearUsuario($nombre,$usuario,$clave){
			$sql="INSERT INTO persona.persona values('', '$nombre', '$usuario','$clave')";
			$query=$this->conexion->query($sql) or die("Error en: $sql: ". mysql_error());

		}
	}
?>