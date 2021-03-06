<%-- 
    Document   : verUsuarios
    Created on : Nov 1, 2015, 12:58:09 AM
    Author     : anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/modern-business.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <div class="container">
            <c:if test="${sessionScope.usuario != null && sessionScope.usuario.tipo == true}">
                <div class="col-md-10">
                    <a href="cadastrarGrupo.jsp" type="button" class="btn btn-success">
                        <span class="glyphicon glyphicon-plus"> Adicionar Administrador</span>
                    </a>


                </c:if>
                <h2 class="page-header">Usuarios</h2>
            </div>
            <div class="row"><br><br>

                <div class="col-md-3">
                    <div class="list-group">
                        <a href="controller?command=VerTodosOsUsuarios" class="list-group-item">Todos os Usuarios</a>
                        <a href="controller?command=" class="list-group-item">Meus Amigos</a>
                    </div>
                </div>
                <!--Content Column--> 
                <div class="col-md-9">
                    <c:forEach items="${requestScope.usuariosCadastrados}" var="usuario">
                        <div class="col-md-3 text-center">
                            <div class="thumbnail">
                                <div class="caption">
                                    <h3>${usuario.primeiroNome} ${usuario.segundoNome} <br>
                                        <small>${usuario.apelido}</small>
                                    </h3>
                                    <ul class="list-inline"><a type="button" href="controller?command=VerPerfilUsuario&id=${usuario.email}" class="btn btn-success">Ver Perfil</a></ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
