<script type="text/javascript" src="../js/usuario.js?rev=<?php echo time();?>"></script>
<div class="col-md-12">
        <div class="card card-warning">
          <div class="card-header">
            <h3 class="card-title">BIENVENIDO AL CONTENIDO DEL USUARIO</h3>
              <div class="card-tools">
                
              </div> 
        </div>
            <div class="card-body">   
            <div class="form-group row">
                <div class="col-lg-10"> 
                  <div class="input-group">
                    <input type="text" class="global_filter form-control" id="global_filter" placeholder="Ingresar usuario a buscar">
                    <span class="input-group-addon "><i class="fa fa-search pt-2 pl-2"></i> </span>
                  </div>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-primary d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="abrirModalRegistro()">
                    <i class="gg-add-r btn-icon me-2 mr-2"></i>
                    <span class="me-2">Nuevo Usuario</span>
                  </button>
                </div>
                <div class="col-lg-3">
                  <button class="btn btn-primary d-flex align-items-center justify-content-center mt-3" style="width:100%" onclick="AbrirModalEditarContra()">
                  <i class="fas fa-cog me-2 mr-2"></i>
                    <span class="me-2">Modificar Contrase&ntilde;a</span>
                  </button>
                </div>
              </div>
              <table id="tabla_usuario" class="display responsive nowrap" style="width: 100%">
                  <thead>
                    <tr>
                      <th>|</th>
                      <th>Usuario</th>
                      <th>Rol</th>
                      <th>Estatus</th>
                      <th>Acci&oacute;n</th>

                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>|</th>
                      <th>Usuario</th>
                      <th>Rol</th>
                      <th>Estatus</th>
                      <th>Acci&oacute;n</th>
                      
                    </tr>
                  </tfoot>
              </table>
            </div>
        </div>
<!--*****************************************************************************************************************-->
        <!--FORMULARIO PARA REGISTRAR NUEVOS USUARIOS -->
<form autocomplete="false" onsubmit="return false">
<div class="modal" id="modal_registro">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><a>Registro de Usuario</a></h4>
        <button type="button" class="close " data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="col-lg-12">
        <label for="">Usuario</label>
        <input type="text" class="form-control" id="txt_usu" placeholder="Ingrese usuario"><br>
      </div>
      <div class="col-lg-12">
        <label for="">Contrase&ntilde;a</label>
        <input type="password" class="form-control" id="txt_con1" placeholder="Ingrese contrase&ntilde;a"><br>
      </div>
        <div class="col-lg-12">
        <label for="">Repita la Contrase&ntilde;a</label>
        <input type="password" class="form-control" id="txt_con2" placeholder="Repita contrase&ntilde;a"><br>
      </div>
      <div class="col-lg-12">
        <label for="">Rol</label>
        <select class="pb-1" class="js-example-basic-single" name="state" id="cbm_rol" style="width:100%;"></select>
      </div>
      <!-- Modal footer -->
      <div class="modal-footer"> <!-- d-flex align-items-center justify-content-center por si lo quiero mover al centro -->
        <button class="btn btn-primary" onclick="Registrar_Usuario()"><i class="fa fa-check">&nbsp;Registrar</i></button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
      </div>
    </div>
  </div>
</form>
        
<!--*****************************************************************************************************************-->

<script>
  $(document).ready(function () {
    listar_usuario();
    $('.js-example-basic-single').select2();
    listar_combo_rol();
    $('#modal_registro').on('shown.bs.modal', function(){
      $('#txt_usu').focus();
    })
  });
</script>