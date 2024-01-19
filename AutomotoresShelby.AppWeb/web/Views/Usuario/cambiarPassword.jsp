<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Usuario" %>
<% Usuario usuario = (Usuario) request.getAttribute("usuario");%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Cambiar Password</title>
        <link href="wwwroot/css/stilo3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container col-lg-5" style="margin-top: 40px">
            <h5>Cambiar Password</h5>
            <form action="Usuario" method="post" onsubmit="return validarFormulario()">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" 
                       value="<%=usuario.getId()%>" id="txtHiddenId">
                <div class="row" style="margin-top: 20px"> 
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtLogin" name ="login" required 
                               class="validate" maxlength="25" 
                               value = "<%=usuario.getLogin()%>"readonly>
                        <label for="txtLogin">Login</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtPasswordActual" name ="passwordActual" 
                               required class="validate" 
                               minlength="5" maxlength="32">
                        <label for="txtApellido">Password Actual</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="password" id="txtPassword" name ="password" required 
                               class="validate" minlength="5" maxlength="32">
                        <label for="txtPassword">Password</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="password" id="txtConfirmPassword_aux" 
                               name ="confirmPassword_aux" 
                               required class="validate" minlength="5" maxlength="32">
                        <label for="txtConfirmPassword_aux">Confirmar Password</label>
                        <span id="txtConfirmPassword_aux_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px">
                    <div class="col 112 s12">
                        <button type="submit" class="btn btn-info">
                            <i class="material-icons right">save</i>Guardar
                        </button>
                        <a href="Rol" class="btn btn-danger">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
        <script>
            function validarFormulario()
            {
                var result = true;
                var txtPassword = $("#txtPassword").val();
                var txtConfirmPassword = $("#txtConfirmPassword_aux").val();
                
                if(txtPassword != txtConfirmPassword)
                {
                    $("#txtConfirmPassword_aux_error").empty();
                    $("#txtConfirmPassword_aux_error")
                    .append("El Password y Confirmar password deben ser iguales");
                    result = false;
                }
                else
                {
                    $("#txtConfirmPassword_aux_error").empty();
                }
                
                return result;
            }
        </script>
    </body>
</html>
