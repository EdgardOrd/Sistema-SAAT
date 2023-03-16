<?php

require('./fpdf.php');

class PDF extends FPDF
{

   // Cabecera de página
   function Header()
   {
      
      $this->Image('cich.jpeg', 10, 10, 35); //logo de la empresa,moverDerecha,moverAbajo,tamañoIMG
      $this->SetFont('Arial', 'B', 19); //tipo fuente, negrita(B-I-U-BIU), tamañoTexto
      $this->Cell(95); // Movernos a la derecha
      $this->SetTextColor(0, 0, 0); //color
      //creamos una celda o fila
       // AnchoCelda,AltoCelda,titulo,borde(1-0),saltoLinea(1-0),posicion(L-C-R),ColorFondo(1-0)
      $this->Ln(0); // Salto de línea
      $this->SetTextColor(103); //color

      /* UBICACION */
      $this->Cell(200);  // mover a la derecha
      $this->SetFont('Arial', 'B', 10);
      $this->Cell(96, 10, utf8_decode("Ubicación : San Pedro Sula"), 0, 0, '', 0);
      $this->Ln(6);

      /* TELEFONO */
      $this->Cell(200);  // mover a la derecha
      $this->SetFont('Arial', 'B', 10);
      $this->Cell(59, 10, utf8_decode("Teléfono : 9669-0746"), 0, 0, '', 0);
      $this->Ln(5);

      /* COREEO */
      $this->Cell(200);  // mover a la derecha
      $this->SetFont('Arial', 'B', 10);
      $this->Cell(85, 10, utf8_decode("Correo : capnor@cimeqh.org"), 0, 0, '', 0);
      $this->Ln(22);

      

      /* TITULO DE LA TABLA */
      //color
      
      $this->SetTextColor(81, 117, 64);
      $this->Cell(100); // mover a la derecha
      $this->SetFont('Arial', 'B', 15);
      $this->Cell(100, 10, utf8_decode("REPORTE DE PROYECTOS APROBADOS Y EN SOLICITUD DE SEGUIMIENTO"), 0, 1, 'C', 0);
      $this->Ln(7);

      /* CAMPOS DE LA TABLA */
      //colorrgb(48, 197, 85)
      $this->SetFillColor(196, 199, 46); //colorFondo
      $this->SetTextColor(255, 255, 255); //colorTexto
      $this->SetDrawColor(163, 163, 163); //colorBorde
      $this->SetFont('Arial', 'B', 11);
      $this->Cell(40, 10, utf8_decode('N° DE APROBACIÓN'), 1, 0, 'C', 1);
      $this->Cell(85, 10, utf8_decode('PROPIETARIO'), 1, 0, 'C', 1);
      $this->Cell(60, 10, utf8_decode('CLAVE CATASTRAL'), 1, 0, 'C', 1);
      $this->Cell(60, 10, utf8_decode('FECHA DE APROBACIÓN'), 1, 0, 'C', 1);
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

//include '../../recursos/Recurso_conexion_bd.php';
//require '../../funciones/CortarCadena.php';
/* CONSULTA INFORMACION DEL HOSPEDAJE */
//$consulta_info = $conexion->query(" select *from hotel ");
//$dato_info = $consulta_info->fetch_object();

$pdf = new PDF();
$pdf->AddPage("landscape"); /* aqui entran dos para parametros (horientazion,tamaño)V->portrait H->landscape tamaño (A3.A4.A5.letter.legal) */
$pdf->AliasNbPages(); //muestra la pagina / y total de paginas

$i = 0;
$pdf->SetFont('Arial', '', 12);
$pdf->SetDrawColor(163, 163, 163); //colorBorde

/*$consulta_reporte_alquiler = $conexion->query("  ");*/

/*while ($datos_reporte = $consulta_reporte_alquiler->fetch_object()) {      
   }*/
$i = $i + 1;
/* TABLA */
$pdf->Cell(40, 10, utf8_decode("0001"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Juan Solis"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("NO485748"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("12/34/2020"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0012"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Pedro Perez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE343445"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("12/34/2020"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0024"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("María García"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE563423"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("01/23/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0076"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Juan Martínez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE235678"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("06/15/2022"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0099"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Ana López"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE783452"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("11/05/2021"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0001"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Juan Rodriguez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE123456"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("01/01/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0002"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Maria Lopez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE234567"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("02/02/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0003"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Ana Martinez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE345678"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("03/03/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0004"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Pedro Gomez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE456789"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("04/04/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0005"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Carlos Sanchez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE567890"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("05/05/2023"),1,0,'C',0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0006"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Laura Gonzalez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE678901"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("06/06/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0007"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Mario Fernandez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE789012"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("07/07/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0008"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Sofia Hernandez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE890123"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("08/08/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0009"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Diego Perez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE901234"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("09/09/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0010"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Carla Ramirez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE012345"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("10/10/2023"), 1, 0, 'C',0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0013"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Ana Garcia"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE234567"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("11/11/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0014"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Jorge Torres"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE345678"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("12/12/2023"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Seguimiento"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0015"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Maria Torres"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE456789"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("01/01/2024"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0016"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Carlos Hernandez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE567890"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("02/02/2024"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);

$pdf->Cell(40, 10, utf8_decode("0017"), 1, 0, 'C', 0);
$pdf->Cell(85, 10, utf8_decode("Luisa Martinez"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("SE678901"), 1, 0, 'C', 0);
$pdf->Cell(60, 10, utf8_decode("03/03/2024"), 1, 0, 'C', 0);
$pdf->Cell(30, 10, utf8_decode("Aprobado"), 1, 1, 'C', 0);
$pdf->Output('ReporteCich.pdf', 'I');//nombreDescarga, Visor(I->visualizar - D->descargar)
