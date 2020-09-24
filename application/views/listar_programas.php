           <?php
           include_once "application/controllers/admin/programas/listar_programas.php";


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
                    <th class="hidden-phone">Programa</th>
                    <th> Portada del programa</th>

                    <th></th>
                </tr>
            </thead>
            <tbody>


               <?php
               while ($row = $consultar_programas->fetch()) {
                echo '<tr>
                <td>
                <a href="basic_table.html#">'.$row['programa_id'].'</a>
                </td>
                <td class="hidden-phone">'.$row['titulo_programa'].'</td>
                <td><a href="'.$row['portada_programa'].'"><img class="img-responsive" src="'.$row['portada_programa'].'" style="width:200px; height:120px;"></a></td>

                <td>
                <button class="btn btn-success btn-xs btn-ver" id="'.$row['programa_id'].'" title="'.$row['contenido_programa'].'">Ver contenido</button>
                <button class="btn btn-primary btn-xs btn-editar" id="'.$row['programa_id'].'">Editar</button>
                <button class="btn btn-danger btn-xs btn-eliminar" id="'.$row['programa_id'].'">Eliminar</button>
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
           var programa = $(this).attr("id");
           window.location.href = "../controlador_programa/cargar_vista_editar_programa?programa_id="+programa+"";
       });

        $(".btn-eliminar").click(function(){
           var programa = $(this).attr("id");


           alertify.confirm("Deseas eliminar este archivo.",
            function(){
                window.location.href = "../controlador_programa/eliminar_programa?programa_id="+programa+"";

                /*Funcion ajax que eliminar el archivo conectandose a su respectivo controlador y modelo*/


                alertify.success('Archivo eliminado con exito');
            },
            function(){
             // alertify.error('Cancelado');
         });





       });

        $(".btn-ver").click(function(){
            var programa = $(this).attr("title");

            alertify.alert('Contenido del programa seleccionado', ''+programa+'');
           // alert(programa);
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