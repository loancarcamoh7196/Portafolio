<%-- 
    Document   : busqUsuarioCEL
    Created on : 30-05-2018, 10:03:44
    Author     : Lorena
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Usuarios - Actualizar Encargado CEL</title>
    </head>
    <body>
        <div align="center">
            <h1>Actualizar Encargado CEL</h1>
            <p>
                Ingrese nombre de usuario y seleccione tipo de usuario encargado CEL
            </p>
        
            <form:form>
                <table> 
                    <tr>
                        <td><form:label path="username">Alias o Username :</form:label> </td>
                        <td><form:input path="username"/></td>
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