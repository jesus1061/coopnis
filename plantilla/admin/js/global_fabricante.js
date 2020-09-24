$(document).ready(function(){
	$(".numerar_campos").val("1");
	var valor = $(".numerar_campos").val();
	ajax(valor);

	function ajax (valor){
   $.ajax({
                data:  { numero_campos:valor}, //datos que se envian a traves de ajax
                url:   'campos', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $("#respuesta").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $("#respuesta").html(response);
                }
        });
	};


	$(".numerar_campos").keyup(function(){

		$("#continuar").show();

		$(".respuesta2").css("display","none");
		var valor2 = $(".numerar_campos").val();
$.ajax({
                data:  { numero_campos:valor2}, //datos que se envian a traves de ajax
                url:   'campos', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $("#respuesta").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $("#respuesta").html(response);
                }
        });
	});



		$("#continuar").click(function(){

			$(this).hide();

			$(".respuesta2").css("display","block");

			$(".input-productos-fabricante").attr("readonly","readonly");
			$(".input-productos-fabricante").addClass("oculto");

			var valor3 = $(".numerar_campos").val();
		
$.ajax({
                data:  { numero_campos_nuevo_formulario:valor3}, //datos que se envian a traves de ajax
                url:   'nuevo_formulario', //archivo que recibe la peticion
                type:  'post', //método de envio
                beforeSend: function () {
                      $(".respuesta2").html("Procesando, espere por favor...");
                },
                success:  function (response) { //una vez que el archivo recibe el request lo procesa y lo devuelve
                        $(".respuesta2").html(response);
                }
        });
	});
	
		
		   
	
});