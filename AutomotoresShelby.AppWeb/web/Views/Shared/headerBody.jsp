<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.appweb.utils.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Venta de Carros</title>
        <link href="wwwroot/css/css1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>Bienvenidos a Exhibición de Carros Shelby</h1>
            <% if (SessionUser.isAuth(request)) {  
                 var sessionU = SessionUser.getUser(request);
            %>
            <nav>
                <ul>
                    <li><a href="Home" style="margin-left: 350px">Inicio</a></li>
                    <li><a href="Carros">Carros</a></li>
                </ul>
            </nav>
            <div class="dropdown" style="margin-right: 70px">
                <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Bienvenido <%=sessionU%>
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img src="wwwroot/img/user.png" alt="60" width="60"/>
                    </a>
                    <a class="dropdown-item" href="Usuario"><%=sessionU%></a>
                    <a class="dropdown-item" href="Rol">Rol</a>
                    <a class="dropdown-item" href="Usuario?accion=cambiarpass">Cambiar Contraceña</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Usuario?accion=login">Cerrar Secion</a>
                </div>
            </div>
            <%}
            else { %>
            <div class="dropdown" style="margin-right: 70px">
                <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Inicio de Secion
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img src="wwwroot/img/user.png" alt="60" width="60"/>
                    </a>
                    <a class="dropdown-item" href="Usuario">Perfil</a>
                    <a class="dropdown-item" href="Usuario?accion=cambiarpass">Cambiar Contraceña</a>
                    <div class="dropdown-divider"></div>
                </div>
            </div>
            <% } %>
        </header>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>