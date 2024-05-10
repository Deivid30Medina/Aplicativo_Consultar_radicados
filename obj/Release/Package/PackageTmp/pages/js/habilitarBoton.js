// Obtener todos los radio buttons por su nombre
const radioButtons = document.querySelectorAll('input[type="radio"][name="consultar"]');

// Agregar un event listener a cada radio button
radioButtons.forEach(radioButton => {
    radioButton.addEventListener('change', (event) => {
        if (event.target.checked) {
            const selectedOption = event.target.id;

            // Deshabilitar todos los inputs
            const allInputs = document.querySelectorAll('.classFiltroInput');
            allInputs.forEach(input => {
                input.disabled = true;
                input.value = null;
            });
            const selectOptionInput = document.querySelector("."+selectedOption + "2");
            selectOptionInput.disabled = false;
            const btnSend = document.querySelector(".idBtnConsultar");
            btnSend.disabled = false;
        }
    });
});