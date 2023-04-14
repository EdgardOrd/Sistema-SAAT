
<div class="col-md-12">
<div class="col-12">
  <!-- Custom Tabs -->
  <div class="card">
    <div class="card-header d-flex p-0">
      <ul class="nav nav-pills ml p-2">
        <li class="nav-item"><a class="nav-link" href="#tab_1" data-toggle="tab">APROBADO Y SEGUIMIENTO</a></li>
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
                <input type="date" class="form-control" id="fi8" name = "fi8" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah2.php', 'barChart_cah_presupuesto', 'fi8', 'ff8'); llenarTablaPresupuesto('../controlador/colegios/controlador_grafico_cah2.php')">
                <br>
                <label for="">Fecha Final</label>
                <input type="date" class="form-control" id="ff8" name="ff8" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah2.php', 'barChart_cah_presupuesto', 'fi8', 'ff8'); llenarTablaPresupuesto('../controlador/colegios/controlador_grafico_cah2.php')">
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
                                          <canvas id="barChart_cah_presupuesto" style="min-height:230px; max-height:230px;width:200px"></canvas>
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
                        <div class="card-body table-responsive p-0" id="div_tabla_presupuesto">
                          <table id="tabla_presupuesto" class="table table-hover">
                            <thead>
                              <tr>
                                <th>Cantidad de Proyectos</th>
                                <th>Rango de Presupuestos</th>                                            
                              </tr>
                            </thead>
                            <tbody>
                              
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
              <button type="button" onclick="printCanvasPresupuesto()" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-download me-2 mr-2"></i>Descargar Reporte</button>
            </form>
        </div>
        <div class="tab-pane" id="tab_6">
        <h4 class="text-center">REPORTE DE EXPEDIENTES EN BASE AL ÁREA EN METROS CUADRADOS</h4><br>
        <form>
              <div class="col-lg-3">
                <label for="">Fecha Inicial</label>
                <input type="date" class="form-control" id="fi9" name = "fi9" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah1.php', 'barChart_cah_area', 'fi9', 'ff9'); llenarTablaArea('../controlador/colegios/controlador_grafico_cah1.php')">
                
                <br>
                <label for="">Fecha Final</label>
                <input type="date" class="form-control" id="ff9" name="ff9" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah1.php', 'barChart_cah_area', 'fi9', 'ff9'); llenarTablaArea('../controlador/colegios/controlador_grafico_cah1.php')">
                
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
                                          <canvas id="barChart_cah_area" style="min-height:230px; max-height:230px;width:200px"></canvas>
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
                        <div class="card-body table-responsive p-0" id="div_tabla_area">
                          <table id="tabla_area" class="table table-hover">
                            <thead>
                              <tr>
                                <th>Cantidad de Proyectos</th>
                                <th>Área de Construcción</th>                                            
                              </tr>
                            </thead>
                            <tbody>
                              
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
              <button onclick="printCanvasArea()" type="button" name="report_cimeqh_tipoconstruccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-download me-2 mr-2"></i>Descargar Reporte</button>
              
            </form>
        </div>
        <div class="tab-pane" id="tab_7">
        <h4 class="text-center">REPORTE DE PROYECTOS QUE NECESITAN INSPECCIÓN</h4><br>
            <form>
              <div class="col-lg-3">
                <label for="">Fecha Inicial</label>
                <input type="date" class="form-control" id="fi5" name = "fi5" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah3.php', 'barChart_cah_inspeccion', 'fi5', 'ff5'); llenarTablaInspeccion('../controlador/colegios/controlador_grafico_cah3.php')">
                <br>
                <label for="">Fecha Final</label>
                <input type="date" class="form-control" id="ff5" name = "ff5" onchange="cargarDatosGrafico('../controlador/colegios/controlador_grafico_cah3.php', 'barChart_cah_inspeccion', 'fi5', 'ff5'); llenarTablaInspeccion('../controlador/colegios/controlador_grafico_cah3.php')">
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
                                          <canvas id="barChart_cah_inspeccion" style="min-height:230px; max-height:230px;width:200px"></canvas>
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
                        <div class="card-body table-responsive p-0" id="div_tabla_inspeccion">
                          <table id="tabla_inspeccion" class="table table-hover">
                            <thead>
                              <tr>
                              <th>Razón de Inspección</th>
                              <th>Cantidad</th>    
                                                                            
                              </tr>
                            </thead>
                            <tbody>
                              
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
              <button onclick="printCanvasInspeccion()" type="button" name="report_cimeqh_inspeccion" class="btn btn-primary w-25 p-3 ml-4 mt-2" target="_blank"><i class="fas fa-download me-2 mr-2"></i>Descargar Reporte</button>

            </form>
        </div>
        <div class="tab-pane" id="tab_8">
        <h4 class="text-center">REPORTE DE EXPEDIENTES CON CAMBIO DE INGENIERO DE OBRA</h4><br>
            <form onsubmit="window.open('../vista/fpdf/ReporteDescontinuadoCah.php?fecha_inicial=' + encodeURIComponent(document.getElementById('fi6').value) + '&fecha_final=' + encodeURIComponent(document.getElementById('ff6').value), '_blank');">
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
<script src="../Plantilla/plugins/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.js"></script>
<script src="../js/graficas.js"></script>

<style>
    
    #tabla_presupuesto,#barChart_cimeqh_presupuesto {
        background-color: #ffffff;
    }
    #tabla_area,#barChart_cimeqh_area {
        background-color: #ffffff;
    }
</style>
<script>    
        function getFecha(id1,id2)
        {
          const fi = document.getElementById(`${id1}`);
          const fivalue = fi.value;
          const fiobject = new Date(fivalue);

          const day = fiobject.getDate();
          const month = fiobject.getMonth() + 1; // Ten en cuenta que los meses de JavaScript comienzan desde 0
          const year = fiobject.getFullYear();

          const f1 = `${day}/${month}/${year}`;

          const ff = document.getElementById(`${id2}`);
          const ffvalue = ff.value;
          const ffobject = new Date(ffvalue);

          const day2 = ffobject.getDate();
          const month2 = ffobject.getMonth() + 1; // Ten en cuenta que los meses de JavaScript comienzan desde 0
          const year2 = ffobject.getFullYear();

          const f2 = `${day2}/${month2}/${year2}`;

          return {fechaInicial:f1, fechaFinal:f2}

        }
        function printCanvasPresupuesto() 
        {
            var fecha = getFecha("fi8","ff8");
            var doc = new jsPDF("l", "mm", "a4");
            var content = document.getElementById("div_tabla_presupuesto");
            var canvas = document.getElementById("barChart_cah_presupuesto");
            // Crear un objeto Image
            var img = new Image();
            // Configurar la imagen
            img.onload = function() 
            {
              // Agregar la imagen al documento
              doc.addImage(this, 'JPEG', 225, 5, 60, 20);

              // Configurar la fuente y agregar el título del reporte y la fecha
              doc.setFontSize(18);
              doc.text('Reporte de Proyectos en Base a Presupuesto', 85, 25);
              doc.text(`${fecha.fechaInicial}-${fecha.fechaFinal}`, 120, 35);
              // Agregar el gráfico generado por html2canvas
              html2canvas(canvas).then(function(canvasImg) {
                doc.addImage(canvasImg, 'PNG',10, 60, 270, 60);

                // Agregar el contenido HTML (tabla) al documento PDF en la página 2
              doc.addPage();
              
              doc.fromHTML(content, 40, 30);

              // Guardar el documento PDF con un nombre dinámico
              doc.save(`ReportedeProyectosxPresupuestoCAH${fecha.fechaInicial}-${fecha.fechaFinal}.pdf`);
              });
            }

            // Cargar la imagen
            img.src = '../vista/fpdf/cah.jpeg';

        }
       function printCanvasArea()
       {
        var fecha = getFecha("fi9","ff9");
            var doc = new jsPDF("l", "mm", "a4");
            var content = document.getElementById("div_tabla_area");
            var canvas = document.getElementById("barChart_cah_area");
            // Crear un objeto Image
            var img = new Image();
            // Configurar la imagen
            img.onload = function() 
            {
              // Agregar la imagen al documento
              doc.addImage(this, 'JPEG', 230, 5, 60, 20);

              // Configurar la fuente y agregar el título del reporte y la fecha
              doc.setFontSize(18);
              doc.text('Reporte de Proyectos en Base a Área', 85, 25);
              doc.text(`${fecha.fechaInicial}-${fecha.fechaFinal}`, 120, 35);
              // Agregar el gráfico generado por html2canvas
              html2canvas(canvas).then(function(canvasImg) {
                doc.addImage(canvasImg, 'PNG',10, 60, 270, 60);

                // Agregar el contenido HTML (tabla) al documento PDF en la página 2
              doc.addPage();
              
              doc.fromHTML(content, 40, 30);

              // Guardar el documento PDF con un nombre dinámico
              doc.save(`ReportedeProyectosxÁreaCAH${fecha.fechaInicial}-${fecha.fechaFinal}.pdf`);
              });
            }

            // Cargar la imagen
            img.src = '../vista/fpdf/cah.jpeg';
       }
       function printCanvasInspeccion()
       {
            var fecha = getFecha("fi5","ff5");
            var doc = new jsPDF("l", "mm", "a4");
            var content = document.getElementById("div_tabla_inspeccion");
            var canvas = document.getElementById("barChart_cah_inspeccion");
            // Crear un objeto Image
            var img = new Image();
            // Configurar la imagen
            img.onload = function() 
            {
              // Agregar la imagen al documento
              doc.addImage(this, 'JPEG', 230, 5, 60, 20);

              // Configurar la fuente y agregar el título del reporte y la fecha
              doc.setFontSize(18);
              doc.text('Reporte de Proyectos que Necesitan Inspección', 85, 25);
              doc.text(`${fecha.fechaInicial}-${fecha.fechaFinal}`, 120, 35);
              // Agregar el gráfico generado por html2canvas
              html2canvas(canvas).then(function(canvasImg) {
                doc.addImage(canvasImg, 'PNG',10, 60, 270, 60);

                // Agregar el contenido HTML (tabla) al documento PDF en la página 2
              doc.addPage();
              
              doc.fromHTML(content, 40, 30);

              // Guardar el documento PDF con un nombre dinámico
              doc.save(`ReportedeProyectosInspecciónCAH${fecha.fechaInicial}-${fecha.fechaFinal}.pdf`);
              });
            }

            // Cargar la imagen
            img.src = '../vista/fpdf/cah.jpeg';
       }
</script>