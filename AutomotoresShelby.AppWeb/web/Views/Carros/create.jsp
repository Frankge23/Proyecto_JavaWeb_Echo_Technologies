<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Carros" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Carros</title>
        <link href="wwwroot/css/estilo2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container" style="margin-top: 40px">
            <h5>Agregar Nuevos Carros</h5>
            <form action="Carros" method="post">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <div class="row" style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtMarca" name ="marca" required 
                               class="validate" maxlength="30">
                        <label for="txtMarca">Marca</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtColor" name ="color" required 
                               class="validate" maxlength="30">
                        <label for="txtColor">Color</label>
                    </div>
                </div>
                <div class="row" style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtModelo" name ="modelo" required 
                               class="validate" maxlength="25">
                        <label for="txtModelo">Modelo</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtAño" name ="año" required 
                               class="validate" minlength="5" maxlength="32">
                        <label for="txtAño">Año</label>
                    </div>
                </div>
                <div class="row"style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtPrecio" name ="precio" required 
                               class="validate" minlength="5" maxlength="32">
                        <label for="txtPrecio">Precio</label>
                    </div>
                </div>
                <div class="row" style="margin: 50px">
                    <div class="col 112 s12" >
                        <button type="submit" class="btn btn-info">
                            <i class="material-icons right">save</i>Guardar
                        </button>
                        <a href="Usuario" class="btn btn-danger">
                            <i class="material-icons right">list</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>
