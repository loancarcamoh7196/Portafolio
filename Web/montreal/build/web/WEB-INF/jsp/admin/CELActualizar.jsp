<%-- 
    Document   : CEL_lista
    Created on : 30-05-2018, 10:12:22
    Author     : Lorena
    Nota       : Pendiente
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Administrador - Busqueda CEL</title>
    </head>
    <body>
        <h1> Resultado encargado CEL </h1>
        <div align="center">
            <c:if test="${listUsers == null}">
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
                <c:forEach items="${listUsers}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.nombre}</td>
                        <td>${user.apellido}</td>
                        <td>${user.email}</td>
                    </tr>
                </c:forEach>
            </table>
                
            <c:if test="${listUsers != null}">
                <p>Si hay datos </p>
            </c:if>
            
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>