
<div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL PANEL DE REPORTES DEL COLEGIO CICH</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>     
         </div>
         <div class="card-body">
          <h3 class="mt-4 mb-2">TIPOS DE REPORTES</h3><br>
          <div class="row">
            <div class="col-12">
              <!-- Custom Tabs -->
              <div class="card">
                <div class="card-header d-flex p-0">
                  <ul class="nav nav-pills ml-auto p-2">
                    <li class="nav-item"><a class="nav-link active" href="#tab_1" data-toggle="tab">APROBADO Y SEGUIMIENTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_2" data-toggle="tab">DESAPROBADO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_3" data-toggle="tab">DOCUMENTACION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_4" data-toggle="tab">TIPO DE CONSTRUCCION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_5" data-toggle="tab">PRESUPUESTO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_6" data-toggle="tab">AREA DE CONSTRUCCION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_7" data-toggle="tab">INSPECCION</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_8" data-toggle="tab">DESCONTINUADO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_9" data-toggle="tab">MILLONARIO</a></li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
                    <h4>REPORTE DE PROYECTOS APROBADOS Y EN SEGUIMIENTO</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_aprobados" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_2">
                   <h4> REPORTES DESAPROBADOS</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_desaprobados" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_3">
                   <h4>REPORTES EN SOLICITUD DE DOCUMENTACION DE PROYETOS</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_documentacion" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_4">
                    <h4>REPORTES EN BASE A TIPO DE CONSTRUCCION</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_tipoconstruccion" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_5">
                    <h4>REPORTES EN BASE A PRESUPUESTO DE OBRA</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_presupuesto" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_6">
                    <h4>REPORTES DE AREA DE CONSTRUCCION</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_area" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_7">
                    <h4>REPORTE DE PROYECTOS QUE NECESITAN INSPECCION</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_inspeccion" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                    <div class="tab-pane" id="tab_8">
                    <h4>REPORTES EXPEDIENTES DESCONTINUADOS POR CAMBIO DE INGENIERO DE OBRA</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_cambioingeniero" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>      
                    <div class="tab-pane" id="tab_9">
                    <h4>REPORTES DE PROYECTOS MILLONARIOS</h4><br>
                        <form action="">
                          <div class="col-lg-5">
                            <label for="">Fecha Inicial</label>
                            <input type="date" class="form-control" id="fecha_inicial">
                            <br>
                            <label for="">Fecha Final</label>
                            <input type="date" class="form-control" id="fecha_final">
                            <br>
                          <button type="submit" name="report_cich_proyectmillonario" class="btn btn-primary w-50 p-3"><i class="fas fa-file-pdf me-2 mr-2"></i>Generar Reporte</button>
                          </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
</div>


