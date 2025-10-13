function confirmaciondecompra(){
  const seleccionadas = document.querySelectorAll('.butaca.seleccionada');
  if (!seleccionadas || seleccionadas.length === 0) {
    alert('Por favor, seleccione al menos una butaca antes de confirmar.');
    return false;
  }
  alert('¡Gracias por su compra! Disfrute la película.');
  window.location.href = "../../USUARIO/cartelera/cartelera.html";
  return true;
}

// Esta función se ejecuta cuando el HTML ya cargó
function iniciarSeleccionDeButacas() {

  // obtener todas las butacas
  const butacas = document.querySelectorAll('.butaca');

  // recorrerlas con un bucle for
  for (let i = 0; i < butacas.length; i++) {
    const butaca = butacas[i];

    // agregar un evento click a cada butaca
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

// esperar a que el HTML esté listo para iniciar
document.addEventListener('DOMContentLoaded', iniciarSeleccionDeButacas);
