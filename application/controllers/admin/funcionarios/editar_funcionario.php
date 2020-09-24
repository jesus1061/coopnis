<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_funcionario = $instancia -> editar_funcionario_consulta($personal_id);

return $consultar_funcionario;


?>