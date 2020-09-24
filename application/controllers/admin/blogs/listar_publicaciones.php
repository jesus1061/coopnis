<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_publicaciones = $instancia -> listar_publicaciones();

return $consultar_publicaciones;


?>