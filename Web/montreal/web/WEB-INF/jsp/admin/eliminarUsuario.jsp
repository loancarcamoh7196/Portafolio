<%-- 
    Document   : eliminarUsuario
    Created on : 10-may-2018, 12:26:19
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuarios - Eliminación de Usuarios</title>
    </head>
    <body>
        <h1>Eliminación de Usuarios</h1>
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
                        <td> <input type="radio" name="tipo" value="4" />Alumno </td>
                        <td> <input type="radio" name="tipo" value="2" />Familia </td>
                    </tr>
                    <tr>
                        <td> <input type="submit" name="Buscar"/> </td>
                    </tr>
                </table>
            </form>
        </p>
    </body>
</html>
