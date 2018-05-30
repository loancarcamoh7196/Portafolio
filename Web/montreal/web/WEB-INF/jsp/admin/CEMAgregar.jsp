<%-- 
    Document   : CEMAgregar
    Created on : 23-05-2018, 15:45:21
    Author     : Portafolio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Resultados CEM</title>
    </head>
    <body>
        <div align="center">
            <h1>Usuario Encargado CEM Agregado Exitosamente</h1>
            <hr>
            <table>
                <tr>
                    <th>Alias: </th>
                    <td><c:out value="${username}" /></th>
                </tr>
                <tr>
                    <th>Nombre: </th>
                    <td><c:out value="${nombre}" /> </td>
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
        </div>
        
        <div align="center">
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>
