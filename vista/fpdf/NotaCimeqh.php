<?php
$propietario = $_GET["Propietario"];
$clave = $_GET["Clave_Catastral"];
$proyecto = $_GET["Tipo_de_Proyecto"];
$fecha = $_GET["Fecha"];
if(!empty($_GET["Propietario"]) and !empty($_GET["Clave_Catastral"]) and !empty($_GET["Tipo_de_Proyecto"]) and !empty($_GET["Fecha"]))

{
    require('fpdf.php');

     $fecha1 = date("d/m/Y", strtotime($fecha));
    // Definir el tamaño del papel y la orientación
    $pdf = new FPDF('L', 'mm', 'A3');

    // Agregar una página al documento
    $pdf->AddPage();

    // Definir el título del documento
    $pdf->SetTitle('Requisitos CIMEQH');


    //Agregar imagenes
    $pdf->Image('cimeqh.jpeg', 8, 13, 50);
    $pdf->Image('cimeqh.jpeg', 355, 13, 50);


    // Definir la fuente y el tamaño del título
    $pdf->SetFont('Arial', 'B', 16);

    // Agregar el título al documento
    $pdf->Cell(0, 10, 'COLEGIO DE INGENIEROS MECANICOS, ELECTRICOS Y QUIMICOS DE HONDURAS Y RAMAS AFINES', 0, 1, 'C');
    $pdf->Cell(0, 10, 'CAPITULO NOROCCIDENTAL', 0, 1, 'C');
    $pdf->Cell(0, 10, utf8_decode('APROBACIÓN DE PERMISOS DE CONSTRUCCIÓN EN SAN PEDRO SULA'), 0, 1, 'C');
    $pdf->Ln(10);


    /* UBICACION */
    $pdf->Cell(1);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("Nombre de Propietario: " . $propietario), 0, 0, '', 0);
    $pdf->Ln(6);

    /* TELEFONO */
    $pdf->Cell(1);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(59, 10, utf8_decode("Catastral: " . $clave), 0, 0, '', 0);
    $pdf->Ln(6);

    /* COREEO */
    $pdf->Cell(1);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(85, 10, utf8_decode("Nombre de Proyecto: " . $proyecto), 0, 0, '', 0);
    $pdf->Ln(6);

    /* FECHA */
    $pdf->Cell(1);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("Fecha: " . $fecha1), 0, 0, '', 0);
    $pdf->Ln(22);



    // Definir la fuente y el tamaño del contenido
    $pdf->SetFont('Arial', '', 12);

    $pdf->SetFillColor(153, 204, 255); // Establecer el color de fondo a un tono de azul cielo
    $pdf->Cell(250, 10, 'REQUISITOS', 1, 0, 'C', true); // El último parámetro "true" indica que se dibuje el borde y el color de fondo
    $pdf->Cell(25, 10, 'CUMPLE', 1, 0, 'C', true);
    $pdf->Cell(28, 10, 'NO CUMPLE', 1, 0, 'C', true);
    $pdf->Cell(25, 10, 'N/A', 1, 0, 'C', true);
    $pdf->Cell(70, 10, 'OBSERVACIONES', 1, 0, 'C', true);

    $pdf->Ln();

    $pdf->SetFont('Arial', '', 10);
    // Agregar los requisitos a la tabla
    $pdf->Cell(10, 10, '1', 1,0,'C', true);
    $pdf->Cell(240, 10, 'CONSTANCIA DE SOLVENCIA ORIGINAL DEL CIMEQH POR CADA INGENIERO O EMPRESA RESPONSABLE', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 10, '2', 1,0,'C',true);
    $pdf->Cell(240, 10, 'HOJA DE AFILIACION PROFESIONAL', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 10, '3', 1,0,'C',true);
    $pdf->Cell(240, 10, 'COPIA DE LA DIRECTRIZ APROBADA DE LA MUNICIPAPLIPDAD DE SAN PEDRO SULA', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 10, '4', 1,0,'C',true);
    $pdf->Cell(240, 10, 'COPIA DE FORMULARIO F01 DE LA MUNICIPALIDAD DE SAN PEDRO SULA', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 20, '5', 1,0,'C',true);
    $pdf->MultiCell(240, 10, 'CONTRATO DE CONSTRUCCION DE OBRA ELECTROMECANICA.'."\n". 'EL CONTRATO DEBE DE CUMPLIR CON EL ARTICULO 31 DEL REGLAMENTO DE LA HOJA DE BITACORA DE OBRAS ELECTROMECANICAS.', 1);
    $pdf->SetXY(260, $pdf->GetY() - 20); // Establecer la posición para la siguiente celda en la misma línea
    $pdf->Cell(25, 20, '', 1);
    $pdf->SetXY(285, $pdf->GetY() - 0);
    $pdf->Cell(28, 20, '', 1);
    $pdf->SetXY(313, $pdf->GetY() - 0);
    $pdf->Cell(25, 20, '', 1);
    $pdf->SetXY(338, $pdf->GetY() - 0);
    $pdf->Cell(70, 20, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 10, '6', 1,0,'C',true);
    $pdf->Cell(240, 10, 'PRESUPUESTO ELECTROMECANICO', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln();

    $pdf->Cell(10, 10, '7', 1,0,'C',true);
    $pdf->Cell(240, 10, 'COPIA DEL JUEGO COMPLETO DE PLANOS DE SISTEMA ELECTROMECANICO', 1);
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
    $pdf->Cell(240, 10, 'MEMORIA ELECTROMECANICA', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(28, 10, '', 1);
    $pdf->Cell(25, 10, '', 1);
    $pdf->Cell(70, 10, '', 1);
    $pdf->Ln(60);



    /* FIRMA */
    $pdf->Cell(10);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("________________________________"), 0, 0, '', 0);
    $pdf->Ln(5);

    $pdf->Cell(10);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("Ing."), 0, 0, '', 0);
    $pdf->Ln(5);

    $pdf->Cell(10);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("Representante Ventanilla Única"), 0, 0, '', 0);
    $pdf->Ln(5);

    $pdf->Cell(10);  // mover a la derecha
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(96, 10, utf8_decode("CIMEQH CAPNOR"), 0, 0, '', 0);
    $pdf->Ln(5);

    $pdf->Output("AprobacionCIMEQH.pdf", 'I');
}
else
{
    echo("Error");
    echo($propietario);
    echo($proyecto);
    echo($clave);
    echo($fecha);
    echo("hasta aca");
}