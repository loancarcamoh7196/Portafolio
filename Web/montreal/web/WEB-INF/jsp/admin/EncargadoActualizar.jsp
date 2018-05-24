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
        <title>Home</title>
    </head>
    <body>
        <h1>Listado usuario 
        <c:if test="${tipo_usuario == 2}">
               Encargado CEM
        </c:if>
        <c:if test="${tipo_usuario == 3}">
               Encargado CEL
        </c:if>
        </h1>
        <div align="center">
            <c:if test="${nombre == null}">
                <p>No se ha encontrado registros relacionados </p>
            </c:if>
            <c:if test="${nombre != null}">
                <table>
                    <tr>
                        <th>Alias: </th>
                        <th><c:out value="${username}" /> </th>
                    </tr>
                    <tr>
                        <th>Contraseña: </th>
                        <th><c:out value="${password}" /> </th>
                    </tr>
                    <tr>
                        <th>Nombre: </th>
                        <th><c:out value="${nombre}" /> </th>
                    </tr>
                    <tr>
                        <th>Apellido: </th>
                        <td><c:out value="${apellido}" /></th>
                    </tr>
                    <tr>
                        <th>Email: </th>
                        <td><c:out value="${email}" /></th>
                    </tr>
                </table>
            </c:if>
            
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>