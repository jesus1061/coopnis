<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_producto_servicio = $instancia -> editar_producto_servicio_consulta($item_id);

return $consultar_producto_servicio;


?>