<?php
    include '../../modelo/modelo_conexion.php';
    $conexion = new conexion();
    $conexion->conectar();

    $data = array();

    $sql = "SP_AREA_CIMEQH()";
    $result = $conexion->conectar->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data['labels'][] = $row['nombre'];
            $data['data'][] = $row['cantidad'];
        }
    }

    $data['labels'] = json_encode($data['labels']);
    $data['data'] = json_encode($data['data']);

    $conexion->$conectar->close();

    echo $data['labels'] . "|" . $data['data'];
?>
