<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>
    </head>
    <body>
        <h1>Usuario</h1>
        <div align="center">
            <table>
                <tr>
                    <th>Nombre: </th>
                    <th><c:out value="${username}" /></th>
                </tr>
                <tr>
                    <th>Contraseña: </th>
                    <th><c:out value="${password}" />
                    </th>
                </tr>
            </table>
        </div>
        <%--Menu--%>
        <div align="left">
            <c:set var="tipo" value="${username}" />
            <c:if test="${tipo == 'default'}">
                <table>
                    <tr>
                        <th>
                            MENU DEFAULT
                        </th>
                    </tr>
                </table>
            </c:if>
            <c:if test="${tipo == 'tipo1'}">
                <table>
                    <tr>
                        <th>
                            MENU TIPO1
                        </th>
                    </tr>
                </table>
            </c:if>
            <c:if test="${tipo == 'tipo2'}">
                <table>
                    <tr>
                        <th>
                            MENU TIPO2
                        </th>
                    </tr>
                </table>
            </c:if>
            <c:if test="${tipo == 'tipo3'}">
                <table>
                    <tr>
                        <th>
                            MENU TIPO3
                        </th>
                    </tr>
                </table>
            </c:if>
        </div>
        
    </body>
</html>
