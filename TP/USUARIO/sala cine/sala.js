// Selección de butacas
const butacas = document.querySelectorAll(".butaca");

// Cuando el usuario hace clic en una butaca
butacas.forEach(butaca => {
    butaca.addEventListener("click", () => {
        // Solo se pueden seleccionar si no están ocupadas
        const estaOcupada = butaca.classList.contains("ocupada");

        if (estaOcupada) {
            // Si está ocupada, no hacemos nada
            return;
        }

        // Si no está ocupada, alternamos su selección
        const estaSeleccionada = butaca.classList.contains("seleccionada");

        if (estaSeleccionada) {
            // Si ya estaba seleccionada, la desmarcamos
            butaca.classList.remove("seleccionada");
        } else {
            // Si estaba libre, la marcamos como seleccionada
            butaca.classList.add("seleccionada");
        }
    });
});


// Botón confirmar
const confirmarBtn = document.querySelector(".confirmar");
confirmarBtn.addEventListener("click", () => {

    // Tomamos los valores seleccionados de fecha y hora
    const fecha = document.getElementById("fecha").value;
    const hora = document.getElementById("hora").value;

    // Armamos una lista con las butacas seleccionadas
    const seleccionadas = [];
    butacas.forEach((butaca, index) => {
        const estaSeleccionada = butaca.classList.contains("seleccionada");
        if (estaSeleccionada) {
            seleccionadas.push(index);
        }
    });

    // Validamos que se haya elegido todo
    const fechaValida = fecha !== "";
    const horaValida = hora !== "";
    const hayButacasSeleccionadas = seleccionadas.length > 0;

    if (!fechaValida) {
        alert("Por favor seleccioná una fecha.");
        return;
    }

    if (!horaValida) {
        alert("Por favor seleccioná un horario.");
        return;
    }

    if (!hayButacasSeleccionadas) {
        alert("Por favor seleccioná al menos una butaca.");
        return;
    }

    // Si todo está bien, guardamos la selección
    const seleccion = {
        fecha: fecha,
        hora: hora,
        butacas: seleccionadas
    };

    localStorage.setItem("seleccionSala", JSON.stringify(seleccion));

    alert("¡Selección guardada con éxito!");
    console.log("Guardado en localStorage:", seleccion);
});
