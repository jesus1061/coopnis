$(document).ready(function(){
	$(".fa-list").click(function(){
		var id = $(this).attr("id");

		      $.ajax({
                data:  { codigo:id}, //datos que se envian a traves de ajax
                url:   'consultar_detalles_producto_modal', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $(".datos-dinamicos").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $(".datos-dinamicos").html(response);
                }
        });



		$(".modal-tabla-productos").css("display","table");
	});
	$(".cerrar-modal").click(function(){
		$(".modal-tabla-productos").css("display","none");
	});

});