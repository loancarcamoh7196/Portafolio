<%-- 
    Document   : formCEL
    Created on : 11-may-2018, 13:46:27
    Author     : Lorena
    Nota       : Listo!!!
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario encargado CEL</title>
    </head>
    <body>
        <h1>Agregar usuario Administrador</h1>
        
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
                        <td><a href="../admin/home.htm">Volver</a></td>
                        <td><form:button>Agregar</form:button></td>
                    </tr>   
                </table>
            </form:form>
        </div>
    </body>
</html>