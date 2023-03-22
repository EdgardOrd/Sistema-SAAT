<?php
    require '../../modelo/modelo_usuario.php';

    $MU = new Modelo_Usuario();
    $expediente = htmlspecialchars($_POST['expediente'],ENT_QUOTES,'UTF-8');
    $proyecto = htmlspecialchars($_POST['proyecto'],ENT_QUOTES,'UTF-8');
    $propietario = htmlspecialchars($_POST['propietario'],ENT_QUOTES,'UTF-8');
    $catrastal = htmlspecialchars($_POST['catastral'],ENT_QUOTES,'UTF-8');
    $area = htmlspecialchars($_POST['area'],ENT_QUOTES,'UTF-8');
    $presupuesto = htmlspecialchars($_POST['presupuesto'],ENT_QUOTES,'UTF-8');
    $observaciones = htmlspecialchars($_POST['observaciones'],ENT_QUOTES,'UTF-8');
    $fecha = htmlspecialchars($_POST['fecha'],ENT_QUOTES,'UTF-8');
    $consulta = $MU->RegistrarCich($expediente,$proyecto,$propietario,$catrastal,$area,$presupuesto,$observaciones,$fecha);
    echo $consulta;

?> 