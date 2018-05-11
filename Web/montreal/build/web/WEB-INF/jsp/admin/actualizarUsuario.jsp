<%-- 
    Document   : actualizarUsuario
    Created on : 10-may-2018, 12:25:55
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuarios - Actualizar Usuario CEM/CEL</title>
    </head>
    <body>
        <h1>Actualizar Usuario CEM/ CEL</h1>
        <p>
            Ingrese nombre de usuario y seleccione tipo de usuario encargado CEM-CEL
            <form>
                <table> 
                    <tr>
                        <td>Usuario :</td>
                        <td> <input type="text" name="usernameBusq" /> </td>
                    </tr>
                    <tr>
                        <td>Tipo: </td>
                        <td> <input type="radio" name="tipo" value="2" />Encargado CEM </td>
                        <td> <input type="radio" name="tipo" value="3"/> Encargado CEL </td>
                    </tr>
                    <tr>
                        <td> <input type="submit" name="Buscar"/> </td>
                    </tr>
                </table>
            </form>
        </p>
    </body>
</html>
