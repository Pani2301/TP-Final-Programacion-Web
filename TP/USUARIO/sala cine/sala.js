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


function iniciarSeleccionDeButacas() {

 
  const butacas = document.querySelectorAll('.butaca');

  
  for (let i = 0; i < butacas.length; i++) {
    const butaca = butacas[i];

    
    butaca.addEventListener('click', manejarClickButaca);
  }
}


function manejarClickButaca() {

  
  if (this.classList.contains('ocupada')) {
    return; 
  }

  
  this.classList.toggle('seleccionada');
}


document.addEventListener('DOMContentLoaded', iniciarSeleccionDeButacas);
