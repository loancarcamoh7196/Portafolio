
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >

<html>
    <head>
        <meta charset="UTF-8">
        <style>
            /*IDENTIFICACION DE ESPACIOS*/
            /*NO BORRAR TAMAÑOS*/
            /*titulo y login*/
            div.cont{
                width:800px;
                margin: auto;
                background-color: #ccccff;
            }
            div.log{
                background-color: #99ccff;
            }
            div.titulo{
                background-color: #cc99ff;
            }
            
            /*contenido*/
            div.menu{
                width:150px;
                margin: auto;
                background-color: #66ccff;
            }
            div.content{
                width:635px;
                margin: auto;
                background-color: #ccffff;
            }
        </style>
        <title>Inicio</title>
    </head>

    <body>
        <div class="cont">
            
            <div align="right" class="log">
                <a href="">Ingresar </a>|<a href=""> Registrarse</a>
            </div>
            <div align="center" class="titulo">
                <h1>Titulo</h1>
            </div>
            
            <div>
                <table>
                    <tr>
                        <th>
                            <div class="menu"> <!--DIV MENU-->
                                <p>Menu</p><!--BORRAR-->
                                <table>
                                    <tr>
                                        <th><a href="">Opcion 1</a></th>
                                    </tr>
                                    <tr>
                                        <th><a href="">Opcion 2</a></th>
                                    </tr>
                                    <tr>
                                        <th><a href="">Opcion 3</a></th>
                                    </tr>
                                    <tr>
                                        <th><a href="">Opcion 4</a></th>
                                    </tr>
                                </table>
                            </div><!--DIV MENU-->
                        </th>
                        <th>
                            <div class="content"><!--DIV CONTENIDO-->
                                CONTENIDO
                            </div><!--DIV CONTENIDO-->
                        </th>
                    </tr>
                </table>
                
            </div>
        </div>
    </body>
</html>
