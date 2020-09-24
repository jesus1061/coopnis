<?php
include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_programa extends CI_Controller {
	

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
	/*Lanza la vista para crear Programa*/
	public function crear_vista_crear_programa(){
		$this->load->view('vista_crear_programa');	
	}

	public function crear_programa(){
		$instancia = new Modelofront();
		extract($_POST);
		//print_r($_POST);
		$insertprograma = $instancia -> crear_programa($titulo_programa , $contenido_programa , $portada_programa);
			echo '<script>window.location.href = "crear_vista_listar_programas"</script>';
	}


	public function crear_vista_listar_programas(){
		$this->load->view('listar_programas');		
	}


	public function cargar_vista_editar_programa(){
		//print_r($_GET);
		extract($_GET);
		$_SESSION['programa_editar'] = $programa_id;
		$this->load->view('vista_editar_programa');

	}


	public function editar_programa(){
	$instancia = new Modelofront();
		extract($_POST);
		//print_r($_POST);
		$updateprograma = $instancia -> editar_programa($programa_id ,$titulo_programa , $contenido_programa , $portada_programa);
			echo '<script>window.location.href = "crear_vista_listar_programas"</script>';	
	}

	public function eliminar_programa(){
		$instancia = new Modelofront();
		//print_r($_GET);
		extract($_GET);
		$deleteprograma = $instancia -> eliminar_programa($programa_id);
		echo '<script>window.location.href = "crear_vista_listar_programas"</script>';	
	}

	
	


	

	

	

	

	


}