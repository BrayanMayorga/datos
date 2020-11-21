<%@page import="Modelo.Colaborador"%>
<%@page import="Modelo.ColaboradorDAO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Oficina"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String buscar = "";
    String msje = "";
    Colaborador colab = null;
%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Sistema control de pago SPA</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar -->
            <div class="bg-light border-right" id="sidebar-wrapper">
                <div class="sidebar-heading">Sistema Web</div>
                <div class="list-group list-group-flush">
                    <a href="index.html" class="list-group-item list-group-item-action bg-light">Inicio</a>
                    <a href="Categorias.jsp" class="list-group-item list-group-item-action bg-light">Categorias</a>
                    <a href="Productos.jsp" class="list-group-item list-group-item-action bg-light">Productos</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Contacto</a>
                    <a href="#" class="list-group-item list-group-item-action bg-light">Soporte</a>
                </div>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">

                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <button class="btn btn-primary" id="menu-toggle">Ocultar Sidebar</button>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Iniciar Sesion <span class="sr-only">(current)</span></a>
                            </li>

                        </ul>
                    </div>
                </nav>

                <div class="container-fluid">
                    <div class="col-md-8">
                        <h1>Registrar Colaboradores</h1>
                        <form name="frmProductos" action="Productos.jsp" method="post" onsubmit="return validar(this)">
                            <%
                                if (msje.length() > 0) {
                                    out.print("<div class=\"error\">" + msje + "</div>");
                                }
                            %>
                            <div class="row">                   
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Surcusal</label>
                                        <div>
                                            <select class="form-control" name="cboCategoria">
                                                <option>Eliga una Oficina</option>
                                                <%
                                                    ColaboradorDAO dao = new ColaboradorDAO();
                                                    List<Oficina> oficinas = null;

                                                    try {
                                                        oficinas = dao.listar();
                                                        for (Oficina cat : oficinas) {
                                                            out.print("<option value=\"" + cat.getId() + "\" "
                                                                    + (colab != null
                                                                    && cat.getId() == colab.getIdOficina()
                                                                    ? "selected" : "") + ">"
                                                                    + cat.getNom() + "</option>");
                                                        }
                                                    } catch (Exception e) {
                                                        out.print("<option value=\"0\">No se pudo listar"
                                                                + "las oficinas</option>");
                                                    } finally {
                                                        oficinas = null;
                                                        dao = null;
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Nombre</label>
                                        <input type="text" class="form-control" name="txtNombre" 
                                               placeholder="Ingrese Nombre">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Rut</label>
                                        <input type="text" class="form-control" name="txtNombre" 
                                               placeholder="Ingrese Nombre">
                                    </div>
                                </div>
                            </div>                                            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Apellido</label>
                                        <input type="text" class="form-control" name="txtApellido" placeholder="Ingrese Descripcion">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Usuario</label>
                                        <input type="text" class="form-control" name="txtApellido" placeholder="Ingrese Descripcion">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Direccion</label>
                                        <input type="text" class="form-control" name="txtUsuario" 
                                               placeholder="Ingrese nombre de usuario">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Telefono</label>
                                        <input type="text" class="form-control" name="txtDireccion" 
                                               placeholder="ingrese su direccion">
                                    </div> 
                                </div>
                            </div>
                            <input type="submit" class="btn btn-success" name="btnRegistrar" value="Registrar">
                            <a href="Login.jsp" class="btn btn-danger">Cancelar</a>
                        </form><br>
                    </div>
                    <div class="col-md-12">
                        <h1>Listado de Colaboradores</h1>
                        <form name="frmBuscar" action="Productos.jsp" method="post">
                            <div class="form-group">
                                <div class="form-inline">                                    
                                    <input type="text" class="form-control col-md-10 col-sm-8" placeholder="Escriba el nombre del producto" name="txtProducto" value="<%=buscar%>" >
                                    <input type="submit" name="btnBuscar" class="btn btn-dark col-md-2 col-sm-8" value="Buscar Producto">                               
                                </div>

                            </div>
                        </form>
                        <div class="table-responsive" >                                 
                            <table class="table table-hover table-striped table-bordered">
                                <thead class="btn-info">
                                    <tr>
                                        <th class="text-center">N°</th>
                                        <th class="text-center">Rut</th>
                                        <th class="text-center">Nombre</th>
                                        <th class="text-center">Apellido</th>
                                        <th class="text-center">Usuario</th>
                                        <th class="text-center">Surcusal</th>
                                        <th class="text-center">Acciones</th>              
                                    </tr>
                                </thead>
                                <style>
                                    .roci{
                                        color: white;                                      
                                    }
                                </style>
                                <%
                                    ColaboradorDAO daoprod = new ColaboradorDAO();
                                    List<Colaborador> colaboradores = null;
                                    int i = 1;

                                    try {
                                        colaboradores = daoprod.listar();
                                        for (Colaborador col : colaboradores) {
                                            out.print("<tr>"
                                                    + "<td>" + i + "</td>"
                                                    + "<td>" + col.getRutColaborador() + "</td>"
                                                    + "<td>" + col.getNombre() + "</td>"
                                                    + "<td>" + col.getApellido() + "</td>"
                                                    + "<td>" + col.getUsuario() + "</td>"
                                                    + "<td>" + col.getIdOficina() + "</td>"
                                                    + "<td class=\"text-center\">"
                                                    + "<a class=\"btn btn-warning btn-sm\" href=\"editarproducto.jsp?cod="
                                                    + col.getRutColaborador() + "\"> Editar</a> "
                                                    + "<a class=\"btn btn-danger btn-sm roci\" href=\"eliminarproducto.jsp?cod="
                                                    + col.getRutColaborador() + "\"> Eliminar</a>"
                                                    + "</td>"
                                                    + "</tr>");
                                            i++;
                                        }

                                    } catch (Exception e) {
                                        out.print("<tr><td colspan=\"3\">"
                                                + e.getMessage() + "No se pudo listar las productos</td></tr>");
                                    } finally {
                                        dao = null;
                                        if (colaboradores != null) {
                                            colaboradores.clear();
                                        }
                                        colaboradores = null;
                                    }
                                %>                                                          
                                <!-- <a class="icon-pencil2" data-toggle="tooltip" data-placement="right" title="Editar" href="Controlador"></a>
                                </td>-->
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->
        </div>
        <!-- /#wrapper -->

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="css/alertify.min.js" type="text/javascript"></script>
        <script src="JavaScript/ValidarProducto.js" type="text/javascript"></script>
        <!-- Menu Toggle Script -->
        <script>
                            $("#menu-toggle").click(function (e) {
                                e.preventDefault();
                                $("#wrapper").toggleClass("toggled");
                            });
        </script>
    </body>
</html>