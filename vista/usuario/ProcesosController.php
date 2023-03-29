<?php



class ProcesosController
{
    static public function ctrListar(){
        $respuesta = ProcesosModelo::mdListar();

        return $respuesta;
    }
}
