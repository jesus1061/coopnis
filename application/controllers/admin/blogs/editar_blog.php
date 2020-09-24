<?php
include_once "application/models/front_tienda/modeloFront.php";
$instancia = new ModeloFront();

$consultar_blog = $instancia -> editar_blog_consulta($blog_id);

return $consultar_blog;


?>