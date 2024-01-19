<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="automotoresshelby.entidadesdenegocios.Carros" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%ArrayList<Carros> carross = (ArrayList<Carros>) request.getAttribute("carross");
    int numPage = 1;
    int numReg = 10;
    int countReg = 0;
    if(carross == null)
    {
        carross = new ArrayList();
    }
    else
        if(carross.size() > numReg)
        {
            double divNumPage = (double) carross.size() / (double) numReg;
            numPage = (int) Math.ceil(divNumPage);
        }
    String strTop_aux = request.getParameter("top_aux");
    int top_aux = 10;
    if(strTop_aux != null && strTop_aux.trim().length() > 0)
    {
        top_aux = Integer.parseInt(strTop_aux);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Carros</title>
        <link href="wwwroot/css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" /> 
        <main class="container">
            <h5 style="color: white">Buscar Carros</h5>
            <form action="Carros" method="post" style="margin-top: 20px">
                <input type="hidden" name="accion" value="<%request.getAttribute("accion");%>">
                <div class="row">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtMarca" name="marca">
                        <label for="txtMarca">Marca</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtModelo" name="modelo">
                        <label for="txtModelo">Modelo</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtAño" name="año">
                        <label for="txtAño">Año</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <jsp:include page="/Views/Shared/selectTop.jsp">
                            <jsp:param name="top_aux" value="<%=top_aux%>"/>
                        </jsp:include>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px">
                    <div class="input-field col 16 s12">
                        <button type="submit" class="btn btn-info">Buscar</button>
                        
                        <c:if test="${rol eq 'Administrador'}">
                        <a href="Carros?accion=create" class="btn btn-info">Nuevo</a>
                        </c:if>
                        <c:if test="${rol eq 'Usuario'}">
                      <!--  <a href="Carros?accion=create" class="btn btn-info">Nuevo</a>-->
                        </c:if>
                    </div>
                </div>
            </form>

            <div class="row">
                <table class="table table-success table-striped"  style="margin-top: 50px">
                    <thead>
                        <tr>
                            <th>Marca</th>
                            <th>Color</th>
                            <th>Modelo</th>
                            <th>Año</th>
                            <th>Precio</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        for(Carros carros:carross)
                        {
                           int tempNumPage = numPage;
                           if(numPage > 1)
                           {
                                countReg++;
                                double divTempNumPage = (double) countReg / (double) numReg;
                                tempNumPage = (int) Math.ceil(divTempNumPage);
                           }
                        %>
                        <tr data-page="<%=tempNumPage%>">
                            <td><%=carros.getMarca()%></td>
                            <td><%=carros.getColor()%></td>
                            <td><%=carros.getModelo()%></td>
                            <td><%=carros.getAño()%></td>
                            <td><%=carros.getPrecio()%></td>
                            <td>
                               <c:if test="${rol eq 'Administrador'}">
                                <div style="display: flex">
                                    <a href="Carros?accion=edit&id=<%=carros.getId()%>" 
                                       title="Mofificar" class="btn btn-success" style="margin: 7px">
                                        <i class="material-icons">edit</i>
                                    </a>
                                    <a href="Carros?accion=details&id=<%=carros.getId()%>" 
                                       title="Ver" class="btn btn-info" style="margin: 7px">
                                        <i class="material-icons">description</i>
                                    </a>
                                       
                                    <a href="Carros?accion=delete&id=<%=carros.getId()%>" 
                                       title="Eliminar" class="btn btn-danger" style="margin: 7px">
                                        <i class="material-icons">delete</i>
                                    </a>
                                </div>
                               </c:if>

                               <c:if test="${rol eq 'Usuario'}">
                                   <div style="display: flex">
                                      <!-- <a href="Carros?accion=edit&id=<%=carros.getId()%>" 
                                          title="Mofificar" class="btn btn-success" style="margin: 7px">
                                           <i class="material-icons">edit</i>
                                       </a>-->
                                     <!--  <a href="Carros?accion=details&id=<%=carros.getId()%>" 
                                          title="Ver" class="btn btn-info" style="margin: 7px">
                                           <i class="material-icons">description</i>
                                       </a>-->

                                     <!--   <a href="Carros?accion=delete&id=<%=carros.getId()%>" 
                                          title="Eliminar" class="btn btn-danger" style="margin: 7px">
                                           <i class="material-icons">delete</i> 
                                       </a>-->
                                   </div>
                               </c:if>
                            </td>
                        </tr> 
                        <%}%>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col 112 s12">
                    <jsp:include page="/Views/Shared/paginacion.jsp">
                        <jsp:param name="numPage" value="<%=numPage%>"/>
                    </jsp:include> 
                </div>
            </div>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
    </body>
</html>
