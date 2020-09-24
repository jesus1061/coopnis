<?php
include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_comercial extends CI_Controller {
	

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
	public function crear_vista_crear_producto_servicio(){
		$this->load->view('vista_crear_producto_servicio');	
	}

	/*Subir archivo en la carpeta correspondiente*/
	public function crear_producto_servicio()
	{	

		
		
		extract($_POST);
		
		$instancia = new ModeloFront();
		$insertproducto_servicio = $instancia -> crear_producto_servicio($item_nombre , $item_desc , $item_foto);
		echo '<script>window.location.href = "cargar_vista_productos_servicios"</script>';
		

		

	}

	
	


	/*Carga la vista para ver los archivos fuente enlistados*/
	public function cargar_vista_productos_servicios(){


		$this->load->view('vista_lista_productos_servicios');
	}

	public function cargar_vista_editar_producto_servicio(){
		extract($_GET);
		//print_r($_GET);
		$_SESSION['producto_editar'] = $item_id;
		$this->load->view('vista_editar_producto_servicio');

	}

	public function editar_producto_servicio(){
		$instancia = new Modelofront();
		extract($_POST);
		//print_r($_POST);
		$updateproducto = $instancia -> editar_producto_servicio($item_id ,$item_nombre , $item_desc , $item_foto);
		echo '<script>window.location.href = "cargar_vista_productos_servicios"</script>';

	}

	public function eliminar_programa_servicio(){
		$instancia = new Modelofront();
		extract($_GET);
		print_r($_GET);
		$delete_producto = $instancia -> eliminar_producto_servicio($item_id);
		echo '<script>window.location.href = "cargar_vista_productos_servicios"</script>';
	}


	

	

	

	


}