      <?php
      include_once "application/controllers/admin/archivos/listar_archivos.php";

      ?>
      <?php
      include_once "header.php";
      ?>
      <section id="main-content">
        <section class="wrapper">
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
            <a class="fancybox" href=""><img class="img-responsive" src="'.base_url().''.$row['ruta_basica'].'" alt="" title="'.$row['tipo_archivo'].'"></a>
            <label>'.$row['nombre_archivo'].'</label>
            <br>
            <span style="cursor:pointer" class="btn_eliminar" id="'.$row['id_archivo'].'">Eliminar</span> 
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
    </section>
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
 <script src="<?php echo base_url();?>plantilla/front_page/js/panel/enrutador.js"></script>
<script type="text/javascript">
  $(document).ready(function() {



 

   $(".img-responsive").each(function(){
    var tipo_archivo = $(this).attr("title");
    if(tipo_archivo == "ie"){
      var url= $(this).attr("src");
      var cadena1 = url;
      var url_nueva_externa = cadena1.slice(27);
      $(this).attr("src",url_nueva_externa);
    }

    if(tipo_archivo == "ve"){
      var url= $(this).attr("src");
      var cadena2 = url;
      var url_nueva_externa_video = cadena2.slice(27);

      var video_externo_convertido = "<iframe src='"+url_nueva_externa_video+"' class='img-responsive' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";

      $(this).replaceWith(video_externo_convertido);

       // $(this).attr("src",url_nueva_externa);
     }
   });
   /*Funcion eliminar archivo*/
   $(".btn_eliminar").click(function(){
    var id_archivo = $(this).attr("id");


    alertify.confirm("Deseas eliminar este archivo.",
      function(){
       $.ajax({
                data:  { archivo:id_archivo}, //datos que se envian a traves de ajax
                url:   '../index.php/controlador_archivo/eliminar_archivos', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                  $(".wrapper").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                  $(".wrapper").html(response);

                }
              });

       /*Funcion ajax que eliminar el archivo conectandose a su respectivo controlador y modelo*/


       alertify.success('Archivo eliminado con exito');
     },
     function(){
             // alertify.error('Cancelado');
           });

  });

   


   var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: 'img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

   return false;
 });
</script>
<script type="application/javascript">
  $(document).ready(function() {
    $("#date-popover").popover({
      html: true,
      trigger: "manual"
    });
    $("#date-popover").hide();
    $("#date-popover").click(function(e) {
      $(this).hide();
    });

    $("#my-calendar").zabuto_calendar({
      action: function() {
        return myDateFunction(this.id, false);
      },
      action_nav: function() {
        return myNavFunction(this.id);
      },
      ajax: {
        url: "show_data.php?action=1",
        modal: true
      },
      legend: [{
        type: "text",
        label: "Special event",
        badge: "00"
      },
      {
        type: "block",
        label: "Regular event",
      }
      ]
    });
  });

  function myNavFunction(id) {
    $("#date-popover").hide();
    var nav = $("#" + id).data("navigation");
    var to = $("#" + id).data("to");
    console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
  }
</script>
</body>

</html>
