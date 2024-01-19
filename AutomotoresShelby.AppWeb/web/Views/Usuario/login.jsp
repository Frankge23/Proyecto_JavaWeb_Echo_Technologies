<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Iniciar Sesion</title>
        <link href="wwwroot/css/estilo1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container col-lg-3">
            <form action="Usuario?accion=login" method="post">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <div class="form-group text-center">
                    <img src="wwwroot/img/Shelby-Logo.png" height="80" width="150" />
                </div>
                
                <div class="form-group">
                    <label for="txtLogin">Usuario</label>
                    <input class="form-control" type="text" id="txtLogin" name ="login" required 
                               class="validate" placeholder="Usuario">
                    
                </div>
                <div class="form-group">
                    <label for="txtPassword">Contraceña</label>
                    <input class="form-control"  type="password" id="txtPassword" name ="password" required 
                               class="validate" placeholder="Contraceña">
                </div>
                
                <input class="btn btn-warning btn-block" type="submit" name="accion" value="Ingresar">
                
            </form>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>