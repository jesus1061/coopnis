<?php
include_once "application/models/conexion/conexion.php";
class ModeloSesion{

	public function crear_sesion(){
		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$consulta_previa = "select * from ingresos_sistema";
		$statament1 = $conexion->prepare($consulta_previa);
		$statament1 ->execute();
		$sqlcodigo =  "SELECT codigo_usuario, MAX(codigo_usuario) codigo_usuario FROM ingresos_sistema";
		$statament2 = $conexion->prepare($sqlcodigo);
		$statament2 ->execute();

		foreach($statament2 as $cod){
			$cod['codigo_usuario'];

			


		}
		
		$consecutivo = $cod['codigo_usuario'] + 1;



		$insert = "insert into ingresos_sistema (codigo_usuario ) 

		values (:codigo)";


		$statament = $conexion->prepare($insert);
		$arg_codigo = 2;

		$statament-> bindParam(':codigo',$consecutivo);

		$statament ->execute();

		return $consecutivo;
	}

	

} 
?>