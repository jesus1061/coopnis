<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_banners = $instancia -> listar_banners();

return $consultar_banners;


?>