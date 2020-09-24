<?php
session_start();

include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_blog extends CI_Controller {
	

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

	public function cargar_vista_crear_blog (){
		$this->load->view('vista_crear_blog');
	}

	public function crear_blog(){
		extract($_POST);
		print_r($_POST);
		$instancia = new ModeloFront();
		$insertblog = $instancia->crear_blog($titulo_pub , $contenido_pub , $portada_pub);
		echo '<script>window.location.href = "vista_listar_blog"</script>';
	}


	public function vista_listar_blog (){
		$this->load->view('listar_publicaciones');
	}


	public function cargar_vista_editar_blog (){
		extract($_GET);
		//print_r($_GET);
		echo $_SESSION['blog_editar'] = $blog_id;
		$this->load->view('vista_editar_blog');
	}

	public function editar_publicacion(){
		extract($_POST);
		//print_r($_POST);
		$instancia = new ModeloFront();
		$updateblog = $instancia->editar_blog($blog_id , $titulo_pub , $contenido_pub , $portada_pub);
		$this->load->view('listar_publicaciones');
		
	}

	public function eliminar_blog(){
		extract($_GET);
		print_r($_GET);
		$instancia = new ModeloFront();
		$deleteblog = $instancia->eliminar_blog($blog_id);
		
		$this->load->view('listar_publicaciones');
	}

	


	

	


	

	

	

	

	


}