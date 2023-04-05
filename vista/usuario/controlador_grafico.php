<?php
    $fecha_inicial = htmlspecialchars($_POST['fecha_inicial'],ENT_QUOTES,'UTF-8');
    $fecha_final = htmlspecialchars($_POST['fecha_final'],ENT_QUOTES,'UTF-8');
    
    require '../../modelo/modelo_usuario.php';

    $MG = new Modelo_Usuario();
    $consulta = $MG -> TraerDatosGraficoBar($fecha_inicial,$fecha_final);

    echo json_encode($consulta);

?>