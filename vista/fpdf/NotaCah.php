<?php

$expediente = $_GET["Expediente"];
$colegiado = $_GET["Colegiado"];
$propietario = $_GET["Propietario"];
$clave = $_GET["Clave_Catastral"];

if(!empty($_GET["Propietario"]) and !empty($_GET["Clave_Catastral"]) and !empty($_GET["Colegiado"]) and !empty($_GET["Expediente"]))

{


require('fpdf.php');
date_default_timezone_set('America/Tegucigalpa');

$fecha1 = date("d/m/Y");


// Definir el tamaño del papel y la orientación
$pdf = new FPDF('L', 'mm', 'A3');

// Agregar una página al documento
$pdf->AddPage();

// Definir el título del documento
$pdf->SetTitle('Requisitos CIMEQH');


//Agregar imagenes
$pdf->Image('pdfcah.jpeg', 15, 13, 50);



// Definir la fuente y el tamaño del título
$pdf->SetFont('Arial', 'B', 16);

// Agregar el título al documento
$pdf->Cell(0, 10, 'COLEGIO DE ARQUITECTOS DE HONDURAS', 0, 1, 'C');
$pdf->Cell(0, 10, 'CAPITULO NOR OCCIDENTAL SAN PEDRO SULAL', 0, 1, 'C');
$pdf->Cell(0, 10, utf8_decode('REVISION DE PLANOS PARA MUNICIPALIDAD DE SAN PEDRO SULA'), 0, 1, 'C');
$pdf->Ln(5);


/* UBICACION */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(96, 10, utf8_decode("FECHA DE ENVIO: " . $fecha1), 0, 0, '', 0);
$pdf->Ln(10);

/* TELEFONO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(59, 10, utf8_decode("NUMERO DE EXPEDIENTE: " . $expediente), 0, 0, '', 0);
$pdf->Ln(10);

/* COREEO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(85, 10, utf8_decode("ARQUITECTO: " . $colegiado), 0, 0, '', 0);
$pdf->Ln(10);

$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(85, 10, utf8_decode("PROPIETARIO: " . $propietario), 0, 0, '', 0);
$pdf->Ln(10);

$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(85, 10, utf8_decode("CLAVE CATASTRAL: " . $clave), 0, 0, '', 0);
$pdf->Ln(15);



// Definir la fuente y el tamaño del contenido
$pdf->SetFont('Arial', '', 12);

$pdf->SetFillColor(139, 232, 93); // Establecer el color de fondo a un tono de azul cielo
$pdf->Cell(10, 10, '#', 1,0,'C', true);
$pdf->Cell(240, 10, 'REQUISITOS', 1, 0, 'C', true); // El último parámetro "true" indica que se dibuje el borde y el color de fondo
$pdf->Cell(25, 10, 'CUMPLE', 1, 0, 'C', true);
$pdf->Cell(28, 10, 'NO CUMPLE', 1, 0, 'C', true);
$pdf->Cell(25, 10, 'N/A', 1, 0, 'C', true);
$pdf->Cell(70, 10, 'OBSERVACIONES', 1, 0, 'C', true);

$pdf->Ln();

$pdf->SetFont('Arial', '', 10);
// Agregar los requisitos a la tabla
$pdf->Cell(10, 10, '1', 1,0,'C', true);
$pdf->Cell(240, 10, 'CONSTANCIA DE SOLVENCIA CAH', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '2', 1,0,'C',true);
$pdf->Cell(240, 10, 'PRESUPUESTO DE OBRA', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '3', 1,0,'C',true);
$pdf->Cell(240, 10, 'CONTRATO DE CONSTRUCCION', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '4', 1,0,'C',true);
$pdf->Cell(240, 10, 'HOJA DE AFILIACION', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '5', 1,0,'C',true);
$pdf->Cell(240, 10, 'F-01', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '6', 1,0,'C',true);
$pdf->Cell(240, 10, 'C-03', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '7', 1,0,'C',true);
$pdf->Cell(240, 10, 'MEMORIA DE CALCULO ESTRUCTURAL', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '8', 1,0,'C',true);
$pdf->Cell(240, 10, 'BITACORA DE OBRA ELECTROMECANICA', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '9', 1,0,'C',true);
$pdf->Cell(240, 10, 'MEMORIA DE CALCULO HIDROSANITARIO', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '10', 1,0,'C',true);
$pdf->Cell(240, 10, 'OTROS', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln(45);


//Agregar imagenes
$pdf->Image('cah.jpeg', 170, 215, 80);

/* FIRMA */
$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(96, 10, utf8_decode("OBSERVACIONES:"), 0, 0, '', 0);
$pdf->Ln(5);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(96, 10, utf8_decode("Se revisó vivienda unifamiliar de dos niveles."), 0, 0, '', 0);
$pdf->Ln(5);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(380, 10, utf8_decode("_________________________________________________"), 0, 0, 'R', 0);
$pdf->Ln(5);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(350, 10, utf8_decode("ARQ. GLORIA LOPEZ DIAZ"), 0, 0, 'R', 0);
$pdf->Ln(5);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(380, 10, utf8_decode("REPRESENTANTE DEL CAH EN VENTANILLA UNICA DE MSPS"), 0, 0, 'R', 0);
$pdf->Ln(5);




$pdf->Output("AprobacionCAH.pdf", 'I');
}
else
{
    echo("Error");
    echo($propietario);
    echo($colegiado);
    echo($clave);
    echo($expediente);
    echo("hasta aca");
}