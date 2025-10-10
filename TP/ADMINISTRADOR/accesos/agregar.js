const form = document.getElementById('formAgregar');

form.addEventListener('submit', function(e) {
  e.preventDefault();

  const titulo  = document.getElementById('titulo').value.trim();
  const imagen  = document.getElementById('imagen').value.trim();
  const resumen = document.getElementById('resumen').value.trim();
  const trailer = document.getElementById('trailer').value.trim();

  if (titulo === "" || imagen === "") {
    alert("⚠ Completá el título y la URL de la imagen.");
    return;
  }
  if (!(imagen.endsWith(".jpg") || imagen.endsWith(".png"))) {
    alert("🖼 La imagen debe terminar en .jpg o .png.");
    return;
  }
  if (trailer !== "" && !trailer.startsWith("https://")) {
    alert("🎬 El link del trailer debe empezar con https://");
    return;
  }

  alert("✅ Película agregada correctamente.");
  window.location.href = "admin-pelis.html";
});