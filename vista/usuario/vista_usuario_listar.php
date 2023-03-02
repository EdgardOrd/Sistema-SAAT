<script type="text/javascript" src="../js/usuario.js?rev=<?php echo time();?>"></script>
<div class="col-md-12">
        <div class="card card-warning">
          <div class="card-header">
            <h3 class="card-title">BIENVENIDO AL CONTENIDO DEL USUARIO</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
              </div>
        </div>
            <div class="card-body">   
            <div class="form-group row">
                <div class="col-lg-10">
                  <div class="input-group">
                    <input type="text" class="global_filter form-control" id="global_filter" placeholder="Ingresar dato a buscar">
                    <span class="input-group-addon "><i class="fa fa-search pt-2 pl-2"></i> </span>
                  </div>
                </div>
                <div class="col-lg-2">
                  <button class="btn btn-danger d-flex align-items-center justify-content-center py-2" style="width:100%" onclick="abrirModalRegistro()">
                    <i class="gg-add-r btn-icon me-2 mr-2"></i>
                    <span class="me-2">Nuevo Registro</span>
                  </button>
                </div>
              </div>
              <table id="tabla_usuario" class="display responsive nowrap" style="width: 100%">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Usuario</th>
                      <th>Rol</th>
                      <th>Sexo</th>
                      <th>Estatus</th>
                      <th>Acci&oacute;n</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>#</th>
                      <th>Usuario</th>
                      <th>Rol</th>
                      <th>Sexo</th>
                      <th>Estatus</th>
                      <th>Acci&oacute;n</th>
                    </tr>
                  </tfoot>
              </table>
            </div>
        </div>
        <div class="modal" id="modal_registro">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Registro de Usuario</h4>
                <button type="button" class="btn-close " data-bs-dismiss="modal"></button>
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

              <!-- Modal footer -->
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
              </div>

            </div>
          </div>
<script>
  $(document).ready(function () {
    listar_usuario();
  });
</script>