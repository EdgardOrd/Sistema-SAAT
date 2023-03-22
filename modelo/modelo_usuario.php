<?php
    class Modelo_Usuario{
        private $conexion;
        function __construct(){
            require_once 'modelo_conexion.php';
            $this->conexion = new conexion();
            $this->conexion->conectar();
        }

        function VerificarUsuario($usuario,$contra){
            $sql = "call SP_VERIFICAR_USUARIO('$usuario')";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                    if(password_verify($contra, $consulta_VU["usu_contrasena"]))
                    {
                        $arreglo[] = $consulta_VU;
                    }
                }
                return $arreglo; 
                $this->conexion->cerrar();
            }
        }

        function listar_combo_colegios(){
            $sql = "call SP_COMBO_COLEGIO_CIMEQH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                        $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function listar_combo_colegios_cich(){
            $sql = "call SP_COMBO_COLEGIO_CICH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                        $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function listar_combo_colegios_cah(){
            $sql = "call SP_COMBO_COLEGIO_CAH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                        $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function listar_cimeqh(){
            $sql = "call SP_MOSTRAR_CIMEQH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                    $arreglo["data"][]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        
        function listar_cich(){
            $sql = "call SP_MOSTRAR_CICH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                    $arreglo["data"][]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function listar_cah(){
            $sql = "call SP_MOSTRAR_CAH()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                    $arreglo["data"][]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function TraerDatos($usuario){
            $sql = "call SP_VERIFICAR_USUARIO('$usuario')";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                    $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function listar_usuario(){
            $sql = "call SP_LISTAR_USUARIO()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                    $arreglo["data"][]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function RegistrarCimeqh($expediente,$proyecto,$propietario,$catrastal,$area,$presupuesto,$observaciones,$fecha){
            $sql = "call SP_REGISTRAR_APROBADO_CIMEQH('$expediente','$proyecto','$propietario','$catrastal','$area','$presupuesto','$observaciones','$fecha')";
            if ($consulta = $this->conexion->conexion->query($sql)) {
                $this->conexion->conexion->next_result(); // Limpiar el conjunto de resultados
                $this->conexion->cerrar();
                return true; // Opcionalmente, puedes retornar true si la operación fue exitosa
            } else {
                return false; // Opcionalmente, puedes retornar false si la operación falló
            }
        }
 
        function RegistrarCich($expediente,$proyecto,$propietario,$catrastal,$area,$presupuesto,$observaciones,$fecha){
            $sql = "call SP_REGISTRAR_APROBADO_CICH('$expediente','$proyecto','$propietario','$catrastal','$area','$presupuesto','$observaciones','$fecha')";
            if ($consulta = $this->conexion->conexion->query($sql)) {
                $this->conexion->conexion->next_result(); // Limpiar el conjunto de resultados
                $this->conexion->cerrar();
                return true; // Opcionalmente, puedes retornar true si la operación fue exitosa
            } else {
                return false; // Opcionalmente, puedes retornar false si la operación falló
            }
        }

        function RegistrarCah($expediente,$proyecto,$propietario,$catrastal,$area,$presupuesto,$observaciones,$fecha){
            $sql = "call SP_REGISTRAR_APROBADO_CAH('$expediente','$proyecto','$propietario','$catrastal','$area','$presupuesto','$observaciones','$fecha')";
            if ($consulta = $this->conexion->conexion->query($sql)) {
                $this->conexion->conexion->next_result(); // Limpiar el conjunto de resultados
                $this->conexion->cerrar();
                return true; // Opcionalmente, puedes retornar true si la operación fue exitosa
            } else {
                return false; // Opcionalmente, puedes retornar false si la operación falló
            }
        }

        function listar_combo_rol(){
            $sql = "call SP_LISTAR_COMBO_ROL()";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                        $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
            }
        }

        function Modificar_Estatus_Usuario($idusuario,$estatus){
            $sql = "call SP_MODIFICAR_ESTATUS_USUARIO('$idusuario','$estatus')";
			if ($consulta = $this->conexion->conexion->query($sql)){
                return 1;
			}else{
                return 0;
            }
        }

        function Modificar_Contra_Usuario($idusuario,$contranu){
            $sql = "call SP_MODIFICAR_CONTRA_USUARIO('$idusuario','$contranu')";
			if ($consulta = $this->conexion->conexion->query($sql)){
                return 1;
			}else{
                return 0;
            }
        }
 

        function Registrar_Usuario($usuario,$contra,$rol){
            $sql = "call SP_REGISTRAR_USUARIO('$usuario','$contra','$rol')";
            if ($consulta = $this->conexion->conexion->query($sql)) {
                if ($row = mysqli_fetch_array($consulta)) {
                        return $id= trim($row[0]);
                }
                $this->conexion->cerrar();
            }
        }
    }
?>