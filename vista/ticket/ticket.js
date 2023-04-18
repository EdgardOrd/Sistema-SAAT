function EnviarTicket(){
    Swal.fire({
        position: 'top-end',
        icon: 'success',
        title: 'Por favor, toma tu ticket!',
        showConfirmButton: false,
        timer: 2000
      })     
}

var ticketNumero = 1; // Iniciar número de ticket en 1
var ultimaFechaGeneracion = new Date().toLocaleDateString(); // Iniciar la variable para almacenar la fecha de la última generación de tickets
var MAX_COLEGIOS_SELECCIONADOS = 3; // Máximo de colegios seleccionados

document.getElementById('enviar-btn').addEventListener('click', function() {
    var colegiosSelect = document.getElementById('colegios');
    var selectedOptions = [];
    var colegiosString = '';
    
    for (var i = 0; i < colegiosSelect.options.length; i++) {
        if (colegiosSelect.options[i].selected) {
            selectedOptions.push(colegiosSelect.options[i].value);
        }
    }
    
    if (selectedOptions.length > MAX_COLEGIOS_SELECCIONADOS) {
        alert('Por favor seleccione hasta ' + MAX_COLEGIOS_SELECCIONADOS + ' colegios.'); // Mostrar mensaje de error si se seleccionan más colegios de lo permitido
        return;
    }
    
    colegiosString = selectedOptions.join(', ');
    
    var ticketFechaHora = new Date().toLocaleString();
    var fechaGeneracion = new Date().toLocaleDateString(); // Obtener la fecha actual
    
    if (fechaGeneracion !== ultimaFechaGeneracion) { // Si la fecha actual es diferente a la fecha de la última generación de tickets, reiniciar el número de ticket a 1
        ticketNumero = 1;
        ultimaFechaGeneracion = fechaGeneracion;
    }
    
    var contenidoTicket = 'Ticket #' + ticketNumero + '\n' + '\n' + '\n' +
                          'Fecha y hora: ' + ticketFechaHora + '\n' + '\n' + '\n' +
                          'Colegios seleccionados: ' + colegiosString;
    
    var ventanaImpresion = window.open('', '_blank');
    ventanaImpresion.document.write('<html><head><style>' +
                                     '@page { size: 78mm 78mm; margin: 0; }' + // Establecer tamaño de página a 78x78 mm y margen a 0
                                     'body { background-color: #fff; color: rgb(39, 56, 132); font-family: Arial, sans-serif; text-align: center; }' + // Establecer estilo de fondo, color de texto, fuente y alineación de texto
                                     'pre { margin-top: 40%; margin-left: 10px; margin-right: 10px; border: 1px solid rgb(39, 56, 132); padding: 10px; }' + // Establecer margen superior para centrar el contenido, añadir margen izquierdo y derecho de 10px, añadir borde y padding
                                     'pre span { color: rgb(39, 56, 132); }' + // Establecer color de letra en azul
                                   '</style></head><body><pre><span>' + contenidoTicket + '</span></pre></body></html>');
    ventanaImpresion.document.close();

    ventanaImpresion.onafterprint = function() {
        EnviarTicket();
    }
    ventanaImpresion.print();
    ventanaImpresion.close(); // Agregar esta línea para cerrar la ventana emergente

    ticketNumero++; // Incrementar número de ticket
    if (ticketNumero > MAX_TICKET_NUMERO) {
        ticketNumero = 1; // Reiniciar

    }
});

function currentTime(){
    let date = new Date();
    let hh = date.getHours();
    let mm = date.getMinutes();
    let ss = date.getSeconds();

    hh = (hh<10) ? "0" + hh : hh;
    mm = (mm<10) ? "0" + mm : mm;
    ss = (ss<10) ? "0" + ss : ss;

    let time = hh + ":" + mm + ":" + ss;
    let watch = document.querySelector("#watch");
    watch.innerHTML = time;    
}

setInterval(currentTime, 1000);