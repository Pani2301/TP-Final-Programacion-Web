function validarTexto(valor) {
    for (let c of valor) {
        if (!((c >= "A" && c <= "Z") || (c >= "a" && c <= "z") || (c === " ") || ("áéíóúÁÉÍÓÚñÑ".includes(c)))) {
            return false;
    }
  }
  return valor.trim().length > 0;
}


function validarImagen(value) {
    if (!value) return false;
    value = value.trim();

    const lower = value.toLowerCase();
    return lower.endsWith('.jpg') || lower.endsWith('.jpeg') || lower.endsWith('.png') || lower.endsWith('.gif');
}

function validarTrailer(value) {
    if (!value) return false;
    value = value.trim();

    const lower = value.toLowerCase();
    return lower.includes('youtube.com') || lower.includes('youtu.be');
}

function validarAgregar() {
    const form = document.forms["formAgregar"];
    const titulo = form["titulo"];
    const imagen = form["imagen"];
    const resumen = form["resumen"];
    const trailer = form["trailer"];

    if (!validarTexto(titulo.value)) {
        titulo.style.backgroundColor = "lightcoral";
        alert("Ingrese un título válido.");
        return false;
    } else {
        titulo.style.backgroundColor = "";
    }

    if (!validarImagen(imagen.value)) {
        imagen.style.backgroundColor = "lightcoral";
        alert("Ingrese una URL de imagen válida.");
        return false;
    } else {
        imagen.style.backgroundColor = "";
    }

    if (!validarTexto(resumen.value)) {
        resumen.style.backgroundColor = "lightcoral";
        alert("Ingrese un resumen válido.");
        return false;
    } else {
        resumen.style.backgroundColor = "";
    }

    if (!validarTrailer(trailer.value)) {
        trailer.style.backgroundColor = "lightcoral";
        alert("Ingrese una URL de trailer válida.");
        return false;
    } else {
        trailer.style.backgroundColor = "";
    }

    alert("Película agregada con éxito.");
    window.location.href = "admin-pelis.html";
    return false;
}