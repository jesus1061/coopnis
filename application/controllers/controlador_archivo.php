<?php
include_once "application/models/front_tienda/modeloFront.php";


defined('BASEPATH') OR exit('No direct script access allowed');

class controlador_archivo extends CI_Controller {
	

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
	public function crear_vista_crear_archivo(){
		$this->load->view('vista_crear_elemento_fuente');	
	}

	/*Subir archivo en la carpeta correspondiente*/
	public function crear_archivo()
	{	

		
		
		extract($_POST);
		
		//print_r($_POST);


		
		/*Configuraciones iniciales del directorio para subir los archivos*/

		$dir_subida = 'plantilla/admin/img/';
		$fichero_subido = $dir_subida . basename($_FILES['fileToUpload']['name']);

		move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $fichero_subido);

		$directorio_imagenes = 'plantilla/admin/img/';
		if ($directorio = dir($directorio_imagenes))
		{
			while ($fichero = $directorio->read())
			{
				$info_fichero = pathinfo($fichero);

				if (isset($info_fichero['extension']) && $info_fichero['extension']!=strtolower($info_fichero['extension']))
				{
					$info_fichero['basename_we'] = substr($info_fichero['basename'], 0, -(strlen($info_fichero['extension']) + ($info_fichero['extension'] == '' ? 0 : 1)));
					rename(
						$directorio_imagenes . $info_fichero['basename'],
						$directorio_imagenes . $info_fichero['basename_we'] . '.' . strtolower($info_fichero['extension'])
					);
					

				}
			}
		}

		$nombreDelArchivo = $fichero_subido;
		$extension = pathinfo($nombreDelArchivo, PATHINFO_EXTENSION);
		$nombre_solo = pathinfo($nombreDelArchivo, PATHINFO_FILENAME);

		$extencion_convertida = strtolower($extension);

		$ruta_final_Archivo = $dir_subida.$nombre_solo.".".$extencion_convertida;

		$nombre_fichero = $ruta_final_Archivo;
		$peso_archivo = filesize($nombre_fichero) . ' bytes';

		$instancia = new ModeloFront();
		$insertarchivo = $instancia->crear_archivo($nombre_archivo,$ruta_final_Archivo , $extencion_convertida , $peso_archivo);
		echo '<script>window.location.href = "cargar_vista_archivos"</script>';
		

		

	}

	/*Carga una url externa imagenes y videos externos*/
	public function crear_url()
	{
		extract($_POST);
		
		//print_r($_POST);


		$instancia = new ModeloFront();
		$inserturl = $instancia -> crear_url($nombre_archivo , $archivo);
		echo '<script>window.location.href = "cargar_vista_archivos"</script>';



	}

	public function crear_url_video(){
		extract($_POST);
		
		//print_r($_POST);
		$instancia = new ModeloFront();
		$inserturl = $instancia -> crear_url_video($nombre_archivo , $archivo);
		echo '<script>window.location.href = "cargar_vista_archivos"</script>';
	}

	/*Carga la vista para ver los archivos fuente enlistados*/
	public function cargar_vista_archivos(){


		$this->load->view('vista_lista_archivos');
	}


	public function listar_archivos(){
		$select_archivo = $instancia -> listar_archivos();
		
	}

	public function eliminar_archivos(){
		extract($_POST);
		//print_r($_POST);
		$instancia = new ModeloFront();
		$deletearchivo = $instancia->eliminar_archivo($archivo);
		echo '<script>
		
		window.location.href = "../ver_archivos/index";

		</script>';

	}

	public function cargar_vista_crear_url(){
		$this->load->view('cargar_vista_crear_url');	
	}

	

	


}