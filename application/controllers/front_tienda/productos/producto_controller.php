<?php
include_once "application/models/front_tienda/modeloFront.php";
	$instancia = new ModeloFront();
	$productos = $instancia->listar_productos();
	
?>