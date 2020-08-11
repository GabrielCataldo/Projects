<%-- 
    Document   : registro
    Created on : 05/08/2020, 23:12:49
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registros</title>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-4.5.1-dist/css/bootstrap.min.css"/>" type="text/css"/>

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <style>
            .modal-confirm-sucesso {		
                color: #636363 !important;
                margin: 30px auto !important;
            }
            .modal-confirm-sucesso .modal-content {
                padding: 20px !important;
                border-radius: 5px !important;
                border: none !important;
            }
            .modal-confirm-sucesso .modal-header_2 {
                border-bottom: none !important;
                position: relative !important;
                padding: 1.2rem;
            }
            .modal-confirm-sucesso h4 {
                text-align: center !important;
                font-size: 26px !important;
                margin: 30px 0 -15px !important;
            }
            .modal-confirm-sucesso .form-control, .modal-confirm .btn {
                min-height: 40px !important;
                border-radius: 3px !important;
            }
            .modal-confirm-sucesso .close {
                position: absolute !important;
                top: -5px !important;
                right: -5px !important;
            }	
            .modal-confirm-sucesso .modal-footer {
                border: none !important;
                text-align: center !important;
                border-radius: 5px !important;
                font-size: 13px !important;
            }	
            .modal-confirm-sucesso .icon-box {
                color: #fff !important;		
                position: absolute !important;
                margin: 0 auto !important;
                left: 0 !important;
                right: 0 !important;
                top: -70px !important;
                width: 95px !important;
                height: 95px !important;
                border-radius: 50% !important;
                z-index: 9 !important;
                background: #82ce34 !important;
                padding: 15px !important;
                text-align: center !important;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1) !important;
            }
            .modal-confirm-sucesso .icon-box i {
                font-size: 58px !important;
                position: relative !important;
                top: 3px !important;
            }
            .modal-confirm-sucesso .modal-dialog {
                margin-top: 80px !important;
            }
            .modal-confirm-sucesso .btn {
                color: #fff !important;
                border-radius: 4px !important;
                background: #82ce34 !important;
                text-decoration: none !important;
                transition: all 0.4s !important;
                line-height: normal !important;
                border: none !important;
            }
            .modal-confirm-sucesso .btn:hover, .modal-confirm .btn:focus {
                background: #6fb32b !important;
                outline: none !important;
            }
            .modal-confirm-sucesso .trigger-btn {
                display: inline-block !important;
                margin: 100px auto !important;
            }

            .modal_delete_registro .btn-info {
                background: #c1c1c1;
            }
            .modal_delete_registro .btn-info:hover, .modal-confirm .btn-info:focus {
                background: #a8a8a8;
            }
            .btn-danger {
                background: #f15e5e;
            }
            .btn-danger:hover, .modal-confirm .btn-danger:focus {
                background: #ee3535;
            }
            .modal_delete_registro .btn {
                color: #fff;
                border-radius: 4px;
                text-decoration: none;
                transition: all 0.4s;
                line-height: normal;
                min-width: 120px;
                border: none;
                min-height: 40px;
                border-radius: 3px;
                margin: 0 5px;
                outline: none !important;
            }
            .modal_delete_registro .trigger-btn {
                display: inline-block;
                margin: 100px auto;
            }

        </style>


    </head>
    <body>

        <div class="modal fade modal_delete_registro" id="modal_delete_registro" tabindex="-1" role="dialog" aria-labelledby="modal_delete_registro" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirme sua exclusão</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Você tem certeza que deseja excluir o registro?
                    </div>
                    <div class="modal-footer">
                        <button style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-info" data-dismiss="modal" >Cancelar</button>
                        <button onclick="confirme_delete($confirme_delete{registro.id_registro})" style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-danger">Confirmar</button>
                    </div>
                </div>
            </div>
        </div> 

        <div class="site-wrap">


            <div class="site-mobile-menu">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close">
                        <img class="js-menu-toggle" src="<c:url value="/resources/images/close_x_black.png"/>" >
                    </div>
                </div>
                <div class="site-mobile-menu-body">

                    <ul class="site-nav-wrap">
                        <li id="li_home" class="mouseouver_img">
                            <a href="/Admin.dev/home" ><img id="img_home" class="img-nav-mobile" src="<c:url value="/resources/images/home_icon_navbottom.png"/>"  />Home</a>
                        </li>
                        <!--<li class="has-children">
                          <a href="#">Dropdown</a>
                          <ul class="dropdown arrow-top">
                            <li><a href="#">Menu One</a></li>
                            <li><a href="#">Menu Two</a></li>
                            <li><a href="#">Menu Three</a></li>
                          </ul>
                        </li> -->
                        <li id="li_registro" class="active mouseouver_img" ><a href="/Admin.dev/registros"><img id="img_registro" class="img-nav-mobile" src="<c:url value="/resources/images/registros_icon_navbottom_ativado.png"/>"  />Registros</a></li>
                        <!--<li><a href="about.html">About</a></li> -->
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
                                    <li >
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
                                    <li class="active" ><a href="/Admin.dev/registros">Registros</a></li>


                                    <!--<li class="active" ><a href="/Admin.dev/registros">Adicionar novo</a></li> -->


                                    <!--<li><a href="about.html">About</a></li> -->
                                </ul>
                            </nav>


                        </div>

                    </div>
                </div>

            </header>


            <!--<div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(resources/images/hero_bg_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
              <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                  <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                    <h1 class="mb-6 display-3" style="font-size: 4.1rem; color: #fff; font-weight: 300;">Registros</h1>
            <!--<h1 class="text-white">Registros</h1>
            <a href="/IniciandoComSpring/home" style="color: #48d1d7;" >Home</a><span class="mx-2 text-white">&bullet;</span> <span class="text-white">Registros</span>
            <p style="margin-top: 40px; color: #fff;" >Administre seus registros inserindo, alterando e lendo com uma forma fácil e rápido. <span style="color: #3225b1; font-weight: bold;">Comece já</span></p>

          </div>
        </div>
      </div>
    </div>  
            -->

            <div class="container hero pt-4" style="padding-bottom: 30px;" >
                <div class="row align-items-center text-md-left">

                    <div class="col-lg-6">
                        <h1 data-aos="zoom-in" data-aos-delay="600" class="mb-6 display-3" style="font-size: 4.1rem;">Registros</h1>
                        <p data-aos="zoom-in" data-aos-delay="800" style="margin-top: 40px;" >Veja seus registros abaixo, altere ou adicione um novo registro. Você vai ver que será muito simples e rápido!</p>
                        <!--<button  type="button" onclick="redirecionar_registro()" class="web_visible btn btn-outline-primary" style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 35px; padding-right: 35px;" class="btn btn-outline-primary">Começar</button> -->
                    </div>
                    <div class="col-lg-6">
                        <img data-aos="fade-up" data-aos-delay="400" src="<c:url value="/resources/images/ilustracao_registro_1.jpg"/>" alt="Image" class="img-fluid">    
                    </div>


                    <!-- <div class="col-lg-12" style="padding-top: 40px; padding-left: 15px; padding-right: 15px;">
                         
                         <hr>
                         
                     </div>-->

                    <!-- Search form -->
                    <div style="width: 100%; margin-top: 60px; padding-left: 15px; padding-right: 15px; display: inline-block;"  class="active-purple active-purple-2">
                        <i data-aos="fade-right" data-aos-delay="1200" class="fa fa-search fa-lg" ></i>
                        <input data-aos="fade-right" data-aos-delay="1400" id="search_input" name="search_input" style="height: 33px; width: 30%; border-radius: 0px; font-size: 16px;" class="ml-3" type="text" placeholder="Pesquisar registro"
                               aria-label="Pesquisar registro">

                        <div data-aos="fade-left" data-aos-delay="1400" style="float: right;" >
                            <button   type="button" onclick="redirecionar_registro()" class="web_visible btn" style="float: right; border-radius: 15px; font-size: 14px; padding-top: 10px; padding-bottom: 10px; padding-left: 30px; padding-right: 30px; border: 2px #3225b1; color: #3225b1; background-color: #fff;" ><i class="fa fa-plus fa-lg" style="margin-right: 10px;" ></i>Adicionar Registro</button>
                        </div>

                    </div>

                    <script type="text/javascript" >

                        function editar_registro(id_registro) {
                        //direcionar para tela de update
                        $(location).attr('href', '/Admin.dev/alterar-registro/' + id_registro);
                        /*$.ajax({
                         type: "POST",
                         url: "/Admin.dev/alterar-registro",
                         data: {
                         id_registro: id_registro
                         
                         },
                         beforeSend: function () {
                         },
                         success: function (data) {                                        
                         console.log(data);
                         
                         },
                         error: function (jqXHR, textStatus, errorThrown) {
                         console.log(errorThrown);
                         
                         }
                         });
                         */


                        }

                        function confirma_delete(id_registro){
                            $('.modal-footer').html(`<button style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-info" data-dismiss="modal" >Cancelar</button>
                                    <button onclick="delete_registro(`+id_registro+`)" style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-danger">Confirmar</button>`);
                            $('#modal_delete_registro').modal('show');
                        }

                        function delete_registro(id_registro){

                            $.ajax({
                            type: "POST",
                                    url: "/Admin.dev/delete_registro",
                                    data: {
                                        id: id_registro
                                    },
                                    beforeSend: function () {
                                    },
                                    success: function (data) {
                                    //deu certo a exclusao remover a linha
                                    console.log(data);
                                    if (data === "false") {

                                        alert('error');
                                        
                                        return;
                                    }
                                    
                                    //deu certo remover a linha
                                    $('#modal_delete_registro').modal('hide');
                                    $('#row_'+id_registro).remove();

                                    },
                                    error: function (jqXHR, textStatus, errorThrown) {
                                        alert('error ' + errorThrown);
                                        $('#modal_delete_registro').modal('hide');

                                    }
                            });
                        }

                    </script>


                    <div data-aos="fade-up" data-aos-delay="1000" class="table_web table-responsive" style="margin-top: 30px; padding-left: 15px; padding-right: 15px;">

                        <table   id="table_registro" style="background-color: #fff;" class="table-image mytable table table-light" >
                            <thead>
                                <tr class="mystyle_tr" >
                                    <th scope="col" >NOME</th>
                                    <th scope="col" >CPF</th>
                                    <th scope="col" >CONTATO</th>
                                    <th scope="col" >CIDADE</th>
                                    <th scope="col" >UF</th>
                                    <th scope="col" >AÇÕES</th>
                                </tr>
                            </thead>
                            <tbody class="my_style_td" >

                                <!-- verificando se existe cadastro -->
                                <c:if test="${registros != null}">

                                    <c:forEach items="${registros}" var="registros">

                                        <tr id="row_${registros.id_registro}" >
                                            <td>${registros.nm_completo}</td>
                                            <td>${registros.cpf}</td>
                                            <td>${registros.qtd_contatos_cadastrados} cadastrado(s)</td>
                                            <td>${registros.cidade}</td>
                                            <td>${registros.uf}</td>
                                            <td>
                                                <i title="Editar registro" onclick="editar_registro(${registros.id_registro})" style="margin-right: 15px; color: #3225b1;" class="fa fa-pencil fa-lg"></i>
                                                <i title="Excluir registro" onclick="confirma_delete(${registros.id_registro})" style="color: #fb7fa0;" class="fa fa-trash fa-lg" ></i>
                                            </td>
                                        </tr>

                                    </c:forEach>


                                </c:if>

                                <c:if test="${registros == null}">

                                    <!-- MOSTRAR UM TR QUE INCENTIVE A ADD UM REGISTRO -->

                                </c:if>      

                                <!--<tr>
                                    <td>Gabriel Henrique Cataldo</td>
                                    <td>021.049.966-43</td>
                                    <td>6 contatos</td>
                                    <td>Blumenau</td>
                                    <td>SC</td>
                                    <td>
                                        <i style="margin-right: 15px; color: #3225b1;" class="fa fa-pencil fa-lg"></i>
                                        <i style="color: #fb7fa0;" class="fa fa-trash fa-lg" ></i>
                                    </td>
                                </tr>
                                -->

                            </tbody>
                        </table>

                    </div>

                    <div class="col-lg-12">

                        <button type="button" onclick="redirecionar_registro()" class="col-12 web_invisible btn btn-outline-primary"  style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 30px; padding-right: 30px;" class="btn btn-outline-primary">Adicionar registro</button>

                    </div>

                    <!--<nav style="width: 100%; margin-top: 20px;" aria-label="Page navigation example">
                                            
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled"  ><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item active"  ><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                                            
                    </nav> -->


                </div>


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


            <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
            <script src="https://unpkg.com/bootstrap-table@1.17.1/dist/bootstrap-table.min.js"></script>
            <script src="https://unpkg.com/bootstrap-table@1.17.1/dist/bootstrap-table-locale-all.min.js"></script>
            <script src="https://unpkg.com/bootstrap-table@1.17.1/dist/extensions/export/bootstrap-table-export.min.js"></script>

            <script src="//code.jquery.com/jquery.min.js"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>



            <script src="<c:url value="/resources/js/pagination.js"/>"></script>
            <script src="<c:url value="/resources/js/pagination.min.js"/>"></script>


            <script>



                            $(document).ready(function () {


                            //search table
                            /* $("#search_input").on("keyup", function() {
                             var value = $(this).val().toLowerCase();
                             $("#table_registro tbody tr").filter(function() {
                             $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                             });
                             });
                             */

                            /*let rows = [];
                             var i = 0;
                             var row_sem_dados = null;
                             
                             $('#table_registro tbody tr').each(function(i, row) {
                             console.log(i);
                             console.log(row);
                             
                             if(i === 0){
                             row_sem_dados = row;
                             }
                             
                             if(i === 5){
                             row = row_sem_dados;
                             }
                             
                             i++;
                             
                             return rows.push(row);
                             
                             });
                             
                             $('#pagination').pagination({
                             dataSource: rows,
                             pageSize: 6,
                             callback: function(data, pagination) {
                             $('tbody').html(data);
                             }
                             });
                             */


                            (function ($) {

                            $('#search_input').keyup(function () {

                            var rex = new RegExp($(this).val(), 'i');
                            $('.my_style_td tr').hide();
                            $('.my_style_td tr').filter(function () {
                            return rex.test($(this).text());
                            }).show();
                            $('.no-data').hide();
                            if ($('.my_style_td tr:visible').length === 0)
                            {
                            $('.no-data').show();
                            }



                            });
                            }(jQuery));
                            //CSS DINAMICO
                            $("li.mouseouver_img")
                                    .mouseover(function () {

                                    //verificar se ele está ativado

                                    //home
                                    if ($(this).attr('id') === 'li_home') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_home').attr("src", "<c:url value="/resources/images/home_icon_navbottom_ativado.png"/>");
                                    }

                                    }

                                    //registros
                                    if ($(this).attr('id') === 'li_registro') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_registro').attr("src", "<c:url value="/resources/images/registros_icon_navbottom_ativado.png"/>");
                                    }

                                    }

                                    //suporte
                                    if ($(this).attr('id') === 'li_suporte') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_suporte').attr("src", "<c:url value="/resources/images/suporte_icon_navbottom_ativado.png"/>");
                                    }

                                    }

                                    })
                                    .mouseout(function () {

                                    //home
                                    if ($(this).attr('id') === 'li_home') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_home').attr("src", "<c:url value="/resources/images/home_icon_navbottom.png"/>");
                                    }

                                    }

                                    //registros
                                    if ($(this).attr('id') === 'li_registro') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_registro').attr("src", "<c:url value="/resources/images/registros_icon_navbottom.png"/>");
                                    }

                                    }

                                    //suporte
                                    if ($(this).attr('id') === 'li_suporte') {

                                    if (!$(this).hasClass('active')) {

                                    $('#img_suporte').attr("src", "<c:url value="/resources/images/suporte_icon_navbottom.png"/>");
                                    }

                                    }

                                    });
                            });
                            function redirecionar_registro() {
                            // similar behavior as an HTTP redirect
                            $(location).attr('href', '/Admin.dev/adicionar-registro');
                            }


                            document.addEventListener('DOMContentLoaded', function () {
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

        </div>
    </body>


</html>
