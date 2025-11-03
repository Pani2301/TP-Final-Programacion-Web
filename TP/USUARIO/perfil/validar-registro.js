
function validarNoVacio(valor) {
    return valor.trim() !== "";
}


function validarTexto(valor) {
    for (let c of valor) {
        if (!((c >= "A" && c <= "Z") || (c >= "a" && c <= "z") || (c === " ") || ("áéíóúÁÉÍÓÚñÑ".includes(c)))) {
            return false;
    }
  }
  return valor.trim().length > 0;
}


function validarEmail(valor) {
    if (valor.includes("@") && valor.includes(".")) {
        return true;
    } else {
        return false;
    }
}


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


function calcularEdad(fechaNacimiento) {
    const hoy = new Date(); 
    const nacimiento = new Date(fechaNacimiento); 
    const edad = hoy.getFullYear() - nacimiento.getFullYear();
    return edad;
}


function validarRegistro() {
    const form = document.forms["formRegistro"];
    const nombre = form["nombre"];
    const apellido = form["apellido"];
    const contrasena = form["contrasena"];
    const fecha = form["fecha"];
    const correo = form["correo"];

    if (!validarTexto(nombre.value) || nombre.value.length < 2) {
        nombre.style.backgroundColor = "lightcoral";
        alert("Ingrese un nombre válido (solo letras, mínimo 2 caracteres).");
        return false;
    } else {
        nombre.style.backgroundColor = "";
    }

    if (!validarTexto(apellido.value) || apellido.value.length < 2) {
        apellido.style.backgroundColor = "lightcoral";
        alert("Ingrese un apellido válido (solo letras, mínimo 2 caracteres).");
        return false;
    } else {
        apellido.style.backgroundColor = "";
    }

    if (fecha.value === "") {
        fecha.style.backgroundColor = "lightcoral";
        alert("Por favor ingrese su fecha de nacimiento.");
        return false;
    } else {
        fecha.style.backgroundColor = "";
    }

    if (calcularEdad(fecha.value) < 12) {
        fecha.style.backgroundColor = "lightcoral";
        alert("Debe tener al menos 12 años para registrarse.");
        return false;
    } else {
        fecha.style.backgroundColor = "";
    }

    if (!validarEmail(correo.value)) {
        correo.style.backgroundColor = "lightcoral";
        alert("Ingrese un correo electrónico válido.");
        return false;
    } else {
        correo.style.backgroundColor = "";
    }
    
    if (!validarPassword(contrasena.value)) {
        contrasena.style.backgroundColor = "lightcoral";
        alert("La contraseña debe tener al menos 8 caracteres, una letra y un número.");
        return false;
    } else {
        contrasena.style.backgroundColor = "";
    }

    alert("Registro completado correctamente.");
    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false;
}
