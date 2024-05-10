function replaceURL() {
  // Obtener la referencia a la tabla por su ID
  let tabla = document.getElementById("body_gridTramites");

  // Obtener todas las filas de la tabla (excluyendo la fila de encabezado)
  let filas = tabla.getElementsByTagName("tr");

  for (let i = 1; i < filas.length; i++) {
    //Obetner el valor del tercer campo
    let elementTD = filas[i].getElementsByTagName("td")[2];

    //Obtener texto del campo
    let estado = elementTD.textContent;

    let url = "www.registroenlinea.gov.co"

    //Crear nueva url
    const newUrl = document.createElement('a');
    newUrl.href = "https://" + url;
    newUrl.innerHTML = "www.registroenlinea.gov.co";
    newUrl.target = "_blank"

    //Validar si existe la url
    if (estado.includes(url)) {
        let newText = estado.replace(url,'');
        elementTD.textContent = newText;
        elementTD.appendChild(newUrl);
    }
  }
}



window.addEventListener("load", (event) => {
  console.log("page is fully loaded");
  replaceURL();
});
