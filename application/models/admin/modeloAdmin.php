<?php
include_once "application/models/conexion/conexion.php";
class ModeloAdmin{

	

	


	public function listar_archivos(){
		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "select * from departamento";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
	}

	public function listar_unidades_medida(){
		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "select * from unidades_medida";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;
	}


	public function crear_producto($arg_nombre , $arg_descripcion , $arg_referencia ,   $arg_stock , $arg_medida , $arg_precio , $arg_ruta ,$arg_temporal){
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$estado ="1";
		$direcetorio_destino_imagen = "plantilla/admin/img/productos";
		$url_base =  base_url();
		echo $url_bd = $url_base.$direcetorio_destino_imagen."/".$arg_ruta;

		move_uploaded_file($arg_temporal, "$direcetorio_destino_imagen/$arg_ruta");
		
		$sql = "insert into producto_venta (nombre , descripcion , referencia , cantidad_stock , um_id , precio_unitario ,estado , ruta_imagen) 

		values (:nombre , :descripcion , :referencia , :cantidad , :medida , :precio ,:estado , :ruta)";



		$statament = $conexion->prepare($sql);

		
		$statament-> bindParam(':nombre',$arg_nombre);
		$statament-> bindParam(':descripcion',$arg_descripcion);
		$statament-> bindParam(':referencia',$arg_referencia);
		$statament-> bindParam(':cantidad',$arg_stock);
		$statament-> bindParam(':medida',$arg_medida);
		$statament-> bindParam(':precio',$arg_precio);
		
		$statament-> bindParam(':estado',$estado);
		$statament-> bindParam(':ruta',$url_bd);



		if(!$statament){
			return "Error al crear el registro";
		} else{
			 $statament ->execute();

			return "Registro exitoso";
		}
		

		

	}


	public function listar_productos(){

		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "select * from producto_venta";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;

	}


	public function consultar_detalle_producto($id){

		$row = null;
		$modelo = new Conexion();
		$conexion = $modelo->get_connect();
		$sql = "select * from producto_venta where id='$id'";
		$statament = $conexion->prepare($sql);
		$statament ->execute();

		while($resultado = $statament ->fetch()){

			$row[] = $resultado;


		}
		return $row;

	}



	

	

} 
?>