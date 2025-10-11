function validarEnviarConsulta() {
    const consulta = document.forms["formMandarConsulta"]["consulta"].value;
    if (consulta.length < 10) {
        alert("Por favor, ingrese una consulta válida (mínimo 10 caracteres).");
        return false;
    }
    alert("Consulta enviada con éxito.");
    return true;
}