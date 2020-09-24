<?php
session_start();

include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_login extends CI_Controller {
	

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

	

	public function validar_login(){
		extract($_POST);
		//print_r($_POST);
		$instancia = new ModeloFront();
		$selectlogin = $instancia->consultar_usuario_administador($usuario , $clave);
		while ($row = $selectlogin->fetch()) {
			$user =  $row['usuario'];
			$pass = $row['clave'];
			
		}

		if($user == null || $pass == null){

			echo "<script>
			alert('Acceso denegado');
			window.location.href = 'mostrar_login';
			</script>";

		}else{
			echo "<script>
			alert('Bienvenido al sistema');
			window.location.href = 'cargar_panel';
			</script>";
		}
		



		
		
		



	}


	public function mostrar_login()
	{	
		
		
		$this->load->view('login');


		 
	}



	public function cargar_panel()
	{	
		
		
		$this->load->view('panel');


		 
	}

	

	


	

	


	

	

	

	

	


}