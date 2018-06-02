<%-- 
    Document   : busqElimPrograma
    Created on : 23-05-2018, 14:50:03
    Author     : Portafolio
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador - Postulaciones de Programa de Estudio</title>
    </head>
    <body>
        <h1>Eliminar Programa de Estudio </h1>
        <div align="center">
            <p>
                Ingrese nombre de Programa de Estudio a Actualizar
            </p>
            <form:form>
                <table> 
                   <tr>
                       <th><form:label path="nombre" >Nombre de Programa de Estudios</form:label></th>
                       <td> <form:input path="nombre"  /><td>
                    </tr>
                    <tr>
                        <td><br></td>
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