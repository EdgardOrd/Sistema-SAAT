<?php

require('./fpdf.php');

class PDF extends FPDF
{

   // Cabecera de página
   function Header()
   {
      
      include '../../modelo/modelo_conexion.php';

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
      $this->Cell(100, 10, utf8_decode("REPORTE DE PROYECTOS APROBADOS Y EN SOLICITUD DE SEGUIMIENTO"), 0, 1, 'C', 0);
      $this->Ln(7);

      /* CAMPOS DE LA TABLA */
      //color
      $this->SetFillColor(39, 56, 132); //colorFondo
      $this->SetTextColor(255, 255, 255); //colorTexto
      $this->SetDrawColor(163, 163, 163); //colorBorde
      $this->SetFont('Arial', 'B', 11);
      $this->Cell(50, 10, utf8_decode('N° DE EXPEDIENTE'), 1, 0, 'C', 1);
      $this->Cell(50, 10, utf8_decode('CLAVE CATASTRAL'), 1, 0, 'C', 1);
      $this->Cell(52, 10, utf8_decode('TIPO DE CONSTRUCCION'), 1, 0, 'C', 1);
      $this->Cell(55, 10, utf8_decode('PROPIETARIO'), 1, 0, 'C', 1);
      $this->Cell(40, 10, utf8_decode('FECHA'), 1, 0, 'C', 1);
      $this->Cell(30, 10, utf8_decode('ESTATUS'), 1, 1, 'C', 1);
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

//   include '../../modelo/modelo_conexion.php';
//   $conexion = new conexion();
//   $conexion->conectar(); 
  

$pdf = new PDF();
$pdf->AddPage("landscape"); /* aqui entran dos para parametros (horientazion,tamaño)V->portrait H->landscape tamaño (A3.A4.A5.letter.legal) */
$pdf->AliasNbPages(); //muestra la pagina / y total de paginas

$i = 0;
$pdf->SetFont('Arial', '', 12);
$pdf->SetDrawColor(163, 163, 163); //colorBorde

$consulta_reporte = $conexion->conexion->query("CALL SP_APROBADOS_CIMEQH()");

while ($datos_reporte = $consulta_reporte->fetch_object()) {      
   
$i = $i + 1;
/* TABLA */
$pdf->Cell(40, 10, utf8_decode($datos_reporte->num_expediente), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode($datos_reporte->clave_catastral), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode($datos_reporte->tipo_proyecto), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode($datos_reporte->propietario), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode($datos_reporte->fecha), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode($datos_reporte->estatus), 1, 1, 'C', 0);
}

$pdf->Output('ReporteCimeqh.pdf', 'I');//nombreDescarga, Visor(I->visualizar - D->descargar)
