<%-- 
    Document   : EncargadoActualizar
    Created on : 23-05-2018, 21:33:46
    Author     : Lorena
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Administrador - Busqueda CEM/CEL</title>
    </head>
    <body>
        <h1> Resultado encargado CEM/CEL </h1>
        <div align="center">
            <c:if test="${ListadoUser == null}">
                <p>No se ha encontrado registros relacionados </p>
            </c:if>
                
            <!-- Recorre List del Controller  -->    
            <table>
                <thead>
                    <th>Id</th>
                    <th>Alias o UserName</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th></th>
                </thead>
                <c:forEach items="${ListadoUser}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.nombre}</td>
                        <td>${user.apellido}</td>
                        <td>${user.email}</td>
                    </tr>
                </c:forEach>
            </table>
                
            <c:if test="${Listado != null}">
                
            </c:if>
            
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>