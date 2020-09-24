<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_archivos = $instancia -> listar_archivos();

return $consultar_archivos;


?>