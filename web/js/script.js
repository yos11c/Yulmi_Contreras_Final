function enviarFormularioOpcion2(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('form'))).toString();
         
	  // Define what happens in case of error
	  XHR.addEventListener('error', (event) => {
	    alert('Oops! Something went wrong.');
	  });

	  // Set up our request
	  XHR.open('POST', 'NewServlet', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          
          XHR.onload = () => {
            if (XHR.readyState === XHR.DONE && XHR.status === 200) {
              console.log("response => " + XHR.response);
              //console.log("response xml=> " + XHR.responseXML);
              document.getElementById('bodyTable').innerHTML=XHR.response;
              mostrarMensaje('Estudiante guardado exitosamente');
              limpiarFormulario();
            }
          };   
          XHR.send(formData);         
}

function susMsj(msj){
  Swal.fire({
  icon: 'success',
  title: msj,
  showConfirmButton: false,
  timer: 1500
})
}



function limpiarFormulario(){
    document.getElementById("Marca").value='';
    document.getElementById("Modelo").value='';
    document.getElementById("CantidadRam").value='';
    document.getElementById("SistemaOperativo").value='';
}

function mostrarMensaje(mensaje){
  Swal.fire({
    icon: 'success',
    title: mensaje,
    showConfirmButton: false,
    timer: 1500
    })
}

function eliminarAlumno(codigo){
    const XHR = new XMLHttpRequest();
    var formData = new URLSearchParams(new FormData());

    // Define what happens in case of error
    XHR.addEventListener('error', (event) => {
      alert('Oops! Something went wrong.');
    });

    // Set up our request
    XHR.open('POST', 'NewServlet', true);
    XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    XHR.onload = () => {
      if (XHR.readyState === XHR.DONE && XHR.status === 200) {
        console.log("response => " + XHR.response);
        mostrarMensaje('Estudiante Eliminado exitosamente');
        setTimeout( function() { window.location.reload() }, 2000 );
      }
    };        
    formData.append('codigo_alumno', codigo);
    formData.append('control', 'ELIMINAR');
    XHR.send(formData); 
    
}