<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_productos_servicios = $instancia -> listar_productos_servicios();

return $consultar_productos_servicios;


?>