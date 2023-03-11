
<script type="text/javascript" src="../js/cimeqh.js?rev=<?php echo time();?>"></script>
<div class="col-md-12">
        <div class="card card-warning">
          <div class="card-header">
                <h3 class="card-title">BIENVENIDO AL HISTORIAL DE FORMULARIOS DE CIMEQH</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>     
         </div>
         <div class="card-body">  
         <div class="form-group row">
                <div class="col-lg-10">
                  <div class="input-group">
                    <input type="text" class="global_filter form-control" id="global_filter" placeholder="Ingresar nombre a buscar">
                    <span class="input-group-addon "><i class="fa fa-search pt-2 pl-2"></i> </span>
                  </div>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-danger d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="abrirModalNuevoCimeqh()">
                    <i class="gg-add-r btn-icon me-2 mr-2"></i>
                    <span class="me-2">Agregar</span>
                  </button>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-outline-secondary d-flex align-items-center justify-content-rigth mt-3" style="width:100%" onclick="AbrirModalEditarContra()">
                  <i class="fas fa-cog me-2 mr-2"></i>
                    <span class="me-2">Importar CSV</span>
                  </button>
                </div>
              </div> 
<!--**************************** TABLA DE CIMEQH *****************************************************************-->
            <table id="tabla_cimeqh" class="display responsive nowrap" style="width:100%">
                <thead>
                    <tr>
                        <th>N° Expediente</th>
                        <th>Tipo de Proyecto</th>
                        <th>Propietario</th>
                        <th>N°Catastral</th>
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
                        <th>N°Catastral</th>
                        <th>Fecha</th>
                        <th>Estatus</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>

<!--*****************************************************************************************************************-->
<form autocomplete="false" onsubmit="return false">
<div class="modal" id="modal_nuevo_cimeqh">
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
        <input type="number" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Tipo de Proyecto</label>
        <input type="text" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Propietario</label>
        <input type="text" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">N° Catastral</label>
        <input type="number" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
       <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Fecha</label>
        <input type="date" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
       <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Estatus</label>
        <input type="text" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer"> <!-- d-flex align-items-center justify-content-center por si lo quiero mover al centro -->
        <button class="btn btn-primary" onclick="#"><i class="fa fa-check">&nbsp;Registrar</i></button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
      </div>
    </div>
  </div>
</form>
        
<script>
$(document).ready(function () {
  listar_usuario_cimeqh();
});
</script>