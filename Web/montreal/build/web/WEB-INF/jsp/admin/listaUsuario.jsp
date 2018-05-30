<%-- 
    Document   : listaUsuario
    Created on : 14-may-2018, 18:46:36
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Usuarios</title>
    </head>
    <body>
        <h1>Lista Usuarios</h1>
        
        <body>
        <div>
            <div class="container">
                <div class="row">
                    <p>
                        <a href="" class="btn btn-success">Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th> Alias </th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach items="${userList}" var="listValue">
                                <tr>
                                    <th>
                                        <c:out value="${listValue.id}"/>
                                    </th>
                                    <th>
                                        <c:out value="${listValue.username}"/>
                                    </th>
                                    <th>
                                        <c:out value="${listValue.password}"/>
                                    </th>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
