<%-- 
    Document   : CEMActualizarAccion
    Created on : 31-05-2018, 11:24:09
    Author     : Lorena
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
            <h1>Usuario Encargado CEM Actualizado Exitosamente</h1>
            <hr>
            <table>
                <tr>
                    <th>Alias: </th>
                    <td><c:out value="${usuarioResult.username}" /></th>
                </tr>
                <tr>
                    <th>Nombre: </th>
                    <td><c:out value="${usuarioResult.nombre}" /> </td>
                </tr>
                 <tr>
                    <th>Apellido: </th>
                    <td><c:out value="${usuarioResult.apellido}" /></th>
                </tr>
                 <tr>
                    <th>Email: </th>
                    <td><c:out value="${usuarioResult.email}" /></th>
                </tr>
            </table>
                <p>
                    ${msj}
                </p>
        </div>
        
        <div align="center">
            <a href="../admin/home.htm">Volver</a>
        </div>
        
    </body>
</html>
