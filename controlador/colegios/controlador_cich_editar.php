<?php
    require '../../modelo/modelo_usuario.php';

    $MU = new Modelo_Usuario();
    $expediente = htmlspecialchars($_POST['expediente'],ENT_QUOTES,'UTF-8');
    $proyecto = htmlspecialchars($_POST['proyecto'],ENT_QUOTES,'UTF-8');
    $propietario = htmlspecialchars($_POST['propietario'],ENT_QUOTES,'UTF-8');
    $catastral = htmlspecialchars($_POST['catastral'],ENT_QUOTES,'UTF-8');
    $area = htmlspecialchars($_POST['area'],ENT_QUOTES,'UTF-8');
    $presupuesto = htmlspecialchars($_POST['presupuesto'],ENT_QUOTES,'UTF-8');
    $colegiado = htmlspecialchars($_POST['colegiado'],ENT_QUOTES,'UTF-8');
    $estatus = htmlspecialchars($_POST['estatus'],ENT_QUOTES,'UTF-8');
    $observaciones = htmlspecialchars($_POST['observaciones'],ENT_QUOTES,'UTF-8');
    $fecha = htmlspecialchars($_POST['fecha'],ENT_QUOTES,'UTF-8');
    $consulta = $MU->Actualizar_Cich(
        $expediente,$proyecto,$propietario,$catastral,$area,$presupuesto,$colegiado,$estatus,$observaciones,$fecha
    );
    echo $consulta;

?>  