<%@page import="java.util.List"%>
<%@page import="Modelo.Oficina"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String msje = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Colaboradores</title>

        <!-- Custom styles for this template -->
        <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>        

    <center>
        <h3>Colaboradores</h3>
    </center>
    <br>

    <div class="d-flex">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <form name="frmColaboradores" action="Controlador?menu=Colaborador" method="POST" onsubmit="return validar(this)">
                        <%
                            if (msje.length() > 0) {
                                out.print("<div class=\"error\">" + msje + "</div>");
                            }
                        %>
                        <div class="form-group">
                            <label>Rut</label>
                            <input type="text" value="${colaborador.getRutColaborador()}" name="txtRut" class="form-control" required oninput="checkRut(this)">
                        </div>
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="${colaborador.getNombre()}" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <input type="text" value="${colaborador.getApellido()}" name="txtApellido" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" value="${colaborador.getUsuario()}" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Direccion</label>
                            <input type="text" value="${colaborador.getDireccion()}" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="text" value="${colaborador.getTelefono()}" name="txtTelefono" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Correo</label>
                            <input type="text" value="${colaborador.getCorreo()}" name="txtCorreo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="password" value="${colaborador.getPassword()}" name="txtPass" class="form-control">
                        </div>
                        <div class="form-group form-group-lg">
                            <label class="control-label">Acceso</label><br>
                            <div>
                                <select class="form-control" name="cbAcceso">
                                    <option>Administrador/a</option>
                                    <option>Secretaria/o</option>
                                    <option>Contador/a</option>                
                                </select>
                            </div>
                        </div>
                        <div class="form-group form-group-lg">
                            <label class="control-label">Surcusal</label><br>
                            <div>
                                <select class="form-control" name="cbOficina">
                                    <% List<Oficina> listaOf = (List<Oficina>) request.getAttribute("oficinas");
                                        if (listaOf != null)
                                            for (Oficina oficina : listaOf) {%>
                                    <option value="<%=oficina.getId()%>"><%=oficina.getNom()%></option>
                                    <%}%>                     
                                </select>
                            </div>
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>                         
            </div>
        </div>
        <div class="col-sm-9">
            <div class="card">
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Rut</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Correo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach var="co" items="${colaboradores}">
                                <tr>
                                    <td>${co.getRutColaborador()}</td>
                                    <td>${co.getNombre()}</td>
                                    <td>${co.getApellido()}</td>
                                    <td>${co.getDireccion()}</td>
                                    <td>${co.getTelefono()}</td>
                                    <td>${co.getCorreo()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Colaborador&accion=Editar&RutColaborador=${co.getRutColaborador()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Colaborador&accion=Eliminar&RutColaborador=${co.getRutColaborador()}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>      
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/jquery.inputmask.bundle.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/css/inputmask.min.css" rel="stylesheet"/>
    <script src="js/alertify.min.js" type="text/javascript"></script>
    <script src="js/validar.js" type="text/javascript"></script>
    <script>
                        $("#menu-toggle").click(function (e) {
                            e.preventDefault();
                            $("#wrapper").toggleClass("toggled");
                        });
    </script>
</body>
</html>
