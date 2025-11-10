// funcion para validar que el texto solo contenga letras y espacios (ej: nombres y apellidos)
function validarTexto(valor) {
    for (let c of valor) {
        if (!((c >= "A" && c <= "Z") || (c >= "a" && c <= "z") || (c === " ") || ("áéíóúÁÉÍÓÚñÑ".includes(c)))) {
            return false;
    }
  }
  return valor.trim().length > 0;
}

// funcion para validar email
function validarEmail(valor) {
    if (valor.includes("@") && valor.includes(".")) {
        return true;
    } else {
        return false;
    }
}

// funcion para validar password (al menos 8 caracteres, una letra y un numero)
function validarPassword(valor) {
    if (valor.length < 8) {
        return false;
    }
    let tieneLetra = false;
    let tieneNumero = false;
    for (let c of valor) {
    if ((c >= "A" && c <= "Z") || (c >= "a" && c <= "z")) {
        tieneLetra = true;
    }
    if (c >= "0" && c <= "9") {
        tieneNumero = true;
    }}
    return tieneLetra && tieneNumero;
}

// funcion para calcular edad a partir de fecha de nacimiento
function calcularEdad(fechaNacimiento) {
    const hoy = new Date(); 
    const nacimiento = new Date(fechaNacimiento); 
    const edad = hoy.getFullYear() - nacimiento.getFullYear();
    return edad;
}

// funcion para verificar si un campo está vacío (lo usamos para seleccionar la fecha y hora)
function estaVacio(valor) {
    return valor == null || String(valor).trim() === "";
}

// funcion para marcar un campo con error (fondo rojo) o quitar el error
function marcarError(el, tieneError) {
    if (tieneError) {
        el.style.borderColor = "red";
    } else {
        el.style.borderColor = "";
    }
}


// funcion principal para validar el formulario de registro
function validarRegistro() {
    const form = document.forms["formRegistro"];
    const nombre = form["nombre"];
    const apellido = form["apellido"];
    const contrasena = form["contrasena"];
    const fecha = form["fch01"]; // ← corregido
    const correo = form["correo"];
    const mensajeError = document.getElementById("mensaje-error"); // ← agregado

    // limpiar mensaje previo
    mensajeError.style.color = "red";
    mensajeError.textContent = "";

    if (!validarTexto(nombre.value) || nombre.value.length < 2) {
        nombre.style.borderColor = "red";
        mensajeError.textContent = "Ingrese un nombre válido (solo letras, mínimo 2 caracteres).";
        return false;
    } else {
        nombre.style.borderColor = "";
    }

    if (!validarTexto(apellido.value) || apellido.value.length < 2) {
        apellido.style.borderColor = "red";
        mensajeError.textContent = "Ingrese un apellido válido (solo letras, mínimo 2 caracteres).";
        return false;
    } else {
        apellido.style.borderColor = "";
    }

    if (fecha.value === "") {
        fecha.style.borderColor = "red";
        mensajeError.textContent = "Por favor ingrese su fecha de nacimiento.";
        return false;
    } else {
        fecha.style.borderColor = "";
    }

    if (calcularEdad(fecha.value) < 12) {
        fecha.style.borderColor = "red";
        mensajeError.textContent = "Debe tener al menos 12 años para registrarse.";
        return false;
    } else {
        fecha.style.borderColor = "";
    }

    if (!validarEmail(correo.value)) {
        correo.style.borderColor = "red";
        mensajeError.textContent = "Ingrese un correo electrónico válido.";
        return false;
    } else {
        correo.style.borderColor = "";
    }
    
    if (!validarPassword(contrasena.value)) {
        contrasena.style.borderColor = "red";
        mensajeError.textContent = "La contraseña debe tener al menos 8 caracteres, una letra y un número.";
        return false;
    } else {
        contrasena.style.borderColor = "";
    }

    mensajeError.style.color = "green";
    mensajeError.textContent = "Registro completado correctamente.";
    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false;
}



// funcion principal para validar el formulario de inicio de sesion
function validarInicioSesion() {
    const form = document.forms["formInicio"];
    const correo = form["correo"];
    const contrasena = form["contrasena"];
    const mensajeError = document.getElementById("mensaje-error");

    // limpiar mensaje previo
    mensajeError.textContent = "";

    if (!validarEmail(correo.value)) {
        correo.style.borderColor = "red";
        mensajeError.textContent = "Ingrese un correo electrónico válido.";
        return false;
    } else {
        correo.style.borderColor = "";
    }

    if (!validarPassword(contrasena.value)) {
        contrasena.style.borderColor = "red";
        mensajeError.textContent = "La contraseña debe tener al menos 8 caracteres, una letra y un número.";
        return false;
    } else {
        contrasena.style.borderColor = "";
    }

    // mensaje de éxito (si querés mostrarlo en verde)
    mensajeError.style.color = "green";
    mensajeError.textContent = "Inicio de sesión exitoso.";

    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false;
}



// funcion para validar el formulario de contacto/consulta
function validarEnviarConsulta() {
    const consulta = document.forms["formMandarConsulta"]["consulta"].value;
    const mensajeError = document.getElementById("mensaje-error");

    // limpiar mensaje previo
    mensajeError.textContent = "";

    if (consulta.length < 10) {
        document.forms["formMandarConsulta"]["consulta"].style.borderColor = "red";
        mensajeError.textContent = "Por favor, ingrese una consulta válida (mínimo 10 caracteres).";
        return false;
    } else {
        document.forms["formMandarConsulta"]["consulta"].style.borderColor = "";
    }


    mensajeError.style.color = "green";
    mensajeError.textContent = "Consulta enviada con éxito.";
    return true;
}


// funcion principal para validar el formulario de seleccion de fecha y hora de la funcion de la pelicula
function validarFormularioFechayHora() {
    const fechaSelect = document.getElementById("fecha");
    const horaSelect = document.getElementById("hora");
    const mensajeError = document.getElementById("mensaje-error");

    let valido = true;

    // Validar FECHA
    if (estaVacio(fechaSelect.value)) {
        marcarError(fechaSelect, true);
        mensajeError.textContent = "Por favor, seleccioná una fecha.";
        valido = false;
    } else {
        marcarError(fechaSelect, false);
    }

    // Validar HORA
    if (estaVacio(horaSelect.value)) {
        marcarError(horaSelect, true);
        mensajeError.textContent = "Por favor, seleccioná un horario.";
        valido = false;
    } else {
        marcarError(horaSelect, false);
    }


    if (valido) {
        mensajeError.style.color = "green";
        mensajeError.textContent = "Fecha y hora seleccionadas con éxito.";
        window.location.href = "sala.html"; 
    }
    

    return false;
}