<?php
    require '../../modelo/modelo_usuario.php';

    $MU = new Modelo_Usuario();
    $expediente = htmlspecialchars($_POST['expediente'],ENT_QUOTES,'UTF-8');
    $proyecto = htmlspecialchars($_POST['proyecto'],ENT_QUOTES,'UTF-8');
    $propietario = htmlspecialchars($_POST['propietario'],ENT_QUOTES,'UTF-8');
    $catrastal = htmlspecialchars($_POST['catastral'],ENT_QUOTES,'UTF-8');
    $fecha = htmlspecialchars($_POST['fecha'],ENT_QUOTES,'UTF-8');
    $colegio = htmlspecialchars($_POST['colegio'],ENT_QUOTES,'UTF-8');
    $consulta = $MU->RegistrarCah($expediente,$colegio,$proyecto,$propietario,$catrastal,$fecha);
    echo $consulta;

?> 