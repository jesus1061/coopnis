<?php
include_once "application/models/conexion/conexion.php";
class ModeloFront{

	public function consultar_usuario_administador($usuario , $clave){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
			$stmt = $pdo->query('SELECT * FROM usuarios_administradores WHERE usuario="'.$usuario.'" AND clave="'.$clave.'"');
			//echo $sql2 = 'SELECT * FROM usuarios_administradores WHERE usuario="'.$usuario.'" AND clave="'.$clave.'"';
			

			
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}

	public function Crear_archivo($nombre_archivo,$ruta_final_Archivo , $extencion_convertida , $peso_archivo){
		
		
		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO multimedia (nombre_archivo , tipo_archivo , peso_archivo , ruta_basica)
			VALUES ('".$nombre_archivo."' , '".$extencion_convertida."' , '".$peso_archivo."' , '".$ruta_final_Archivo."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;
		



		
	}

	public function crear_url($nombre_archivo , $archivo){
		echo "Modelo ".$nombre_archivo.$archivo;
		$extencion_convertida = "ie";
		$ruta_final_Archivo = $archivo;
		$peso_archivo = "Null";

		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO multimedia (nombre_archivo , tipo_archivo , peso_archivo , ruta_basica)
			VALUES ('".$nombre_archivo."' , '".$extencion_convertida."' , '".$peso_archivo."' , '".$ruta_final_Archivo."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;
		
	}

	/*Subir video por medio de una url*/

	public function crear_url_video($nombre_archivo , $archivo){
		
		$extencion_convertida = "ve";
		$ruta_final_Archivo = $archivo;
		$peso_archivo = "Null";

		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO multimedia (nombre_archivo , tipo_archivo , peso_archivo , ruta_basica)
			VALUES ('".$nombre_archivo."' , '".$extencion_convertida."' , '".$peso_archivo."' , '".$ruta_final_Archivo."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;
		
	}



	public function listar_archivos (){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from multimedia ORDER BY id_archivo DESC');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}

	}


	public function eliminar_archivo($archivo){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM multimedia WHERE id_archivo = '.$archivo.'  ');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	/*Crea un banner en la base de datos*/

	public function crear_banner($banner_nombre , $banner_imagen){

		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO banners (banner_nombre , banner_imagen)
			VALUES ('".$banner_nombre."' , '".$banner_imagen."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;

	}

	/*Consulta los banner almacenados en la base de datos*/

	public function listar_banners(){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from banners ORDER BY banner_id DESC');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function editar_banner($banner_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from banners WHERE banner_id ='.$banner_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}

	public function editar_banner_bd($banner_id ,$banner_nombre , $banner_imagen){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('UPDATE banners SET banner_nombre = "'.$banner_nombre.'" , banner_imagen = "'.$banner_imagen.'" WHERE banner_id = "'.$banner_id.'"');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}		
	}


	public function eliminar_banner($banner_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM banners WHERE banner_id = '.$banner_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}



	public function crear_programa($titulo_programa , $contenido_programa , $portada_programa){

		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO programas (titulo_programa , contenido_programa , portada_programa)
			VALUES ('".$titulo_programa."' , '".$contenido_programa."' , '".$portada_programa."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;




	}


	public function listar_programas(){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from programas');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function editar_programa_consulta($programa_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from programas WHERE programa_id ='.$programa_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function editar_programa($programa_id ,$titulo_programa , $contenido_programa , $portada_programa){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
			$stmt = $pdo->query('UPDATE programas SET titulo_programa = "'.$titulo_programa.'" , contenido_programa = "'.$contenido_programa.'" , portada_programa =        "'.$portada_programa.'"  WHERE programa_id = "'.$programa_id.'"');
			
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}

	public function eliminar_programa($programa_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM programas WHERE programa_id = '.$programa_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function crear_funcionario($personal_nombre , $personal_cargo , $personal_foto , $link_facebook , $link_instagram , $link_twitter){
		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO personal(personal_nombre , personal_cargo , personal_foto , link_facebook , link_instagram , link_twitter)
			VALUES ('".$personal_nombre."' , '".$personal_cargo."' , '".$personal_foto."' , '".$link_facebook."' , '".$link_instagram."' , '".$link_twitter."' )";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;
	}


	public function listar_funcionarios(){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from personal');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function editar_funcionario_consulta($personal_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from personal WHERE personal_id ='.$personal_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}

	}



	public function  editar_funcionario($personal_id , $personal_nombre , $personal_cargo , $personal_foto , $link_facebook , $link_instagram , $link_twitter){

		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
			$stmt = $pdo->query('UPDATE personal SET personal_nombre = "'.$personal_nombre.'" , personal_cargo = "'.$personal_cargo.'" , personal_foto =        "'.$personal_foto.'" , link_facebook = "'.$link_facebook.'" ,  link_instagram = "'.$link_instagram.'" ,  link_twitter = "'.$link_twitter.'"   WHERE personal_id = "'.$personal_id.'"');
			
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}

	}

	public function  eliminar_funcionario($personal_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM personal WHERE personal_id = '.$personal_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}


	public function crear_blog($titulo_pub , $contenido_pub , $portada_pub){
		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";
		$autor_pub = "Administrador";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO blog(titulo_pub , contenido_pub , autor_pub , fecha_pub , portada_pub)
			VALUES ('".$titulo_pub."' , '".$contenido_pub."' , '".$autor_pub."' , now() , '".$portada_pub."' )";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;	
	}


	public function listar_publicaciones(){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from blog');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}


	public function editar_blog_consulta($blog_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from blog WHERE blog_id ='.$blog_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}


	public function editar_blog($blog_id , $titulo_pub , $contenido_pub , $portada_pub){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
			$stmt = $pdo->query('UPDATE blog SET titulo_pub = "'.$titulo_pub.'" , contenido_pub = "'.$contenido_pub.'" , portada_pub = "'.$portada_pub.'" , fecha_pub = now()  WHERE blog_id = "'.$blog_id.'"');
			
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}

	}


	public function eliminar_blog($blog_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM blog WHERE blog_id = '.$blog_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}


	public function crear_producto_servicio($item_nombre , $item_desc , $item_foto){
		$servername = "192.168.1.3";
		$username = "coopnis";
		$password = "1061539548";
		$dbname = "coopnis";
		$autor_pub = "Administrador";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO productos_servicios(item_nombre , item_desc , item_foto)
			VALUES ('".$item_nombre."' , '".$item_desc."' , '".$item_foto."')";
  // use exec() because no results are returned
			$conn->exec($sql);


		} catch(PDOException $e) {
			echo $sql . "<br>" . $e->getMessage();
		}

		$conn = null;
	}


	public function listar_productos_servicios(){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from productos_servicios');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}


	public function editar_producto_servicio_consulta($item_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('SELECT * from productos_servicios WHERE item_id ='.$item_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}

	public function editar_producto_servicio($item_id ,$item_nombre , $item_desc , $item_foto){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {

			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
			$stmt = $pdo->query('UPDATE productos_servicios SET item_nombre = "'.$item_nombre.'" , item_desc = "'.$item_desc.'" , item_foto = "'.$item_foto.'"  WHERE item_id = "'.$item_id.'"');
			
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;

		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}
	}

	public function eliminar_producto_servicio($item_id){
		$host='192.168.1.3';
		$dbname='coopnis';
		$user='coopnis';
		$pass='1061539548';

		try {
			
			$pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);

			$stmt = $pdo->query('DELETE FROM productos_servicios WHERE item_id = '.$item_id.'');
			$stmt->setFetchMode(PDO::FETCH_ASSOC);

	# Leemos los datos del recordset con el método ->fetch() 
			return $stmt;

	# Para liberar los recursos utilizados en la consulta SELECT
			$stmt = null;
			
		}

		catch(PDOException $e) {
			echo $e->getMessage();
		}	
	}


	

	




	

	

	

} 
?>