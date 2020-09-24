           <?php
           include_once "application/controllers/admin/blogs/listar_publicaciones.php";


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
                    <th class="hidden-phone">Titulo publicación</th>
                    <th> Portada de la publicación</th>

                    <th></th>
                </tr>
            </thead>
            <tbody>


               <?php
               while ($row = $consultar_publicaciones->fetch()) {
                echo '<tr>
                <td>
                <a href="basic_table.html#">'.$row['blog_id'].'</a>
                </td>
                <td class="hidden-phone">'.$row['titulo_pub'].'</td>
                <td><a href="'.$row['portada_pub'].'"><img class="img-responsive" src="'.$row['portada_pub'].'" style="width:200px; height:120px;"></a></td>

                <td>
                <button class="btn btn-success btn-xs btn-ver" id="'.$row['blog_id'].'" title="'.$row['contenido_pub'].'">Ver contenido</button>
                <button class="btn btn-primary btn-xs btn-editar" id="'.$row['blog_id'].'">Editar</button>
                <button class="btn btn-danger btn-xs btn-eliminar" id="'.$row['blog_id'].'">Eliminar</button>
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
           var publicacion = $(this).attr("id");
           window.location.href = "../controlador_blog/cargar_vista_editar_blog?blog_id="+publicacion+"";
       });

        $(".btn-eliminar").click(function(){
           var blog = $(this).attr("id");


           alertify.confirm("Deseas eliminar esta publicación.",
            function(){
                window.location.href = "../controlador_blog/eliminar_blog?blog_id="+blog+"";

                /*Funcion ajax que eliminar el archivo conectandose a su respectivo controlador y modelo*/


                alertify.success('Archivo eliminado con exito');
            },
            function(){
             // alertify.error('Cancelado');
         });





       });

        $(".btn-ver").click(function(){
            var publicacion = $(this).attr("title");

            alertify.alert('Contenido de la publicación  seleccionada', ''+publicacion+'');
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