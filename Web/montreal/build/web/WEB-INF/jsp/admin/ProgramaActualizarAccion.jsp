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
        <title>Administración Postulaciones de Programa - Actualizar</title>
    </head>
    <body>
        <div align="center">
            <h1>Programa de Estudios Actualizado Exitosamente</h1>
            <hr>
            <table>
                <tr>
                    <th>ID : </th>
                    <td><c:out value="${usuarioResult.id}" /></th>
                </tr>
                <tr>
                    <th>Nombre : </th>
                    <td><c:out value="${usuarioResult.nombre}" /></th>
                </tr>
                <tr>
                    <th>Descripción: </th>
                    <td><c:out value="${usuarioResult.descripcion}" /> </td>
                </tr>
                 <tr>
                    <th>Estado: </th>
                    <td><c:out value="${usuarioResult.estado}" /></th>
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
