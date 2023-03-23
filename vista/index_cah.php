<?php
session_start();
if(!isset($_SESSION['S_IDUSUARIO'])){
    header('Location: ../Login/index.php');
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CAH</title>
  <link rel="icon" type="image/png" href="images/icons/perfil.ico"/>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../Plantilla/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="../Plantilla/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../Plantilla/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../Plantilla/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../Plantilla/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../Plantilla/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../Plantilla/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../Plantilla/plugins/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="../Plantilla/plugins/datatables/datatables.min.css"> 
  <link rel="stylesheet" href="../Plantilla/plugins/select3/select2.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link href='https://unpkg.com/css.gg/icons/all.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

</head>

<style>
  .swal2-popup{
    font-size:1.6rem !important;
  }

  #tabla_cah{
    font-size:0.7rem !important;
    font-weight: 500 !important;
  }
</style>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
    </li>
  </ul>
  
  <!-- SEARCH FORM -->


  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <div class="pull-right">
        <div>
        <a href="../controlador/usuario/controlador_cerrar_session.php" ><button type="button" class="btn btn-danger btn-lg">
           Cerrar Sesión</button>
          </a>
        </div>
      </div>
    </li>
  </ul>
</nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index_cah.php" class="brand-link">
      <img src="../plantilla/../plantilla/dist/img/admi.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">DELEGADO</span>
    </a>
    
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../plantilla/../plantilla/dist/img/cah.ico" class="img elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Usuario: <?php echo $_SESSION['S_USER']; ?></a>
        </div>
      </div>
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_colegio_cah.php')" class="nav-link active">
              <i class="nav-icon fas fa-solid fa-user"></i>
              <p>
                COLEGIO CAH
              </p> 
            </a>
          </li>
          <li class="nav-item has-treeview">
              <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_reportes_cah.php')" class="nav-link">
                <i class="nav-icon far fa-file"></i> 
                <p>
                  Reportes CAH
                 
                </p>
              </a>
          </li>
          <li class="nav-item">
              <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_grafico_cah.php')" class="nav-link">
                <i class="far fa-chart-bar nav-icon"></i>
                <p>Gráficos Estádisticos</p>
              </a>
          </li>
          <!-- ********** CONFIGURACION *********** -->
         
      </ul><br>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
       
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper mt-3">
  <section class="content">
  <input type="text" id="txtidprincipal" value="<?php echo $_SESSION['S_IDUSUARIO'] ?>" hidden>
  <input type="text" id="usuarioprincipal" value="<?php echo $_SESSION['S_USER'] ?>"hidden>
    <div class="row" id="contenido_principal">
      <div class="col-md-12">
        <div class="card card-warning card-solid">
          <div class="card-header with-border">
            <h3 class="card-title">BIENVENIDO AL CONTENIDO PRINCIPAL</h3>

            <div class="card-tools pull-right">
            
            </div>
          </div>
          <div class="card-body">
            Contenido Principal
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- *********** MODAL DE EDITAR CONTRA **************** -->
 
<!-- jQuery -->
<script src="../Plantilla/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../Plantilla/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  let idioma_espanol = {
			select: {
			rows: "%d fila seleccionada"
			},
			"sProcessing":     "Procesando...",
			"sLengthMenu":     "Mostrar _MENU_ registros",
			"sZeroRecords":    "No se encontraron resultados",
			"sEmptyTable":     "Ning&uacute;n dato disponible en esta tabla",
			"sInfo":           "Registros del (_START_ al _END_) total de _TOTAL_ registros",
			"sInfoEmpty":      "Registros del (0 al 0) total de 0 registros",
			"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			"sInfoPostFix":    "",
			"sSearch":         "Buscar:",
			"sUrl":            "",
			"sInfoThousands":  ",",
			"sLoadingRecords": "<b>No se encontraron datos</b>",
			"oPaginate": {
					"sFirst":    "Primero",
					"sLast":     "Último",
					"sNext":     "Siguiente",
					"sPrevious": "Anterior"
			},
			"oAria": {
					"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
					"sSortDescending": ": Activar para ordenar la columna de manera descendente"
			}
	 }
  function cargar_contenido(contenedor, contenido){
    $("#"+contenedor).load(contenido);
  }
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../Plantilla/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../Plantilla/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../Plantilla/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../Plantilla/plugins/jqvmap/jquery.vmap.min.js"></script>

<!-- jQuery Knob Chart -->
<script src="../Plantilla/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../Plantilla/plugins/moment/moment.min.js"></script>
<script src="../Plantilla/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../Plantilla/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../Plantilla/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../Plantilla/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../Plantilla/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- AdminLTE for demo purposes -->
<script src="../Plantilla/dist/js/demo.js"></script>

<script src="../Plantilla/plugins/datatables/datatables.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script src="../Plantilla/plugins/select3/select2.min.js"></script>
<script src="../Plantilla/plugins/sweetalert3/sweetalert2.js"></script>
<script src="../js/usuario.js"></script>
<script>
  TraerDatosUsuario();
</script>
</body>
</html>
