<%-- 
    Document   : listaUsuario
    Created on : 14-may-2018, 18:46:36
    Author     : Lorena
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuario - Búsqueda</title>
    </head>
    <body>
        <h1>Resultados de busqueda de Usuario </h1>
        <h4>Para eliminación</h4>
        
        <p>
            Cabe aclarar que los registros relaciona usuario no seran eliminados,
            en caso de futuras consultas
        </p>
        <div align="center">
            <c:if test="${listUsers == null}">
                <p>No se ha encontrado registros relacionados </p>
            </c:if>
                
            <!-- Recorre List del Controller  -->    
            <table border="1">
                 <thead>
                    <th>Id</th>
                    <th>Alias o UserName</th>
                    <th>Clave</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th> </th>
                </thead>
                <c:forEach  var="user" items="${listUsers}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>${user.nombre}</td>
                        <td>${user.apellido}</td>
                        <td>${user.email}</td>
                        <td>
                            <form action="../admin/UsuarioEliminar.htm" method="GET">
                                <input type="hidden" id="id" name="id" value="${user.id}" >
                                <input type="hidden" id="id" name="id" value="${user.id}" >
                                <input type="hidden" id="username" name="username"value="${user.username}" >
                                <input type="hidden" id="pass" name="pass" value="${user.password}" >
                                <input type="hidden" id="nombre" name="nombre" value="${user.nombre}" >
                                <input type="hidden" id="apellido" name="apellido" value="${user.apellido}" >
                                <input type="hidden" id="email" name="email" value="${user.email}" >
                                <input type="hidden" id="tipo" name="tipo" value="${user.tipo_usuario}" >
                                <input type="submit" value="Eliminar"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                
            </table>
                
            <c:if test="${listUsers != null}">
                <p>Si hay datos </p>
                <p>${listUsers}</p>
            </c:if>
            
            <a href="../admin/home.htm">Volver</a>
        </div>
    </body>
</html>
