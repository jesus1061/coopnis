  <?php
  include_once "application/controllers/admin/archivos/listar_archivos.php";

  ?>
  
<?php
include_once "header.php";
?>
        <section id="main-content">
          <section class="wrapper">
            <div class="row mt">
              <div class="col-lg-12 col-md-12 col-sm-12">

                <div id="message"></div>
                <form class="contact-form php-mail-form" role="form" action="../controlador_programa/crear_programa" method="POST">

                  <div class="form-group">
                    <input type="name" name="titulo_programa" class="form-control" id="contact-name" placeholder="Nombre Del programa" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                  </div>
                  <div class="form-group">
                    <input type="name" name="contenido_programa" style="height: 100px;" class="form-control" id="contact-name" placeholder="Contenido  Del programa" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                    <div class="validate"></div>
                  </div>

                  <div class="form-group">
                    <input type="text" name="portada_programa" class="form-control" id="abrir_archivos" placeholder="Escoga aqui la portada para el programa" readonly style="cursor: pointer" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" required>
                    <div class="validate"></div>
                  </div>



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
                  <button type="submit" class="btn btn-large btn-primary">Crear Programa</button>
                </div>

              </form>
            </div>


          </div>
        </section>
        <!--main content end-->
        <!--footer start-->

        <!--footer end-->
      </section>

     

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
        <script src="<?php echo base_url();?>plantilla/front_page/js/panel/enrutador.js"></script>
     



    </body>

    </html>
