<%-- 
    Document   : CEMActualizarForm
    Created on : 30-05-2018, 10:13:14
    Author     : Lorena
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Administración General de Usuarios - Actualizar Usuario</title>
    </head>
    
    <body>
        <h2>Formulario Actualización encargado CEL</h2>
        
        <div align="center">
            <h3> Resultado encargado CEL </h3>
            
            <c:if test="${usuarioResult == null}">
                 <p>
                     No hay registros disponible.
                 </p>
            </c:if>
            
            <c:if test="${usuarioResult != null}">
                 <p>
                     HAY registros disponible.
                     ${usuarioResult}
                 </p>
            </c:if>
            

            <form  action="../admin/CELActualizarAccion.htm" method="POST">
                <table>
                    <tr>
                        <td>ID: </form:label</td>
                        <td> <input type="text" id="id" name="id" value="${usuarioResult.id}" disabled/>
                            <input type="hidden" id="id_u" name="id_u" value="${usuarioResult.id}"/>
                        <td>
                    </tr>
                    <tr>
                        <td>Alias o Username: </td>
                        <td> <input type="text" id="username" name="username" value="${usuarioResult.username}" autofocus /><td>
                    </tr>
                    <tr>
                        <td>Contraseña: </td>
                        <td> <input type="text" id="pass1" name="pass1" value="${usuarioResult.password}"<td>
                    </tr>
                    <tr>
                        <td>Confirmar Contraseña: </td>
                        <td> <input type="text" name="pass2" value="${usuarioResult.password}"<td>
                    </tr>
                    <tr>
                        <td>Nombre: </td>
                        <td> <input type="text" id="nombre" name="nombre" value="${usuarioResult.nombre}"  /><td>
                    </tr>
                    <tr>
                        <td>Apellido : </td>
                        <td> <input type="text" id="apellido" name="apellido" value="${usuarioResult.apellido}" /><td>
                    </tr>

                    <tr>
                       <td>Email : </td>
                       <td> <input type="email" id="email" name="email" value="${usuarioResult.email}" /><td>
                    </tr>
                    <tr>
                       <td>Centro de Estudios Asociado : </td>
                       <td> 
                           <select >
                               <option name="cem"value="11">Casa Central</option>
                           </select>
                       <td>
                    </tr>
                    <tr>
                        <td> <br> </td>
                    </tr>
                    <tr>
                        <td><a href="../admin/home.htm">Volver</a></td>
                        <td><input type="submit" value="Actualizar" /></td>
                    </tr>   
                </table>
            </form>
        </div>
        
        
    </body>

</html>
