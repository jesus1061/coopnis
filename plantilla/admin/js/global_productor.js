$(document).ready(function(){
	$(".numerar_productos").val("1");


	var count_producto = $(".numerar_productos").val();
    ajax(count_producto);

    function ajax(count_producto){
              $.ajax({
                data:  { num_productos:count_producto}, //datos que se envian a traves de ajax
                url:   'crear_productos_nuevos', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $("").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $("#respuesta").html(response);
                }
        });
    };

    $(".numerar_productos").keyup(function(){
        var count_producto2 = $(".numerar_productos").val();

          $.ajax({
                data:  { num_productos:count_producto2}, //datos que se envian a traves de ajax
                url:   'crear_productos_nuevos', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $("").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $("#respuesta").html(response);
                }
        });

    });


		
	
		
		   
	
});