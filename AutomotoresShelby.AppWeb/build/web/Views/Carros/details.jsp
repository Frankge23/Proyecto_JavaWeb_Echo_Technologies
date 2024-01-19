<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Carros" %>
<% Carros carros = (Carros) request.getAttribute("carros");  %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Carros</title>
        <link href="wwwroot/css/stilo3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container col-lg-5" style="margin-top: 40px">
            <h5>Detalle Carros</h5>
            <input type="hidden" name="accion" 
                   value="<%=request.getAttribute("accion")%>" id="txtHidden">
            <input type="hidden" name="id" value="<%=carros.getId()%>">
            <div class="row" style="margin-top: 20px">
                <div class="input-field col 14 s12" style="margin-top: 30px">
                    <input type="text" id="txtMarca" name ="marca" required 
                           class="validate" maxlength="30"
                           value="<%=carros.getMarca()%>"
                           disabled>
                    <label for="txtMarca">Marca</label>
                </div>
                <div class="input-field col 14 s12" style="margin-top: 30px">
                    <input type="text" id="txtColor" name ="color" required 
                           class="validate" maxlength="30"
                           value="<%=carros.getColor()%>"
                           disabled>
                    <label for="txtColor">Color</label>
                </div>
                <div class="input-field col 14 s12" style="margin-top: 30px">
                    <input type="text" id="txtModelo" name ="modelo" required 
                           class="validate" maxlength="25"
                           value="<%=carros.getModelo()%>"
                           disabled>
                    <label for="txtModelo">Modelo</label>
                </div>
                <div class="input-field col 14 s12" style="margin-top: 30px">
                    <input type="text" id="txtAño" name ="Año" required 
                           class="validate" maxlength="30"
                           value="<%=carros.getAño()%>"
                           disabled>
                    <label for="txtAño">Año</label>
                </div>
                <div class="input-field col 14 s12" style="margin-top: 30px">
                    <input type="text" id="txtPrecio" name ="precio" required 
                           class="validate" maxlength="30"
                           value="<%=carros.getPrecio()%>"
                           disabled>
                    <label for="txtPrecio">Precio</label>
                </div>
            </div>
            <div class="row" style="margin-top: 30px">
                <div class="col 112 s12">
                    <a href="Carros?accion=edit&id=<%=carros.getId()%>" class="btn btn-info">
                        <i class="material-icons right">edit</i>Modificar
                    </a>
                    <a href="Carros" class="btn btn-danger">
                        <i class="material-icons right">list</i>Cancelar
                    </a>
                </div>
            </div>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>

