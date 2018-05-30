<%-- 
    Document   : formCEM
    Created on : 11-may-2018, 13:06:26
    Author     : Lorena
    Description: Formulario de Encargados CEL, recordar que debe ser dinámico.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario encargado CEM</title>
    </head>
    <body>
        <h1>Formulario encargado CEM</h1>
        
        <div align="center">
            <form:form   >
                <table>
                    <tr>
                        <td><form:label path="username" >Alias o Username: </form:label></td>
                        <td> <form:input path="username"/><td>
                    </tr>
                    <tr>
                        <td><form:label path="password" >Contraseña: </form:label></td>
                        <td> <form:password path="password"/><td>
                    </tr>
                    <tr>
                        <td><form:label path="nombre" >Nombre: </form:label></td>
                        <td> <form:input path="nombre"  /><td>
                    </tr>
                    <tr>
                        <td><form:label path="apellido" >Apellido : </form:label></td>
                        <td> <form:input path="apellido"  /><td>
                    </tr>

                    <tr>
                       <td><form:label path="email" >Email : </form:label></td>
                       <td> <form:input path="email"  /><td>
                    </tr>
                    <tr>
                       <td><form:label path="tipo_usuario" >Centro de Estudios Asociado : </form:label></td>
                        <td> <form:input path="tipo_usuario"  /><td>
                    </tr>
                    <tr>
                        <td><a href="../admin/home.htm">Volver</a></td>
                        <td><form:button>Ingresar</form:button></td>
                    </tr>   
                </table>
            </form:form>
        </div>
        
        
    </body>
</html>