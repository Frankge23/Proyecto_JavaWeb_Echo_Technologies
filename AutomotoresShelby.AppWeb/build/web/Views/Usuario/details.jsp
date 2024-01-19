<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Usuario" %>
<% Usuario usuario = (Usuario) request.getAttribute("usuario");  %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Detalle Usuario</title>
        <link href="wwwroot/css/stilo3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container col-lg-5" style="margin-top: 40px">
            <h5>Detalle Usuario</h5>
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" value="<%=usuario.getId()%>">
                <div class="row" style="margin-top: 20px">
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtNombre" name ="nombre" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getNombre()%>"
                               disabled>
                        <label for="txtNombre">Nombre</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtApellido" name ="apellido" required 
                               class="validate" maxlength="30"
                               value="<%=usuario.getApellido()%>"
                               disabled>
                        <label for="txtApellido">Apellido</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtLogin" name ="login" required 
                               class="validate" maxlength="25"
                               value="<%=usuario.getLogin()%>"
                               disabled>
                        <label for="txtLogin">Login</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <select id="slEstatus" name="estatus" class="validate"
                                disabled>
                            <option value="0" <%=usuario.getEstatus() == 0 ? "selected":""%>>--SELECCIONAR--</option>
                            <option value="1" <%=usuario.getEstatus() == 1 ? "selected":""%>>ACTIVO</option>
                            <option value="2" <%=usuario.getEstatus() == 2 ? "selected":""%>>INACTIVO</option>
                        </select>
                        <label for="slEstatus" >Estatus</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtRol" value="<%=usuario.getRol().getNombre()%>"
                               disabled>
                       <label for="slEstatus" >Rol</label>
                   </div>
                </div>
                <div class="row" style="margin-top: 30px">
                    <div class="col 112 s12">
                        <a href="Usuario?accion=edit&id=<%=usuario.getId()%>" class="btn btn-info">
                            <i class="material-icons right">edit</i>Modificar
                        </a>
                        <a href="Usuario" class="btn btn-danger">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>

