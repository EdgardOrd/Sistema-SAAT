function cargarDatosGrafico(url, graficoId, fechaInicialId, fechaFinalId) 
{
    var fechaInicial = document.getElementById(fechaInicialId).value;
    var fechaFinal = document.getElementById(fechaFinalId).value;
  
    var xhr = new XMLHttpRequest();
    xhr.open('POST', url);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
      if (xhr.status === 200) {
        var titulo = [];
        var cantidad = [];
        var data = JSON.parse(xhr.responseText);
        for (var i = 0; i < data.length; i++) {
          titulo.push(data[i][1]);
          cantidad.push(data[i][0]);
        }
        const ctx = document.getElementById(graficoId);
        var chart = Chart.getChart(ctx);
        if (chart) {
          chart.destroy();
        }
        new Chart(ctx, {
          type: 'bar',
          data: {
            labels: titulo,
            datasets: [{
              label: '# de Proyectos',
              data: cantidad,
              borderWidth: 2
            }]
          },
          options: {
            scales: {
              y: {
                beginAtZero: true,
              }
            }
          }
        });
      } else {
        console.log('Ha ocurrido un error');
      }
    };
    xhr.onerror = function() {
      console.log('Ha ocurrido un error');
    };
    xhr.send('fecha_inicial=' + fechaInicial + '&fecha_final=' + fechaFinal);
  }
  function llenarTablaPresupuesto(url)
       {
        var fechaInicial = document.getElementById('fi8').value;
        var fechaFinal = document.getElementById('ff8').value;

        var xhr = new XMLHttpRequest();
        xhr.open('POST', url);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
          if (xhr.status === 200) {
            var titulo = [];
            var cantidad = [];
            var data = JSON.parse(xhr.responseText);
            for (var i = 0; i < data.length; i++) {
              titulo.push(data[i][1]);
              cantidad.push(data[i][0]);
            }

            // Llena la tabla con los datos recibidos
            var tabla = document.getElementById('tabla_presupuesto');
            tabla.innerHTML = ''; // Limpiar la tabla antes de llenarla

            // Crea los encabezados de la tabla
            var filaEncabezados = document.createElement('tr');
            var encabezadoTitulo = document.createElement('th');
            encabezadoTitulo.textContent = 'Rango de Presupuesto';     
            var encabezadoCantidad = document.createElement('th');
            encabezadoCantidad.textContent = 'Cantidad de Proyectos';
            filaEncabezados.appendChild(encabezadoTitulo);
            filaEncabezados.appendChild(encabezadoCantidad);
            tabla.appendChild(filaEncabezados);

            // Llena la tabla con los datos
            for (var i = 0; i < data.length; i++) {
              var fila = document.createElement('tr');
              var celdaTitulo = document.createElement('td');
              celdaTitulo.textContent = titulo[i];
              var celdaCantidad = document.createElement('td');
              celdaCantidad.textContent = cantidad[i];
              fila.appendChild(celdaTitulo);
              fila.appendChild(celdaCantidad);
              tabla.appendChild(fila);
            }
          } else {
            console.log('Ha ocurrido un error');
          }
        };
        xhr.onerror = function() {
          console.log('Ha ocurrido un error');
        };
        xhr.send('fecha_inicial=' + fechaInicial + '&fecha_final=' + fechaFinal);

       }
       function llenarTablaArea(url)
       {
        var fechaInicial = document.getElementById('fi9').value;
        var fechaFinal = document.getElementById('ff9').value;

        var xhr = new XMLHttpRequest();
        xhr.open('POST', url);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
          if (xhr.status === 200) {
            var titulo = [];
            var cantidad = [];
            var data = JSON.parse(xhr.responseText);
            for (var i = 0; i < data.length; i++) {
              titulo.push(data[i][1]);
              cantidad.push(data[i][0]);
            }

            // Llena la tabla con los datos recibidos
            var tabla = document.getElementById('tabla_area');
            tabla.innerHTML = ''; // Limpiar la tabla antes de llenarla

            // Crea los encabezados de la tabla
            var filaEncabezados = document.createElement('tr');
            var encabezadoTitulo = document.createElement('th');
            encabezadoTitulo.textContent = 'Rango de Área';     
            var encabezadoCantidad = document.createElement('th');
            encabezadoCantidad.textContent = 'Cantidad de Proyectos';
            filaEncabezados.appendChild(encabezadoTitulo);
            filaEncabezados.appendChild(encabezadoCantidad);
            tabla.appendChild(filaEncabezados);

            // Llena la tabla con los datos
            for (var i = 0; i < data.length; i++) {
              var fila = document.createElement('tr');
              var celdaTitulo = document.createElement('td');
              celdaTitulo.textContent = titulo[i];
              var celdaCantidad = document.createElement('td');
              celdaCantidad.textContent = cantidad[i];
              fila.appendChild(celdaTitulo);
              fila.appendChild(celdaCantidad);
              tabla.appendChild(fila);
            }
          } else {
            console.log('Ha ocurrido un error');
          }
        };
        xhr.onerror = function() {
          console.log('Ha ocurrido un error');
        };
        xhr.send('fecha_inicial=' + fechaInicial + '&fecha_final=' + fechaFinal);

       }
       function llenarTablaInspeccion(url)
       {
        var fechaInicial = document.getElementById('fi5').value;
        var fechaFinal = document.getElementById('ff5').value;

        var xhr = new XMLHttpRequest();
        xhr.open('POST', url);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
          if (xhr.status === 200) {
            var titulo = [];
            var cantidad = [];
            var data = JSON.parse(xhr.responseText);
            for (var i = 0; i < data.length; i++) {
              titulo.push(data[i][1]);
              cantidad.push(data[i][0]);
            }

            // Llena la tabla con los datos recibidos
            var tabla = document.getElementById('tabla_inspeccion');
            tabla.innerHTML = ''; // Limpiar la tabla antes de llenarla

            // Crea los encabezados de la tabla
            var filaEncabezados = document.createElement('tr');
            var encabezadoTitulo = document.createElement('th');
            encabezadoTitulo.textContent = 'Razón de Inspección';     
            var encabezadoCantidad = document.createElement('th');
            encabezadoCantidad.textContent = 'Cantidad de Proyectos';
            filaEncabezados.appendChild(encabezadoTitulo);
            filaEncabezados.appendChild(encabezadoCantidad);
            tabla.appendChild(filaEncabezados);

            // Llena la tabla con los datos
            for (var i = 0; i < data.length; i++) {
              var fila = document.createElement('tr');
              var celdaTitulo = document.createElement('td');
              celdaTitulo.textContent = titulo[i];
              var celdaCantidad = document.createElement('td');
              celdaCantidad.textContent = cantidad[i];
              fila.appendChild(celdaTitulo);
              fila.appendChild(celdaCantidad);
              tabla.appendChild(fila);
            }
          } else {
            console.log('Ha ocurrido un error');
          }
        };
        xhr.onerror = function() {
          console.log('Ha ocurrido un error');
        };
        xhr.send('fecha_inicial=' + fechaInicial + '&fecha_final=' + fechaFinal);

       }