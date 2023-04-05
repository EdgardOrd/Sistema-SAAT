CREATE DATABASE  IF NOT EXISTS `bd_sistema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_sistema`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_sistema
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `colegiados`
--

DROP TABLE IF EXISTS `colegiados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colegiados` (
  `id_colegiado` int NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `colegio` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_colegiado`),
  KEY `fkColegiadosColegio` (`colegio`),
  CONSTRAINT `fkColegiadosColegio` FOREIGN KEY (`colegio`) REFERENCES `colegio` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colegiados`
--

LOCK TABLES `colegiados` WRITE;
/*!40000 ALTER TABLE `colegiados` DISABLE KEYS */;
/*!40000 ALTER TABLE `colegiados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colegio`
--

DROP TABLE IF EXISTS `colegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colegio` (
  `nombre` varchar(6) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colegio`
--

LOCK TABLES `colegio` WRITE;
/*!40000 ALTER TABLE `colegio` DISABLE KEYS */;
INSERT INTO `colegio` VALUES ('CAH'),('CICH'),('CIMEQH');
/*!40000 ALTER TABLE `colegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoscah`
--

DROP TABLE IF EXISTS `proyectoscah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectoscah` (
  `num_expediente` int NOT NULL,
  `nombre_col` varchar(7) DEFAULT 'CAH',
  `tipo_proyecto` varchar(100) NOT NULL,
  `propietario` varchar(50) NOT NULL,
  `clave_catastral` varchar(100) NOT NULL,
  `area` float NOT NULL,
  `presupuesto` float NOT NULL,
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`num_expediente`),
  KEY `nombre_col` (`nombre_col`),
  CONSTRAINT `proyectoscah_ibfk_1` FOREIGN KEY (`nombre_col`) REFERENCES `colegio` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoscah`
--

LOCK TABLES `proyectoscah` WRITE;
/*!40000 ALTER TABLE `proyectoscah` DISABLE KEYS */;
INSERT INTO `proyectoscah` VALUES (12342022,'CAH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'SEGUIMIENTO','Faltan Planos','2022-01-02'),(12352022,'CAH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01'),(12362022,'CAH','VIVIENDA UNIFAMILIAR','FERNANDO JOSUE CABALLERO DUBON','NO123456787',250,200000,'APROBADO','Cumple Todo','2022-01-03'),(12372022,'CAH','FARMACIA','WALTER FERNANDO CEREN ESPINAL','NO123456786',300,350000,'SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-04'),(12382022,'CAH','GASOLINERA','DOUGLAS MAUDIEL CHAVEZ TORO','NO123456785',289,300000,'APROBADO','Cumple Todo','2022-01-05'),(21342022,'CAH','VIVIENDA','PRUEBA CAH','NO123456733',100,100,'APROBADO','Cumple Todo','2023-03-22'),(22222222,'CAH','VIVIENDA DE HENRY','PRUEBA CAHH','NO123456723',100,205000,'APROBADO','Cumple Todo','2023-03-23'),(32152020,'CAH','PROYECTO DE ARQUITECTURA','CARLOS HERNÁNDEZ GARCÍA','NO345678912',800,750000,'APROBADO','Cumple Todo','2023-03-25'),(58932023,'CAH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'SEGUIMIENTO','Cambio de Ingeniero','2023-03-25'),(65472021,'CAH','PROYECTO DE DISEÑO GRÁFICO','MARÍA PÉREZ FLORES','NO891234567',150,250000,'APROBADO','Cumple Todo','2023-03-25'),(78922022,'CAH','CONSTRUCCIÓN','JUAN GARCÍA RODRÍGUEZ','NO987654321',1000,1500000,'APROBADO','Cumple Todo','2023-03-25'),(78932022,'CAH','DISEÑO DE INTERIORES','ANA MONTES FERNÁNDEZ','NO876543210',200,250000,'APROBADO','Cumple Todo','2023-03-25'),(78932023,'CAH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'SEGUIMIENTO','Inspeccion de elevador','2023-03-25'),(78942022,'CAH','ARQUITECTURA','CARLOS HERNÁNDEZ SÁNCHEZ','NO765432109',800,1000000,'APROBADO','Cumple Todo','2023-03-25'),(78952022,'CAH','PUENTE','LUIS GARCÍA RAMÍREZ','NO456789012',350,300000,'DESAPROBADO','No cumple con los requisitos','2023-03-25'),(78962022,'CAH','CASA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'SOLICITUD DE DOCUMENTACION','Faltan documentos por presentar','2023-03-25');
/*!40000 ALTER TABLE `proyectoscah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoscich`
--

DROP TABLE IF EXISTS `proyectoscich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectoscich` (
  `num_expediente` int NOT NULL,
  `nombre_col` varchar(7) DEFAULT 'CICH',
  `tipo_proyecto` varchar(100) NOT NULL,
  `propietario` varchar(50) NOT NULL,
  `clave_catastral` varchar(100) NOT NULL,
  `area` float NOT NULL,
  `presupuesto` float NOT NULL,
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`num_expediente`),
  KEY `nombre_col` (`nombre_col`),
  CONSTRAINT `proyectoscich_ibfk_1` FOREIGN KEY (`nombre_col`) REFERENCES `colegio` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoscich`
--

LOCK TABLES `proyectoscich` WRITE;
/*!40000 ALTER TABLE `proyectoscich` DISABLE KEYS */;
INSERT INTO `proyectoscich` VALUES (12032023,'CICH','MILLONARIO','JUAN CARLOS GÓMEZ ROJAS','NO444555666',800,1500000,'APROBADO','Cumple Todo','2023-03-27'),(12342022,'CICH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'SEGUIMIENTO','Faltan Planos','2022-01-02'),(12352022,'CICH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01'),(12392022,'CICH','VIVIENDA EN SERIE','AXEL DAVID CORNEJO ORTEGA','NO123456784',270,471000,'APROBADO','Cumple Todo','2022-01-05'),(12402022,'CICH','FARMACIA','FRANCISCO JAVIER ESQUIVEL GONZALES','NO123456783',150,199000,'SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-06'),(12412022,'CICH','VIVIENDA BIFAMILIAR','DENISE MABEL FIALLOS MARTINEZ','NO123456782',210,230000,'APROBADO','Cumple Todo','2022-01-07'),(15252022,'CICH','VIVIENDA','PRUEBA','NO123456754',100,100,'APROBADO','Cumple Todo','2023-03-22'),(22052023,'CICH','MILLONARIO','MARTA GARCÍA JIMÉNEZ','NO777888999',1200,2500000,'APROBADO','Cumple Todo','2023-03-28'),(31062023,'CICH','MILLONARIO','ROBERTO PEREZ SÁNCHEZ','NO222333444',900,1800000,'APROBADO','Cumple Todo','2023-03-29'),(32152020,'CICH','PROYECTO DE ARQUITECTURA','CARLOS HERNÁNDEZ GARCÍA','NO345678912',800,750000,'APROBADO','Cumple Todo','2023-03-25'),(58932023,'CICH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'SEGUIMIENTO','Cambio de Ingeniero','2023-03-25'),(65472021,'CICH','PROYECTO DE DISEÑO GRÁFICO','MARÍA PÉREZ FLORES','NO891234567',150,250000,'APROBADO','Cumple Todo','2023-03-25'),(78902022,'CICH','MILLONARIO','ANA LÓPEZ HERNÁNDEZ','NO987654321',1000,2000000,'APROBADO','Cumple Todo','2023-03-25'),(78932023,'CICH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'SEGUIMIENTO','Inspeccion de elevador','2023-03-25'),(78952022,'CICH','RESTAURANTE','LUIS GARCÍA RAMÍREZ','NO456789012',350,300000,'DESAPROBADO','No cumple con los requisitos','2023-03-25'),(78962022,'CICH','CASA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'SOLICITUD DE DOCUMENTACION','Faltan documentos por presentar','2023-03-25'),(90872022,'CICH','MILLONARIO','DANIEL RAMÍREZ CRUZ','NO111223344',1500,3000000,'APROBADO','Cumple Todo','2023-03-26'),(111111111,'CICH','PRUEBA CICH','PRUEBA CICH','NO123456711',200,1500000,'APROBADO','Cumple Todo','2023-03-23'),(2023457894,'CICH','Unifamiliar','Luis Salgado','NE784512',450,500000,'APROBADO','Cumple Todo','2023-03-22');
/*!40000 ALTER TABLE `proyectoscich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectoscimeqh`
--

DROP TABLE IF EXISTS `proyectoscimeqh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectoscimeqh` (
  `num_expediente` int NOT NULL,
  `nombre_col` varchar(7) DEFAULT 'CIMEQH',
  `tipo_proyecto` varchar(100) NOT NULL,
  `propietario` varchar(50) NOT NULL,
  `clave_catastral` varchar(100) NOT NULL,
  `area` float NOT NULL,
  `presupuesto` float NOT NULL,
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`num_expediente`),
  KEY `nombre_col` (`nombre_col`),
  CONSTRAINT `proyectoscimeqh_ibfk_1` FOREIGN KEY (`nombre_col`) REFERENCES `colegio` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectoscimeqh`
--

LOCK TABLES `proyectoscimeqh` WRITE;
/*!40000 ALTER TABLE `proyectoscimeqh` DISABLE KEYS */;
INSERT INTO `proyectoscimeqh` VALUES (12342014,'CIMEQH','GASOLINERA','KUNNO','NO123456781',100,1000000,'APROBADO','Cumple Todo','2023-03-22'),(12342022,'CIMEQH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'SEGUIMIENTO','Faltan Planos','2022-01-02'),(12342023,'CIMEQH','VIVIENDA','JEIDY PINEDA','NO123456788',100,100000,'APROBADO','Cumple Todo','2022-01-03'),(12348596,'CIMEQH','PRUEBA','PRUEBA11','NO123456755',100,50000,'APROBADO','Cumple Todo','2023-03-23'),(12352022,'CIMEQH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01'),(12362022,'CIMEQH','VIVIENDA UNIFAMILIAR','FERNANDO JOSUE CABALLERO DUBON','NO123456787',250,200000,'APROBADO','Cumple Todo','2022-01-03'),(12372022,'CIMEQH','FARMACIA','WALTER FERNANDO CEREN ESPINAL','NO123456786',300,350000,'SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-04'),(12382022,'CIMEQH','GASOLINERA','DOUGLAS MAUDIEL CHAVEZ TORO','NO123456785',289,300000,'APROBADO','Cumple Todo','2022-01-05'),(12392022,'CIMEQH','VIVIENDA EN SERIE','AXEL DAVID CORNEJO ORTEGA','NO123456784',270,471000,'APROBADO','Cumple Todo','2022-01-05'),(12402022,'CIMEQH','FARMACIA','FRANCISCO JAVIER ESQUIVEL GONZALES','NO123456783',150,199000,'SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-06'),(12412022,'CIMEQH','VIVIENDA BIFAMILIAR','DENISE MABEL FIALLOS MARTINEZ','NO123456782',210,230000,'APROBADO','Cumple Todo','2022-01-07'),(12412023,'CIMEQH','NORMAL','HENRY ESTUARDO ORELLANA','NO123456789',100,500000,'DESAPROBADO','No cumple','2022-03-22'),(13582024,'CIMEQH','MILLONARIO','PEDRO RODRÍGUEZ GARCÍA','NO123456789',800,8000000,'APROBADO','Cumple Todo','2023-03-25'),(24672024,'CIMEQH','MILLONARIO','ANA MARÍA SANTOS PÉREZ','NO123456789',1200,12000000,'APROBADO','Cumple Todo','2023-03-25'),(35792025,'CIMEQH','MILLONARIO','JUAN GARCÍA RODRÍGUEZ','NO123456789',900,9000000,'APROBADO','Cumple Todo','2023-03-25'),(45672021,'CIMEQH','PROYECTO DE INGENIERÍA','JOSÉ LÓPEZ GONZÁLEZ','NO123456789',500,500000,'APROBADO','Cumple Todo','2023-03-25'),(45672023,'CIMEQH','MILLONARIO','CARLOS VELASCO RAMÍREZ','NO123456789',1000,10000000,'APROBADO','Cumple Todo','2023-03-25'),(58932023,'CIMEQH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'SEGUIMIENTO','Cambio de Ingeniero','2023-03-25'),(78932023,'CIMEQH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'SEGUIMIENTO','Inspeccion de elevador','2023-03-25'),(78952022,'CIMEQH','PROYECTO DE INGENIERÍA CIVIL','LUIS GARCÍA RAMÍREZ','NO456789012',350,300000,'DESAPROBADO','No cumple con los requisitos','2023-03-25'),(78962022,'CIMEQH','PROYECTO DE ARQUITECTURA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'SOLICITUD DE DOCUMENTACION','F01','2023-03-25'),(78962023,'CIMEQH','MILLONARIO','MARÍA LÓPEZ SÁNCHEZ','NO123456789',1500,15000000,'APROBADO','Cumple Todo','2023-03-25'),(98762019,'CIMEQH','PROYECTO DE REMODELACIÓN','JULIA MARTÍNEZ RAMOS','NO987654321',250,350000,'APROBADO','Cumple Todo','2023-03-25');
/*!40000 ALTER TABLE `proyectoscimeqh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `rol_id` int NOT NULL,
  `rol_nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'ADMINISTRADOR'),(2,'DELEGADO CIMEQH'),(3,'DELEGADO CICH'),(4,'DELEGADO CAH'),(5,'USUARIO');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_col` varchar(6) NOT NULL DEFAULT 'CIMEQH',
  `usu_nombre` varchar(20) NOT NULL,
  `usu_contrasena` varchar(255) NOT NULL,
  `usu_status` enum('ACTIVO','INACTIVO') NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `nombre_col` (`nombre_col`),
  KEY `rol_id` (`rol_id`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`nombre_col`) REFERENCES `colegio` (`nombre`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'CIMEQH','admin','$2y$10$zc6fgyxrX0uSxuRZAG3zeebFiuYOVC5f2HPLa2r7KQ359KBI1Q0n6','ACTIVO',1),(2,'CIMEQH','CIMEQH','$2y$10$whfAXByWks5Img54uIkJ9u75A6o6q1JYShPkyFJUBS.Jucia92dPC','ACTIVO',2),(3,'CICH','CICH','$2y$10$whfAXByWks5Img54uIkJ9u75A6o6q1JYShPkyFJUBS.Jucia92dPC','ACTIVO',3),(4,'CAH','CAH','$2y$10$whfAXByWks5Img54uIkJ9u75A6o6q1JYShPkyFJUBS.Jucia92dPC','ACTIVO',4),(5,'CIMEQH','usuario','$2y$10$whfAXByWks5Img54uIkJ9u75A6o6q1JYShPkyFJUBS.Jucia92dPC','ACTIVO',5);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_sistema'
--
/*!50003 DROP PROCEDURE IF EXISTS `contar_inspeccion_cimeqh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contar_inspeccion_cimeqh`(IN fecha_inicial DATE, IN fecha_final DATE)
BEGIN
    SELECT COUNT(observaciones) 
    FROM proyectoscimeqh 
    WHERE Observaciones LIKE '%inspeccion%' AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_APROBADOS_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_APROBADOS_CAH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,clave_catastral, tipo_proyecto, presupuesto,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscah 
        where (estatus = 'APROBADO' or estatus = "SEGUIMIENTO") and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_APROBADOS_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_APROBADOS_CICH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
       select num_expediente,clave_catastral, tipo_proyecto, presupuesto,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscich
        where (estatus = 'APROBADO' or estatus = "SEGUIMIENTO") and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_APROBADOS_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_APROBADOS_CIMEQH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,clave_catastral, tipo_proyecto, presupuesto,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscimeqh 
        where (estatus = 'APROBADO' or estatus = "SEGUIMIENTO") and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AREA_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AREA_CAH`(
    IN in_fecha_inicial DATE,
    IN in_fecha_final DATE
)
BEGIN
    SELECT 
  COUNT(*) AS `Cantidad De Proyectos`,
  CASE 
    WHEN area < 100 THEN 'Menor a 100 m^2'
    WHEN area >= 100 AND area < 250 THEN '100 - 250 m^2'
    WHEN area >= 250 AND area < 500 THEN '250 - 500 m^2'
    WHEN area >= 500 AND area < 1000 THEN '500 - 1000 m^2'
    ELSE 'Mayor a 1000 m^2'
	END AS `Área De Construcción`
FROM proyectoscah
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY `Área De Construcción`
Order by `Área De Construcción`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AREA_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AREA_CICH`(
    IN in_fecha_inicial DATE,
    IN in_fecha_final DATE
)
BEGIN
    SELECT 
  COUNT(*) AS `Cantidad De Proyectos`,
  CASE 
    WHEN area < 100 THEN 'Menor a 100 m^2'
    WHEN area >= 100 AND area < 250 THEN '100 - 250 m^2'
    WHEN area >= 250 AND area < 500 THEN '250 - 500 m^2'
    WHEN area >= 500 AND area < 1000 THEN '500 - 1000 m^2'
    ELSE 'Mayor a 1000 m^2'
	END AS `Área De Construcción`
FROM proyectoscich
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY `Área De Construcción`
Order by `Área De Construcción`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AREA_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AREA_CIMEQH`(
    IN in_fecha_inicial DATE,
    IN in_fecha_final DATE
)
BEGIN
  SELECT 
  COUNT(*) AS `Cantidad De Proyectos`,
  CASE 
    WHEN area < 100 THEN 'Menor a 100 m^2'
    WHEN area >= 100 AND area < 250 THEN '100 - 250 m^2'
    WHEN area >= 250 AND area < 500 THEN '250 - 500 m^2'
    WHEN area >= 500 AND area < 1000 THEN '500 - 1000 m^2'
    ELSE 'Mayor a 1000 m^2'
	END AS `Área De Construcción`
FROM proyectoscimeqh
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY `Área De Construcción`
Order by `Área De Construcción`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CAMBIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CAMBIOS`(
    IN in_fecha_inicial DATE,
    IN in_fecha_final DATE
)
BEGIN
    select num_expediente, Observaciones, fecha from proyectoscimeqh where Observaciones like '%cambio de%'
    union
    select num_expediente, Observaciones, fecha from proyectoscich where Observaciones like '%cambio de%'
    union
    select num_expediente, Observaciones, fecha from proyectoscah where Observaciones like '%cambio de%';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_COMBO_COLEGIO_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_COMBO_COLEGIO_CAH`()
SELECT 
usuario.id_usuario,
usuario.usu_nombre
FROM 
usuario
WHERE usuario.usu_nombre = 'CAH' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_COMBO_COLEGIO_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_COMBO_COLEGIO_CICH`()
SELECT 
usuario.id_usuario,
usuario.usu_nombre
FROM 
usuario
WHERE usuario.usu_nombre = 'CICH' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_COMBO_COLEGIO_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_COMBO_COLEGIO_CIMEQH`()
SELECT 
usuario.id_usuario,
usuario.usu_nombre
FROM 
usuario
WHERE usuario.usu_nombre = 'CIMEQH' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONSTRUCCION_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONSTRUCCION_CAH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select clave_catastral, area,tipo_proyecto,
        estatus, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscah
        where fecha between in_fecha_inicial and in_fecha_final order by tipo_proyecto;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONSTRUCCION_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONSTRUCCION_CICH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select clave_catastral, area,tipo_proyecto,
        estatus, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscich
        where fecha between in_fecha_inicial and in_fecha_final order by tipo_proyecto;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONSTRUCCION_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONSTRUCCION_CIMEQH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select clave_catastral, area,tipo_proyecto,
        estatus, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscimeqh
        where fecha between in_fecha_inicial and in_fecha_final order by tipo_proyecto;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESAPROBADOS_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESAPROBADOS_CAH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,clave_catastral, tipo_proyecto,
        propietario,observaciones, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscah
        where estatus = 'DESAPROBADO' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESAPROBADOS_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESAPROBADOS_CICH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,clave_catastral, tipo_proyecto,
        propietario,observaciones, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscich
        where estatus = 'DESAPROBADO' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESAPROBADOS_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESAPROBADOS_CIMEQH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,clave_catastral, tipo_proyecto,
        propietario,observaciones, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscimeqh
        where estatus = 'DESAPROBADO' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESCONTINUADOS_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESCONTINUADOS_CIMEQH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT num_expediente, estatus, Observaciones, date_format(fecha, "%d/%m/%Y") as fecha
    FROM proyectoscimeqh
    WHERE Observaciones LIKE '%cambio de%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTACION_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTACION_CAH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,observaciones, tipo_proyecto, presupuesto, area,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscah
        where estatus = 'SOLICITUD DE DOCUMENTACION' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTACION_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTACION_CICH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,observaciones, tipo_proyecto, presupuesto, area,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscich
        where estatus = 'SOLICITUD DE DOCUMENTACION' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTACION_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTACION_CIMEQH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
        select num_expediente,observaciones, tipo_proyecto, presupuesto, area,
        propietario, date_format(fecha, "%d/%m/%Y") as fecha
        from proyectoscimeqh
        where estatus = 'SOLICITUD DE DOCUMENTACION' and fecha between in_fecha_inicial and in_fecha_final;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSPECCION_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSPECCION_CAH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT clave_catastral, propietario, Observaciones, date_format(fecha, "%d/%m/%Y") as fecha
    FROM proyectoscah
    WHERE Observaciones LIKE '%inspeccion%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSPECCION_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSPECCION_CICH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT clave_catastral, propietario, Observaciones, date_format(fecha, "%d/%m/%Y") as fecha
    FROM proyectoscich
    WHERE Observaciones LIKE '%inspeccion%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSPECCION_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSPECCION_CIMEQH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT clave_catastral, propietario, Observaciones, date_format(fecha, "%d/%m/%Y") as fecha
    FROM proyectoscimeqh
    WHERE Observaciones LIKE '%inspeccion%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LISTAR_COMBO_ROL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR_COMBO_ROL`()
SELECT 
rol.rol_id,
rol.rol_nombre
FROM 
rol ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LISTAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR_USUARIO`()
BEGIN
    DECLARE CANTIDAD INT;
    SET CANTIDAD = 0;
    SELECT 
        @CANTIDAD:=@CANTIDAD+1 AS posicion,
        usuario.id_usuario,
        usuario.usu_nombre,
        usuario.rol_id,
        usuario.usu_status,
        rol.rol_nombre
    FROM 
        usuario
        INNER JOIN rol ON usuario.rol_id = rol.rol_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MILLONARIOS_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MILLONARIOS_CAH`(IN fecha_inicial DATE, IN fecha_final DATE)
BEGIN
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha, "%d/%m/%Y") as fecha 
    FROM proyectoscah
    WHERE presupuesto >= 1000000
    AND fecha BETWEEN fecha_inicial AND fecha_final
    ORDER BY presupuesto desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MILLONARIOS_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MILLONARIOS_CICH`(IN fecha_inicial DATE, IN fecha_final DATE)
BEGIN
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha, "%d/%m/%Y") as fecha 
    FROM proyectoscich
    WHERE presupuesto >= 1000000
    AND fecha BETWEEN fecha_inicial AND fecha_final
    ORDER BY presupuesto desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MILLONARIOS_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MILLONARIOS_CIMEQH`(IN fecha_inicial DATE,IN fecha_final DATE)
BEGIN
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha, "%d/%m/%Y") as fecha 
    FROM proyectoscimeqh
    WHERE presupuesto >= 1000000
    AND fecha BETWEEN fecha_inicial AND fecha_final
    ORDER BY presupuesto desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICAR_CONTRA_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAR_CONTRA_USUARIO`(IN IDUSUARIO INT,IN CONTRA VARCHAR(250))
UPDATE usuario SET
usu_contrasena=CONTRA
WHERE id_usuario=IDUSUARIO ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MODIFICAR_ESTATUS_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MODIFICAR_ESTATUS_USUARIO`(IN IDUSUARIO INT, IN ESTATUS VARCHAR(45))
UPDATE usuario SET
	usu_status=ESTATUS
WHERE id_usuario=IDUSUARIO ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOSTRAR_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_CAH`()
begin
		select num_expediente as "Expediente", tipo_proyecto as "Tipo de Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha" from proyectoscah;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOSTRAR_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_CICH`()
begin
		select num_expediente as "Expediente", tipo_proyecto as "Tipo de Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha" from proyectoscich;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MOSTRAR_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_CIMEQH`()
begin
		select num_expediente as "Expediente", tipo_proyecto as "Tipo de Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha" from ProyectosCIMEQH;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PRESUPUESTO_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PRESUPUESTO_CAH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
  SELECT 
  COUNT(*) AS cantidad_proyectos, 
  CASE 
    WHEN presupuesto < 100000 THEN 'Menor a Lps.100,000'
    WHEN presupuesto BETWEEN 100000 AND 250000 THEN 'Lps.100,000 - Lps.250,000'
    WHEN presupuesto BETWEEN 250000 AND 500000 THEN 'Lps.250,000 - Lps.500,000'
    WHEN presupuesto BETWEEN 500000 AND 1000000 THEN 'Lps.500,000 - Lps.1,000,000'
    ELSE 'Mayor a Lps.1,000,000'
  END AS rango_presupuesto
FROM proyectoscah
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY rango_presupuesto
ORDER BY 
  CASE rango_presupuesto 
    WHEN 'Menor a Lps.100,000' THEN 1 
    WHEN 'Lps.100,000 - Lps.250,000' THEN 2 
    WHEN 'Lps.250,000 - Lps.500,000' THEN 3 
    WHEN 'Lps.500,000 - Lps.1,000,000' THEN 4 
    ELSE 5 
  END;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PRESUPUESTO_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PRESUPUESTO_CICH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
  SELECT 
  COUNT(*) AS cantidad_proyectos, 
  CASE 
    WHEN presupuesto < 100000 THEN 'Menor a Lps.100,000'
    WHEN presupuesto BETWEEN 100000 AND 250000 THEN 'Lps.100,000 - Lps.250,000'
    WHEN presupuesto BETWEEN 250000 AND 500000 THEN 'Lps.250,000 - Lps.500,000'
    WHEN presupuesto BETWEEN 500000 AND 1000000 THEN 'Lps.500,000 - Lps.1,000,000'
    ELSE 'Mayor a Lps.1,000,000'
  END AS rango_presupuesto
FROM proyectoscich
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY rango_presupuesto
ORDER BY 
  CASE rango_presupuesto 
    WHEN 'Menor a Lps.100,000' THEN 1 
    WHEN 'Lps.100,000 - Lps.250,000' THEN 2 
    WHEN 'Lps.250,000 - Lps.500,000' THEN 3 
    WHEN 'Lps.500,000 - Lps.1,000,000' THEN 4 
    ELSE 5 
  END;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PRESUPUESTO_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PRESUPUESTO_CIMEQH`(
    in_fecha_inicial date, 
    in_fecha_final date
)
begin
SELECT 
  COUNT(*) AS cantidad_proyectos, 
  CASE 
    WHEN presupuesto < 100000 THEN 'Menor a Lps.100,000'
    WHEN presupuesto BETWEEN 100000 AND 250000 THEN 'Lps.100,000 - Lps.250,000'
    WHEN presupuesto BETWEEN 250000 AND 500000 THEN 'Lps.250,000 - Lps.500,000'
    WHEN presupuesto BETWEEN 500000 AND 1000000 THEN 'Lps.500,000 - Lps.1,000,000'
    ELSE 'Mayor a Lps.1,000,000'
  END AS rango_presupuesto
FROM proyectoscimeqh
WHERE fecha BETWEEN in_fecha_inicial AND in_fecha_final
GROUP BY rango_presupuesto
ORDER BY 
  CASE rango_presupuesto 
    WHEN 'Menor a Lps.100,000' THEN 1 
    WHEN 'Lps.100,000 - Lps.250,000' THEN 2 
    WHEN 'Lps.250,000 - Lps.500,000' THEN 3 
    WHEN 'Lps.500,000 - Lps.1,000,000' THEN 4 
    ELSE 5 
  END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REGISTRAR_APROBADO_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CAH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscah(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,ESTATUS,OBSERVACIONES,FECHA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REGISTRAR_APROBADO_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CICH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscich(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,ESTATUS,OBSERVACIONES,FECHA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REGISTRAR_APROBADO_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CIMEQH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscimeqh(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,ESTATUS,OBSERVACIONES,FECHA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REGISTRAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_USUARIO`(IN USU VARCHAR(45),IN CONTRA VARCHAR(250),IN ROL INT)
BEGIN 
DECLARE CANTIDAD INT;
SET @CANTIDAD:=(select count(*) from usuario where usu_nombre=BINARY USU);
IF @CANTIDAD = 0 THEN
	INSERT INTO usuario(usu_nombre,usu_contrasena,rol_id,usu_status) VALUES (USU,CONTRA,ROL,'1');
    SELECT 1;
ELSE 
	SELECT 2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VERIFICAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VERIFICAR_USUARIO`(IN USUARIO VARCHAR(45))
BEGIN
SELECT 
usuario.id_usuario,
usuario.usu_nombre,
usuario.usu_contrasena,
usuario.usu_status,
rol.rol_nombre
FROM usuario
INNER JOIN rol ON usuario.rol_id = rol.rol_id
WHERE usu_nombre = BINARY USUARIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05  9:00:01
