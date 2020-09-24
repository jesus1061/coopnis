<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_programa = $instancia -> editar_programa_consulta($programa_id);

return $consultar_programa;


?>