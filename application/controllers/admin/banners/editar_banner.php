<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_banner = $instancia -> editar_banner($banner_id);

return $consultar_banner;


?>