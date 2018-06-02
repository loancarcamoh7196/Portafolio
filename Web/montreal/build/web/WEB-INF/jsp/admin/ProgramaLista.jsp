<%-- 
    Document   : ProgramaLista
    Created on : 30-05-2018, 13:40:25
    Author     : Lorena
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Administración General Postulaciones Programa - Resultados busqueda</title>
    </head>

    <body>
        <h1> Resultado Programa Estudios</h1>
        <div align="center">
            <c:if test="${listadoPrograma == null}">
                <p>No se ha encontrado registros relacionados </p>
            </c:if>
                
            <!-- Recorre List del Controller  -->    
            <table border="1">
                 <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Duración (dias)</th>
                    <th>Cupos Minimos</th>
                    <th>Cupos Maximo</th>
                    <th>CEM Asociado</th>
                    <th>Estado</th>
                    <th></th>
                </thead>
                <c:forEach  var="user" items="${listadoPrograma}">
                    
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.nombre}</td>
                        <td>${user.descripcion}</td>
                        <td>${user.duracion}</td>
                        <td>${user.cant_minima}</td>
                        <td>${user.cant_maxima}</td>
                        <td>${user.cem}</td>
                        <td>
                            <c:if test="${user.estado == 13}">
                                Aprobado
                            </c:if>
                            <c:if test="${user.estado == 14}">
                                Rechazado
                            </c:if>
                            <c:if test="${user.estado == 15}">
                                En Proceso
                            </c:if>
                        </td>
                        <td>
                            <form action="../admin/ProgramaActualizarForm.htm" method="GET">
                                <input type="hidden" id="id" name="id" value="${user.id}" >
                                <input type="hidden" id="nombre" name="nombre" value="${user.nombre}" >
                                <input type="hidden" id="descripcion" name="descripcion" value="${user.descripcion}" >
                                <input type="hidden" id="duracion" name="duracion" value="${user.duracion}" >
                                <input type="hidden" id="cant_minima" name="cant_minima" value="${user.cant_minima}" >
                                <input type="hidden" id="cant_maxima" name="cant_maxima" value="${user.cant_maxima}" >
                                <input type="hidden" id="cem" name="cem" value="${user.cem}" >
                                <input type="hidden" id="estado" name="estado" value="${user.estado}" >
                                <input type="submit" value="Actualizar"/>
                            </form>
                        </td>
                        <td>
                            <form action="../admin/ProgramaEliminar.htm" method="GET">
                                <input type="hidden" id="id" name="id" value="${user.id}" >
                                <input type="hidden" id="nombre" name="nombre" value="${user.nombre}" >
                                <input type="hidden" id="descripcion" name="descripcion" value="${user.descripcion}" >
                                <input type="hidden" id="duracion" name="duracion" value="${user.duracion}" >
                                <input type="hidden" id="cant_minima" name="cant_minima" value="${user.cant_minima}" >
                                <input type="hidden" id="cant_maxima" name="cant_maxima" value="${user.cant_maxima}" >
                                <input type="hidden" id="cem" name="cem" value="${user.cem}" >
                                <input type="hidden" id="estado" name="estado" value="${user.estado}" >
                                <input type="submit" value="Eliminar"/>
                            </form>
                        </td>
                        
                    </tr>
                </c:forEach>
                
            </table>
                
            <c:if test="${listadoPrograma != null}">
                <p>Si hay datos </p>
                <p>${listadoPrograma}</p>
            </c:if>
            
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>
