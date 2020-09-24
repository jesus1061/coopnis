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

   $("#crear_funcionario").click(function(){
     window.location.href = '../controlador_funcionario/crear_vista_crear_funcionario';
   });

   $("#crear_programa").click(function(){
    window.location.href = '../controlador_programa/crear_vista_crear_programa';
  });
   $("#ver_programas").click(function(){
    window.location.href = '../controlador_programa/crear_vista_listar_programas';
  });

   $("#crear_funcionario").click(function(){
    window.location.href = '../controlador_funcionario/crear_vista_crear_funcionario';
  });

   $("#ver_funcionarios").click(function(){
    window.location.href = '../controlador_funcionario/vista_listar_funcionarios';
  });

   $("#crear_blog").click(function(){
    window.location.href = '../controlador_blog/cargar_vista_crear_blog';
  });

   $("#ver_blogs").click(function(){
    window.location.href = '../controlador_blog/vista_listar_blog';
  });

   $("#crear_producto_servicio").click(function(){
     window.location.href = '../controlador_comercial/crear_vista_crear_producto_servicio';
   });

   $("#ver_productos-servicios").click(function(){
     window.location.href = '../controlador_comercial/cargar_vista_productos_servicios';
   });

     $("#ver_contactos").click(function(){
     window.location.href = '../controlador_contacto/cargar_vista_productos_servicios';
   });
 });