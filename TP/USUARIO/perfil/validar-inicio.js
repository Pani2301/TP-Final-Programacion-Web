function validarNoVacio(valor) {
    return valor.trim() !== "";
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
    }
    } 
    return tieneLetra && tieneNumero;
}

// --- Validación principal del formulario de inicio de sesión ---
// Obtiene los elementos del formulario por su name
function validarInicioSesion() {
    const form = document.forms["formInicio"];
    const email = form["email"];
    const password = form["password"];

    // --- Validación del correo ---
    if (!validarNoVacio(email.value)) {
        alert("Por favor ingrese su correo electrónico.");
        return false;
    }

    if (!validarEmail(email.value)) {
        alert("Ingrese un correo electrónico válido.");
        return false;
    }

    // --- Validación de la contraseña ---
    if (!validarNoVacio(password.value)) {
        alert("Por favor ingrese su contraseña.");
        return false;
    }

    if (!validarPassword(password.value)) {
        alert("La contraseña debe tener al menos 8 caracteres, una letra y un número.");
        return false;
    }

    alert("Inicio de sesión exitoso.");
    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false; 
}
