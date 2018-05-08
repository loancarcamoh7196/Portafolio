<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Datos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" />
    </head>
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
                                <th>Nombre</th>
                                <th>Contraseña</th>
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
