<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Rol" %>
<% 
    Rol rol = (Rol) request.getAttribute("rol");
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Eliminar Rol</title>
        <link href="wwwroot/css/stilo3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container col-lg-4" style="margin-top: 40px">
            <h5>Eliminar Rol</h5>
            <form action="Rol" method="post">
               <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" value="<%=rol.getId()%>">
                <div class="row" style="margin: 20px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtNombre" name ="nombre" required 
                               class="validate" maxlength="30" value="<%=rol.getNombre()%>" disabled>
                        <label for="txtNombre">Nombre</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col 112 s12">
                        <button type="submit" class="btn btn-danger" style="margin-left: 35px">
                            <i class="material-icons right">delete</i>Eliminar
                        </button>
                        <a href="Rol" class="btn btn-warning">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>
