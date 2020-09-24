<?php
session_start();

include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_banner extends CI_Controller {
	

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

	public function cargar_vista_crear_banner (){
		$this->load->view('vista_crear_banner');
	}

	public function crear_banner(){
		extract($_POST);
		//print_r($_POST);
		$instancia = new ModeloFront();
		$insertbanner = $instancia->crear_banner($banner_nombre , $banner_imagen);
		echo '<script>window.location.href = "../ver_banners/index"</script>';
	}


	public function vista_listar_banner (){
		$this->load->view('listar_banners');
	}


	public function cargar_vista_editar_banner (){
		extract($_GET);
		//print_r($_GET);
		echo $_SESSION['banner_editar'] = $banner_id;
		$this->load->view('vista_editar_banners');
	}

	public function editar_banner(){
		extract($_POST);
		//print_r($_POST);
		$instancia = new ModeloFront();
		$updatebanner = $instancia->editar_banner_bd($banner_id , $banner_nombre , $banner_imagen);
		echo '<script>window.location.href = "../ver_banners/index"</script>';
	}

	public function eliminar_banner(){
		extract($_GET);
		//print_r($_GET);
		$instancia = new ModeloFront();
		$deletebanner = $instancia->eliminar_banner($banner_id);
		echo '<script>window.location.href = "../ver_banners/index"</script>';	
	}

	


	

	


	

	

	

	

	


}