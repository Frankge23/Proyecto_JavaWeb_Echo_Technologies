<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.appweb.utils.*"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de Automotores</title>
    

    <!--FAVICON-->
    <link rel="icon" href="wwwroot/img/favicon.ico">

    <!--LINK CSS-->
    <link href="wwwroot/css/carro1.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <jsp:include page="/Views/Shared/headerBody.jsp" /> 

    <!--BARRA-->
  <div class="barra">

    <h1 class="alinear-texto">Carros</h1>

    <!--MAIN ANUNCIOS-->
    <main class="section">

        <div class="contenedor">

            <!--CONTENEDOR-ANUNCIOS-->
            <div class="contenedor-anuncios">

                <div class="anuncio">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/mustang.jpg" alt="Ford Mustang Mach 1">

                    </div>

                    <div>
                        <h3>Ford Mustang Mach 1</h3>
                        <p>Edición limitada</p>
                        <a href="https://www.ford.es/turismos/mustang/modelos/mach-1" target="_blank">Más información</a>
                        <p class="precio">60,000 $</p>
                    </div>

                </div>

                <div class="anuncio">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/bugatti.jpg" alt="Bugatti Veyron 2022">

                    </div>

                    <div>
                        <h3>Bugatti Veyron 2022</h3>
                        <p>Solo existe 30 unidades</p>
                        <a href="https://www.bugatti.com/" target="_blank">Más información</a>
                        <p class="precio">3,200,000 $</p>
                    </div>

                </div>

                <div class="anuncio">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/ferrari.jpg" alt="Ferrari 458 ITALIA">

                    </div>

                    <div>
                        <h3>Ferrari 458 Italia</h3>
                        <p>Digno sucesor del Ferrari F430</p>
                        <a href="https://www.ferrari.com/en-PS/auto/458-italia" target="_blank">Más información</a>
                        <p class="precio">250,000 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/carroshelby.jpg" alt="Shelby Cobra 427">

                    </div>

                    <div>
                        <h3>Shelby Cobra 427</h3>
                        <p>El heredero directo del primer Shelby</p>
                        <a href="https://www.shelby.com/Vehicles/Shelby-CSX6000-427-Cobra" target="_blank">Más información</a>
                        <p class="precio">339.420 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/carro.jpg" alt="Mustang Shelby GT">

                    </div>

                    <div>
                        <h3>Mustang Shelby GT </h3>
                        <p>Con 720 CV de potencia</p>
                        <a href="https://www.fordelsalvador.com/mustang.php" target="_blank">Más información</a>
                        <p class="precio">284.700 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/AstonMartinDB11.jpg" alt="Aston Martin DB11">

                    </div>

                    <div>
                        <h3>Aston Martin DB11</h3>
                        <p>Lo bueno de un coupé y de un roadster</p>
                        <a href="https://www.astonmartin.com/en/models/db11" target="_blank">Más información</a>
                        <p class="precio">214.120 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/Rolls-RoyceWraith.jpg" alt="Rolls-Royce Wraith">

                    </div>

                    <div>
                        <h3>Rolls-Royce Wraith</h3>
                        <p>El coupé más lujoso del mercado</p>
                        <a href="https://www.rolls-roycemotorcars.com/en_US/showroom/wraith.html" target="_blank">Más información</a>
                        <p class="precio">245.000 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/FerrariPortofino.jpg" alt="Ferrari Portofino">

                    </div>

                    <div>
                        <h3>Ferrari Portofino</h3>
                        <p>Descapotable gama Ferrari</p>
                        <a href="https://www.ferrari.com/es-ES/auto/ferrari-portofino" target="_blank">Más información</a>
                        <p class="precio">215.602 $</p>
                    </div>

                </div>

                <div class="anuncio margin-top">

                    <div class="contenedor-img">

                        <img src="wwwroot/img/AudiA8.jpg" alt="Audi A8">

                    </div>

                    <div>
                        <h3>Audi A8</h3>
                        <p>El buque insignia de Audi</p>
                        <a href="https://www.audi.es/es/web/es/modelos/a8/a8.html" target="_blank">Más información</a>
                        <p class="precio">110.130 $</p>
                    </div>

                </div>

            </div>

        </div>

    </main>

    <!--FOOTER-->
    <footer>

        <!--BARRA-->
        <div class="barra">

            <div class="contenedor-barra contenedor footer">

              
                <p class="copyright">&copy; Copyright 2024 - Todos los Derechos Reservados Automoviles Shelby</p>

            </div>

        </div>

    </footer>

</body>

</html>