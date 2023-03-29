<?php

require_once "ProcesosController.php";
require_once "ProcesosModelo.php";
class Procesos{
    public function Listar(){
        $respuesta = ProcesosController::ctrListar();

        echo json_encode($respuesta);
    }
}

$procesos = new graficas_Are