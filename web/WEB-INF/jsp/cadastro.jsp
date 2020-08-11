<%-- 
    Document   : registro
    Created on : 05/08/2020, 23:12:49
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <!-- verificando se é update -->
        <c:if test="${registro != null}">
            <title>Alteração</title>
        </c:if>

        <c:if test="${registro == null}">

            <title>Cadastro</title>

        </c:if>

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



        <!-- Modal HTML -->
        <c:if test="${registro != null}">
            <div id="modal_sucess_registro" class="modal fade" data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog modal-dialog-centered modal-confirm-sucesso">
                    <div class="modal-content">
                        <div class="modal-header_2">
                            <div class="icon-box">
                                <i class="material-icons">&#xE876;</i>
                            </div>				
                            <h4 class="modal-title">Registro alterado com sucesso!</h4>	
                        </div>
                        <div class="modal-body">
                            <p class="text-center">Lembrando que você pode altera-lo quando achar necessárioe até mesmo exclui-lo. Obrigado por usar o Admin.</p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-success btn-block" onclick="close_dialog()" style="width: 100%; font-size: 16px;" >OK</button>
                        </div>
                    </div>
                </div>
            </div>   
        </c:if>

        <c:if test="${registro == null}">

            <div id="modal_sucess_registro" class="modal fade" data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog modal-dialog-centered modal-confirm-sucesso">
                    <div class="modal-content">
                        <div class="modal-header_2">
                            <div class="icon-box">
                                <i class="material-icons">&#xE876;</i>
                            </div>				
                            <h4 class="modal-title">Registro inserido com sucesso!</h4>	
                        </div>
                        <div class="modal-body">
                            <p class="text-center">Agora vamos te redirecionar para o painel de controle do seus registros.</p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-success btn-info" onclick="redirecionar_registro()" style="width: 100%; font-size: 16px;" >OK</button>
                        </div>
                    </div>
                </div>
            </div>

        </c:if>



        <!-- Modal -->
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
                        Você tem certeza que deseja excluir esse registro?
                    </div>
                    <div class="modal-footer">
                        <button style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-info" data-dismiss="modal" >Cancelar</button>
                        <button onclick="delete_registro(${registro.id_registro})" style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-danger">Confirmar</button>
                    </div>
                </div>
            </div>
        </div> 

        <div class="modal fade modal_delete_registro" id="modal_delete_registro_contato" tabindex="-1" role="dialog" aria-labelledby="modal_delete_registro_contato" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirme sua exclusão</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body modal-body-contato">
                        Você tem certeza que deseja excluir esse contato?
                    </div>
                    <div class="modal-footer modal-footer-contato">
                        <button style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-info" data-dismiss="modal" >Cancelar</button>
                        <button onclick="confirme_delete_contato(${registro.id_registro})" style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-danger">Confirmar</button>
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
                        <li id="li_registro" class="active mouseouver_img" ><a href="/Admin.dev/registros"><img id="img_registro" class="img-nav-mobile" src="<c:url value="/resources/images/registro_icon_navbottom_ativado.png"/>"  />Registros</a></li>
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
                <div class="row align-items-lg-start text-md-left">

                    <c:if test="${registro != null}">
                        <div class="col-lg-12" style="margin-bottom: 20px;" >
                            <h1 class="mb-6 display-3" style="font-size: 4.1rem;">Alterar Registro</h1>
                            <p  class="col-lg-6" style="padding:0px; margin-top: 40px;" >Altere o registro selecionado ou o exclua abaixo:</p>
                            <!--<button  type="button" onclick="redirecionar_registro()" class="web_visible btn btn-outline-primary" style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 35px; padding-right: 35px;" class="btn btn-outline-primary">Começar</button> -->
                        </div>
                    </c:if>

                    <c:if test="${registro == null}">
                        <div class="col-lg-12" style="margin-bottom: 20px;" >
                            <h1 class="mb-6 display-3" style="font-size: 4.1rem;">Adicionar Registro</h1>
                            <p  class="col-lg-6" style="padding:0px; margin-top: 40px;" >Preencha os campos abaixo para salvar um novo registro:</p>
                            <!--<button  type="button" onclick="redirecionar_registro()" class="web_visible btn btn-outline-primary" style="margin-top: 40px; border-radius: 15px; font-size: 18px; padding-top: 15px; padding-bottom: 15px; padding-left: 35px; padding-right: 35px;" class="btn btn-outline-primary">Começar</button> -->
                        </div>
                    </c:if>

                    <!--<div class="col-lg-6">
                        <img data-aos="fade-up" data-aos-delay="400" src="<c:url value="/resources/images/ilustracao_registro_1.jpg"/>" alt="Image" class="img-fluid">    
                    </div> -->


                    <!-- <div class="col-lg-12" style="padding-top: 40px; padding-left: 15px; padding-right: 15px;">
                         
                         
                     </div>-->
                    <div id="alert_campo_obrigatorio" style="margin-left: 15px; margin-right: 15px; display: none;" class="alert alert-danger alert-dismissible fade show" role="alert">
                        <i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                        <b>Atenção:</b> Todos os campos com * (asterisco) são obrigatórios.
                        <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>


                    <!-- Dados pessoais -->
                    <div style="margin-top: 20px;" class="col-lg-12">

                        <form id="form_registro" name="form_registro" method="POST" >

                            <c:if test="${registro != null}">

                                <input type="hidden" value="${registro.id_registro}" name="id_registro" id="id_registro"/>

                            </c:if>

                            <label style="color: #3225b1;" ><i style="margin-right: 15px; margin-bottom: 10px;"  class="fa fa-user"></i> Informações pessoais</label>

                            <hr style="color: #3225b1; margin-bottom: 30px; margin-top: 0px;" >

                            <div class="row" style="margin-top: 15px;" >

                                <section  class="col-md-12 col-sm-12 col-lg-6 form-group">
                                    <label for="nm_completo">Nome Completo<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" maxlength="80" type="text" class="form-control" id="nm_completo" name="nm_completo"  placeholder="Digite aqui..">
                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-2 form-group">
                                    <label for="cpf">CPF<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" type="text" class="form-control" id="cpf" name="cpf"  placeholder="Digite aqui..">
                                </section>

                                <section  class="col-md-12 col-sm-12 col-lg-4 form-group">
                                    <label for="email">Email</label>
                                    <input style="height: 50px;" maxlength="80" type="email" class="form-control" id="email" name="email"  placeholder="Digite aqui..">
                                </section>

                            </div>

                            <div class="row" id="content_contato">

                                <section class="row_contato col-md-9 col-sm-9 col-lg-3 form-group">
                                    <label for="telefone">Telefone<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" type="tel" class="telefone form-control" id="telefone" name="telefone"  placeholder="Digite aqui..">
                                </section>

                                <section class="row_button_contato col-md-3 col-sm-3 col-lg-9">
                                    <i id="add_telefone_0" onclick="add_contato()" title="Adicionar Contato" style="float: left; margin-top: 15px; color: #3225b1;" class="vertical-center fa fa-plus fa-2x"></i>
                                    <!--<i style="color: #fb7fa0;" class="fa fa-trash fa-lg" ></i>-->     
                                </section>

                            </div>

                            <label style="margin-top: 20px; color: #3225b1;" ><i style="margin-right: 15px; margin-bottom: 10px;"  class="fa fa-home"></i> Informações de endereço</label>

                            <hr style="color: #3225b1; margin-bottom: 30px; margin-top: 0px;" >


                            <div class="row" style="margin-top: 15px;" >

                                <section  class="col-md-12 col-sm-12 col-lg-2 form-group">
                                    <label for="cep">CEP</label>
                                    <input style="height: 50px;" type="text" class="form-control" id="cep" name="cep"  placeholder="Digite aqui.." onblur="pesquisacep(this.value)" >

                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-5 form-group">
                                    <label for="endereco">Endereço<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" maxlength="60" type="text" class="form-control" id="endereco" name="endereco"  placeholder="Digite aqui..">

                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-3 form-group">
                                    <label for="bairro">Bairro<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" maxlength="30" type="text" class="form-control" id="bairro" name="bairro"  placeholder="Digite aqui..">
                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-2 form-group">
                                    <label for="nu_endereco">Número<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <input style="height: 50px;" type="text" maxlength="8" onkeypress="return event.charCode >= 48 && event.charCode <= 57" class="form-control" id="nu_endereco" name="nu_endereco"  placeholder="Digite aqui..">

                                </section>           

                            </div>

                            <div class="row" style="margin-top: 5px;">


                                <section class="col-md-12 col-sm-12 col-lg-4 form-group">


                                    <label for="id_uf_ibge">UF<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <select style="height: 50px;" class="form-control" id="id_uf_ibge" name="id_uf_ibge">
                                        <option selected="" value="0" disabled="disabled" >Selecione</option>
                                        <c:forEach items="${uf}" var="uf">

                                            <option value="${uf.id_uf_ibge}" > ${uf.nm_uf} - ${uf.sg_uf}</option>

                                        </c:forEach>
                                    </select>

                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-4 form-group">

                                    <label for="id_muni_ibge">Cidade<span style="font-weight: bold; color: #3225b1; margin-left: 2px;">*</span></label>
                                    <select style="height: 50px;" class="form-control" id="id_muni_ibge" name="id_muni_ibge">
                                        <option selected="" value="0" disabled="disabled" >Selecione primeiramente a UF</option>
                                    </select>

                                </section>


                                <section class="col-md-12 col-sm-12 col-lg-4 form-group">
                                    <label for="complemento">Complemento</label>
                                    <input style="height: 50px;" type="text" maxlength="60" class="form-control" id="complemento" name="complemento"  placeholder="Digite aqui..">

                                </section>



                            </div>

                            <div class="row"  style="margin-top: 70px;" >

                                <section class="col-md-12 col-sm-12 col-lg-2 form-group">

                                    <button  type="button" onclick="redirecionar_registro()" class="col-12 web_visible btn btn-outline-primary"  style="border-radius: 15px; font-size: 16px; padding-top: 9px; padding-bottom: 9px; padding-left: 30px; padding-right: 30px;" class="btn btn-outline-primary">Voltar</button>

                                </section>

                                <section class="col-md-12 col-sm-12 col-lg-3 form-group">

                                    <button   type="button" id="btn_salvar" class="col-md-12 col-sm-12 col-lg-12 btn" style="border-radius: 15px; font-size: 16px; padding-top: 10px; padding-bottom: 10px; padding-left: 30px; padding-right: 30px; border: 2px #3225b1; color: #fff; background-color: #3225b1;" >Salvar Registro</button>

                                </section>


                                <section class="col-md-12 col-sm-12 col-lg-2 form-group">

                                    <button  type="button" onclick="redirecionar_registro()" class="col-12 web_invisible btn btn-outline-primary"  style="border-radius: 15px; font-size: 16px; padding-top: 9px; padding-bottom: 9px; padding-left: 30px; padding-right: 30px;" class="btn btn-outline-primary">Voltar</button>

                                </section>

                                <c:if test="${registro != null}">

                                    <section  class="col-md-12 col-sm-12 col-lg-5 form-group">

                                        <button  onclick="excluir_registro()"  type="button" id="btn_excluir" class="web_visible col-md-12 col-sm-12 col-lg-6 btn btn-danger" style="float: right; border-radius: 15px; font-size: 16px; padding-top: 10px; padding-bottom: 10px; padding-left: 15px; padding-right: 15px; border: 2px #3225b1;" >Excluir Registro</button>

                                    </section>

                                </c:if>


                                <c:if test="${registro != null}">

                                    <section class="col-md-12 col-sm-12 col-lg-3 form-group">

                                        <button  onclick="excluir_registro()"  type="button" id="btn_excluir" class="web_invisible col-md-12 col-sm-12 col-lg-12 btn btn-danger" style="float: right; border-radius: 15px; font-size: 16px; padding-top: 10px; padding-bottom: 10px; padding-left: 30px; padding-right: 30px; border: 2px #3225b1;" >Excluir Registro</button>

                                    </section>

                                </c:if>

                            </div>



                        </form>


                    </div>

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




            <script>

                                            function remove_contato(id, index, telefone) {
                                                if (id === null) {
                                                    //não está salvo no banco remover sem mensagem
                                                    $('#section_tel_' + index).remove();
                                                    $('#section_button_' + index).remove();
                                                } else {

                                                    //mandar um post se ele tiver id
                                                    $('.modal-body-contato').html(`Você tem certeza que deseja excluir esse número dos seus registros?</p>`);
                                                    $('.modal-footer-contato').html(`<button style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-info" data-dismiss="modal" >Cancelar</button>
                                                    <button onclick="confirme_delete_contato(` + id + `,` + index + `)" style="padding-top: 8px; padding-bottom: 8px;" type="button" class="btn btn-danger">Confirmar</button>`);
                                                    $('#modal_delete_registro_contato').modal('show');
                                                }

                                            }


                                            //funções de add contato
                                            function add_contato() {
                                                var count = 1;
                                                $('[name*="telefone"]').each(function (posicao) {

                                                    console.log(count);
                                                    console.log(posicao);
                                                    count++;
                                                });
                                                $('#content_contato').append(`<section id="section_tel_` + count + `" class="row_contato col-md-9 col-sm-9 col-lg-3 form-group">
                                                    <label for="telefone">Telefone Adicional</label>
                                                    <input style="height: 50px;" type="tel" class="telefone form-control" id="telefone" name="telefone"  placeholder="Digite aqui..">
                                                </section>

                                                <section id="section_button_` + count + `" class="row_button_contato col-md-3 col-sm-3 col-lg-9">
                                                    <i id="add_telefone_0" onclick="add_contato()" title="Adicionar Contato" style="float: left; margin-top: 15px; color: #3225b1;" class="vertical-center fa fa-plus fa-2x"></i>
                                                    <i onclick="remove_contato(null,` + count + `)" title="Remover Contato" style="margin-left: 50px; margin-top: 15px; color: #fb7fa0;" class="vertical-center fa fa-trash fa-2x" ></i>     
                                                </section>`);
                                            }



                                            function confirme_delete_contato(id, index) {
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/Admin.dev/delete_contato",
                                                    data: {
                                                        id: id
                                                    },
                                                    beforeSend: function () {
                                                    },
                                                    success: function (data) {
                                                        //deu certo a exclusao remover a linha
                                                        console.log(data);
                                                        if (data === "false") {
                                                            $('#modal_delete_registro_contato').modal('hide');
                                                            //deu erro
                                                            $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                            <b>Atenção:</b> Error ao excluír contato. Tente outra vez, se o erro persistir contate o suporte!
                                                            <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>`);
                                                            $('#alert_campo_obrigatorio').show();
                                                            goToByScroll('alert_campo_obrigatorio');
                                                            return;
                                                        }

                                                        $('#modal_delete_registro_contato').modal('hide');
                                                        $('#section_tel_' + index).remove();
                                                        $('#section_button_' + index).remove();
                                                    },
                                                    error: function (jqXHR, textStatus, errorThrown) {
                                                        $('#modal_delete_registro_contato').modal('hide');
                                                        console.log(textStatus + " -> " + errorThrown);
                                                        //show
                                                        $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                       <b>Atenção:</b> Error ao excluír contato. Tente outra vez, se o erro persistir contate o suporte!
                                                       <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                           <span aria-hidden="true">&times;</span>
                                                       </button>`);
                                                        $('#alert_campo_obrigatorio').show();
                                                        goToByScroll('alert_campo_obrigatorio');
                                                    }
                                                });
                                            }


                                            //funções cep pesquisa
                                            function meu_callback(conteudo) {
                                                if (!("erro" in conteudo)) {
                                                    //Atualiza os campos com os valores.
                                                    document.getElementById('endereco').value = (conteudo.logradouro);
                                                    document.getElementById('bairro').value = (conteudo.bairro);
                                                    //document.getElementById('uf').value = (conteudo.uf.toUpperCase());

                                                    //setando estado e cidade
                                                    $.ajax({
                                                        type: "POST",
                                                        url: "/Admin.dev/get_uf_muni_from_cep",
                                                        data: {
                                                            nm_uf: conteudo.uf.toUpperCase(),
                                                            nm_municipio: conteudo.localidade.toUpperCase()

                                                        },
                                                        beforeSend: function () {
                                                        },
                                                        success: function (data) {
                                                            console.log(data);
                                                            var data_json = jQuery.parseJSON(data);
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "/Admin.dev/get_municipios_value_string",
                                                                data: {
                                                                    id_uf: data_json.id_uf_ibge
                                                                },
                                                                beforeSend: function () {
                                                                },
                                                                success: function (data) {
                                                                    //deu certo setar a uf e o muni
                                                                    $('#id_muni_ibge').html(data);
                                                                    $('#id_uf_ibge').val(data_json.id_uf_ibge);
                                                                    $('#id_muni_ibge').val(data_json.id_muni_ibge);
                                                                },
                                                                error: function () {
                                                                    alert('erro ao pegar as informações do cep');
                                                                }
                                                            });
                                                        },
                                                        error: function () {
                                                            alert('erro ao pegar as informações do cep');
                                                        }
                                                    });
                                                } //end if.
                                                else {
                                                    //CEP não Encontrado.
                                                    //limpa_formulário_cep();

                                                    $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                  <b>Atenção:</b> Cep não foi encontrado. Tente novamente com outro cep!
                                  <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>`);
                                                    $('#alert_campo_obrigatorio').show();
                                                    goToByScroll('alert_campo_obrigatorio');
                                                }
                                            }

                                            function pesquisacep(valor) {
                                                //Nova variável "cep" somente com dígitos.
                                                var cep = valor.replace(/\D/g, '');
                                                //Verifica se campo cep possui valor informado.
                                                if (cep !== "") {

                                                    //Expressão regular para validar o CEP.
                                                    var validacep = (/^[0-9]{8}$/);
                                                    //Valida o formato do CEP.
                                                    if (validacep.test(cep)) {

                                                        //Preenche os campos com "..." enquanto consulta webservice.
                                                        //document.getElementById('endereco').value = "...";
                                                        //document.getElementById('bairro').value = "...";
                                                        //document.getElementById('cidade').value = "...";
                                                        //document.getElementById('uf').value = "...";
                                                        //Cria um elemento javascript.
                                                        var script = document.createElement('script');
                                                        //Sincroniza com o callback.
                                                        script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';
                                                        //Insere script no documento e carrega o conteúdo.
                                                        document.body.appendChild(script);
                                                    } //end if.
                                                    else {
                                                        //cep é inválido.
                                                        //limpa_formulário_cep();
                                                        $('#cep').val('');
                                                        $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                  <b>Atenção:</b> Cep com formato inválido. Tente novamente!
                                  <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>`);
                                                        $('#alert_campo_obrigatorio').show();
                                                        goToByScroll('alert_campo_obrigatorio');
                                                    }
                                                } //end if.
                                                else {
                                                    //cep sem valor, limpa formulário.
                                                    //limpa_formulário_cep();
                                                }
                                            }

                                            function close_dialog() {
                                                // similar behavior as an HTTP redirect
                                                location.reload();
                                                $('#modal_sucess_registro').modal('hide');
                                            }

                                            function clearForm(id)
                                            {
                                                $("#"+id).find(':input').not(':button,:submit, :reset, :hidden, :checkbox, :radio').val('');
                                                $("#"+id).find(':checkbox, :radio').prop('checked', false);
                                                $("#"+id).find(':select').prop('selectedIndex',0);

                                            }

                                            function redirecionar_registro() {
                                                // similar behavior as an HTTP redirect
                                                //clearForm('form_registro');

                                                $('#modal_sucess_registro').modal('hide');
                                                $(location).attr('href', '/Admin.dev/registros');

                                            }

                                            function close_alert() {
                                                $('.alert').hide();
                                            }

                                            function goToByScroll(id) {
                                                // Remove "link" from the ID
                                                id = id.replace("link", "");
                                                // Scroll
                                                $('html,body').animate({
                                                    scrollTop: $("#" + id).offset().top
                                                }, 'slow');
                                            }

                                            function excluir_registro() {
                                                $('#modal_delete_registro').modal('show');
                                            }

                                            function delete_registro(id_registro) {

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

                                                        //deu certo redirecionar
                                                        redirecionar_registro();

                                                    },
                                                    error: function (jqXHR, textStatus, errorThrown) {
                                                        alert('error ' + errorThrown);
                                                        $('#modal_delete_registro').modal('hide');
                                                    }
                                                });
                                            }


                                            $(document).ready(function () {

                                                //verification update
                <c:if test="${registro != null}">
                                                //é update
                                                $('#nm_completo').val("${registro.nm_completo}");
                                                $('#cpf').val("${registro.cpf}");
                                                $('#email').val("${registro.email}");
                                                $('#cep').val("${registro.cep}");
                                                $('#endereco').val("${registro.endereco}");
                                                $('#bairro').val("${registro.bairro}");
                                                $('#nu_endereco').val("${registro.nu_endereco}");
                                                $('#id_uf_ibge').val("${registro.id_uf_ibge}");
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/Admin.dev/get_municipios_value_string",
                                                    data: {
                                                        id_uf: "${registro.id_uf_ibge}"
                                                    },
                                                    beforeSend: function () {
                                                    },
                                                    success: function (data) {

                                                        $('#id_muni_ibge').html(data);
                                                        $('#id_muni_ibge').val("${registro.id_muni_ibge}");
                                                    },
                                                    error: function () {
                                                        alert('erro ao pegar os municipios');
                                                    }
                                                });
                                                $('#complemento').val("${registro.complemento}");
                    <c:if test="${registros_contatos != null}">

                                                var count = 0;
                        <c:forEach items="${registros_contatos}" var="registros_contatos">

                                                if (count === 0) {

                                                    $('#telefone').val("${registros_contatos.telefone}");
                                                } else {

                                                    $('#content_contato').append(`<section id="section_tel_` + count + `" class="row_contato col-md-9 col-sm-9 col-lg-3 form-group">
                                                    <label for="telefone">Telefone Adicional</label>
                                                    <input style="height: 50px;" value="` + "${registros_contatos.telefone}" + `" type="tel" class="telefone form-control" id="telefone" name="telefone"  placeholder="Digite aqui..">
                                                </section>

                                                <section id="section_button_` + count + `" class="row_button_contato col-md-3 col-sm-3 col-lg-9">
                                                    <i id="add_telefone_0" onclick="add_contato()" title="Adicionar Contato" style="float: left; margin-top: 15px; color: #3225b1;" class="vertical-center fa fa-plus fa-2x"></i>
                                                    <i onclick="remove_contato(${registros_contatos.id_registro_contato},` + count + `, '${registros_contatos.telefone}')" title="Remover Contato" style="margin-left: 50px; margin-top: 15px; color: #fb7fa0;" class="vertical-center fa fa-trash fa-2x" ></i>     
                                                </section>`);
                                                }

                                                count++;
                        </c:forEach>


                    </c:if>



                </c:if>

                                                $('#cpf').mask('000.000.000-00', {reverse: true});
                                                $('#cep').mask('00000-000', {reverse: true});
                                                $('#cep').blur(function () {

                                                    if ($(this).val().length < 9) {

                                                        $(this).val('');
                                                    }

                                                });
                                                $('#cpf').blur(function () {

                                                    if ($(this).val().length < 14) {

                                                        $(this).val('');
                                                    }

                                                });
                                                var SPMaskBehavior = function (val) {
                                                    return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
                                                },
                                                        spOptions = {
                                                            onKeyPress: function (val, e, field, options) {
                                                                field.mask(SPMaskBehavior.apply({}, arguments), options);
                                                            }
                                                        };
                                                $('.telefone').mask(SPMaskBehavior, spOptions);
                                                $('.telefone').blur(function () {

                                                    if ($(this).val().length < 14) {

                                                        $(this).val('');
                                                    }

                                                });
                                                $('#alert_campo_obrigatorio').hide();
                                                $('#btn_salvar').click(function () {
                                                    $('#btn_salvar').prop('disabled', true);
                                                    console.log("FORM -> " + jQuery('#form_registro').serialize());
                                                    //verificar se ele repetiu o valor nos campos de telefone
                                                    var array_telefone = [];
                                                    var repeat_tel = false;
                                                    $('[name*="telefone"]').each(function (posicao) {

                                                        if (array_telefone.includes($(this).val())) {
                                                            //contains e iria repetir, enviar mensagem
                                                            repeat_tel = true;
                                                        }

                                                        array_telefone.push($(this).val());
                                                    });
                                                    if (repeat_tel) {

                                                        $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                                <b>Atenção:</b> O número de telefone não pode se repetir. Tente outra vez com um novo número!
                                                                <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>`);
                                                        $('#alert_campo_obrigatorio').show();
                                                        goToByScroll('alert_campo_obrigatorio');
                                                        $('#btn_salvar').prop('disabled', false);
                                                        return;
                                                    }



                                                    $.ajax({
                                                        type: "POST",
                                                        url: "/Admin.dev/save",
                                                        data: jQuery('#form_registro').serialize(),
                                                        success: function (data) {
                                                            //response from controller
                                                            if (data === 'vazio') {
                                                                //campos obrigatorios veio vazio

                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                                <b>Atenção:</b> Todos os campos com * (asterisco) são obrigatórios.
                                                                <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                                return;
                                                            }

                                                            if (data === 'nome_invalido') {

                                                                //show
                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                                <b>Atenção:</b> Nome inválido! Use apenas letras no nome.
                                                                <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                                return;
                                                            }

                                                            if (data === 'email_invalido') {

                                                                //show
                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                                <b>Atenção:</b> E-mail inválido! Tente novamente com um e-mail válido.
                                                                <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                                return;
                                                            }

                                                            if (data === 'existe_cpf') {

                                                                //show
                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                               <b>Atenção:</b> CPF já cadastrado. Tente outra vez com outro CPF!
                                                               <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                   <span aria-hidden="true">&times;</span>
                                                               </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                                return;
                                                            }


                                                            if (data === 'error') {

                                                                //show
                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                               <b>Atenção:</b> Erro ao inserir. Tente outra vez, se o erro persistir contate o suporte!
                                                               <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                   <span aria-hidden="true">&times;</span>
                                                               </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                                return;
                                                            }

                                                            var registro_json = null;
                                                            try {
                                                                $('#alert_campo_obrigatorio').hide();
                                                                //deu certo o inserts
                                                                registro_json = JSON.parse(data);
                                                                //deu certo
                                                                console.log("SUCESSO -> " + data);
                                                                console.log("SUCESSO JSON -> " + registro_json);
                                                                //abrir um modal de sucesso quando informando que o registro foi com sucesso
                                                                $('#modal_sucess_registro').modal('show');
                                                                $('#btn_salvar').prop('disabled', false);
                                                            } catch (e) {
                                                                //JSON parse error, this is not json (or JSON isn't in your browser)
                                                                //telefone existe

                                                                //show mesagem existe
                                                                $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                               <b>Atenção:</b> ` + data + ` contato(s) já cadastrados. Tente outra vez com outro número de telefone!
                                                               <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                                   <span aria-hidden="true">&times;</span>
                                                               </button>`);
                                                                $('#alert_campo_obrigatorio').show();
                                                                goToByScroll('alert_campo_obrigatorio');
                                                                $('#btn_salvar').prop('disabled', false);
                                                            }






                                                        },
                                                        error: function (jqXHR, textStatus, errorThrown) {
                                                            console.log(textStatus + " -> " + errorThrown);
                                                            //show
                                                            $('#alert_campo_obrigatorio').html(`<i style="margin-right: 10px;" class="fa fa-exclamation-triangle"></i>
                                                           <b>Atenção:</b> Error - ` + errorThrown + `. Tente outra vez, se o erro persistir contate o suporte!
                                                           <button onclick="close_alert()" type="button" class="close" aria-label="Close">
                                                               <span aria-hidden="true">&times;</span>
                                                           </button>`);
                                                            $('#alert_campo_obrigatorio').show();
                                                            goToByScroll('alert_campo_obrigatorio');
                                                            $('#btn_salvar').prop('disabled', false);
                                                        }
                                                    });
                                                });
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

                                                            //registro
                                                            if ($(this).attr('id') === 'li_registro') {

                                                                if (!$(this).hasClass('active')) {

                                                                    $('#img_registro').attr("src", "<c:url value="/resources/images/registro_icon_navbottom_ativado.png"/>");
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

                                                            //registro
                                                            if ($(this).attr('id') === 'li_registro') {

                                                                if (!$(this).hasClass('active')) {

                                                                    $('#img_registro').attr("src", "<c:url value="/resources/images/registro_icon_navbottom.png"/>");
                                                                }

                                                            }

                                                            //suporte
                                                            if ($(this).attr('id') === 'li_suporte') {

                                                                if (!$(this).hasClass('active')) {

                                                                    $('#img_suporte').attr("src", "<c:url value="/resources/images/suporte_icon_navbottom.png"/>");
                                                                }

                                                            }

                                                        });
                                                //uf change
                                                $('#id_uf_ibge').on('change', function () {
                                                    var id_estado = this.value;
                                                    $.ajax({
                                                        type: "POST",
                                                        url: "/Admin.dev/get_municipios_value_string",
                                                        data: {
                                                            id_uf: id_estado
                                                        },
                                                        beforeSend: function () {
                                                        },
                                                        success: function (data) {

                                                            $('#id_muni_ibge').html(data);
                                                        },
                                                        error: function () {
                                                            alert('erro ao pegar os municipios');
                                                        }
                                                    });
                                                });
                                            });
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
