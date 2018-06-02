<%-- 
    Document   : eliminarUsuario
    Created on : 10-may-2018, 12:26:19
    Author     : Lorena
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuarios - Eliminación de Usuarios</title>
    </head>
    <body>
        <h1>Eliminación de Usuarios</h1>
         
        <div align="center">
            <p>
                Ingrese alias o nombre de usuario y seleccione tipo de usuario a Eliminar
            </p>
            <br>
            <form:form>
                <table> 
                    <tr>
                        <td><form:label path="username" >Alias o Username: </form:label></td>
                        <td> <form:input path="username"/><td>
                    </tr>
                    <tr>
                        <td><form:label path="tipo_usuario">Tipo:</form:label> </td>
                        <td> 
                            <form:radiobutton path="tipo_usuario" value="2" />Encargado CEM 
                            <form:radiobutton path="tipo_usuario" value="3"/> Encargado CEL 
                            <form:radiobutton path="tipo_usuario" value="4" />Alumno 
                            <form:radiobutton path="tipo_usuario" value="5" />Familia 
                        </td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td><a href="../admin/home.htm">Volver</a></td>
                        <td> <form:button>Buscar</form:button> </td>
                    </tr>
                </table>
            </form:form>
            <br>
        </div>
    </body>
</html>
