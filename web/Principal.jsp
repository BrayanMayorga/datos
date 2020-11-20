<%-- 
    Document   : Principal
    Created on : 17/11/2020, 10:14:07 PM
    Author     : lainc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Pagina Principal</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Principal.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-dark" href="Controlador?menu=Empresa" target="myFrame">Empresa</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-dark" href="Controlador?menu=Colaborador&accion=Listar" target="myFrame">Colabarador</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-dark" href="Controlador?menu=Surcusal&accion=Listar" target="myFrame">Surcusal</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-dark" href="Controlador?menu=Pago" target="myFrame">Medio de pago</a>
                    </li>
                </ul>
            </div>
            <div style="margin-right: 100px;" class="dropdown">
                <button style="border: none" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${Colaborador.getNombre()}
                </button>
                <div class="dropdown-menu text-center bg-info">
                    <a style="border: none" class="btn btn-outline-dark" href="#">
                        <img src="img/usuario.png" alt="Imagen del Usuario" width="60"/>
                    </a>
                    <a style="border: none" class="btn btn-outline-dark" href="#">${Colaborador.getUsuario()}</a>
                    <a style="border: none" class="btn btn-outline-dark" href="#">${Colaborador.getCorreo()}</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" value="Salir" style="border: none" class="btn btn-outline-dark" href="#">Salir</button>
                    </form> 
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 550px;">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
