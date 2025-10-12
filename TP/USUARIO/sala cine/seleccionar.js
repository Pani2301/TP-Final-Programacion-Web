function confirmaciondecompra(){
	alert("¡Gracias por su compra! Disfrute la película.");
	window.location.href = "../../USUARIO/cartelera/cartelera.html";
	return true;
}


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


// Esta función se ejecuta cuando el HTML ya cargó
function iniciarSeleccionDeButacas() {

  // Paso 1: obtener todas las butacas
  const butacas = document.querySelectorAll('.butaca');

  // Paso 2: recorrerlas con un bucle for
  for (let i = 0; i < butacas.length; i++) {
    const butaca = butacas[i];

    // Paso 3: agregar un evento click a cada butaca
    butaca.addEventListener('click', manejarClickButaca);
  }
}

// Esta función se ejecuta cuando se hace clic en una butaca
function manejarClickButaca() {

  // "this" hace referencia a la butaca en la que se hizo clic
  if (this.classList.contains('ocupada')) {
    return; // si está ocupada, no hace nada
  }

  // Alterna la clase "seleccionada"
  this.classList.toggle('seleccionada');
}

// Paso 4: esperar a que el HTML esté listo para iniciar
document.addEventListener('DOMContentLoaded', iniciarSeleccionDeButacas);
