// Verifica que un valor no esté vacío
function validarNoVacio(valor) {
    return valor.trim() !== "";
}

// Verifica que un texto contenga solo letras (mayúsculas, minúsculas o acentos)
function validarTexto(valor) {
    for (let c of valor) {
        if (!((c >= "A" && c <= "Z") || (c >= "a" && c <= "z") || (c === " ") || ("áéíóúÁÉÍÓÚñÑ".includes(c)))) {
            return false;
    }
  }
  return valor.trim().length > 0;
}

// Verifica que el email contenga al menos un "@" y un "."
function validarEmail(valor) {
    if (valor.includes("@") && valor.includes(".")) {
        return true;
    } else {
        return false;
    }
}

// Verifica que la contraseña tenga al menos una letra, un número y 8 caracteres
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

// Calcula la edad solo según el año de nacimiento
function calcularEdad(fechaNacimiento) {
    const hoy = new Date(); // Fecha actual
    const nacimiento = new Date(fechaNacimiento); // Fecha de nacimiento
    const edad = hoy.getFullYear() - nacimiento.getFullYear();
    return edad;
}

// --- Validación principal del formulario ---
function validarRegistro() {
// Obtiene el formulario y los campos por su "name"
    const form = document.forms["formRegistro"];
    const nombre = form["nombre"];
    const apellido = form["apellido"];
    const contrasena = form["contrasena"];
    const fecha = form["fecha"];
    const correo = form["correo"];

    // --- Validación del nombre ---
    if (!validarTexto(nombre.value) || nombre.value.length < 2) {
        alert("Ingrese un nombre válido (solo letras, mínimo 2 caracteres).");
        return false;
    }

    // --- Validación del apellido ---
    if (!validarTexto(apellido.value) || apellido.value.length < 2) {
        alert("Ingrese un apellido válido (solo letras, mínimo 2 caracteres).");
        return false;
    }

    // --- Validación de contraseña ---
    if (!validarPassword(contrasena.value)) {
        alert("La contraseña debe tener al menos 8 caracteres, una letra y un número.");
        return false;
    }

    // --- Validación de la fecha ---
    if (fecha.value === "") {
        alert("Por favor ingrese su fecha de nacimiento.");
        return false;
    }

    if (calcularEdad(fecha.value) < 12) {
        alert("Debe tener al menos 12 años para registrarse.");
        return false;
    }

    // --- Validación del correo ---
    if (!validarEmail(correo.value)) {
        alert("Ingrese un correo electrónico válido.");
        return false;
    }

    alert("Registro completado correctamente.");
    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false;
}
