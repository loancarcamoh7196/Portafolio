<%-- 
    Document   : formCEL
    Created on : 11-may-2018, 13:46:27
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario encargado CEL</title>
    </head>
    <body>
        <h1>Formluario encargado CEM</h1>
        
        <form >
            <table>
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