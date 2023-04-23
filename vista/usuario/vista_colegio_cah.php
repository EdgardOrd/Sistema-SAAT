
<script type="text/javascript" src="../js/cah.js?rev=<?php echo time();?>"></script>
<style>
  table th{
    background-color: #c7a12e !important;
    color: white;
  }

  .titulo {
  font-family: 'Roboto', sans-serif;
  font-size: 32px;
  font-weight: bold;
  color: #333;
  text-transform: uppercase;
  text-shadow: 2px 2px #ccc;
  border-radius: 5px;
  box-shadow: 0px 3px 0px #ccc;
  padding: 15px;
  margin-bottom: 50px;
  text-align: center;
}
</style>
<div class="col-md-12">
        <div class="card card-warning">
          <div class="card-header"></div>
        <div class="card-body">   
        <h3 class="titulo">Registro de Notas de Construcción</h3>
        <div class="form-group row">
                <div class="col-lg-8 mb-3">
                  <div class="input-group">
                    <input type="text" class="global_filter form-control" id="global_filter" placeholder="Ingrese el nombre del propietario...">
                    <span class="input-group-addon "><i class="fa fa-search pt-2 pl-2"></i> </span>
                  </div>
                </div>
                <div class="col-lg-2 mb-3">
                  <button class="btn btn-warning d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="abrirModalNuevoCah()">
                    <i class="gg-add-r btn-icon me-2 mr-2"></i>
                    <span class="me-2">Agregar</span>
                  </button>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-success d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="window.open('../controlador/colegios/controlador_descargar.php?tabla=proyectoscah')">
                  <i class="fas fa-download me-2 mr-2"></i>
                    <span class="me-2">Descargar</span>
                  </button>
                </div>
              </div><br>
              <table id="tabla_cah" class="display responsive nowrap" style="width:100%">
              <thead>
              <tr>
                        <th>N° Expediente</th>
                        <th>Tipo de Proyecto</th>
                        <th>Propietario</th>
                        <th>Clave Catastral</th>
   
                        <th>Estado</th>
                        <th>Observaciones</th>
                        <th>Fecha de Registro</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>N° Expediente</th>
                        <th>Tipo de Proyecto</th>
                        <th>Propietario</th>
                        <th>Clave Catastral</th>
        
                        <th>Estado</th>
                        <th>Observaciones</th>
                        <th>Fecha de Registro</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
    
<!--*****************************************************************************************************************-->
<form autocomplete="false" onsubmit="return false">
  <div class="modal" id="modal_nuevo_cah">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><a>Nota de Registro CAH</a></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <div class="row">
          <div class="col-lg-6">
              <label for="">N° de Expediente</label>
              <input type="number" class="form-control" id="txt_exp" placeholder="Ingrese número de expediente">
              <span id="mensaje_error_expe" style="color: red"></span>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Nombre de Arquitecto</label>
              <input type="text" class="form-control" id="txt_ing" placeholder="Ingrese nombre del arquitecto" maxlenght="50" onkeypress="return soloLetras(event)">
              <br>
            </div>
            <div class="col-lg-12">
              <label for="">Tipo de Proyecto</label>
              <input type="text" class="form-control" id="txt_proyect" placeholder="Ingrese tipo de proyecto">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Propietario</label>
              <input type="text" class="form-control" id="txt_prop" placeholder="Ingrese el propietario" maxlenght="50" onkeypress="return soloLetras(event)">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Estatus del Proyecto</label>
              <select class="js-example-basic-single" name="state" id="cbm_estatus" style="width:100%;">
                <option value="APROBADO">APROBADO</option>
                <option value="DESAPROBADO">DESAPROBADO</option>
                <option value="SEGUIMIENTO">SEGUIMIENTO</option>
                <option value="SOLICITUD DE DOCUMENTACION">SOLICITUD DE DOCUMENTACION</option>
              </select>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Clave Catastral</label>
              <input type="text" class="form-control" id="txt_cat" placeholder="Ingrese la clave catastral">
              <span id="mensaje_error" style="color: red"></span>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Fecha de Registro</label>
              <input type="date" class="form-control" id="txt_fech"  placeholder="Ingrese la fecha">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Área</label>
              <input type="number" class="form-control" id="txt_area" placeholder="Ingrese el área del proyecto">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Presupuesto</label>
              <input type="text" class="form-control" id="txt_pre" placeholder="Ingrese el presupuesto del proyecto" onkeypress="return soloNumeros(event)">
              <br>
            </div>
            <div class="col-lg-12">
              <label for="">Observaciones</label>
              <input type="text" class="form-control" id="txt_obs" placeholder="Ingrese observaciones">
              <br>
            </div>
            
            
          </div>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer d-flex align-items-center justify-content-center">
          <button class="btn btn-success" onclick="Registrar_Nota_Cah()"><i class="fa fa-check">&nbsp;Registrar</i></button>
          <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
        </div>

      </div>
    </div>
  </div>
</form>
<!--*****************************************************************************************************************-->
<form autocomplete="false" onsubmit="return false">
  <div class="modal" id="modal_nuevo_editar">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><a>Editar Nota de Registro CAH</a></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
          <div class="row">
          <div class="col-lg-6">
              <label for="">N° de Expediente</label>
              <input type="number" class="form-control" id="txt_exp_editar" placeholder="Ingrese número de expediente" disabled>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Nombre de Arquitecto</label>
              <input type="text" class="form-control" id="txt_ing_editar" placeholder="Ingrese nombre del arquitecto" maxlenght="50" onkeypress="return soloLetras(event)">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Tipo de Proyecto</label>
              <input type="text" class="form-control" id="txt_proyect_editar" placeholder="Ingrese el tipo de proyecto">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Propietario</label>
              <input type="text" class="form-control" id="txt_prop_editar" placeholder="Ingrese el propietario" maxlenght="50" onkeypress="return soloLetras(event)">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Estatus del Proyecto</label>
              <select class="js-example-basic-single" name="state" id="cbm_estatus_editar" style="width:100%;">
                <option value="APROBADO">APROBADO</option>
                <option value="DESAPROBADO">DESAPROBADO</option>
                <option value="SEGUIMIENTO">SEGUIMIENTO</option>
                <option value="SOLICITUD DE DOCUMENTACION">SOLICITUD DE DOCUMENTACION</option>
              </select>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Clave Catastral</label>
              <input type="text" class="form-control" id="txt_cat_editar" placeholder="Ingrese el numero catastral">
              <span id="mensaje_error_clave" style="color: red"></span>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Fecha de Registro</label>
              <input type="date" class="form-control" id="txt_fech_editar" min="{{ fechaMinimaFormateada }}" max="{{fechaMaximaFormateada}}" placeholder="Ingrese la fecha">
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Fecha de Modificación</label>
              <input type="date" class="form-control" id="txt_fechamod_editar"  placeholder="Ingrese la fecha" min="2022-01-01" max="2023-04-31" disabled> 
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Área</label>
              <input type="number" class="form-control" id="txt_area_editar" placeholder="Ingrese el área del proyecto">
              <span id="mensaje_error_area" style="color: red"></span>
              <br>
            </div>
            <div class="col-lg-6">
              <label for="">Presupuesto</label>
              <input type="text" class="form-control" id="txt_pre_editar" placeholder="Ingrese el presupuesto del proyecto">
              <span id="mensaje_error_presu" style="color: red"></span>
              <br>
            </div>
            <div class="col-lg-12">
              <label for="">Observaciones</label>
              <input type="text" class="form-control" id="txt_obs_editar" placeholder="Ingrese observaciones">
              <br>
            </div>
            
            
          </div>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer d-flex align-items-center justify-content-center">
          <button class="btn btn-success" onclick="Editar_Nota_Cah()"><i class="fa fa-check">&nbsp;Editar</i></button>
          <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
        </div>

      </div>
    </div>
  </div>
</form>

        
<script>
$(document).ready(function () {
  listar_usuario_cah();
  $('.js-example-basic-single').select2();
  listar_combo_rol_colegio_cah();
  $("#modal_nuevo_cah").on('shown.bs.modal', function(){
    $('#txt_exp').focus();
  })
});


</script>