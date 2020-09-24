<?php
include_once "application/models/admin/modeloAdmin.php";
$instancia = new ModeloAdmin();
$consultar_unidades_medida = $instancia -> listar_unidades_medida();

?>