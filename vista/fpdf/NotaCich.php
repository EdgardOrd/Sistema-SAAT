<?php

$propietario = $_GET["Propietario"];
$clave = $_GET["Clave_Catastral"];
$proyecto = $_GET["Tipo_de_Proyecto"];
$expediente = $_GET["Expediente"];
if(!empty($_GET["Propietario"]) and !empty($_GET["Clave_Catastral"]) and !empty($_GET["Tipo_de_Proyecto"]) and !empty($_GET["Expediente"]))

{

require('fpdf.php');

// Definir el tamaño del papel y la orientación
$pdf = new FPDF('L', 'mm', 'A3');

// Agregar una página al documento
$pdf->AddPage();

// Definir el título del documento
$pdf->SetTitle('Requisitos CIMEQH');


//Agregar imagenes
$pdf->Image('pdfcich.jpeg', 335, 13, 50);


// Definir la fuente y el tamaño del título
$pdf->SetFont('Arial', 'B', 16);

// Agregar el título al documento
$pdf->Cell(0, 10, 'COLEGIO DE INGENIEROS CIVILES DE HONDURAS', 0, 1, 'C');
$pdf->Cell(0, 10, 'CAPITULO NOR-OCCIDENTAL', 0, 1, 'C');
$pdf->Cell(0, 10, utf8_decode('Aprobación De Permisos De Construcción Municipalidad de San Pedro Sula'), 0, 1, 'C');
$pdf->Ln(1);


/* Nombre */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10); 
$pdf->Cell(113, 10, utf8_decode("No. Catastral: " . $clave), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(106, 10, utf8_decode("Expediente: " . $expediente), 0, 0, 'R', 0);
$pdf->Ln(4);

/* PROYECTO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(143, 10, utf8_decode("Nombre de Propietario: ". $propietario), 0, 0, 'R', 0);
$pdf->Ln(4);

$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(112, 10, utf8_decode("Nombre del Proyecto: ". $proyecto), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Tipo:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* PROYECTO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Ubicación:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Correo:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Revisión:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* PROYECTO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Fecha Recepción exp:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);


/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Exp solicitado a contribuyente:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(130, 10, utf8_decode("Exp presentado por contribuyente:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);


/* PROYECTO */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(396, -75, utf8_decode("Responsable Diseño Arquitectónico:    CICH-_______________________________________________________________"), 0, 0, 'R', 0);
$pdf->Ln(4);


/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(396, -75, utf8_decode("Responsable Cálculo Estructural:    CICH-_______________________________________________________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(397, -75, utf8_decode("Responsable Cálculo Hidráulico:    CICH-_______________________________________________________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(389, -75, utf8_decode("Responsable de Proyecto:     0_______________________________________________________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(300, -75, utf8_decode("Numero de Bitacora:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(255, 0, 0); // Establecer el color a rojo
$pdf->Cell(305, -75, utf8_decode("Area de proyecto:_____________________M2"), 0, 0, 'R', 0);
$pdf->SetTextColor(0, 0, 0); // Restablecer el color a negro (opcional)
$pdf->Ln(4);


/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(255, 0, 0); // Establecer el color a rojo
$pdf->Cell(300, -75, utf8_decode("Monto de proyecto:_____________________"), 0, 0, 'R', 0);
$pdf->SetTextColor(0, 0, 0); // Restablecer el color a negro (opcional)
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(300, -75, utf8_decode("Relación L/m2:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(300, -75, utf8_decode("Numero de Niveles:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(300, -75, utf8_decode("Fecha preaprobacion:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(300, -75, utf8_decode("Fecha Aprobación:_____________________"), 0, 0, 'R', 0);
$pdf->Ln(4);

/* Catastral */
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 8);
$pdf->Cell(400, -90, utf8_decode("*Para aprobacion contribuyente debe presentar documentos para firma y"), 0, 0, 'R', 0);
$pdf->Ln(4);
$pdf->Cell(1);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 8);
$pdf->Cell(395, -90, utf8_decode("sello de representante cich y presentar una copia digital"), 0, 0, 'R', 0);
$pdf->Ln(-38);

// Definir la fuente y el tamaño del contenido
$pdf->SetFont('Arial', '', 12);

$pdf->SetFillColor(255, 0, 0); // Establecer el color de fondo a un tono de azul cielo
$pdf->Cell(10, 10, 'Item', 1,0,'C');
$pdf->Cell(240, 10, 'Requisitos', 1, 0, 'C'); 
$pdf->Cell(25, 10, 'Cumple', 1, 0, 'C');
$pdf->Cell(28, 10, 'No Cumple', 1, 0, 'C');
$pdf->Cell(25, 10, 'N/A', 1, 0, 'C');
$pdf->Cell(70, 10, 'Observaciones', 1, 0, 'C');

$pdf->Ln();

$pdf->SetFont('Arial', '', 8);
// Agregar los requisitos a la tabla
$pdf->Cell(10, 10, '1', 1,0,'C', true);
$pdf->Cell(240, 10, utf8_decode('Constancia de Solvencia original del CICH, por cada ingeniero o empresa responsable'), 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '2', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Hoja de afiliación profesional.
Un (1) timbre en hoja oficial cancelado con sello y firma por cada ingeniero responsable.'), 1);
$pdf->SetXY(260, $pdf->GetY() - 20); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 20, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 20, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 20, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 20, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '3', 1,0,'C',true);
$pdf->Cell(240, 10, utf8_decode('Directriz o Anteproyecto aprobado de la Municipalidad de San Pedro Sula'), 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '4', 1,0,'C',true);
$pdf->Cell(240, 10, utf8_decode('Formulario F01 de la Municipalidad De San Pedro Sula'), 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(28, 10, '', 1);
$pdf->Cell(25, 10, '', 1);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 15, '5', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Contrato de Construcción de Obras
Un(1) timbre por el primer millón de lempiras más un (1) timbre adicional por cada L500,000.00 o fracción. (Artículo 72*) El contrato debe de contener las cláusulas descritas en el
Artículo 29**'), 1);
$pdf->SetXY(260, $pdf->GetY() - 15); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 15, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 15, '', 1);
$pdf->Ln();



$pdf->Cell(10, 10, '6', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Presupuesto de Obras
Todas las hojas firmadas y selladas, en la última hoja 1 timbre cancelado con sello y firma.'), 1);
$pdf->SetXY(260, $pdf->GetY() - 10); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 10, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 10, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 10, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 10, '7', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Bitácora De Obra
Firmada y sellada por el profesional responsable.'), 1);
$pdf->SetXY(260, $pdf->GetY() - 10); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 10, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 10, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 10, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 10, '', 1);
$pdf->Ln();

$pdf->Cell(10, 15, '8', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Juego Planos de Proyecto Completo o de su Especialidad.
Juego de planos aprobado por la Municipalidad con anotaciones realizadas. Dos (2) timbres cancelados con firma y sello por cada concepto (se permite máximo dos conceptos por
hoja). Hojas debidamente numeradas.'), 1);
$pdf->SetXY(260, $pdf->GetY() - 15); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 15, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 15, '', 1);
$pdf->Ln();

$pdf->Cell(10, 15, '9', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Memoria de Cálculo Estructural
Para cualquier tipo de edificación que posea entrepiso o cuando sea conveniente según criterio del CICH. Todas las hojas enumeradas y selladas (Artículo 32). Un (1) timbre
cancelado con firma y sello en la primera hoja. Cumplir con lo contenido en el Artículo 31 del Reglamento Especial De Bitácora De Obras Y Regulación De Presentación De Proyectos'), 1);
$pdf->SetXY(260, $pdf->GetY() - 15); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 15, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 15, '', 1);
$pdf->Ln();

$pdf->Cell(10, 15, '10', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Estudio Geotécnico
Para edificios con cuatro (4) o más niveles o cuando sea conveniente según criterio del CICH. Todas las hojas firmadas y selladas y en la última hoja 1 timbre cancelado con firma y
sello.'), 1);
$pdf->SetXY(260, $pdf->GetY() - 15); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 15, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 15, '', 1);
$pdf->Ln();


$pdf->Cell(10, 15, '11', 1,0,'C',true);
$pdf->MultiCell(240, 5, utf8_decode('Memoria Cálculo de Solución Pluvial, Hidrosanitaria
Para proyectos comerciales, industriales y residenciales mayores a 700 m². Todas las hojas firmadas y selladas y un (1) timbre cancelado con firma y sello en la primera hoja.
Cumplir con lo contenido en el Artículo 31 del Reglamento Especial De Bitácora De Obras Y Regulación De Presentación De Proyectos'), 1);
$pdf->SetXY(260, $pdf->GetY() - 15); // Establecer la posición para la siguiente celda en la misma línea
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(285, $pdf->GetY() - 0);
$pdf->Cell(28, 15, '', 1);
$pdf->SetXY(313, $pdf->GetY() - 0);
$pdf->Cell(25, 15, '', 1);
$pdf->SetXY(338, $pdf->GetY() - 0);
$pdf->Cell(70, 15, '', 1);
$pdf->Ln(20);

/* FIRMA */
$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(16, 32, 110); // Establecer el color a rojo
$pdf->Cell(130, 10, utf8_decode("Fecha Aprobación:"), 0, 0, 'R', 0);
$pdf->SetTextColor(0, 0, 0); // Restablecer el color a negro (opcional)
$pdf->Ln(15);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 8);
$pdf->Cell(86, 10, utf8_decode("* Del Reglamento de la Ley Organica del Colegio de Ingenieros Civiles de Honduras"), 0, 0, '', 0);
$pdf->Ln(5);

$pdf->Cell(10);  // mover a la derecha
$pdf->SetFont('Arial', 'B', 8);
$pdf->Cell(86, 10, utf8_decode("** Del Reglamento Especial De Bitácora De Obras Y Regulación De Presentación De Proyectos"), 0, 0, '', 0);
$pdf->Ln(5);


$pdf->Output("AprobacionCICH.pdf", 'I');
}
else
{
    echo("Error");
    echo($propietario);
    echo($proyecto);
    echo($clave);
    echo($expediente);
    echo("hasta aca");
}