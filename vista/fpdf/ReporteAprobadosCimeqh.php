<?php

if(!empty($_GET["fecha_inicial"]) and !empty($_GET["fecha_final"]))
{
   require('./fpdf.php');

   $fecha_inicial = $_GET["fecha_inicial"];
   $fecha_final = $_GET["fecha_final"];


   class PDF extends FPDF
   {
      private $fecha_inicial;
      private $fecha_final;
      private $fecha1;
      private $fecha2;
      

      function __construct($fecha_inicial, $fecha_final)
      {
         parent::__construct();
         $this->fecha_inicial = $fecha_inicial;
         $this->fecha_final = $fecha_final;
         $this->fecha1 = date("d/m/Y", strtotime($fecha_inicial));
         $this->fecha2 = date("d/m/Y", strtotime($fecha_final));
      }
      // Cabecera de página
      function Header()
      {
         
         $this->Image('cimeqh.jpeg', 220, 10, 60); //logo de la empresa,moverDerecha,moverAbajo,tamañoIMG
         $this->SetFont('Arial', 'B', 19); //tipo fuente, negrita(B-I-U-BIU), tamañoTexto
         $this->Cell(95); // Movernos a la derecha
         $this->SetTextColor(0, 0, 0); //color
         //creamos una celda o fila
         // AnchoCelda,AltoCelda,titulo,borde(1-0),saltoLinea(1-0),posicion(L-C-R),ColorFondo(1-0)
         $this->Ln(0); // Salto de línea
         $this->SetTextColor(103); //color

         /* UBICACION */
         $this->Cell(1);  // mover a la derecha
         $this->SetFont('Arial', 'B', 10);
         $this->Cell(96, 10, utf8_decode("Ubicación : San Pedro Sula"), 0, 0, '', 0);
         $this->Ln(6);

         /* TELEFONO */
         $this->Cell(1);  // mover a la derecha
         $this->SetFont('Arial', 'B', 10);
         $this->Cell(59, 10, utf8_decode("Teléfono : 9669-0746"), 0, 0, '', 0);
         $this->Ln(5);

         /* COREEO */
         $this->Cell(1);  // mover a la derecha
         $this->SetFont('Arial', 'B', 10);
         $this->Cell(85, 10, utf8_decode("Correo : capnor@cimeqh.org"), 0, 0, '', 0);
         $this->Ln(22);

         

         /* TITULO DE LA TABLA */
         //color
         
         $this->SetTextColor(39, 56, 132);
         $this->Cell(100); // mover a la derecha
         $this->SetFont('Arial', 'B', 15);
         $this->Cell(75, 10, utf8_decode("REPORTE DE PROYECTOS APROBADOS Y EN SOLICITUD DE SEGUIMIENTO"), 0, 1, 'C', 0);
         $this->SetFont('Arial', 'B', 12);
         $this->Cell(270, 10, utf8_decode($this->fecha1 . ' a ' . $this->fecha2), 0, 0, 'C', 0);
         $this->Ln(12);

         /* CAMPOS DE LA TABLA */
         //color
         $this->SetFillColor(39, 56, 132); //colorFondo
         $this->SetTextColor(255, 255, 255); //colorTexto
         $this->SetDrawColor(163, 163, 163); //colorBorde
         $this->SetFont('Arial', 'B', 8);
         $this->Cell(30, 8, utf8_decode('EXPEDIENTE'), 1, 0, 'C', 1);
         $this->Cell(35, 8, utf8_decode('CLAVE CATASTRAL'), 1, 0, 'C', 1);
         $this->Cell(60, 8, utf8_decode('CONSTRUCCIÓN'), 1, 0, 'C', 1);
         $this->Cell(35, 8, utf8_decode('PRESUPUESTO'), 1, 0, 'C', 1);
         $this->Cell(82, 8, utf8_decode('PROPIETARIO'), 1, 0, 'C', 1);
         $this->SetFont('Arial', 'B', 7.5);
         $this->Cell(35, 8, utf8_decode('FECHA DE APROBACIÓN'), 1, 1, 'C', 1);
         
         
      }

      // Pie de página
      function Footer()
      {
         $this->SetY(-15); // Posición: a 1,5 cm del final
         $this->SetFont('Arial', 'I', 8); //tipo fuente, negrita(B-I-U-BIU), tamañoTexto
         $this->Cell(0, 10, utf8_decode('Página ') . $this->PageNo() . '/{nb}', 0, 0, 'C'); //pie de pagina(numero de pagina)

         $this->SetY(-15); // Posición: a 1,5 cm del final
         $this->SetFont('Arial', 'I', 8); //tipo fuente, cursiva, tamañoTexto
         $hoy = date('d/m/Y');
         $this->Cell(540, 10, utf8_decode($hoy), 0, 0, 'C'); // pie de pagina(fecha de pagina)
      }
   }

   include '../../modelo/modelo_conexion.php';
   $conexion = new conexion();
   $conexion->conectar();
   

   $pdf = new PDF($fecha_inicial,$fecha_final);
   $pdf->AddPage("landscape"); /* aqui entran dos para parametros (horientazion,tamaño)V->portrait H->landscape tamaño (A3.A4.A5.letter.legal) */
   $pdf->AliasNbPages(); //muestra la pagina / y total de paginas

   $i = 0;
   $pdf->SetFont('Arial', '', 8);
   $pdf->SetDrawColor(163, 163, 163); //colorBorde

   $consulta_reporte = $conexion->conexion->query("CALL SP_APROBADOS_CIMEQH('$fecha_inicial','$fecha_final')");

   while ($datos_reporte = $consulta_reporte->fetch_object()) {      
      
   $i = $i + 1;
   /* TABLA */
   $pdf->Cell(30, 10, utf8_decode($datos_reporte->num_expediente), 1, 0, 'C', 0);
   $pdf->Cell(35, 10, utf8_decode($datos_reporte->clave_catastral), 1, 0, 'C', 0);
   $pdf->Cell(60, 10, utf8_decode($datos_reporte->tipo_proyecto), 1, 0, 'C', 0);
   $pdf->Cell(35, 10, utf8_decode("Lps." . "" . number_format($datos_reporte->presupuesto,2,'.',',')), 1, 0, 'C', 0);
   $pdf->Cell(82, 10, utf8_decode($datos_reporte->propietario), 1, 0, 'C', 0);
   $pdf->Cell(35, 10, utf8_decode($datos_reporte->fecha), 1, 1, 'C', 0);
   }

   
   $pdf->Output("ReporteAprobadosCIMEQH-$fecha_inicial-$fecha_final.pdf", 'I');//nombreDescarga, Visor(I->visualizar - D->descargar)
 }
 else
 {
   echo("error");
 }
