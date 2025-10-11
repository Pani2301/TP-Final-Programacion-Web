function alternarMenu() {
  	document.getElementById("menu-desplegable").classList.toggle("mostrar");
}

window.onclick = function(event) {
  	if (!event.target.matches('.boton-desplegable')) {
    	var menus = document.getElementsByClassName("menu-contenido");
    	for (var i = 0; i < menus.length; i++) {
      		var menuAbierto = menus[i];
      		if (menuAbierto.classList.contains('mostrar')) {
        		menuAbierto.classList.remove('mostrar');
			}
    	}
  	}
}