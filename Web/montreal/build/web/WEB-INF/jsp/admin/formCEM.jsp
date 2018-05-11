<%-- 
    Document   : formCEM
    Created on : 11-may-2018, 13:06:26
    Author     : Lorena
    Description: Formulario de Encargados CEL, recordar que debe ser dinámico.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario encargado CEM</title>
    </head>
    <body>
        <h1>Formuluario encargado CEM</h1>
        
        <form >
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
                <tr>
                    <td>Centro de Estudios que Pertenece: </td>
                    <td> <input type="text" name="CEM" value="" disabled /></td>
                </tr>
            </table>
        </form>
    </body>
</html>