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
  <title>Administrador SAAT</title>
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

  #tabla_cimeqh{
    font-size:0.7rem !important;
    font-weight: 500 !important;
  }
  #tabla_cich{
    font-size:0.7rem !important;
    font-weight: 500 !important;
  }
  #tabla_cah{
    font-size:0.7rem !important;
    font-weight: 500 !important;
  }

  .content-wrapper {
    background-image: linear-gradient(360deg, rgba(165,165,165, 0.24) 0%, rgba(165,165,165, 0.24) 8%,rgba(235,235,235, 0.7) 8%, rgba(235,235,235, 0.7) 9%,rgba(7, 7, 7, 0.03) 9%, rgba(7, 7, 7, 0.03) 14%,rgba(212,212,212, 0.4) 14%, rgba(212,212,212, 0.4) 17%,rgba(219, 219, 219, 0.03) 17%, rgba(219, 219, 219, 0.03) 95%,rgba(86, 86, 86, 0.03) 95%, rgba(86, 86, 86, 0.03) 100%),linear-gradient(67.5deg, rgba(80, 80, 80, 0.03) 0%, rgba(80, 80, 80, 0.03) 11%,rgba(138, 138, 138, 0.03) 11%, rgba(138, 138, 138, 0.03) 17%,rgba(122, 122, 122, 0.03) 17%, rgba(122, 122, 122, 0.03) 24%,rgba(166, 166, 166, 0.03) 24%, rgba(166, 166, 166, 0.03) 27%,rgba(245, 245, 245, 0.03) 27%, rgba(245, 245, 245, 0.03) 89%,rgba(88, 88, 88, 0.03) 89%, rgba(88, 88, 88, 0.03) 100%),linear-gradient(67.5deg, rgba(244, 244, 244, 0.03) 0%, rgba(244, 244, 244, 0.03) 4%,rgba(16, 16, 16, 0.03) 4%, rgba(16, 16, 16, 0.03) 10%,rgba(157, 157, 157, 0.03) 10%, rgba(157, 157, 157, 0.03) 20%,rgba(212,212,212, 0.4) 20%, rgba(212,212,212, 0.4) 83%,rgba(5, 5, 5, 0.03) 83%, rgba(5, 5, 5, 0.03) 84%,rgba(237, 237, 237, 0.03) 84%, rgba(237, 237, 237, 0.03) 100%),linear-gradient(360deg, #ffffff,#ffffff);
  }

  .card-header {
    background: rgb(39,56,132);
    color: white;
  }

  .nav-pills .nav-link {
    color: #fff;
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
          <a href="../controlador/usuario/controlador_cerrar_session.php" ><button title="Salir" type="button" class="btn btn-light btn-lg"><i class="fas fa-sign-out-alt"></i> 
           </button>
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
    <a href="index.php" class="brand-link">
      <img src="../plantilla/../plantilla/dist/img/admi.png" alt="Admin Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Administrador</span>
    </a>
    
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../plantilla/../plantilla/dist/img/ci.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Usuario: <?php echo $_SESSION['S_USER']; ?></a>
        </div>
      </div>
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_usuario_listar.php')" class="nav-link active">
              <i class="nav-icon fas fa-solid fa-users"></i>
              <p>
                Usuarios
              </p>
            </a>
          </li>
          <!-- ********** CONFIGURACION *********** -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa fa-list-ul"></i>
              <p>
                Colegios
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_colegio_cimeqh.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CIMEQH</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_colegio_cich.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CICH</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_colegio_cah.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CAH</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
              <i class="nav-icon far fa-file"></i>
              <p>
                Reportes
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_reportes_cimeqh.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CIMEQH</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_reportes_cich.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CICH</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" onclick="cargar_contenido('contenido_principal', 'usuario/vista_reportes_cah.php')" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>CAH</p>
                </a>
              </li>
            </ul>
          </li>
          
          
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
          <h3 class="mt-4 mb-2">Contenido de Colegios</h3><br>
          <div class="row">
            <div class="col-12">
              <!-- Custom Tabs -->
              <div class="card">
                <div class="card-header d-flex p-0">
                  <h3 class="card-title p-3">Colegios</h3>
                  <ul class="nav nav-pills ml-auto p-2">
                    <li class="nav-item"><a class="nav-link active" href="#tab_1" data-toggle="tab">CIMEQH</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_2" data-toggle="tab">CICH</a></li>
                    <li class="nav-item"><a class="nav-link" href="#tab_3" data-toggle="tab">CAH</a></li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab_1">
                      <h3>CIMEQH</h3>
                    El colegio de Ingenieros Mecánicos, Electricistas y Químicos de Honduras y Ramas Afines. Es una institución sin fines de lucro, apolítica, cuyo objetivo principal es el de velar por el desarrollo tecnológico del pais mediante la regulación del ejercicio profesional y actualización de sus agremiados, procurando capacitarlos para que adquieran conocimientos, destrezas y habilidades adicionales, a fin de lograr mayor productividad y competitividad en los servicios profesionales; asi como promover la protección económica  y solidaridad entre  los miembros.
                    <hr>
                    <h3>HISTORIA</h3>
                    La Asociación de Ingenieros Mecánicos, Electricistas y Químicos de Honduras "AIMEQH", creada a finales de la década de los setenta es el origen del Colegio de Ingenieros Mecánicos, Electricistas y Químicos de Honduras y ramas afines "CIMEQH". En su corta vida, esta asociación tuvo como presidentes a los distinguidos profesionales de la Ingeniería Eléctrica, Dr. Luis Cosenza Jiménez y Percy Armando Buck Mendoza; quienes canalizaron toda su energía y conocimientos para coordinar las actividades desarrolladas. Adicionalmente 38 distinguidos profesionales de la Ingeniería Eléctrica, Mecánica y Química impulsaron los Estatutos, Ley Orgánica y Reglamento Interno del CIMEQH ante el Congreso Nacional y así darle vida al Colegio que hoy tenemos.
                    
                    </div>
                    <div class="tab-pane" id="tab_2">
                    <h3>CICH</h3>
                    El Colegio de Ingenieros Civiles de Honduras (CICH) surge al inicio como una SOCIEDAD HONDUREÑA DE INGENIEROS, que, junto con la SOCIEDAD DE HONDURAS DE ARQUITECTOS, y a iniciativa de la primera, acordaron celebrar el Primer Congreso de Ingenieros y Arquitectos de Honduras.
                    El evento se llevó a cabo en la Ciudad de Comayagua el 19 de agosto de 1951, y dentro de sus resoluciones, fue aprobado, según ponencia presentada por el Ingeniero RUBEN CLARE VEGA, lo siguiente:
                    <hr>
                    <ul>
                      <li>Declarar constituido provisionalmente el Colegio de Ingenieros y Arquitectos.</li>
                      <li>rganizar sociedades locales de ingenieros y arquitectos en los lugares donde haya los indispensables profesionales de este ramo.</li>
                      <li>Elevar al Poder Ejecutivo una solicitud para que emita los Estudios y Reglamentos necesarios a la creación del Colegio de Ingenieros y Arquitectos de Honduras.</li>
                      <li>ue la Sociedad Hondureña de Ingenieros se encargue de elaborar los Estatutos y Reglamentos del Colegio Profesional para ser sometidos al conocimiento y la resolución del próximo Congreso de Ingenieros y Arquitectos de la República.</li>
                    </ul>
                    </div>      
                    <div class="tab-pane" id="tab_3">
                    <h3>CAH</h3>
                    El Colegio de Arquitectos de Honduras (CAH) es una organización gremial que asegura la excelencia en el ejercicio profesional de Arquitectura en Honduras, con todos los derechos y obligaciones, que señala su ley orgánica y reglamento interno.
                    <hr>
                    <h3>Misión y Visión</h3>
                    Nuestra Misión Agrupar y fortalecer a los profesionales. regular su práctica y participar en la solución de problemas locales y nacionales, garantizar y velar por los intereses de sus agremiados, su familia, los futuros profesionales, las comunidades y la sociedad. 
                    <br><br>
                    Nuestra Visión Gremio profesional líder y de prestigio a nivel nacional y regional, creativo en su contribución al ambiente; solidario a sus miembros y los intereses de la comunidad y promotor de una practica actualizada y pertinente.
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>
</div>
<!-- *********** MODAL DE EDITAR CONTRA **************** -->
  <div class="modal" id="modal_editar_contra">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><a>Modificar Contrase&ntilde;a</a></h4>
        <button type="button" class="close " data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="col-lg-12">
        <input type="text" id="txtcontra_bd" hidden>
        <label for="">Contrase&ntilde;a Actual</label>
        <input type="password" class="form-control" id="txtcontraactual_editar" placeholder="Contrase&ntilde;a Actual"><br>
      </div>
      <div class="col-lg-12">
        <label for="">Nueva Contrase&ntilde;a</label>
        <input type="password" class="form-control" id="txtcontranu_editar" placeholder="Nueva Contrase&ntilde;a"><br>
      </div>
      <div class="col-lg-12">
        <label for="">Reapita la nueva Contrase&ntilde;a</label>
        <input type="password" class="form-control" id="txtcontrare_editar" placeholder="Reapita Contrase&ntilde;a"><br>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer"> <!-- d-flex align-items-center justify-content-center por si lo quiero mover al centro -->
        <button class="btn btn-primary" onclick="Editar_Contra()"><i class="fa fa-check">&nbsp;Modificar</i></button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times">&nbsp;Cerrar</i></button>
      </div>
    </div>
  </div>
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
