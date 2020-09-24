           <?php
           include_once "application/controllers/admin/funcionarios/listar_funcionarios.php";


           ?>
           <?php
           include_once "header.php";
           ?>

           <section id="main-content">
             <section class="wrapper">
              <div class="row mt">
               <div class="col-md-12">
                <div class="content-panel">
                 <table class="table table-striped table-advance table-hover">

                  <hr>
                  <thead>
                   <tr>
                    <th> Codigo</th>
                    <th class="hidden-phone">Funcionario</th>
                    <th> Foto perfil</th>
                    
                    <th>Cargo</th>
                  </tr>
                </thead>
                <tbody>


                 <?php
                 while ($row = $consultar_funcionarios->fetch()) {
                  echo '<tr>
                  <td>
                  <a href="basic_table.html#">'.$row['personal_id'].'</a>
                  </td>
                  <td class="hidden-phone">'.$row['personal_nombre'].'</td>
                  <td><img class="img-responsive" src="'.$row['personal_foto'].'" style="width:200px;"></td>
                  <td class="hidden-phone">'.$row['personal_cargo'].'</td>
                  <td>
                  <button class="btn btn-primary btn-xs btn-facebook"  title="'.$row['link_facebook'].'">F</button>
                  <button class="btn btn-primary btn-xs btn-instagram"  title="'.$row['link_instagram'].'">I</button>
                  <button class="btn btn-primary btn-xs btn-twitter"  title="'.$row['link_twitter'].'">T</button>
                  <button class="btn btn-primary btn-xs btn-editar" id="'.$row['personal_id'].'">Editar</button>
                  <button class="btn btn-danger btn-xs btn-eliminar" id="'.$row['personal_id'].'">Eliminar</button>
                  </td>
                  </tr>';	
                }
                ?>


              </tbody>
            </table>
          </div>
          <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
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

    $(".btn-editar").click(function(){
     var funcionario = $(this).attr("id");
     window.location.href = "../controlador_funcionario/cargar_vista_editar_funcionario?personal_id="+funcionario+"";
   });

    $(".btn-eliminar").click(function(){
     var funcionario = $(this).attr("id");

     alertify.confirm("Deseas eliminar este Funcionario.",
      function(){
       window.location.href = "../controlador_funcionario/eliminar_funcionario?personal_id="+funcionario+"";

       /*Funcion ajax que eliminar el archivo conectandose a su respectivo controlador y modelo*/


       alertify.success('funcionario eliminado con exito');
     },
     function(){
             // alertify.error('Cancelado');
           });




     
   });

    $(".btn-facebook").click(function(){
      var facebook = $(this).attr("title");
      alertify.alert('Enlace de Facebook', ''+facebook+'');
    });

    $(".btn-instagram").click(function(){
      var instagram = $(this).attr("title");
      alertify.alert('Enlace de instagram', ''+instagram+'');
    });

     $(".btn-twitter").click(function(){
      var twitter = $(this).attr("title");
      alertify.alert('Enlace de Twitter', ''+twitter+'');
    });

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

    $(".img-responsive").each(function(){
      var ruta = $(this).attr("src");
      if(ruta.includes('coopnis')){


      }else{


       $(this).replaceWith('<iframe class="img-responsive" src="'+ruta+'"><iframe>');

     }
   });

  });
</script>


</body>

</html>