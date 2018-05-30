<%-- 
    Document   : busqUsuario.jsp
    Created on : 10-may-2018, 12:25:55
    Author     : Lorena
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuarios - Actualizar Usuario CEM/CEL</title>
    </head>
    <body>
        <div align="center">
            <h1>Actualizar Usuario CEM/ CEL</h1>
            <p>
                Ingrese nombre de usuario y seleccione tipo de usuario encargado CEM-CEL
            </p>
        
            <form:form>
                <table> 
                    <tr>
                        <td><form:label path="username">Alias o Username :</form:label> </td>
                        <td><form:input path="username"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="tipo_usuario">Tipo: </form:label></td>                    
                        <td><form:radiobutton path="tipo_usuario" value="2"/> Encargado CEM </td>
                        <td><form:radiobutton path="tipo_usuario" value="3"/> Encargado CEL</td>
                    </tr>
                    <tr>
                        <td><a href="../admin/home.htm">Volver</a></td>
                        <td><form:button>Buscar</form:button></td>
                    </tr>
                </table>
            </form:form>
        </div>
    </body>
</html>
