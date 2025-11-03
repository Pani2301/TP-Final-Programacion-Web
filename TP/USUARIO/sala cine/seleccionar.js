function estaVacio(valor) {
  return valor == null || String(valor).trim() === "";
}

function marcarError(el, tieneError) {
  if (tieneError) {
    el.style.backgroundColor = "lightcoral";
  } else {
    el.style.backgroundColor = "";
  }
}

function validarFormularioFechayHora() {
  const fechaSelect = document.getElementById("fecha");
  const horaSelect = document.getElementById("hora");

  let valido = true;

  // Validar FECHA
  if (estaVacio(fechaSelect.value)) {
    marcarError(fechaSelect, true);
    alert("Por favor, seleccioná una fecha.");
    valido = false;
  } else {
    marcarError(fechaSelect, false);
  }

  // Validar HORA
  if (estaVacio(horaSelect.value)) {
    marcarError(horaSelect, true);
    alert("Por favor, seleccioná un horario.");
    valido = false;
  } else {
    marcarError(horaSelect, false);
  }


  if (!valido) {
    return false;
  }


  alert("Fecha y hora seleccionadas con éxito.");
  window.location.href = "sala.html"; 
  return false; 
}
