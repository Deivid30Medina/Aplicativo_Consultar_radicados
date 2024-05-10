const formulario = document.getElementById('idFormulario');

// Agregar un event listener para el evento de submit del formulario
formulario.addEventListener('click', (event) => {
    // Prevenir el comportamiento predeterminado de recargar la página
    event.preventDefault();
});