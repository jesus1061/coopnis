<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_funcionarios = $instancia -> listar_funcionarios();

return $consultar_funcionarios;


?>