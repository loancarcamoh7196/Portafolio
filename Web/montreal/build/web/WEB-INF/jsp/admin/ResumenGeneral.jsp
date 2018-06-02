<%-- 
    Document   : Resumen General
    Created on : 31-05-2018, 17:23:50
    Author     : Lorena
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración General de Postulaciones - Resumen</title>
        <style>
           div {
                border: 2px solid powderblue;
                padding: 10px;
                alignment-adjust: central;
            }
        </style>
    </head>
    <body>
        <h1>Resumen General de Postulaciones</h1>
       
        <div>
            <h3>Programas de Estudio</h3>
            <h4>Solicitudes</h4>
            <table >
                 <tr>
                    <th>Aprobadas : </th>
                    <td><c:out value="${objResumen.programa_aprobado}" /></th>
                </tr>
                <tr>
                    <th>Rechazadas : </th>
                    <td><c:out value="${objResumen.programa_rechazado}" /></th>
                </tr>
                <tr>
                    <th>En proceso: </th>
                    <td><c:out value="${objResumen.programa_proceso}" /> </td>
                </tr>
            </table>
        </div>
                <br>
        <div>
            <h3>Alumno</h3>
            <h4>Solicitudes</h4>
            <table >
                 <tr>
                    <th>Aprobadas : </th>
                    <td><c:out value="${objResumen.alum_aprobado}" /></th>
                </tr>
                <tr>
                    <th>Rechazadas : </th>
                    <td><c:out value="${objResumen.alum_rechazado}" /></th>
                </tr>
                <tr>
                    <th>En proceso: </th>
                    <td><c:out value="${objResumen.alum_proceso}" /> </td>
                </tr>
            </table>
        </div>
                <br>
        <div>
            <h3>Familia</h3>
            <h4>Solicitudes</h4>
            <table >
                 <tr>
                    <th>Aprobadas : </th>
                    <td><c:out value="${objResumen.familia_aprobado}" /></th>
                </tr>
                <tr>
                    <th>Rechazadas : </th>
                    <td><c:out value="${objResumen.familia_rechazado}" /></th>
                </tr>
                <tr>
                    <th>En proceso: </th>
                    <td><c:out value="${objResumen.familia_proceso}" /> </td>
                </tr>
            </table>
        </div>
        <p align="center"><a href="../admin/home.htm">Volver</a></p>
    </body>
</html>
