<?php
    $tabla = $_GET['tabla'];
    
    
    require '../../modelo/modelo_usuario.php';

    $MG = new Modelo_Usuario();
    $consulta = $MG -> DescargarCsv($tabla);

    

?>