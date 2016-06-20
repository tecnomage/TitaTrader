
  <%@ page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
         <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <head>
            <c:url value="/" var="contextPath" />
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
            <title>BBTI trader</title>

            <!-- Bootstrap -->

            <link  rel="stylesheet"  href="${contextPath}assets/css/bootstrap.min.css" >
            <link rel="stylesheet" href="${contextPath}assets/css/bootstrap-theme.min.css" >
            <style>
          body {
                padding-top: 60px;
              }
              @media (max-width: 980px) {
                body {
                    padding-top: 0;
                    }
                }
        </style>

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
          </head>

          <body>
             <nav class="navbar navbar-default navbar-fixed-top">
              <div class="container">
                 <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar">opcao 1</span>
                    <span class="icon-bar">opcao 2</span>
                    <span class="icon-bar">opcao 3</span>
                  </button>
                  <a class="navbar-brand" href="#">Tita Trader</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="/TitaTrader/">Home</a></li>
                    <li><a href="about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Listar Acões</a></li>
                        <li><a href="#">Incluir Acao</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                      </ul>
                    </li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="../navbar/">Default</a></li>
                    <li><a href="../navbar-static-top/">Static top</a></li>
                    <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
                  </ul>
                </div><!--/.nav-collapse -->
              </div>
            </nav>
              
          <div class="container"/>

              <div class="starter-template" >
                <h1  style="padding-down:5px;">Aqui seu violino chora melhor</h1>
                <p class="lead"><br>
                criado por Manja Dev
                <a href="mailto:tecnocratay@gmail.com">Entre em contato </a>
                  <br> <img src="${contextPath}assets/img/TitaTrader.jpg"/>
                  </p>
              </div>

            </div><!-- /.container -->




            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
               <script src="assets/js/bootstrap.min.js" ></script>
          </body>      
              