<?php
session_start();


include_once "application/models/conexion/conexion.php";
class ModeloCompras{

	
	public function registrar_compra($producto_id , $nombre , $precio , $cantidad){

		$total = $cantidad * $precio;

		$usuario = $_SESSION['usuario'];
		

		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "INSERT INTO compras (codigo_usuario, producto_id , producto_nombre , precio , cantidad , total) VALUES('$usuario','$producto_id' , '$nombre' , '$precio' , '$cantidad' , '$total')";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;

	}

	public function lista_carrito(){

		$usuario = $_SESSION['usuario'];
		

		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "SELECT * FROM compras WHERE codigo_usuario = '$usuario'";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
		
	}

	public function cantidad(){
		$usuario = $_SESSION['usuario'];
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();	
		$count = "SELECT count(producto_id) FROM compras WHERE codigo_usuario ='$usuario'";
		$statament = $conexion->prepare($count);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
	}

	public function precio_total(){
		$usuario = $_SESSION['usuario'];
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();	
		$count = "SELECT sum(total) FROM compras WHERE codigo_usuario ='$usuario'";
		$statament = $conexion->prepare($count);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
	}

	public function quitar_compra($codigo_producto){
	$usuario = $_SESSION['usuario'];
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();	
		$count = "DELETE FROM compras WHERE producto_id ='$codigo_producto'";
		$statament = $conexion->prepare($count);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
	}

	

} 
?>