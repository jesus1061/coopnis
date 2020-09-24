$(document).ready(function(){

	/*Corrector de visualización de imagen*/
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

			var video_externo_convertido = "<iframe src='"+url_nueva_externa_video+"' style='cursor:pointer' class='img-responsive' autoplay='false' control='false' frameborder='0' allow='accelerometer; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";

			$(this).replaceWith(video_externo_convertido);


       // $(this).attr("src",url_nueva_externa);
   }
});

	/*Abre los archivos para seleccionarlos*/
	$("#abrir_archivos").click(function(){
		$(".contenedor-imagenes-precargadas").css("display","block");
	});

	$(".selector").click(function(){

		var tipo_archivo = $(this).attr("title");
		if(tipo_archivo == "ve" || tipo_archivo == "ie" ){
			var selector = $(this).attr("id");
			var cadena3 = selector;
			var selector_corregido = cadena3.slice(27);
			/*Nueva ruta*/$("#abrir_archivos").val(selector_corregido);
		}else{
			selector = $(this).attr("id");
			/*Nueva ruta*/$("#abrir_archivos").val(selector);
		}
		
	});


	/*Corrector de ruta de enlace para seleccionar archivo*/

	
});