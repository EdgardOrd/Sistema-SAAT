<?php
session_start();
if(!isset($_SESSION['S_IDUSUARIO'])){
    header('Location: ../Login/index_ticket.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sistema de Asiganción Automática al Ticket (SAAT)</title>
    <link rel="icon" type="image/png" href="./images_ticket/factura.png"/>
    <link rel="stylesheet" href="../vista/ticket/ticket.css">
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <script src="https://kit.fontawesome.com/15bb13ea67.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
        <nav class="navbar navbar-light" style="background-color: #0e285d;">
            <div class="container-fluid">
                <div class="text-start">
                    <a href="../controlador/usuario/controlador_cerrar_session.php">
                    <img src="../plantilla/../plantilla/dist/img/cerrarsesion1.png" alt="" width="40" height="34" class="d-inline-block align-text-top" style="margin-left: 20px;">
                    </a>
                </div>
                <div class="text-end">
                    <div id="watch" ></div>
                </div>
            </div>
        </nav>
        <div class="container-login100" style="background-image: url('./images_ticket/fondo.svg');">
            <div class="container">
                <div class="left_content">
                    <h1>BIENVENIDO A <br> <span class="auto-type"></span></h1>
                    <p>¡Bienvenido/a al <b><span class="tk-span">Sistema de Asiganción Automática al Ticket (SAAT)</span></b> Este sistema ha sido diseñado para ayudar a llevar un control de manera eficiente y profesional las solicitudes a los colegios.</p>
                    
                    
                    <select id="colegios" multiple>
                        <option value="CICH">CICH</option>
                        <option value="CAH">CAH</option>
                        <option value="CIMEQH">CIMEQH</option>
                      </select>
                   
                    <div class="boton-container">
                        <button class="boton-container" id="enviar-btn" onclick="EnviarTicket()">Generar Ticket</button>
                    </div>
                </div>
                <div class="rigth_content">
                    <img src="./images_ticket/cimeqh.jpeg" class="img-fluid" alt="cimeqh">
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
<script src="../vista/ticket/ticket.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    var typed = new Typed(".auto-type",{
        strings:["CIMEQH", "CICH", "Y CAH"],
        typeSpeed : 80,
        backSpeed : 80,
        loop:true
    })
</script>
</html>