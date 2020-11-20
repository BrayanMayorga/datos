<%@page import="java.util.List"%>
<%@page import="Modelo.Oficina"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Colaboradores</title>
    </head>

    <body>

    <center>
        <h3>Colaboradores</h3>
    </center>
    <br>

    <div class="d-flex">
        <div class="card col-sm-3">
            <div class="card-body">
                <form accion="Controlador?menu=Colaborador" method="POST">
                    <div class="form-group">
                        <label>Rut</label>
                        <input type="text" name="txtRutColaborador" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Apellidos</label>
                        <input type="text" name="txtApellido" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" name="txtPassword" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Direccion</label>
                        <input type="text" name="txtDireccion" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Correo</label>
                        <input type="text" name="txtCorreo" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="txtTelefono" class="form-control">
                    </div>
                    <div class="form-group form-group-lg">
                        <label class="control-label" for="cbAcceso">Acceso</label><br>
                        <div>
                            <select class="form-control" id="cbAcceso" name="cbAcceso">
                                <option>Administrador/a</option>
                                <option>Secretaria</option>
                                <option>Contador/a</option>                
                            </select>
                        </div>
                    </div>
                    <div class="form-group form-group-lg">
                        <label class="control-label" for="cbOficina">Surcusal</label><br>
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
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info btn-block">
                </form>
            </div>
        </div>                     
        <div class="col-sm-10">
            <div class="card">
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Rut</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>                              
                                <th>Telefono</th>
                                <th>Correo</th>
                                <th>Direccion</th>
                                <th>Acceso</th>
                                <th>Surcusal</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach var="co" items="${colaboradores}">
                                <tr>
                                    <td>${co.getRutColaborador()}</td>
                                    <td>${co.getNombre()}</td>
                                    <td>${co.getApellido()}</td>
                                    <td>${co.getTelefono()}</td>                                   
                                    <td>${co.getCorreo()}</td>
                                    <td>${co.getDireccion()}</td>
                                    <td>${co.getTipoAcceso()}</td>
                                    <td>${co.getOficina()}</td>
                                    <td>
                                        <a>Actualizar</a>
                                        <a>Eliminar</a>
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
</body>
</html>
