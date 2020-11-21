<%-- 
    Document   : ejemplo
    Created on : 20/11/2020, 09:56:20 PM
    Author     : lainc
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Oficina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Iniciar session</title>
    </head>
    <body>
        <br>
        <br>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group">
                            <label>Rut</label>
                            <input type="text" name="txtRut" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellido</label>
                            <input type="text" name="txtApellido" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Direccio</label>
                            <input type="text" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="text" name="txtTelefono" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Correo</label>
                            <input type="text" name="txtCorreo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="text" name="txtPass" class="form-control">
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
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
