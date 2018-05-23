<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Login</title>
    </head>
    <body>
        
        <div align="center">
            <form:form>
                <table>
                    <tr>
                        <th><form:label path="username">Nombre</form:label></th>
                        <th><form:input path="username" /></th>
                    </tr>
                    <tr>
                        <th><form:label path="password">Contraseña</form:label></th>
                        <th><form:password path="password" /></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th><form:button>Ingresar</form:button></th>
                    </tr>
                </table>
            </form:form>
        </div>
    </body>
</html>
