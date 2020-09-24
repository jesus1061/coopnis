 <?php
 include_once "application/controllers/admin/banners/listar_banners.php";
 ?>
<?php
include_once "header.php";
?>

    <section id="main-content">
      <section class="wrapper">
        <div class="row mt" id="formulario1">
          <div class="col-lg-12 col-md-12 col-sm-12">

            <div id="message"></div>
            <form class="contact-form php-mail-form formulario_carga" role="form" action="../controlador_archivo/crear_archivo" method="POST" enctype="multipart/form-data" id="formulario_original">

              <div class="form-group" >

                <input type="name" name="nombre_archivo" class="form-control" id="nombre_archivo" placeholder="Nombre del archivo a subir al servidor" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
                <div class="validate"></div>
              </div>
              <div class="form-group">
               <select class="form-control" id="tipo_archivo">
                <option value="0">Seleccione Tipo de archivo</option>
                <option value="1" >Imagen interna</option>
                <option value="2">Imagen externa</option>
                <option value="3">Video externo</option>

              </select>
              <div class="validate"></div>
            </div>

            <div class="form-group">
              <input type="text" name="archivo" required class="form-control"  id="btn-abrir-archivos-a-cargar" value="Seleccione su archivo aqui" data-rule="email" data-msg="Please enter a valid email" readonly>
              <div class="validate"></div>
            </div>
            <div class="form-group" >
              <input type="file" name="fileToUpload" required class="form-control" id="btn-file"  onchange="var ruta_imagen= $(this).val(); detectar_archivo(ruta_imagen);" style="display:none">
              <div class="validate"></div>
            </div>













            <div class="loading"></div>
            <div class="error-message"></div>
            <div class="sent-message">Has Subido un archivo con exito!</div>

            <div class="form-send">
              <button type="button"  id="btn_subir_archivo" class="btn btn-large btn-primary">Subir archivo</button>
            </div>

          </form>
        </div>


      </div>





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


<script>


  $(document).ready(function(){

   


    var estado_tipo_de_archivo;
    $("#btn-abrir-archivos-a-cargar , #btn_subir_archivo").hide();
    $("#tipo_archivo").change(function(){
      var valor=  $(this).val();
      if(valor == 0){
       $("#btn-abrir-archivos-a-cargar , #btn_subir_archivo").hide();
       estado_tipo_de_archivo = 0;

     }
     if(valor == 1){


       $("#btn-abrir-archivos-a-cargar , #btn_subir_archivo").show();
       $("#btn-abrir-archivos-a-cargar").attr("type","text");
       $("#btn-abrir-archivos-a-cargar").val("Seleccione su archivo aqui");
       $("#btn-abrir-archivos-a-cargar").attr("placeholder","");
       $("#btn-abrir-archivos-a-cargar").attr("readonly","true");

       estado_tipo_de_archivo = 1;

     }

     if(valor == 2){

      var formulario_nuevo = '<form class="contact-form php-mail-form formulario_carga" role="form" action="../controlador_archivo/crear_url" method="post">  <div class="form-group" > <input type="name" name="nombre_archivo" class="form-control" id="nombre_archivo" placeholder="Nombre del archivo a subir al servidor" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required > <div> <br> <div class="form-group" > <input type="name" name="archivo" class="form-control" id="nombre_archivo" placeholder="Diligencie aqui la url del archivo" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required > <div>                     <div class="form-send"> <br> <button type="submit"  class="btn btn-large btn-primary">Subir Url</button> <button type="button" id="volver"  class="btn btn-large btn-danger" style="background-color:red"><a href="crear_vista_crear_archivo" style="color:white">Cancelar</a></button> </div>                    </form>';

      $("#formulario_original").replaceWith(formulario_nuevo);


      $("#btn-abrir-archivos-a-cargar , #btn_subir_archivo").show();
      $("#btn-abrir-archivos-a-cargar").attr("type","text");
      $("#btn-abrir-archivos-a-cargar").val("Ponga su Url aqui");
      $("#btn-abrir-archivos-a-cargar").attr("placeholder","Ponga su Url aqui");
      $("#btn-abrir-archivos-a-cargar").removeAttr("readonly");

      estado_tipo_de_archivo = 2;
    }

    if(valor == 3){

      var formulario_nuevo = '<form class="contact-form php-mail-form formulario_carga" role="form" action="../controlador_archivo/crear_url_video" method="post">  <div class="form-group" > <input type="name" name="nombre_archivo" class="form-control" id="nombre_archivo" placeholder="Nombre del archivo a subir al servidor" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required > <div> <br> <div class="form-group" > <input type="name" name="archivo" class="form-control" id="nombre_archivo" placeholder="Diligencie aqui la url del video" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required > <div>                     <div class="form-send"> <br> <button type="submit"  class="btn btn-large btn-primary">Subir Url de video</button> <button type="button" id="volver"  class="btn btn-large btn-danger" style="background-color:red"><a href="panel" style="color:white">Cancelar</a></button> </div>                    </form>';

      $("#formulario_original").replaceWith(formulario_nuevo);


      $("#btn-abrir-archivos-a-cargar , #btn_subir_archivo").show();
      $("#btn-abrir-archivos-a-cargar").attr("type","text");
      $("#btn-abrir-archivos-a-cargar").val("Ponga su Url aqui");
      $("#btn-abrir-archivos-a-cargar").attr("placeholder","Ponga su Url aqui");
      $("#btn-abrir-archivos-a-cargar").removeAttr("readonly");

      estado_tipo_de_archivo = 2;
    }

    /*Modo para cargar imagenes externas por medio de una url compatible*/

  });
    /*Abre los archivos a cargar activa el input tipy file*/
    $("#btn-abrir-archivos-a-cargar").click(function(){
      if(  estado_tipo_de_archivo == 1){
       $("#btn-file").click();
     }

   });


    /*Detectar archivo a subir*/

    $('input[type="file"]').change(function(){
      var ruta = $(this).val();
     $("#btn-abrir-archivos-a-cargar").val(ruta);
    });

    /*Detecta si un archivo se subio y obtiene la ruta de la imagen o video*/

    /*Valida que el campo imagen este lleno y activa el formulario*/

    $("#btn_subir_archivo").click(function(){
      if($("#nombre_archivo").val().length > 0){

        if( estado_tipo_de_archivo == 1 || estado_tipo_de_archivo == 2  ){

          var archivo = $("#btn-abrir-archivos-a-cargar").val();
          if(archivo == "Seleccione su archivo aqui"  || archivo == "Ponga su Url aqui" || archivo == "" ){
            alertify.minimalDialog || alertify.dialog('minimalDialog',function(){
              return {
                main:function(content){
                  this.setContent(content); 
                }
              };
            });
            alertify.minimalDialog("Diligencie los datos");
          } else{
            alertify.minimalDialog || alertify.dialog('minimalDialog',function(){
              return {
                main:function(content){
                  this.setContent(content); 
                }
              };
            });
            alertify.minimalDialog("Archivo subido con exito");
            $("#btn_subir_archivo").attr("type","submit");

          }


        } else{
          alertify.minimalDialog || alertify.dialog('minimalDialog',function(){
            return {
              main:function(content){
                this.setContent(content); 
              }
            };
          });
          alertify.minimalDialog("Diligencie el tipo de archivo");
        }

      } else{
        alertify.minimalDialog || alertify.dialog('minimalDialog',function(){
          return {
            main:function(content){
              this.setContent(content); 
            }
          };
        });
        alertify.minimalDialog("Por favor diligenciar los datos");    }
      });
  });





</script>



</body>

</html>