function validarEnviarConsulta() {
    const consulta = document.forms["formMandarConsulta"]["consulta"].value;
    if (consulta.length < 10) {
        document.forms["formMandarConsulta"]["consulta"].style.backgroundColor = "lightcoral";
        alert("Por favor, ingrese una consulta válida (mínimo 10 caracteres).");
        return false;
    } else {
        document.forms["formMandarConsulta"]["consulta"].style.backgroundColor = "";
    }

    alert("Consulta enviada con éxito.");
    return true;
}