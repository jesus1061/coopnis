<?php
include_once "application/controllers/admin/banners/listar_banners.php";
include_once "application/controllers/admin/programas/listar_programas.php";
include_once "application/controllers/admin/funcionarios/listar_funcionarios.php";
include_once "application/controllers/admin/blogs/listar_publicaciones.php";
include_once "application/controllers/admin/comercial/listar_productos_servicios.php";
?>
<!doctype html>
<html lang="es">
<head>
  <title>Bienvenidos a coopnis</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,700|Oswald:400,700" rel="stylesheet">

  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/fuente/style.css">

  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/flaticon.css">
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/aos.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <!-- MAIN CSS -->
  <link rel="stylesheet" href="<?php echo base_url();?>plantilla/front_page/css/estilo/style.css">
  <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

  <!-- CSS -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
  <!-- Default theme -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
  <!-- Semantic UI theme -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
  <!-- Bootstrap theme -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
  <style>
    .container{width: 100%; }
    .resumen-programa{width: 80%;text-align: center; margin: auto;}
    .resumen-programa img{width: 70%; height: 500px;}
    .alertify.ajs-maximized .ajs-header, .alertify.ajs-resizable .ajs-header{text-align: center; background-color: green; color:white;}
    .img-blog{width: 100%; height: 400px;}


    .footer-column{width: 50%; float: left;}
    .bloque-completo-footer{width: 100%; float: left; background-color: red;  }
    .block-footer{width: 50%; float: left; text-align: left;}


  </style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">




  <div class="site-wrap"  id="home-section">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>




    <header class="site-navbar js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center position-relative">


          <div class="site-logo">
            <a href="index.html" class="text-black"><img src="<?php echo base_url();?>plantilla/front_page/img/logo.png" alt="" width="100px;">
            </div>
            
            <div class="col-12">
              <nav class="site-navigation text-right ml-auto " role="navigation">

                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">


                 <li class="has-children">
                  <a href="#about-section" class="nav-link">Nosotros</a>
                  
                </li>
                <li><a href="#services-section" class="nav-link">Programas</a></li>




                <li class="has-children">
                  <a href="#about-section" class="nav-link">Servicios</a>
                  
                </li>

                <li><a href="#testimonials-section" class="nav-link">Afiliate</a></li>
                <li><a href="#blog-section" class="nav-link">Noticias</a></li>
                <li><a href="#contact-section" class="nav-link">Contactanos</a></li>
                <li><a href="#home-section" class="nav-link">Donaciones</a></li>
              </ul>
            </nav>

          </div>

          <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>

    </header>
    <img src="<?php echo base_url();?>plantilla/front_page/img/bienvenida.png" alt="" style="display:none" class="img-inicial" >

    <div class="owl-carousel slide-one-item">

      <?php
      while ($row = $consultar_banners->fetch()) {
        echo '<div class="site-section-cover overlay img-bg-section"  >

        <img src="'.$row['banner_imagen'].'" alt="" style="width: 100%; height: 100%;">
        </div>';
      }
      ?>








    </div>



    <div class="site-section seccion2">
      <div class="container">
        <div class="row" id="cajon">


         <?php
         while ($row = $consultar_programas->fetch()) {
          echo '<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="200">
          <div class="block__35630">
          <div class="icon mb-3 ico-programa">
          <img src="'.$row['portada_programa'].'" alt="" class="img-programa" style="width: 100%; height: 200px;">
          </div>
          <center><h6 class="mb-3 ver-mas-programa" rel="'.$row['contenido_programa'].'"  title="'.$row['portada_programa'].'" style="cursor:pointer">'.$row['titulo_programa'].'</h6></center>

          </div>
          </div>';

        }
        ?>    





      </div>
    </div>
  </div>




  <div class="site-section seccion3" id="team-section">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7 text-center">
          <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">
            <h2>TALENTO HUMANO</h2>
            <p style="color:white;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere at delectus laudantium, deserunt, atque eveniet. Voluptatem, fuga quos rerum inventore.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <?php
        while ($row = $consultar_funcionarios->fetch()) {
          echo ' <div class="col-lg-4 col-md-6 mb-4" data-aos="fade-up">
          <div class="block-team-member-1 text-center rounded">
          <figure>
          <img src="'.$row['personal_foto'].'" alt="Image" class="img-fluid rounded-circle">
          </figure>
          <h3 class="font-size-20 text-black">Jean Smith</h3>
          <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">'.$row['personal_nombre'].'</span>
          <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">'.$row['personal_cargo'].'</span>
          <div class="block-social-1">
          <a href="'.$row['link_facebook'].'" class="btn border-w-2 rounded primary-primary-outline--hover"><span><i class="fa fa-facebook-official"></i></span></a>
          <a href="'.$row['link_instagram'].'" class="btn border-w-2 rounded primary-primary-outline--hover"><span><i class="fa fa-twitter"></i></span></a>
          <a href="'.$row['link_twitter'].'" class="btn border-w-2 rounded primary-primary-outline--hover"><span><i class="fa fa-instagram"></i></span></a>
          </div>
          </div>
          </div>';
        }
        ?>


      </div>
    </div>
  </div>


  <section class="site-section seccion4" id="pricing-section" style="display: none">
    <div class="container">
      <div class="row mb-5 justify-content-center text-center">
        <div class="col-md-7">
          <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">
            <h2>Pricing</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quae temporibus tenetur vitae iusto suscipit alias, laudantium, porro unde tempora.</p>
          </div>
        </div>
      </div>
      <div class="row mb-5">
        <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="">
          <div class="pricing">
            <h3 class="text-center text-black">Basic</h3>
            <div class="price text-center mb-4 ">
              <span><span>$47</span> / year</span>
            </div>

            <p class="text-center">
              <a href="#" class="btn btn-secondary btn-md">Buy Now</a>
            </p>
          </div>
        </div>

        <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="pricing">
            <h3 class="text-center text-black">Premium</h3>
            <div class="price text-center mb-4 ">
              <span><span>$200</span> / year</span>
            </div>

            <p class="text-center">
              <a href="#" class="btn btn-primary btn-md text-white">Buy Now</a>
            </p>
          </div>
        </div>

        <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="200">
          <div class="pricing">
            <h3 class="text-center text-black">Professional</h3>
            <div class="price text-center mb-4 ">
              <span><span>$750</span> / year</span>
            </div>

            <p class="text-center">
              <a href="#" class="btn btn-secondary btn-md">Buy Now</a>
            </p>
          </div>
        </div>
      </div>



    </div>
  </section>




  <div class="site-section seccion5 block-13 " id="testimonials-section" data-aos="fade" style="display:block">
    <div class="container">

      <div class="text-center mb-5">
        <div class="block-heading-1">
          <h2 style="color: black;">PRODUCTOS Y SERVICIOS</h2>
        </div>
      </div>

      <div class="owl-carousel nonloop-block-13">
        <?php
        while ($row = $consultar_productos_servicios->fetch()) {
          echo '<div>
          <div class="block-testimony-1 ">

          <blockquote class="mb-4" style="border:solid 0.5px black;">
          <center><img src="'.$row['item_foto'].'" style="width:80%;"></center>
          <center>  <h3  style="color:red;">'.$row['item_nombre'].'</h3> </center>
          <p style="font-size:12px; line-height:30px;text-align: justify;">'.utf8_encode($row['item_desc']).'</p> <br>
          <center> <button style="background-color:#5c9347; border:none"><a href="https://api.whatsapp.com/send?phone=573233217566&text=hola&nbsp;estoy&nbsp;interesado&nbsp;en&nbsp;recibir&nbsp;información&nbsp;relacionada&nbsp;con&nbsp;'.$row['item_nombre'].'" style="color:white" target="_blank">Solicitar</a></button></center>
          </blockquote>



          </div>
          </div>';
        }
        ?>








      </div>

    </div>
  </div>

  <div class="site-section seccion6" id="blog-section">
    <div class="container">
      <div class="row">
        <div class="col-12 text-center mb-5">
          <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">

            <h2 style="color: black;">NUESTRO BLOG</h2>
          </div>
        </div>
      </div>
      <div class="row">
        <?php
        while ($row = $consultar_publicaciones->fetch()) {
          echo ' <div class="col-md-6 col-lg-6" data-aos="fade-up" data-aos-delay="">
          <div>
          <a href="single.html" class="mb-4 d-block"><img src="'.$row['portada_pub'].'" alt="Image" class="img-fluid rounded img-blog" ></a>
          <h2><a href="#" style="color:green">'.$row['titulo_pub'].'</a></h2>
          <p class="text-muted mb-3 text-uppercase small"><span class="mr-2">'.$row['fecha_pub'].'</span> Por <a href="#" class="by">'.$row['autor_pub'].'</a></p>
          <p style="color:black">'.$row['contenido_pub'].'</p>
          <p><a href="#" style="color:green">Leer mas</a></p>
          </div>
          </div>';

        }
        ?>

        

      </div>
    </div>
  </div>




  <footer  style="display: table; width:100%; border:solid 1px black; padding-top: 0px; padding-bottom: 0px; background-color: #5c9347">
   <div class="top-bar" style="background-color: #5c9347">
    <div class="container">
      <div class="row">
        <div class="col-12" style="height: 50px;display: flex; align-items: center;" >
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-envelope" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block" style="position:relative; top:-3px;">info@coopnis.com</span></a>
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-phone" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block" style="position:relative; top:-3px;">4211035</span></a>
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-envelope" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block" style="position:relative; top:-3px;">Cr 41D # 46-59 Cali</span></a>
          
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-instagram" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block"></span></a>
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-twitter" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block"></span></a>
          <a href="#" class="text-white" style="margin:auto;"><span><i class="fa fa-youtube" style="font-size:30px"></i></span></span> <span class="d-none d-md-inline-block"></span></a>






        </div>

      </div>

    </div>
  </div>

</footer>

</div>

<script src="<?php echo base_url();?>plantilla/front_page/js/jquery-3.3.1.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/popper.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/jquery.sticky.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/jquery.animateNumber.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/jquery.fancybox.min.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/jquery.easing.1.3.js"></script>
<script src="<?php echo base_url();?>plantilla/front_page/js/aos.js"></script>

<script src="<?php echo base_url();?>plantilla/front_page/js/main.js"></script>
<script>
  $(document).ready(function(){

    $(".ver-mas-programa").click(function(){
      var titulo = $(this).text();

      var ruta_programa = $(this).attr("title");
      var contenido = $(this).attr("rel");

      var html = "<div class='resumen-programa'><img src='"+ruta_programa+"'><br><label>"+contenido+"<label></div>";
      alertify.alert().set({'startMaximized':true, 'message':''+html+''}).show().setHeader(titulo); 
    });
    $(".img-blog").each(function(){
      var ruta = $(this).attr("src");
      if(ruta.includes('coopnis')){


      }else{


       $(this).replaceWith('<iframe class="img-blog" src="'+ruta+'"><iframe>');

     }
   });
  });
</script>

</body>
</html>