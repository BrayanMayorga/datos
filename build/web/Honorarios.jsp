<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Honorarios</title>
    </head>

    <body>        

    <center>
        <h3>Pago de Honorarios</h3>
    </center>
    <br>

    <div class="d-flex">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <form action="Controlador?menu=Colaborador" method="POST">

                        <div class="form-group">
                            <label>Rut:</label>
                            <input type="text" value="${empleado.getDni()}" name="txRut" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" value="${empleado.getNom()}" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellido:</label>
                            <input type="text" value="${empleado.getTel()}" name="txtApellido" class="form-control">
                        </div> 
                        <div class="form-group">
                            <label>Rut Empresa:</label>
                            <input type="text"value="${empleado.getTel()}" name="txtPass" class="form-control">
                        </div>



                        <div class="form-group">
                            <label>Fecha de emision:</label>
                            <input type="text" value="${empleado.getEstado()}" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Direccion</label>
                            <input type="text" value="${empleado.getUser()}" name="txtTelefono" class="form-control">
                        </div>



                    </form>

                </div>                         
            </div>
        </div>                     

    </div>

    <br>
    <br>
    <center>
        <h3>Detalle</h3>
    </center>


    <div class="col-xs-6">
        <h1><a href=" "><img alt="" src="logo.png" /> logo </a></h1>
        <h1>nombre de la persona</h1>
    </div>
    <div class="col-xs-6 text-right">
        <h1>Boleta de Honoraios</h1>
        <h1><small>N°3</small></h1>

    </div>

    <hr />

    <pre>
<h5>
    <label>rut empresa</label>  
    <label>Giro</label>
   <label> Direccion</label>
   <label> Fecha</label>
   <label> Rut Empresa</label>
   <label> Domicilio</label>
 </h5>  
    </pre>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>
                    <h4>Descripcion</h4>
                </th>
                <th>
                    <h4>Total Honorarios</h4>
                </th>
                <th>

                </th>
                <th>
                    <h4>Total</h4>
                </th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Artículo </td>
                <td><a href="#"> </a></td>
                <td class=" text-right ">-</td>
                <td class=" text-right "></td>
                <td class=" text-right "></td>
            </tr>

        </tbody>
    </table>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
