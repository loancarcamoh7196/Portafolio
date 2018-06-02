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
        <title>Administración Postulaciones de Programa - Actualizar </title>
    </head>
    
    <body>
        <h2>Formulario Actualización Programa</h2>
        
        <div align="center">
            <h3> Resultado Programas de Estudio </h3>
            
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
            

            <form  action="../admin/ProgramaActualizarAccion.htm" method="POST">
                <table>
                    <tr>
                        <td>ID: </form:label</td>
                        <td> <input type="text" id="id" name="id" value="${usuarioResult.id}" disabled/>
                            <input type="hidden" id="id_u" name="id_u" value="${usuarioResult.id}"/>
                        <td>
                    </tr>
                    <tr>
                        <td>Nombre: </td>
                        <td> <input type="text" id="nombre" name="nombre" value="${usuarioResult.nombre}" autofocus /><td>
                    </tr>
                    <tr>
                        <td>Descripción: </td>
                        <td> <input type="text" id="descrip" name="descrip" value="${usuarioResult.descripcion}"<td>
                    </tr>
                    <tr>
                        <td>Duracion: </td>
                        <td> <input type="number" id="duracion" name="duracion" value="${usuarioResult.duracion}"<td>
                    </tr>
                    <tr>
                        <td>Cupos Minimos : </td>
                        <td> <input type="text" id="cant_minima" name="cant_minima" value="${usuarioResult.cant_minima}"  /><td>
                    </tr>
                    <tr>
                        <td>Cupos Maximos : </td>
                        <td> <input type="text" id="cant_maxima" name="cant_maxima" value="${usuarioResult.cant_maxima}" /><td>
                    </tr>
                    <tr>
                       <td>Centro de Estudios Asociado : </td>
                       <td> 
                           <select id="cem" name="cem">
                               <option  value="11">Casa Central</option>
                           </select>
                       <td>
                    </tr>
                    
                    <tr>
                       <td>Estado : </td>
                       <td> 
                        <select id="estado" name="estado" >
                            <c:if test="${usuarioResult.estado ==13 }">
                                <option value="13" selected>Aprobado</option>
                                <option value="14">Rechazado</option>
                                <option value="15">En Proceso</option>
                                <option value="17">Eliminado</option>
                                <option value="18">Publicado</option>
                            </c:if>
                            <c:if test="${usuarioResult.estado ==14 }">
                                <option value="13">Aprobado</option>
                                <option value="14" selected>Rechazado</option>
                                <option value="15">En Proceso</option>
                                <option value="17">Eliminado</option>
                                <option value="18">Publicado</option>
                            </c:if>

                            <c:if test="${usuarioResult.estado ==15 }">
                                <option value="13">Aprobado</option>
                                <option value="14">Rechazado</option>
                                <option value="15" selected>En Proceso</option>
                                <option value="17">Eliminado</option>
                                <option value="18">Publicado</option>
                            </c:if>

                            <c:if test="${usuarioResult.estado ==18}">
                                <option value="13">Aprobado</option>
                                <option value="14">Rechazado</option>
                                <option value="15">En Proceso</option>
                                <option value="17">Eliminado</option>
                                <option value="18" selected>Publicado</option>
                            </c:if>
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
