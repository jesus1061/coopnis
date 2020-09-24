<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_programas = $instancia -> listar_programas();

return $consultar_programas;


?>