  <?php
  $personal_id = $_SESSION['funcionario_editar'];
  include_once "application/controllers/admin/archivos/listar_archivos.php";
  include_once "application/controllers/admin/funcionarios/editar_funcionario.php";



  ?>
  <!DOCTYPE html>
  <html lang="es">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Editar Programa</title>

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url();?>plantilla/front_page/css/panel/personalizado.css" rel="stylesheet">
    <link href="<?php echo base_url();?>plantilla/front_page/css/panel/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="<?php echo base_url();?>plantilla/front_page/css/panel/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>plantilla/front_page/css/panel/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>plantilla/front_page/css/panel/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="<?php echo base_url();?>plantilla/front_page/css/panel/style.css" rel="stylesheet">
    <link href="<?php echo base_url();?>plantilla/front_page/css/panel/style-responsive.css" rel="stylesheet">
    <script src="<?php echo base_url();?>plantilla/front_page/css/panel/chart-master/Chart.js"></script>

    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
    <style>
      .img-responsive{height: 200px; width: 100%;}
      .project{margin-top: 5px; margin-bottom: 5px; text-align: center; color: black; font-weight: 900;}
      .title-seccion{width: 100%; text-align: center; padding-top: 5px; padding-bottom: 5px; color: white; background-color: #5c9347;}
      .contenedor-imagenes-precargadas{width: 100%; display: none;}
    </style>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
    ======================================================= -->
  </head>

  <body>
    <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
        <!--header start-->
        <header class="header black-bg">
          <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
          </div>
          <!--logo start-->
          <a href="index.html" class="logo"><b>COOPADMIN<span></span></b></a>
          <!--logo end-->
          <div class="nav notify-row" id="top_menu">
            <!--  notification start -->
            <ul class="nav top-menu">
              <!-- settings start -->
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                  <i class="fa fa-tasks"></i>
                  <span class="badge bg-theme">4</span>
                </a>
                <ul class="dropdown-menu extended tasks-bar">
                  <div class="notify-arrow notify-arrow-green"></div>
                  <li>
                    <p class="green">You have 4 pending tasks</p>
                  </li>
                  <li>
                    <a href="index.html#">
                      <div class="task-info">
                        <div class="desc">Dashio Admin Panel</div>
                        <div class="percent">40%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                          <span class="sr-only">40% Complete (success)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <div class="task-info">
                        <div class="desc">Database Update</div>
                        <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                          <span class="sr-only">60% Complete (warning)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <div class="task-info">
                        <div class="desc">Product Development</div>
                        <div class="percent">80%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <div class="task-info">
                        <div class="desc">Payments Sent</div>
                        <div class="percent">70%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                          <span class="sr-only">70% Complete (Important)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="external">
                    <a href="#">See All Tasks</a>
                  </li>
                </ul>
              </li>
              <!-- settings end -->
              <!-- inbox dropdown start-->
              <li id="header_inbox_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                  <i class="fa fa-envelope-o"></i>
                  <span class="badge bg-theme">5</span>
                </a>
                <ul class="dropdown-menu extended inbox">
                  <div class="notify-arrow notify-arrow-green"></div>
                  <li>
                    <p class="green">You have 5 new messages</p>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="photo"><img alt="avatar" src="img/ui-zac.jpg"></span>
                      <span class="subject">
                        <span class="from">Zac Snider</span>
                        <span class="time">Just now</span>
                      </span>
                      <span class="message">
                        Hi mate, how is everything?
                      </span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="photo"><img alt="avatar" src="img/ui-divya.jpg"></span>
                      <span class="subject">
                        <span class="from">Divya Manian</span>
                        <span class="time">40 mins.</span>
                      </span>
                      <span class="message">
                        Hi, I need your help with this.
                      </span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="photo"><img alt="avatar" src="img/ui-danro.jpg"></span>
                      <span class="subject">
                        <span class="from">Dan Rogers</span>
                        <span class="time">2 hrs.</span>
                      </span>
                      <span class="message">
                        Love your new Dashboard.
                      </span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="photo"><img alt="avatar" src="img/ui-sherman.jpg"></span>
                      <span class="subject">
                        <span class="from">Dj Sherman</span>
                        <span class="time">4 hrs.</span>
                      </span>
                      <span class="message">
                        Please, answer asap.
                      </span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">See all messages</a>
                  </li>
                </ul>
              </li>
              <!-- inbox dropdown end -->
              <!-- notification dropdown start-->
              <li id="header_notification_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                  <i class="fa fa-bell-o"></i>
                  <span class="badge bg-warning">7</span>
                </a>
                <ul class="dropdown-menu extended notification">
                  <div class="notify-arrow notify-arrow-yellow"></div>
                  <li>
                    <p class="yellow">You have 7 new notifications</p>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                      Server Overloaded.
                      <span class="small italic">4 mins.</span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="label label-warning"><i class="fa fa-bell"></i></span>
                      Memory #2 Not Responding.
                      <span class="small italic">30 mins.</span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                      Disk Space Reached 85%.
                      <span class="small italic">2 hrs.</span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">
                      <span class="label label-success"><i class="fa fa-plus"></i></span>
                      New User Registered.
                      <span class="small italic">3 hrs.</span>
                    </a>
                  </li>
                  <li>
                    <a href="index.html#">See all notifications</a>
                  </li>
                </ul>
              </li>
              <!-- notification dropdown end -->
            </ul>
            <!--  notification end -->
          </div>
          <div class="top-menu">
            <ul class="nav pull-right top-menu">
              <li><a class="logout" href="login.html">Logout</a></li>
            </ul>
          </div>
        </header>
        <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
        <!--sidebar start-->
        <aside>
          <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">

              <li class="mt">
                <a class="active" href="index.html">
                 <!--  <i class="fa fa-tasks"></i>-->
                 <span>Dashboard</span>
               </a>
             </li>


             <li class="sub-menu">
              <a href="javascript:;">
               <!--  <i class="fa fa-tasks"></i>-->
               <span>Modulo Multimedia</span>
             </a>
             <ul class="sub">
              <li id="ver_archivos"><a href="#">Ver elementos</a></li>
              <li id="crear_archivos"><a href="#">Subir elementos</a></li>

            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
             <!--  <i class="fa fa-tasks"></i>-->
             <span>Modulo Slider</span>
           </a>
           <ul class="sub">
            <li><a href="form_component.html">Ver banners</a></li>
            <li><a href="advanced_form_components.html">Crear banner</a></li>

          </ul>
        </li>

        <li class="sub-menu">
          <a href="javascript:;">
           <!--  <i class="fa fa-tasks"></i>-->
           <span>Modulo funcionarios</span>
         </a>
         <ul class="sub">
          <li><a href="form_component.html">Ver funcionarios</a></li>
          <li id="crear_funcionario"><a href="#">Crear funcionario</a></li>

        </ul>
      </li>

      <li class="sub-menu">
        <a href="javascript:;">
         <!--  <i class="fa fa-tasks"></i>-->
         <span>Modulo Programas</span>
       </a>
       <ul class="sub">
        <li><a href="form_component.html">Ver programas</a></li>
        <li><a href="advanced_form_components.html">Crear programa</a></li>

      </ul>
    </li>

    <li class="sub-menu">
      <a href="javascript:;">
       <!--  <i class="fa fa-tasks"></i>-->
       <span>Modulo blog</span>
     </a>
     <ul class="sub">
      <li><a href="form_component.html">Ver publicaciones</a></li>
      <li><a href="advanced_form_components.html">Crear publicación</a></li>

    </ul>
  </li>

  <li class="sub-menu">
    <a href="javascript:;">
     <!--  <i class="fa fa-tasks"></i>-->
     <span>Modulo contactos</span>
   </a>
   <ul class="sub">
    <li><a href="form_component.html">Ver contactos</a></li>


  </ul>
</li>





</ul>
<!-- sidebar menu end-->
</div>
</aside>
<!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
        <!--main content start-->
        <section id="main-content">
          <section class="wrapper">
            <div class="row mt">
              <div class="col-lg-12 col-md-12 col-sm-12">

                <div id="message"></div>
                <form class="contact-form php-mail-form" role="form" action="../controlador_funcionario/editar_funcionario" method="POST">
                  <?php
                  while ($row = $consultar_funcionario->fetch()) {
                    echo '
                    <div class="form-group" style="display:none">
                    <input type="name" name="personal_id" class="form-control" value="'.$row['personal_id'].'"  placeholder="id Del programa" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required readonly >
                    <div class="validate"></div>
                    </div>
                    <div class="form-group">
                    <input type="name" name="personal_nombre" class="form-control" value="'.$row['personal_nombre'].'"  placeholder="Nombre funcionario" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                    </div>
                    <div class="form-group">
                    <input type="name" name="personal_cargo" class="form-control" value="'.$row['personal_cargo'].'"  placeholder="Cargo" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                    </div>
                    <div class="form-group">
                    <input type="name" name="link_facebook" class="form-control" value="'.$row['link_facebook'].'"  placeholder="Link facebook" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                    </div>
                    <div class="form-group">
                    <input type="name" name="link_instagram" class="form-control" value="'.$row['link_instagram'].'"  placeholder="Link instagram" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                    </div>
                    <div class="form-group">
                    <input type="name" name="link_twitter" class="form-control" value="'.$row['link_twitter'].'"  placeholder="Link twitter" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                    </div>

                    <div class="form-group">
                    <input type="text" name="personal_foto" class="form-control" value="'.$row['personal_foto'].'" id="abrir_archivos" placeholder="Escoga aqui el banner" readonly style="cursor: pointer" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" required>
                    <div class="validate"></div>
                    </div>
                    ';
                  }
                  ?>



                  



                  <div class="contenedor-imagenes-precargadas">
                    <section class="wrapper site-min-height">
                      <div class="title-seccion">
                       <h4>  ARCHIVOS CARGADOS AL SERVIDOR</h4>
                     </div>



                     <div class="row mt">
                      <?php
                      while ($row = $consultar_archivos->fetch()) {
                        echo '<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                        <div class="project-wrapper">
                        <div class="project">
                        <div class="photo-wrapper">
                        <div class="photo">
                        <img class="img-responsive" src="'.base_url().''.$row['ruta_basica'].'" alt="" title="'.$row['tipo_archivo'].'">
                        <label class="selector" id="'.base_url().''.$row['ruta_basica'].'" title="'.$row['tipo_archivo'].'" style="color:black; font-size:20px; cursor:pointer">'.$row['nombre_archivo'].'</label>
                        <br>

                        </div>
                        <div class="overlay"></div>
                        </div>
                        </div>
                        </div>
                        </div>';

                      }
                      ?>








                    </div>


                    <!-- /row -->

                    <!-- /row -->

                    <!-- /row -->
                  </section>
                </div>




                <div class="loading"></div>
                <div class="error-message"></div>
                <div class="sent-message">Has creado un funcionario con exito!</div>

                <div class="form-send">
                  <button type="submit" class="btn btn-large btn-primary">Editar Programa</button>
                </div>

              </form>
            </div>


          </div>
        </section>
        <!--main content end-->
        <!--footer start-->

        <!--footer end-->
      </section>

      <script>



      </script>

      <!-- js placed at the end of the document so the pages load faster -->
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/jquery/jquery.min.js"></script>

      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/bootstrap/js/bootstrap.min.js"></script>
      <script class="include" type="text/javascript" src="<?php echo base_url();?>plantilla/front_page/js/panel/jquery.dcjqaccordion.2.7.js"></script>
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/jquery.scrollTo.min.js"></script>
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/query.nicescroll.js" type="text/javascript"></script>
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/jquery.sparkline.js"></script>
      <!--common script for all pages-->
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/common-scripts.js"></script>
      <script type="text/javascript" src="<?php echo base_url();?>plantilla/front_page/js/panel/gritter/js/jquery.gritter.js"></script>
      <script type="text/javascript" src="<?php echo base_url();?>plantilla/front_page/js/panel/gritter-conf.js"></script>
      <!--script for this page-->
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/sparkline-chart.js"></script>
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/zabuto_calendar.js"></script>
      <script src="<?php echo base_url();?>plantilla/front_page/js/panel/conversor_imagenes.js"></script>
      <script>
        $(document).ready(function(){


         /*Navegacón */

         $("#crear_archivos").click(function(){
           window.location.href = '../controlador_archivo/crear_vista_crear_archivo';
         });

         $("#ver_archivos").click(function(){
          window.location.href = '../controlador_archivo/cargar_vista_archivos';
        });



         $("#ver_banners").click(function(){
          window.location.href = '../controlador_banner/vista_listar_banner';
        });

         $("#crear_banner").click(function(){
          window.location.href = '../controlador_banner/cargar_vista_crear_banner';
        });
         $("#abrir_archivos").click(function(){
           $(".contenedor-imagenes-precargadas").css("display","block");
         });
       });
     </script>



   </body>

   </html>
