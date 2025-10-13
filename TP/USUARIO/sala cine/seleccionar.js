function validarFechaSeleccionada() {
  let arg;

  if (arguments.length > 0) {
    arg = arguments[0];  // Si se pasó un argumento, lo guardo en arg
  } else {
    arg = undefined;     // Si no se pasó nada, lo dejo indefinido
  }

  let valor = '';

  if (typeof arg === 'string') {
    valor = arg;  // Si el argumento es directamente un string
  } else if (arg && typeof arg.value !== 'undefined') {
    valor = String(arg.value);  // Si es un input o algo con propiedad .value
  }

  return valor.trim() === '';  // Devuelve true si está vacío
}


function validarHoraSeleccionada() {
  let arg;

  if (arguments.length > 0) {
    arg = arguments[0];  // Si se pasó un argumento, lo guardo en arg
  } else {
    arg = undefined;     // Si no se pasó nada, lo dejo indefinido
  }

  let valor = '';

  if (typeof arg === 'string') {
    valor = arg;  // Si el argumento es directamente un string
  } else if (arg && typeof arg.value !== 'undefined') {
    valor = String(arg.value);  // Si es un input o algo con propiedad .value
  }

  return valor.trim() === '';  // Devuelve true si está vacío
}


function validarFormularioFechayHora(){
	const form = document.forms["formFechaHora"];
	const fecha = form["fecha"];
	const hora = form["hora"];

  if (validarFechaSeleccionada(fecha.value)) {
    fecha.style.backgroundColor = "lightcoral";
    alert("Por favor, seleccione una fecha.");
    return false;
  } else {
    fecha.style.backgroundColor = "";
  	}

  if (validarHoraSeleccionada(hora.value)) {
    hora.style.backgroundColor = "lightcoral";
    alert("Por favor, seleccione una hora.");
    return false;
  } else {
    hora.style.backgroundColor = "";
  	}

	alert("Fecha y hora seleccionadas con éxito.");
	window.location.href = "sala.html";
	return false;
}


