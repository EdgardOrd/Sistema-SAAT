<?php
session_start();
if(isset($_SESSION['S_IDUSUARIO'])){
    if($_SESSION['S_ROL'] == 'ADMINISTRADOR'){
        header('Location: ../vista/index.php');
    } else if($_SESSION['S_ROL'] == 'CONTRIBUYENTE'){
        header('Location: ../vista/index_ticket.php');
    }else if($_SESSION['S_ROL'] == 'DELEGADO'){
        header('Location: ../vista/index_cich.php');
    }else if($_SESSION['S_ROL'] == 'DELEGADO1'){
        header('Location: ../vista/index_cah.php');
    }else if($_SESSION['S_ROL'] == 'DELEGADO2'){
        header('Location: ../vista/index_cimeqh.php');
    }
    
} 
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sistema de Asignación Automática de Tickets SAAT</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/iniciar-sesion.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/util.css">
<!--===============================================================================================-->
	<script src="https://kit.fontawesome.com/15bb13ea67.js" crossorigin="anonymous"></script>
<!--===============================================================================================-->
</head>
<body>
<div id="login-form">
<div class="limiter">
    <div class="container-login100" style="background-image: url('images/bg-02.png');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <span class="login100-form-title p-b-49">
                    INICIAR SESIÓN
                </span>
                <div class="wrap-input100 validate-input m-b-23" data-validate = "Usuario Requerido">
                    <span class="label-input100">Usuario</span>
                    <input class="input100" type="text" name="username" placeholder="Escriba el usuario..." id="txt_usu" autocomplete="new-password">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Contraseña Requerida">
                    <span class="label-input100">Contraseña</span>
                    <input class="input100" type="password" name="pass" placeholder="Escriba la contraseña" id="txt_con">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>

                <div class="container-login100-form-btn  mt-5">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn" id="login-btn" onclick="VerificarUsuario()">
                            INGRESAR
                        </button>
                    </div>
                </div><br>
                <div class="flex-c-m">
						<a href="https://www.facebook.com/CimeqhOficial" class="login100-social-item bg2" target="_blank">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="https://www.cimeqh.org/" class="login100-social-item bg3" target="_blank">
							<i class="fa fa-google"></i>
						</a>
					</div>
        </div>
    </div>
</div>
</div>

	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="vendor/sweetalert2/sweetalert2.js"></script>
<!--===============================================================================================-->
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
    <script src="../js/usuario.js"></script>


</body>
<script>
txt_usu.focus();
</script>
</html>