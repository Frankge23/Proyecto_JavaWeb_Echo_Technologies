<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Carros" %>
<% Carros carros = (Carros) request.getAttribute("carros");  %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Eliminar Carros</title>
        <link href="wwwroot/css/stilo3.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container col-lg-5" style="margin-top: 40px">
            <h5>Eliminar Carros</h5>
            <form action="Carros" method="post">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <input type="hidden" name="id" value="<%=carros.getId()%>">
                <div class="row" style="margin-top: 20px">
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtMarca" name ="marca" required 
                               class="validate" maxlength="30"
                               value="<%=carros.getMarca()%>" disabled>
                        <label for="txtMarca">Marca</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtColor" name ="color" required 
                               class="validate" maxlength="30"
                               value="<%=carros.getColor()%>" disabled>
                        <label for="txtColor">Color</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtModelo" name ="modelo" required 
                               class="validate" maxlength="25"
                               value="<%=carros.getModelo()%>" disabled>
                        <label for="txtModelo">Modelo</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtAño" name ="año" required 
                               class="validate" maxlength="30"
                               value="<%=carros.getAño()%>" disabled>
                        <label for="txtAño">Año</label>
                    </div>
                    <div class="input-field col 14 s12" style="margin-top: 30px">
                        <input type="text" id="txtPrecio" name ="Precio" required 
                               class="validate" maxlength="30"
                               value="<%=carros.getPrecio()%>" disabled>
                        <label for="txtPrecio">Precio</label>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px">
                    <div class="col 112 s12">
                        <button type="submit" class="btn btn-danger">
                            <i class="material-icons right">delete</i>Eliminar
                        </button>
                        <a href="Carros" class="btn btn-warning">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>
