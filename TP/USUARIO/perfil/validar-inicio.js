function validarNoVacio(valor) {
    return valor.trim() !== "";
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
        }
    }
    return tieneLetra && tieneNumero;
}



function validarInicioSesion() {
    const form = document.forms["formInicio"];
    const correo = form["correo"];
    const contrasena = form["contrasena"];

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

    alert("Inicio de sesión exitoso.");
    window.location.href = "../../USUARIO/cartelera/cartelera.html";
    return false;
}
