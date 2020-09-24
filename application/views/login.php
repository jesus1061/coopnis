<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Login</title>

  <!-- Favicons -->


  <!-- Bootstrap core CSS -->
  <link href="<?php echo base_url();?>plantilla/front_page/css/panel/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<?php echo base_url();?>plantilla/front_page/css/panel/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="<?php echo base_url();?>plantilla/front_page/css/panel/style.css" rel="stylesheet">
  <link href="<?php echo base_url();?>plantilla/front_page/css/panel/style-responsive.css" rel="stylesheet">
  
  
</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <div id="login-page">
        <div class="container">
          <img src="<?php echo base_url();?>plantilla/front_page/img/bienvenida.png" alt="" class="fondo_login" style="display: none">
          <form class="form-login" action="controlador_login/validar_login" method="post">
            <h2 class="form-login-heading">Inicio de sesión</h2>
            <div class="login-wrap">
              <input type="text" class="form-control" name="usuario" placeholder="USUARIO" autofocus required  autocomplete="off">
              <br>
              <input type="password" class="form-control" name="clave" placeholder="CLAVE" required  autocomplete="off">
              <br>

              <button class="btn btn-theme btn-block"  type="submit" style="background-color: green;">LOGIN</button>
              <hr>
              <div class="login-social-link centered">
                <p>Recuperar cuenta</p>

              </div>

            </div>
            <!-- Modal -->
            
            <!-- modal -->
          </form>
        </div>
      </div>
      <!-- js placed at the end of the document so the pages load faster -->
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/jquery/jquery.min.js"></script>
      <script>
       $(document).ready(function(){
        var fondo =  $(".fondo_login").attr("src");
        $("body").css("background-image","url('"+fondo+"')");
        $("body").css("background-size","50%");
      });
    </script>
  </body>

  </html>
