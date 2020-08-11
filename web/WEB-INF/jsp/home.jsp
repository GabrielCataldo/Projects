<%-- 
    Document   : home
    Created on : 05/08/2020, 09:49:29
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!--<link href="<//c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"/> -->

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900"> 
  <link rel="stylesheet" href="<c:url value="/resources/fonts/icomoon/style.css"/>">

  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">


  <link rel="stylesheet" href="<c:url value="/resources/css/aos.css"/>">

  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-4.5.1-dist/css/bootstrap.min.css"/>" type="text/css"/>


</head>
<body>

  <div class="site-wrap">
      
    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
            <img class="js-menu-toggle" src="<c:url value="/resources/images/close_x_black.png"/>" >
        </div>
      </div>
        <div class="site-mobile-menu-body">
            
            <ul class="site-nav-wrap">
                <li id="li_home" class="active mouseouver_img">
                    <a href="/Admin.dev/home" ><img id="img_home" class="img-nav-mobile" src="<c:url value="/resources/images/home_icon_navbottom_ativado.png"/>"  />Home</a>
                </li>
                <!--<li class="has-children">
                  <a href="#">Dropdown</a>
                  <ul class="dropdown arrow-top">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li> -->
                <li id="li_registro" class="mouseouver_img" ><a href="/Admin.dev/registros"><img id="img_registro" class="img-nav-mobile" src="<c:url value="/resources/images/registros_icon_navbottom.png"/>"  />Registros</a></li>
               <!-- <li><a href="about.html">About</a></li> -->
              </ul>
            
        </div>
    </div>


    <header class="site-navbar py-3" role="banner">

      <div class="container">
          
        <div class="row align-items-center">


          <div class="col-3">
                <h1 class="site-logo"><a href="/Admin.dev/home" class="h2">Admin<span style="color: #3225b1;" >.</span> </a></h1>
          </div>
            
          <div class="col-9">
              
            <nav class="site-navigation position-relative text-right text-md-right" role="navigation">

              <div class="d-block d-lg-none ml-md-0 mr-auto"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li class="active" >
                  <a href="/Admin.dev/home">Home</a>
                </li>
                <!--<li class="has-children">
                  <a href="#">Dropdown</a>
                  <ul class="dropdown arrow-top">
                    <li><a href="#">Menu One</a></li>
                    <li><a href="#">Menu Two</a></li>
                    <li><a href="#">Menu Three</a></li>
                  </ul>
                </li> -->
                <li  ><a href="/Admin.dev/registros">Registros</a></li>
                
                
                <!--<li class="active" ><a href="/Admin.dev/registros">Adicionar novo</a></li> -->

                
                <!--<li><a href="about.html">About</a></li> -->
              </ul>
            </nav>


          </div>

        </div>
      </div>
      
    </header>

    

    <div class="container hero pt-4" style="padding-bottom: 30px;" >
      <div class="row align-items-center text-md-left">
        
        <div data-aos="zoom-in" data-aos-delay="600" class="col-lg-6" >
            <h1  class="mb-6 display-3" style="font-size: 4.1rem;">Controle total</h1>
            <p  style="margin-top: 40px;" >Administre seus registros inserindo, alterando e lendo com uma forma fácil e rápido. <span style="color: #3225b1; font-weight: bold;">Comece já</span></p>
            
            <button type="button" onclick="redirecionar_registro()" class="web_visible btn btn-outline-primary" style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 35px; padding-right: 35px;" class="btn btn-outline-primary">Começar</button>
            
        </div>
        <div class="col-lg-6">
            <img data-aos="fade-up" data-aos-delay="400" src="<c:url value="/resources/images/1x/ilustracao_admin.jpg"/>" alt="Image" class="img-fluid">    
        </div>
        
        <div class="col-lg-12" data-aos="zoom-in" data-aos-delay="600">
            
            <button data-aos="zoom-in" data-aos-delay="950" type="button" onclick="redirecionar_registro()" class="col-12 web_invisible btn btn-outline-primary"  style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 30px; padding-right: 30px;" class="btn btn-outline-primary">Começar</button>

        </div>
        
      </div>
    </div>
        
    

    <!--<div class="site-section">
      <div class="container">

        <div class="row">
          <div class="col-lg-3">
            <div class="featured-user  mb-5 mb-lg-0">
              <h3 class="mb-4">Popular Podcaster</h3>
              <ul class="list-unstyled">
                <li>
                  <a href="#" class="d-flex align-items-center">
                      <img src="<//c:url value="/resources/images/person_1.jpg"/>" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Claire Stanford</span>
                      <span class="small">32,420 podcasts</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="d-flex align-items-center">
                    <img src="images/person_2.jpg" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Dianne Winston</span>
                      <span class="small">12,381 podcasts</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="d-flex align-items-center">
                    <img src="images/person_3.jpg" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Borris Larry</span>
                      <span class="small">9,291 podcasts</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="d-flex align-items-center">
                    <img src="images/person_4.jpg" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Garry Smith</span>
                      <span class="small">3,291 podcasts</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="d-flex align-items-center">
                    <img src="images/person_5.jpg" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Gerson Stack</span>
                      <span class="small">1,092 podcasts</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="d-flex align-items-center">
                    <img src="images/person_6.jpg" alt="Image" class="img-fluid mr-2">
                    <div class="podcaster">
                      <span class="d-block">Jenna Stone</span>
                      <span class="small">911 podcasts</span>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>

          <div class="col-lg-9">


            <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
              <div class="image" style="background-image: url('images/img_1.jpg');"></div>
              <div class="text">

                <h3 class="font-weight-light"><a href="single-post.html">Episode 08: How To Create Web Page Using Bootstrap 4</a></h3>
                <div class="text-white mb-3"><span class="text-black-opacity-05"><small>By Mike Smith <span class="sep">/</span> 16 September 2017 <span class="sep">/</span> 1:30:20</small></span></div>


                <div class="player">
                  <audio id="player2" preload="none" controls style="max-width: 100%">
                    <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                    </audio>
                  </div>

                </div>
              </div>


              <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                <div class="image" style="background-image: url('images/img_2.jpg');"></div>
                <div class="text">

                  <h3 class="font-weight-light"><a href="single-post.html">Episode 07: How To Create Web Page Using Bootstrap 4</a></h3>
                  <div class="text-white mb-3"><span class="text-black-opacity-05"><small>By Mike Smith <span class="sep">/</span> 16 September 2017 <span class="sep">/</span> 1:30:20</small></span></div>

                  <div class="player">
                    <audio id="player2" preload="none" controls style="max-width: 100%">
                      <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                      </audio>
                    </div>

                  </div>
                </div>


                <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                  <div class="image" style="background-image: url('images/img_3.jpg');"></div>
                  <div class="text">

                    <h3 class="font-weight-light"><a href="single-post.html">Episode 06: How To Create Web Page Using Bootstrap 4</a></h3>
                    <div class="text-white mb-3"><span class="text-black-opacity-05"><small>By Mike Smith <span class="sep">/</span> 16 September 2017 <span class="sep">/</span> 1:30:20</small></span></div>


                    <div class="player">
                      <audio id="player2" preload="none" controls style="max-width: 100%">
                        <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                        </audio>
                      </div>
                    </div>
                  </div>


                  <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                    <div class="image" style="background-image: url('images/img_4.jpg');"></div>
                    <div class="text">

                      <h3 class="font-weight-light"><a href="single-post.html">Episode 05: How To Create Web Page Using Bootstrap 4</a></h3>
                      <div class="text-white mb-3"><span class="text-black-opacity-05"><small>By Mike Smith <span class="sep">/</span> 16 September 2017 <span class="sep">/</span> 1:30:20</small></span></div>


                      <div class="player">
                        <audio id="player2" preload="none" controls style="max-width: 100%">
                          <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                          </audio>
                        </div>
                      </div>
                    </div>


                    <div class="d-block d-md-flex podcast-entry bg-white mb-5" data-aos="fade-up">
                      <div class="image" style="background-image: url('images/img_5.jpg');"></div>
                      <div class="text">

                        <h3 class="font-weight-light"><a href="single-post.html">Episode 04: How To Create Web Page Using Bootstrap 4</a></h3>
                        <div class="text-white mb-3"><span class="text-black-opacity-05"><small>By Mike Smith <span class="sep">/</span> 16 September 2017 <span class="sep">/</span> 1:30:20</small></span></div>


                        <div class="player">
                          <audio id="player2" preload="none" controls style="max-width: 100%">
                            <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                            </audio>
                          </div>
                        </div>
                      </div>


                    </div>
                    <div class="container" data-aos="fade-up">
                      <div class="row">
                        <div class="col-md-12 text-center">
                          <div class="site-block-27">
                            <ul>
                              <li><a href="#" class="icon-keyboard_arrow_left"></a></li>
                              <li class="active"><span>1</span></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li><a href="#" class="icon-keyboard_arrow_right"></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

    <!-- <div class="site-section">
      <div class="container" data-aos="fade-up">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
            <h2 class="font-weight-bold text-black">Behind The Mic</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_1.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Megan Smith</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_2.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Brooke Cagle</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_3.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Philip Martin</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_4.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Steven Ericson</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_5.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Nathan Dumlao</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_6.jpg" alt="Image" class="img-fluid">

              <div class="text">

                <h2 class="mb-2 font-weight-light h4">Brooke Cagle</h2>
                <span class="d-block mb-2 text-white-opacity-05">Creative Director</span>
                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit ullam reprehenderit nemo.</p>
                <p>
                  <a href="#" class="text-white p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-white p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>


        </div>
      </div>
    </div> -->

    <!--<div id="div_deseja_fazer" class="site-section bg-light block-13" data-aos="fade-up" data-aos-delay="600" >

      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
              <h1 class="mb-6 display-3"  style="font-size: 4.1rem; color: #000;" >O que gostaria de fazer?</h1>
          </div>
        </div>
        <div class="nonloop-block-13 owl-carousel">

            <section class="text-center col-md-6 p-3 p-md-5 bg-white">
                <div class="mb-4">      
                    <img src="<c:url value="/resources/images/ilustracao_registre.png"/>" alt="Image" class="w-50 mx-auto img-fluid rounded-circle">
                </div>
                <div class="">
                  <h3 class="font-weight-light h5">Registros</h3>
                  <p>Faça a leitura dos dados existente altere se desejar ou insira um novo registro.</p>
                </div>
            </section>

            <section class="text-center col-md-6 p-3 p-md-5 bg-white">
                <div class="mb-4">            
                </div>
                <div class="">
                    <img src="<c:url value="/resources/images/person_1.jpg"/>" alt="Image" class="w-50 mx-auto img-fluid rounded-circle">
                    <h3 class="font-weight-light h5" style="color: #3225b1">Brooke Cagle</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, iusto. Aliquam illo, cum sed ea? Ducimus quos, ea?</p>
                </div>
            </section>

        </div>
      </div>
    </div>
    
    <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(images/hero_bg_1.jpg); padding: 20px; height: auto;" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

            <div style="margin-top: 5px;" data-aos="fade-up" data-aos-delay="400">
                <h2 style="margin-bottom: 15px; font-weight: 300;">Envie seu feedback</h2>

                <p style="margin-bottom: 25px;" >Para nós sua opnião é muito importânte! Envie-nos um e-mail dizendo o que podemos melhorar</p>
              
              <form action="#" method="post" class="site-block-subscribe">
                  <div class="input-group" >
                  <input type="text"  class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                </div>
                  
                <div >

                    <button type="button" class="col-12 btn btn-light"  style="margin-top: 35px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 30px; padding-right: 30px;" >Enviar Feedback</button>

                </div>
                  
              </form>
                        
            </div>
         
        </div>
      </div>
    </div>  
    -->


    <!--<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h3>About Us</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium animi, odio beatae aspernatur natus recusandae quasi magni eum voluptatem nam!</p>
          </div>
          <div class="col-lg-3 mx-auto">
            <h3>Navigation</h3>
            <ul class="list-unstyled">
              <li><a href="#">Podcasts</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">About Us</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <div class="col-lg-4">
            <h3>Subscribe</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, quibusdam!</p>
            <form action="#" class="form-subscribe">
              <input type="email" class="form-control mb-3" placeholder="Enter Email">
              <input type="submit" class="btn btn-primary" value="Subscribe">
            </form>
          </div>
        </div>

       
      </div>
    </footer> -->
    
  </div>

    <script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
    <script src="<c:url value="/resources/js/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
    <script src="<c:url value="/resources/js/aos.js"/>"></script>

    <script src="<c:url value="/resources/js/mediaelement-and-player.min.js"/>"></script>

  <script>
      
    $(document).ready(function() {
        
        //CSS DINAMICO
        $( "li.mouseouver_img" )
        .mouseover(function() {

            //verificar se ele está ativado

            //home
            if($(this).attr('id') === 'li_home'){

                if(!$(this).hasClass('active')){

                    $('#img_home').attr("src","<c:url value="/resources/images/home_icon_navbottom_ativado.png"/>");

                }

            }

            //registros
            if($(this).attr('id') === 'li_registro'){

                if(!$(this).hasClass('active')){

                    $('#img_registro').attr("src","<c:url value="/resources/images/registros_icon_navbottom_ativado.png"/>");

                }

            }

            //suporte
            if($(this).attr('id') === 'li_suporte'){

                if(!$(this).hasClass('active')){

                    $('#img_suporte').attr("src","<c:url value="/resources/images/suporte_icon_navbottom_ativado.png"/>");

                }

            }

        })
        .mouseout(function() {

            //home
            if($(this).attr('id') === 'li_home'){

                if(!$(this).hasClass('active')){

                    $('#img_home').attr("src","<c:url value="/resources/images/home_icon_navbottom.png"/>");

                }

            }

            //registros
            if($(this).attr('id') === 'li_registro'){

                if(!$(this).hasClass('active')){

                    $('#img_registro').attr("src","<c:url value="/resources/images/registros_icon_navbottom.png"/>");

                }

            }

              //suporte
            if($(this).attr('id') === 'li_suporte'){

                if(!$(this).hasClass('active')){

                    $('#img_suporte').attr("src","<c:url value="/resources/images/suporte_icon_navbottom.png"/>");

                }

            }

        });
    
    });
    
    function redirecionar_registro(){
        // similar behavior as an HTTP redirect
        $(location).attr('href','/Admin.dev/registros');
 
    
    }
        
          
    document.addEventListener('DOMContentLoaded', function() {
      var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;

      for (var i = 0; i < total; i++) {
        new MediaElementPlayer(mediaElements[i], {
          pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
          shimScriptAccess: 'always',
          success: function () {
            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
            for (var j = 0; j < targetTotal; j++) {
              target[j].style.visibility = 'visible';
            }
          }
        });
      }
    });
  </script>


  <script src="<c:url value="/resources/js/main.js"/>"></script>

</body>
</html>
