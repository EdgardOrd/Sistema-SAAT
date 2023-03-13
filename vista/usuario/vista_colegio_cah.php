
<script type="text/javascript" src="../js/cah.js?rev=<?php echo time();?>"></script>
<link rel="stylesheet" href="../vista/css/colegios.css">
<div class="col-md-12">
        <div class="card card-warning">
          <div class="card-header">
            <h3 class="card-title">BIENVENIDO AL HISTORIAL DE FORMULARIOS DE CAH</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
              </div>
        </div>
        <div class="card-body">   
        <div class="form-group row">
                <div class="col-lg-10">
                  <div class="input-group">
                    <input type="text" class="global_filter form-control" id="global_filter" placeholder="Ingrese el nombre del propietario...">
                    <span class="input-group-addon "><i class="fa fa-search pt-2 pl-2"></i> </span>
                  </div>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-danger d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="abrirModalNuevoCah()">
                    <i class="gg-add-r btn-icon me-2 mr-2"></i>
                    <span class="me-2">Agregar</span>
                  </button>
                </div>
                <div class="col-lg-2"><br>
                <button class="cssbuttons-io-button">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"></path><path fill="currentColor" d="M1 14.5a6.496 6.496 0 0 1 3.064-5.519 8.001 8.001 0 0 1 15.872 0 6.5 6.5 0 0 1-2.936 12L7 21c-3.356-.274-6-3.078-6-6.5zm15.848 4.487a4.5 4.5 0 0 0 2.03-8.309l-.807-.503-.12-.942a6.001 6.001 0 0 0-11.903 0l-.12.942-.805.503a4.5 4.5 0 0 0 2.029 8.309l.173.013h9.35l.173-.013zM13 12h3l-4 5-4-5h3V8h2v4z"></path></svg>
                  <span>CSV</span>
                </button>
                </div> 
              </div>
              <table id="tabla_cah" class="display responsive nowrap" style="width:100%">
              <thead>
                    <tr>
                        <th>N° Expediente</th>
                        <th>Tipo de Proyecto</th>
                        <th>Propietario</th>
                        <th>Clave Catastral</th>
                        <th>Fecha</th>
                        <th>Estatus</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </thead>
                
                <tfoot>
                    <tr>
                        <th>N° Expediente</th>
                        <th>Tipo de Proyecto</th>
                        <th>Propietario</th>
                        <th>Clave Catastral</th>
                        <th>Fecha</th>
                        <th>Estatus</th>
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
  <div class="modal-dialog modal-xl">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><a>Nota de Aprobación</a></h4>
        <button type="button" class="close " data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">N° de Expediente</label>
        <input type="number" class="form-control" id="txt_exp" placeholder="Ingrese Numero de Expediente"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Tipo de Proyecto</label>
        <input type="text" class="form-control" id="txt_proyect" placeholder="Ingrese Tipo de Expediente"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Propietario</label>
        <input type="text" class="form-control" id="txt_prop" placeholder="Ingrese el propietario"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">N° Catastral</label>
        <input type="number" class="form-control" id="txt_cat" placeholder="Ingrese el numero catastral"><br>
      </div>
       <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Fecha</label>
        <input type="date" class="form-control" id="txt_fech" placeholder="Ingrese la fecha"><br>
      </div>
       <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Colegio</label>
        <select class="pb-1" class="js-example-basic-single" name="state" id="cbm_colegio" style="width:100%;">
        </select>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer"> <!-- d-flex align-items-center justify-content-center por si lo quiero mover al centro -->
        <button class="btn btn-success" onclick="Registrar_Nota_Cah()"><i class="fa fa-check">&nbsp;Aprobar</i></button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
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