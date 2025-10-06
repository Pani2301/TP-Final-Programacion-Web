const MAX = 8;
const grid = document.querySelector('.fotos-peliculas');
const btnIrAgregar = document.getElementById('btnIrAgregar');
const contador = document.getElementById('contador');
const toast = document.getElementById('toast');

function contar() {
  return grid.querySelectorAll('.pelicula').length;
}
function actualizarUI() {
  const n = contar();
  contador.textContent = `${n}/${MAX}`;
  if (n >= MAX) {
    btnIrAgregar.classList.add('disabled');
    btnIrAgregar.setAttribute('aria-disabled','true');
  } else {
    btnIrAgregar.classList.remove('disabled');
    btnIrAgregar.removeAttribute('aria-disabled');
  }
}
function prepararTarjetasIniciales() {
  grid.querySelectorAll('.pelicula').forEach(card => {
    if (!card.querySelector('.del')) {
      const b = document.createElement('button');
      b.type = 'button';
      b.className = 'del';
      b.title = 'Eliminar';
      b.textContent = '🗑';
      card.appendChild(b);
    }
  });
}
function crearCard({ titulo, imagen, resumen, trailer }) {
  const div = document.createElement('div');
  div.className = 'pelicula';
  div.innerHTML = `
    <button type="button" class="del" title="Eliminar">🗑</button>
    <img src="${imagen}" alt="${titulo}">
    <p>${titulo}</p>
  `;
  // Podrías guardar resumen/trailer en dataset si luego los usás
  div.dataset.resumen = resumen || '';
  div.dataset.trailer = trailer || '';
  return div;
}
function mostrarToast(msg){
  if(!toast) return;
  toast.textContent = msg;
  toast.hidden = false;
  setTimeout(()=> toast.hidden = true, 1800);
}

// eliminar tarjeta (delegación)
grid.addEventListener('click', (e) => {
  if (e.target.classList.contains('del')) {
    e.target.closest('.pelicula')?.remove();
    actualizarUI();
  }
});

// si vuelve de agregar.html con datos en localStorage => agregamos
function revisarNuevaPelicula() {
  try {
    const raw = localStorage.getItem('nuevaPelicula');
    if (!raw) return;
    localStorage.removeItem('nuevaPelicula');
    const data = JSON.parse(raw);

    if (contar() >= MAX) return; // seguridad
    grid.appendChild(crearCard(data));
    actualizarUI();
    mostrarToast('✅ Película agregada');
  } catch (e) {
    console.error(e);
  }
}

// init
prepararTarjetasIniciales();
actualizarUI();
revisarNuevaPelicula();