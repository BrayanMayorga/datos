window.onload = iniciar;
function iniciar() {
    document.frmColaboradores.txtRut.addEventListener('keypress', soloEnteros, false);
    document.frmColaboradores.txtNombre.addEventListener('keypress', soloLetras, false);
    document.frmColaboradores.txtApellido.addEventListener('keypress', soloLetras, false);
    document.frmColaboradores.txtUsuario.addEventListener('keypress', soloLetras, false);
    document.frmColaboradores.txtDireccion.addEventListener('keypress', soloLetras, false);
    document.frmColaboradores.txtTelefono.addEventListener('keypress', soloEnteros, false);
    document.frmColaboradores.txtCorreo.addEventListener('keypress', soloLetras, false);
}
function validar(frm) {
    var rut = frm.txtRut,
            nombre = frm.txtNombre,
            apellido = frm.txtApellido,
            usuario = frm.txtUsuario,
            direccion = frm.txtDireccion,
            telefono = frm.txtTelefono,
            correo = frm.txtCorreo
    if (rut.value === "") {
        rut.focus();
        alertify.alert("Error", "Ingrese Rut del colaborador").set('label', 'OK');
        return false;
    } else if (nombre.value === "") {
        nombre.focus();
        alertify.alert("Error", "Falta completar el campo Nombre").set('label', 'OK');
        return false;
    } else if (apellido.value === "") {
        apellido.focus();
        alertify.alert("Error", "IFalta completar el campo Apellido").set('label', 'OK');
        return false;
    } else if (usuario.value === "") {
        usuario.focus();
        alertify.alert("Error", "Falta completar el campo Usuario").set('label', 'OK');
        return false;
    } else if (direccion.value === "") {
        direccion.focus();
        alertify.alert("Error", "Falta completar el campo Direccion").set('label', 'OK');
        return false;
    } else if (telefono.value === "") {
        telefono.focus();
        alertify.alert("Error", "Falta completar el campo Telefono").set('label', 'OK');
        return false;
    } else if (correo.value === "") {
        correo.focus();
        alertify.alert("Error", "Falta completar el campo Correo").set('label', 'OK');
        return false;
    } else if (password.value === "") {
        password.focus();
        alertify.alert("Error", "Digite su contraseña").set('label', 'OK');
        return false;
    } else {
        alertify.success("Colaborador Registrado con exito");
    }
}
function soloLetras(e) {
    key = e.keyCode || e.which;
    teclado = String.fromCharCode(key);

    if ((teclado < 'A' || teclado > 'z') && teclado !== ' ') {
        e.preventDefault();
    }
}

function soloDecimal(e) {
    key = e.keyCode || e.which;
    teclado = String.fromCharCode(key);
    numero = "0123456789.";

    if (numero.indexOf(teclado) == -1) {
        e.preventDefault();
    }
}

function soloEnteros(e) {
    key = e.keyCode || e.which;
    teclado = String.fromCharCode(key);
    numero = "0123456789";

    if (numero.indexOf(teclado) == -1) {
        e.preventDefault();
    }
}
function checkRut(txtRut) {
    // Despejar Puntos
    var valor = txtRut.value.replace('.', '');
    // Despejar Guión
    valor = valor.replace('-', '');

    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0, -1);
    dv = valor.slice(-1).toUpperCase();

    // Formatear RUN
    txtRut.value = cuerpo + '' + dv

    // Si no cumple con el mínimo ej. (n.nnn.nnn)
    if (cuerpo.length < 7) {
        txtRut.setCustomValidity("RUT Incompleto");
        return false;
    }

    // Calcular Dígito Verificador
    suma = 0;
    multiplo = 2;

    // Para cada dígito del Cuerpo
    for (i = 1; i <= cuerpo.length; i++) {

        // Obtener su Producto con el Múltiplo Correspondiente
        index = multiplo * valor.charAt(cuerpo.length - i);

        // Sumar al Contador General
        suma = suma + index;

        // Consolidar Múltiplo dentro del rango [2,7]
        if (multiplo < 7) {
            multiplo = multiplo + 1;
        } else {
            multiplo = 2;
        }

    }

    // Calcular Dígito Verificador en base al Módulo 11
    dvEsperado = 11 - (suma % 11);

    // Casos Especiales (0 y K)
    dv = (dv == 'K') ? 10 : dv;
    dv = (dv == 0) ? 11 : dv;

    // Validar que el Cuerpo coincide con su Dígito Verificador
    if (dvEsperado != dv) {
        txtRut.setCustomValidity("RUT Inválido");
        return false;
    }

    // Si todo sale bien, eliminar errores (decretar que es válido)
    txtRut.setCustomValidity('');
}
//agregar punto y guion



