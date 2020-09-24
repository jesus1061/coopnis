<?php
session_start();

include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_contacto extends CI_Controller {
	

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html


	 */



	public function crear_blog(){
		extract($_POST);
		print_r($_POST);
		$instancia = new ModeloFront();
		$insertblog = $instancia->crear_blog($titulo_pub , $contenido_pub , $portada_pub);
		echo '<script>window.location.href = "vista_listar_blog"</script>';
	}


	
	


	

	


	

	

	

	

	


}