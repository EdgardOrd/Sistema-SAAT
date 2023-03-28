
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL PANEL DE REPORTES DEL COLEGIO CICH</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>     
         </div>
         <div class="card-body">
          <h3 class="mt-4 mb-2">TIPOS DE REPORTES CICH</h3><br>
          <div class="row">
            <div class="col-12">
              <!-- Custom Tabs -->
              <div class="card">
                <div class="card-header d-flex p-0">
                  <ul class="nav nav-pills ml p-2">
                    <li class="nav-item"><a class="nav-link active" href="#tab_1" data-toggle="tab">APROBADO Y SEGUIMIENTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_2" data-toggle="tab">DESAPROBADO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_3" data-toggle="tab">DOCUMENTACION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_4" data-toggle="tab">TIPO DE CONSTRUCCION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_5" data-toggle="tab">PRESUPUESTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_6" data-toggle="tab">AREA</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_7" data-toggle="tab">INSPECCION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_8" data-toggle="tab">DESCONTINUADO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_9" data-toggle="tab">MILLONARIO</a></li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
                    <h4>REPORTE DE PROYECTOS APROBADOS Y EN SEGUIMIENTO</h4><br>
                    <form onsubmit="window.open('../vista/fpdf/ReporteAprobadosCich.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi1').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff1').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi1" name = "fi1">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff1" name="ff1">
                            <br>
                          <button type="submit" name="report_cich_aprobados" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_2">
                   <h4> REPORTE DESAPROBADOS</h4><br>
                   <form onsubmit="window.open('../vista/fpdf/ReporteDesaprobadosCich.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi2').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff2').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi2" name = "fi2">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff2" name="ff2">
                            <br>
                          <button type="submit" name="report_cich_desaprobados" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_3">
                   <h4>REPORTE DE PROYECTOS EN SOLICITUD DE DOCUMENTACIÓN</h4><br>
                   <form onsubmit="window.open('../vista/fpdf/ReporteSoliDocCich.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi3').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff3').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi3" name = "fi3">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff3" name="ff3">
                            <br>
                          <button type="submit" name="report_cich_documentacion" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_4">
                    <h4>REPORTE DE PROYECTOS ORDENADOS EN BASE A TIPO DE CONSTRUCCIÓN</h4><br>
                    <form onsubmit="window.open('../vista/fpdf/ReporteConstruccionCich.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi4').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff4').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi4" name = "fi4">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff4" name="ff4">
                            <br>
                          <button type="submit" name="report_cich_tipoconstruccion" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_5">
                    <h4>REPORTE DE EXPEDIENTES EN BASE A PRESUPUESTO</h4><br>
                    <form onsubmit="window.open('../vista/fpdf/ReportePresupuestoCimeqh.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi8').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff8').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi8" name = "fi8">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff8" name="ff8">
                            <br>
                          <button type="submit" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div><br>
                          <div class="col-lg-12">
                          <section class="content">          
                              <div class="container-fluid">
                                  <div class="row">
                                      <div class="col-md-10">
                                          <!-- BAR CHART -->
                                          <div class="card card-success">
                                              <div class="card-header">
                                                  <h3 class="card-title">Expedintes En Base A Presupuesto de Obra</h3>
                                              </div>
                                              <div class="card-body">
                                                  <div class="chart">
                                                      <canvas id="barChart_cich" style="height:230px; min-height:230px"></canvas>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_6">
                    <h4>REPORTE DE EXPEDIENTES EN BASE A LAS AREAS EN METROS CUADRADOS</h4><br>
                    <form onsubmit="window.open('../vista/fpdf/ReporteAreaCich.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi9').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff9').value), '_blank');">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi9" name = "fi9">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff9" name="ff9">
                            <br>
                          <button type="submit" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div><br>
                          <div class="col-lg-12">
                          <section class="content">          
                              <div class="container-fluid">
                                  <div class="row">
                                      <div class="col-md-10">
                                          <!-- BAR CHART -->
                                          <div class="card card-success">
                                              <div class="card-header">
                                                  <h3 class="card-title">Expedintes En Base A Las Areas en Metros Cuadrados</h3>
                                              </div>
                                              <div class="card-body">
                                                  <div class="chart">
                                                      <canvas id="barChart_cich_area" style="height:230px; min-height:230px"></canvas>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_7">
                    <h4>REPORTE DE PROYECTOS QUE NECESITAN INSPECCION</h4><br>
                    <form action="">
                          <div class="col-lg-5">
                          <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi5" name = "fi5">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff5" name="ff5">
                            <br>
                          <button type="submit" name="report_cich_inspeccion" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_8">
                    <h4>REPORTE EXPEDIENTES DESCONTINUADOS POR CAMBIO DE INGENIERO DE OBRA</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                          <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi6" name = "fi6">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff6" name="ff6">
                            <br>
                          <button type="submit" name="report_cich_cambioingeniero" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_9">
                    <h4>REPORTE DE PROYECTOS MILLONARIOS</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                          <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fi7" name = "fi7">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="ff7" name="ff7">
                            <br>
                          <button type="submit" name="report_cich_proyectmillonario" class="btn btn-primary w-50 p-3" target="_blank"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
</div>
<script src="../Plantilla/plugins/chart.js/Chart.min.js"></script>
<script>
    $(document).ready(function(){

    // ------------------------------------- GRAFICO DE CICH EN BASE A PRESUPUESTO --------------------------------
    var areaChartCanvas = $('#barChart_cich').get(0).getContext('2d')

    var areaChartData = {
    labels  : ['Menor a 100,000', '100,000 - 250,000', '250,000 - 500,000', '500,000 - 1,000,000', 'Mayor a 1,000,000'],
    datasets: [
        {
        label               : 'Cantidad de Proyectos',
        backgroundColor     : 'rgba(60,141,188,0.9)',
        borderColor         : 'rgba(60,141,188,0.8)',
        pointRadius          : false,
        pointColor          : '#3b8bba',
        pointStrokeColor    : 'rgba(60,141,188,1)',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data                : [0, 1, 2, 3, 4, 5, 6]
        }
    ]
    }

  //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart_cich').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    barChartData.datasets[0] = temp0

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    var barChart = new Chart(barChartCanvas, {
      type: 'bar', 
      data: barChartData,
      options: barChartOptions
    })


        // ------------------------------------- GRAFICO DE CICH EN BASE A PRESUPUESTO --------------------------------
        var areaChartCanvas = $('#barChart_cich_area').get(0).getContext('2d')

var areaChartData = {
labels  : ['Menor a 100 m^2', '100 - 250 m^2', '250 - 500 m^2', '500 - 1,000 m^2', 'Mayor a 1,000 m^2'],
datasets: [
    {
    label               : 'Cantidad de Proyectos',
    backgroundColor     : 'rgba(60,141,188,0.9)',
    borderColor         : 'rgba(60,141,188,0.8)',
    pointRadius          : false,
    pointColor          : '#3b8bba',
    pointStrokeColor    : 'rgba(60,141,188,1)',
    pointHighlightFill  : '#fff',
    pointHighlightStroke: 'rgba(60,141,188,1)',
    data                : [6, 5, 4, 3, 2, 1, 0]
    }
]
}

//-------------
//- BAR CHART -
//-------------
var barChartCanvas = $('#barChart_cich_area').get(0).getContext('2d')
var barChartData = jQuery.extend(true, {}, areaChartData)
var temp0 = areaChartData.datasets[0]
barChartData.datasets[0] = temp0

var barChartOptions = {
  responsive              : true,
  maintainAspectRatio     : false,
  datasetFill             : false
}

var barChart = new Chart(barChartCanvas, {
  type: 'bar', 
  data: barChartData,
  options: barChartOptions
})

    })



</script>


