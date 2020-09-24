<?php
include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_funcionario extends CI_Controller {
	

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
	/*Lanza la vista para crear elemento fuente*/
	public function crear_vista_crear_funcionario(){
		$this->load->view('vista_crear_funcionario');	
	}

	public function crear_funcionario(){
		$instancia = new ModeloFront();
		extract($_POST);
		//print_r($_POST);
		$insertfuncionario = $instancia -> crear_funcionario($personal_nombre , $personal_cargo , $personal_foto , $link_facebook , $link_instagram , $link_twitter);
		echo '<script>window.location.href = "vista_listar_funcionarios"</script>';
	}


	public function vista_listar_funcionarios (){
		$this->load->view('listar_funcionarios');
	}


	public function cargar_vista_editar_funcionario(){
		extract($_GET);
		//print_r($_GET);
		$_SESSION['funcionario_editar'] = $personal_id;
		$this->load->view('vista_editar_funcionario');
	}

	public function editar_funcionario(){
		$instancia = new ModeloFront();
		extract($_POST);
		//print_r($_POST);
		$updatefuncionario = $instancia -> editar_funcionario($personal_id , $personal_nombre , $personal_cargo , $personal_foto , $link_facebook , $link_instagram , $link_twitter);	
		echo '<script>window.location.href = "vista_listar_funcionarios"</script>';
	}

	public function eliminar_funcionario(){
		$instancia = new ModeloFront();
		extract($_GET);	
		//print_r($_GET);
		$deletefuncionario = $instancia -> eliminar_funcionario($personal_id);
		echo '<script>window.location.href = "vista_listar_funcionarios"</script>';
	}
	
	

	


}