<%@ tag pageEncoding="utf-8"%>
<%@attribute name="cssEspecifico" fragment="true" 
             required="false" %>
<%@attribute name="scriptEspecifico" fragment="true" 
             required="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
        <title>Loja Web</title>
        <meta name="description" content="" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- CSS Bootstrap -->
        <link href="<c:url value="/static/css/bootstrap.min.css" />"
              rel="stylesheet" />
        <link href="<c:url value="/static/css/geral.css" />" rel="stylesheet" />
        <link href="<c:url value="/static/css/sweetalert.css" />"
              rel="stylesheet" />
        <link rel="stylesheet"
              href="<c:url value="/static/css/bootstrap-table.min.css"/>">
        <link rel="stylesheet"
              href="<c:url value="/static/css/font-awesome.css"/>">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
        <jsp:invoke fragment="cssEspecifico"></jsp:invoke>
        </head>
        <body>
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar"></span> <span class="icon-bar"></span> <span
                                class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Sistema Web</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="<c:url value="/home"/>">Home</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                data-toggle="dropdown">Cadastros <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<c:url value="/genero"/>">Gêneros</a></li>
                                <li><a href="<c:url value="/produtora"/>">Produtoras</a></li>
                                <li><a href="<c:url value="/serie"/>">Séries</a></li>
                                <li><a href="<c:url value="/episodeio"/>">Episódios</a></li>
                                <li class="divider"></li>
                                <li class="navbar-header">Outros</li>
                                <li><a href="#">Estados</a></li>
                                <li><a href="#">Cidades</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Sobre</a></li>
                        <li><a href="#">Contato</a></li>
                        <li><a href="<c:url value="#"/>">Sair</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <div class="spacer">
            <br /> <br /> <br /> <br />
        </div>
        <div id="wrap">
            <div id="main" class="container clear-top">
                <jsp:doBody />
            </div>
        </div>
        <footer class=bs-docs-footer>
            <div class=container>
                <ul class=bs-docs-footer-links>
                    <li><a href="https://github.com">GitHub</a></li>
                    <li><a href="https://twitter.com">Twitter</a></li>
                    <li><a href="<c:url value="/sobre"/>" >About</a></li>
                </ul>
                <p>&copy; UTFPR 2016 - Todos os direitos reservados!</p>
            </div>
        </footer>
        <!-- Scripts -->
        <script src="<c:url value="/static/js/jquery/jquery-3.1.0.min.js" />"
        type="text/javascript"></script>
        <script src="<c:url value="/static/js/bootstrap.min.js" />"
        type="text/javascript"></script>
        <script src="<c:url value="/static/js/bootstrap-table.min.js" />"
        type="text/javascript"></script>
        <script src="<c:url value="/static/js/sweetalert.min.js" />"
        type="text/javascript"></script>
        <script src="<c:url value="/static/js/geral.js" />"
        type="text/javascript"></script>
        
        <jsp:invoke fragment="scriptEspecifico"></jsp:invoke>
    </body>
</html>