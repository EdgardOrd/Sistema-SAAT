<?php

require('fpdf.php');

// Definir el tamaño del papel y la orientación
$pdf = new FPDF('L', 'mm', 'A3');

// Agregar una página al documento
$pdf->AddPage();

// Definir el título del documento
$pdf->SetTitle('Requisitos CIMEQH');

// Definir la fuente y el tamaño del título
$pdf->SetFont('Arial', 'B', 16);

// Agregar el título al documento
$pdf->Cell(0, 10, 'Requisitos CIMEQH', 0, 1, 'C');

// Definir la fuente y el tamaño del contenido
$pdf->SetFont('Arial', '', 12);

// Definir los encabezados de la tabla
$pdf->Cell(40, 10, 'REQUISITOS', 1);
$pdf->Cell(40, 10, 'CUMPLE', 1);
$pdf->Cell(40, 10, 'NO CUMPLE', 1);
$pdf->Cell(40, 10, 'N/A', 1);
$pdf->Cell(30, 10, 'OBSERVACIONES', 1);
$pdf->Ln();

// Agregar los requisitos a la tabla
$pdf->Cell(40, 10, 'CONSTANCIA DE SOLVENCIA ORIGINAL DEL CIMEQH POR CADA INGENIERO O EMPRESA RESPONSABLE', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(30, 10, '', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'HOJA DE AFILIACION PROFESIONAL', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(30, 10, '', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'COPIA DE LA DIRECTRIZ APROBADA DE LA MUNICIPAPLIPDAD DE SAN PEDRO SULA', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(30, 10, '', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'COPIA DE FORMULARIO F01 DE LA MUNICIPALIDAD DE SAN PEDRO SULA', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(30, 10, '', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'CONTRATO DE CONSTRUCCIÓN DE OBRA ELECTROMECANICA. EL CONTRATO DEBE DE CUMPLIR CON EL ARTICULO 31 DEL REGLAMENTO DE LA HOJA DE BITÁCORA DE OBRAS ELECTROMECÁNICAS.', 1);
$pdf->Cell(40, 10, '', 1);
$pdf->Cell(40, 10, '', 1);

$pdf->Output("ReporteAprobadosCAH.pdf", 'I');