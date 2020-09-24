 <div class="row mt">
  <div class="col-lg-12 col-md-12 col-sm-12">

    <div id="message"></div>
    <form class="contact-form php-mail-form" role="form" action="controlador_archivo/crear_archivo" method="POST" enctype="multipart/form-data">

      <div class="form-group">
        <input type="name" name="nombre_archivo" class="form-control" id="nombre_archivo" placeholder="Nombre del archivo a subir al servidor" data-rule="minlen:4" data-msg="Please enter at least 4 chars" required >
        <div class="validate"></div>
      </div>
      <div class="form-group">
       <select class="form-control" id="tipo_archivo">
        <option value="0">Seleccione Tipo de archivo</option>
        <option value="1" >Imagen interna</option>
        <option value="2" selected >Imagen externa</option>
        <option value="3">Video externo</option>
        
      </select>
      <div class="validate"></div>
    </div>

    <div class="form-group">
      <input type="text" name="archivo" required class="form-control"  id="btn-abrir-archivos-a-cargar" value="Url de la imagen externa" data-rule="email" data-msg="Please enter a valid email">
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
<script>



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
   
   

  }

  /*Modo para cargar imagenes externas por medio de una url compatible*/
  if(valor == 2){
    
  }
});
  /*Abre los archivos a cargar activa el input tipy file*/
  $("#btn-abrir-archivos-a-cargar").click(function(){
    $("#btn-file").click();
  });

  function detectar_archivo(ruta){

    $("#btn-abrir-archivos-a-cargar").val(ruta);
  };

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
  

  </script>