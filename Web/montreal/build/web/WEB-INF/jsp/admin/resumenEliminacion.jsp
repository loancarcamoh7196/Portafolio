<%-- 
    Document   : resumenEliminacion
    Created on : 11-may-2018, 15:46:34
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resumen eliminación Usuario</title>
    </head>
    <body>
        <h1>Resumen eliminación usuario </h1>
        <p>
            ¿Desea eliminar el usaurio id XXX ?
        </p>
         <table>
            <tr>
                <td>Alias o Username :</td>
                <td> <input type="text" name="username" value=""/><td>
            </tr>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="nombre" value="" /></td>
            </tr>
            <tr>
                <td>Apellido: </td>
                <td><input type="text" name="apellido" value="" /></td>
            </tr>

            <tr>
                <td>Email:</td>
                <td> <input type="text" name="email" value="" /> </td>
            </tr>
        </table>
        <form>
            <table>
                <tr>
                    <td><input type="submit" name="confirmar" value="Confirmar" > </td>
                    <td><input type="button" name="volver" value="Cancelar" onclick=""></td>
                </tr> 
            </table>
        </form>
    </body>
</html>
