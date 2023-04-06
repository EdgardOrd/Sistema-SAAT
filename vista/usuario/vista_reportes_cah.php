
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL PANEL DE REPORTES DEL COLEGIO CAH</h3>
                     
         </div>
         <div class="card-body">
          <h3 class="mt-4 mb-2">TIPOS DE REPORTES CAH</h3><br>
          <div class="row">
            <div class="col-12">
              <!-- Custom Tabs -->
              <div class="card">
                <div class="card-header d-flex p-0">
                  <ul class="nav nav-pills ml p-2">
                    <li class="nav-item"><a class="nav-link active" href="#tab_1" data-toggle="tab">APROBADO Y SEGUIMIENTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_2" data-toggle="tab">DESAPROBADO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_3" data-toggle="tab">DOCUMENTACIÓN</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_4" data-toggle="tab">TIPO DE CONSTRUCCIÓN</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_5" data-toggle="tab">PRESUPUESTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_6" data-toggle="tab">ÁREA</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_7" data-toggle="tab">INSPECCIÓN</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_8" data-toggle="tab">CAMBIO DE INGENIERO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_9" data-toggle="tab">MILLONARIO</a></li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
                    <h4 class="text-center">REPORTE DE PROYECTOS APROBADOS Y EN SEGUIMIENTO</h4><br>
                        <!-- <form action="../vista/fpdf/ReporteAprobadosCAH.php"> -->
                        <form onsubmit="window.open('../vista/fpdf/ReporteAprobadosCAH.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi1').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff1').value), '_blank');">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi1" name = "fi1">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff1" name="ff1">
                            <br>
                          <button type="submit" name="report_cah_aprobados" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_2">
                   <h4 class="text-center"> REPORTE DE PROYECTOS DESAPROBADOS</h4><br>
                        <form onsubmit="window.open('../vista/fpdf/ReporteDesaprobadosCah.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi2').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff2').value), '_blank');">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi2" name = "fi2">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff2" name="ff2">
                            <br>
                          <button type="submit" name="report_cah_desaprobados" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_3">
                   <h4 class="text-center">REPORTE DE PROYECTOS EN SOLICITUD DE DOCUMENTACIÓN</h4><br>
                   <form onsubmit="window.open('../vista/fpdf/ReporteSoliDocCah.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi3').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff3').value), '_blank');">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi3" name = "fi3">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff3" name="ff3">
                            <br>
                          <button type="submit" name="report_cimeqh_documentacion" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_4">
                    <h4 class="text-center">REPORTE DE PROYECTOS ORDENADOS SEGÚN EL TIPO DE CONSTRUCCIÓN</h4><br>
                    <form onsubmit="window.open('../vista/fpdf/ReporteConstruccionCah.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi4').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff4').value), '_blank');">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi4" name = "fi4">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff4" name = "ff4">
                            <br>
                          <button type="submit" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_5">
                    <h4 class="text-center">REPORTE DE EXPEDIENTES EN BASE A PRESUPUESTO</h4><br>
                    <form>
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi8" name = "fi8" onchange="CargarDatosGraficoBar2()" onchange="CargarDatosGraficoBar2()">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff8" name="ff8" onchange="CargarDatosGraficoBar2()" onchange="CargarDatosGraficoBar2()">
                            <br>
                          </div>
                          <div class="col-lg-14">
                          <section class="content">          
                              <div class="container-fluid">
                                  <div class="row">
                                      <div class="col-md-12">
                                          <!-- BAR CHART -->
                                          <div class="card card-success">
                                              <div class="card-header">
                                                  <h3 class="card-title">Grafico En Base A Presupuesto de Obra</h3>
                                              </div>
                                              <div class="card-body">
                                                  <div class="chart">
                                                      <canvas id="barChart_cimeqh_presupuesto" style="min-height:230px; max-height:230px;width:200px"></canvas>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          <section class="content">          
                              <div class="container-fluid">
                              <div class="row">
                                <div class="col-12">
                                  <div class="card">
                                    <div class="card-header">
                                      <h3 class="card-title">Tabla En Base A Presupuesto de Obra </h3>

                                     
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body table-responsive p-0">
                                      <table id="tabla_presupuesto" class="table table-hover">
                                        <thead>
                                          <tr>
                                            <th>Cantidad de Proyectos</th>
                                            <th>Presupuesto</th>                                            
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1</td>
                                            <td>Menor a 100,000 LPS</td>                                           
                                          </tr>
                                          <tr>
                                            <td>2</td>
                                            <td>100,000 - 250,000 LPS</td>                                           
                                          </tr>
                                          <tr>
                                            <td>3</td>
                                            <td>250,000 - 500,000 LPS</td>                                           
                                          </tr>
                                          <tr>
                                            <td>4</td>
                                            <td>500,000 - 1,000,000 LPS</td>                                           
                                          </tr>
                                          <tr>
                                            <td>5</td>
                                            <td>Mayor a 1,000,000 LPS</td>                                           
                                          </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                    <!-- /.card-body -->
                                  </div>
                                  <!-- /.card -->
                                </div>
                              </div>
                              </div>
                          </section>  
                          </div>
                          <button type="submit" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_6">
                    <h4 class="text-center">REPORTE DE EXPEDIENTES EN BASE AL ÁREA EN METROS CUADRADOS</h4><br>
                    <form>
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi9" name = "fi9" onchange="CargarDatosGraficoBar()">
                           
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff9" name="ff9" onchange="CargarDatosGraficoBar()">
                            
                            <br>
                          </div>
                          <div class="col-lg-14">
                          <section class="content">          
                              <div class="container-fluid">
                                  <div class="row">
                                      <div class="col-md-12" >
                                          <!-- BAR CHART -->
                                          <div class="card card-success" id="card_area">
                                              <div class="card-header">
                                                  <h3 class="card-title">Gráfico En Base A Las Areas en Metros Cuadrados</h3>
                                              </div>
                                              <div class="card-body">
                                                  <div class="chart ">
                                                      <canvas id="barChart_cimeqh_area" style="min-height:230px; max-height:230px;width:200px"></canvas>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          <section class="content">          
                              <div class="container-fluid">
                              <div class="row">
                                <div class="col-12">
                                  <div class="card">
                                    <div class="card-header">
                                      <h3 class="card-title">Tabla En Base A Las Areas en Metros Cuadrados</h3>

                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body table-responsive p-0">
                                      <table id="tabla_area" class="table table-hover">
                                        <thead>
                                          <tr>
                                            <th>Cantidad de Proyectos</th>
                                            <th>Área de Construcción</th>                                            
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1</td>
                                            <td>Menor a 100 m^2</td>                                           
                                          </tr>
                                          <tr>
                                            <td>2</td>
                                            <td>100 - 250 m^2</td>                                           
                                          </tr>
                                          <tr>
                                            <td>3</td>
                                            <td>250 - 500 m^2</td>                                           
                                          </tr>
                                          <tr>
                                            <td>4</td>
                                            <td>500 - 1,000 m^2</td>                                           
                                          </tr>
                                          <tr>
                                            <td>5</td>
                                            <td>Mayor a 1,000 m^2</td>                                           
                                          </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                    <!-- /.card-body -->
                                  </div>
                                  <!-- /.card -->
                                </div>
                              </div>
                              </div>
                          </section>  
                          </div>
                          <br>
                          <button onclick="printDiv('card_area')" type="button" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_7">
                    <h4 class="text-center">REPORTE DE PROYECTOS QUE NECESITAN INSPECCIÓN</h4><br>
                        <form action="">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi5" name = "fi5">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff5" name = "ff5">
                          </div>
                            <br>
                            <div class="col-lg-14">
                          <section class="content">          
                              <div class="container-fluid">
                                  <div class="row">
                                      <div class="col-md-12" >
                                          <!-- BAR CHART -->
                                          <div class="card card-success" id="card_inspeccion">
                                              <div class="card-header">
                                                  <h3 class="card-title">Gráfico En Base A Proyectos Que Necesitan Inspección</h3>
                                              </div>
                                              <div class="card-body">
                                                  <div class="chart ">
                                                      <canvas id="barChart_cimeqh_area" style="min-height:230px; max-height:230px;width:200px"></canvas>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          <section class="content">          
                              <div class="container-fluid">
                              <div class="row">
                                <div class="col-12">
                                  <div class="card">
                                    <div class="card-header">
                                      <h3 class="card-title">Tabla En Base A Proyectos Que Necesitan Inspección</h3>

                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body table-responsive p-0">
                                      <table id="tabla_inspeccion" class="table table-hover">
                                        <thead>
                                          <tr>
                                            <th>COLUMNA 1</th>
                                            <th>COLUMNA 2</th>
                                            <th>COLUMNA 3</th>                                            
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>*</td>
                                            <td>*</td>
                                            <td>*</td>                                           
                                          </tr>
                                          <tr>
                                          <td>*</td>
                                            <td>*</td>
                                            <td>*</td>                                           
                                          </tr>
                                          <tr>
                                          <td>*</td>
                                            <td>*</td>
                                            <td>*</td>                                           
                                          </tr>
                                          <tr>
                                          <td>*</td>
                                            <td>*</td>
                                            <td>*</td>                                        
                                          </tr>
                                          <tr>
                                          <td>*</td>
                                            <td>*</td>
                                            <td>*</td>                                          
                                          </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                    <!-- /.card-body -->
                                  </div>
                                  <!-- /.card -->
                                </div>
                              </div>
                              </div>
                          </section>  
                          </div>  
                          <button type="submit" name="report_cimeqh_inspeccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>

                        </form>
                    </div>
                    <div class="tab-pane" id="tab_8">
                    <h4 class="text-center">REPORTE DE EXPEDIENTES CON CAMBIO DE INGENIERO DE OBRA</h4><br>
                        <form action="">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi6" name = "fi6">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff6" name = "ff6">
                            <br>
                          <button type="submit" name="report_cimeqh_cambioingeniero" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_9">
                    <h4 class="text-center">REPORTES DE PROYECTOS MILLONARIOS</h4><br>
                        <form onsubmit="window.open('../vista/fpdf/ReporteMillonariosCah.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi7').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff7').value), '_blank');">
                          <div class="col-lg-3">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi7" name = "fi7">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff7" name = "ff7">
                            <br>
                          <button type="submit" name="report_cimeqh_proyectmillonario" class="btn btn-primary w-100 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
</div>
<script src="../Plantilla/plugins/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    function CargarDatosGraficoBar()
    
    {
      var fechaInicial = document.getElementById('fi9').value;
      var fechaFinal = document.getElementById('ff9').value;

      var xhr = new XMLHttpRequest();
      xhr.open('POST', '../vista/usuario/controlador_grafico_cah1.php');
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
        const ctx = document.getElementById('barChart_cimeqh_area');
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

        function CargarDatosGraficoBar2()
        {
        var fechaInicial = document.getElementById('fi8').value;
        var fechaFinal = document.getElementById('ff8').value;

        var xhr = new XMLHttpRequest();
        xhr.open('POST', '../vista/usuario/controlador_grafico_cah2.php');
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
        const ctx = document.getElementById('barChart_cimeqh_presupuesto');
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



</script>

