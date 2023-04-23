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
  `colegiado` varchar(45) NOT NULL DEFAULT 'Henry Orellana',
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_mod` date DEFAULT NULL,
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
INSERT INTO `proyectoscah` VALUES (282023,'CAH','Edificio ','KARLA MORAN','NO12458795',100,14000000,'Arq. Sali Mendez ','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(1253869,'CAH','CASA','RONI CASTRO ','NO123456458',100,600000,'Ing. Carlos Gomez','DESAPROBADO','No cumple','2023-04-13','2023-04-23'),(7002023,'CAH','Comercial','María García','NO584790',500,1000000,'Ing. Ana González','SEGUIMIENTO','En revisión de planos','2023-04-16','2023-04-23'),(7012023,'CAH','Vivienda','Jorge Hernández','NO584791',300,800000,'Arq. Carlos Gómez','SOLICITUD DE DOCUMENTACION','Falta presentar planos eléctricos','2023-04-17','2023-04-23'),(7022023,'CAH','Industrial','Luisa Martínez','NO584792',1000,3000000,'Ing. Roberto Sánchez','DESAPROBADO','No cumple con normativas','2023-04-19','2023-04-23'),(7032023,'CAH','Comercial','Pedro Flores','NO584793',800,2000000,'Arq. David Pérez','APROBADO','Inicio de obra en 1 mes','2023-04-20','2023-04-23'),(7042023,'CAH','Vivienda','Lucía Rivera','NO584794',400,1200000,'Ing. Juan González','SEGUIMIENTO','Faltan detalles de diseño','2023-04-21','2023-04-23'),(7052023,'CAH','Vivienda','Carlos Jiménez','NO584795',250,600000,'Arq. Ana López','SOLICITUD DE DOCUMENTACION','Falta presentar documentos','2023-04-22','2023-04-23'),(7062023,'CAH','Industrial','Miguel García','NO584796',1500,5000000,'Arq. José Torres','DESAPROBADO','Falta de seguridad en la estructura','2023-04-23','2023-04-23'),(7072023,'CAH','Vivienda','Laura Rodríguez','NO584797',350,900000,'Arq. Juan Pérez','APROBADO','Listo para comenzar','2023-04-20','2023-04-23'),(7082023,'CAH','Comercial','Sofía González','NO584798',700,1500000,'Ing. Pedro Sánchez','SEGUIMIENTO','En proceso de revisión','2023-04-20','2023-04-23'),(7092023,'CAH','Vivienda','Alejandro Pérez','NO584799',500,1400000,'Arq. Carlos Hernández','SOLICITUD DE DOCUMENTACION','Falta memoria de cálculo','2023-04-23','2023-04-23'),(7102023,'CAH','Industrial','Ana López','NO584800',1200,4000000,'Ing. Roberto Torres','DESAPROBADO','No cumple con las normas ambientales','2023-04-20','2023-04-23'),(7112023,'CAH','Vivienda','Javier García','NO584801',450,1100000,'Arq. David González','APROBADO','Comenzará la obra en 2 semanas','2023-04-21','2023-04-23'),(7122023,'CAH','Comercial','María Hernández','NO584802',600,1300000,'Ing. Juan Torres','SEGUIMIENTO','Falta de presentar detalles de instalaciones','2023-04-21','2023-04-23'),(7132023,'CAH','Vivienda','Jorge Pérez','NO584803',400,1000000,'Arq. Ana García','SOLICITUD DE DOCUMENTACION','Faltan permisos municipales','2023-04-22','2023-04-23'),(7142023,'CAH','Industrial','Lucas Torres','NO584804',2000,6000000,'Ing. José Sánchez','DESAPROBADO','Falta presentar documentos','2023-04-17','2023-04-23'),(7152023,'CAH','Comercial','Carolina Rivera','NO584805',900,2500000,'Arq. Juan Torres','APROBADO','Listo para comenzar la obra','2023-04-22','2023-04-23'),(7162023,'CAH','Vivienda','Pedro García','NO584806',300,800000,'Ing. Pedro Sánchez','SEGUIMIENTO','En proceso de revisión','2023-04-23','2023-04-23'),(7172023,'CAH','Comercial','Lucía González','NO584807',1200,3000000,'Arq. Carlos Hernández','SOLICITUD DE DOCUMENTACION','Falta presentar planos eléctricos','2023-04-14','2023-04-23'),(10252023,'CAH','PUENTE 11','PUENTES DE HONDURAS','SO1478523',150,650000000,'Ing. Edgard Arias','APROBADO','Documentos Completos','2023-04-23','2023-04-23'),(12022023,'CAH','PUENTE 10','FERNANDO BARAHONA ','SO1458725',100,50000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(12342022,'CAH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'Henry Orellana','SEGUIMIENTO','Faltan Planos','2022-01-02','2023-04-21'),(12352022,'CAH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'Henry Orellana','SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01','2023-04-21'),(12362022,'CAH','VIVIENDA UNIFAMILIAR','FERNANDO JOSUE CABALLERO DUBON','NO123456787',250,200000,'Henry Orellana','APROBADO','Cumple Todo','2022-01-03','2023-04-21'),(12372022,'CAH','FARMACIA','WALTER FERNANDO CEREN ESPINAL','NO123456786',300,350000,'Henry Orellana','SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-04','2023-04-21'),(12382022,'CAH','GASOLINERA','DOUGLAS MAUDIEL CHAVEZ TORO','NO123456785',289,300000,'Henry Orellana','APROBADO','Cumple Todo','2022-01-05','2023-04-21'),(12458697,'CAH','CASA DE 2 PLANTAS','DOUGLAS PALMA ','NO123456759',500,10000000,'Ing. Henry Orellana','APROBADO','Cumple Todo','2023-04-13','2023-04-22'),(20230012,'CAH','Casa de 3 plantas ','Tiburcio Carias ','NO12354896',100,1000000,'Arq. Tulio Funez ','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(20230015,'CAH','Edificio ','Juan Jorge ','NO1258649',100,1500000,'Arq. Sali','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(20230023,'CAH','Edificio ','Pablo Peraza','NO12345678',100,5000000,'Arq. German Garmendia','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(20230032,'CAH','Edificio ','Brayan Aguirre ','NE12356248',100,100000,'Arq. Tulio Lopez','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(20230033,'CAH','Edificio ','Franklin Reyes ','NO1253458',100,50000,'Arq. Tulio Bonilla ','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(20231258,'CAH','Edificio ','Gloria Milla','NO12548795',100,2500000,'Arq. Tulio Funez ','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(21342022,'CAH','VIVIENDA','PRUEBA CAH','NO123456733',100,100,'Henry Orellana','APROBADO','Cumple Todo','2023-03-22','2023-04-21'),(22222222,'CAH','VIVIENDA DE HENRY','PRUEBA CAHH','NO123456723',100,205000,'Henry Orellana','APROBADO','Cumple Todo','2023-03-23','2023-04-21'),(32152020,'CAH','PROYECTO DE ARQUITECTURA','CARLOS HERNÁNDEZ GARCÍA','NO345678912',800,750000,'Henry Orellana','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(58932023,'CAH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'Arq. Henry Orellana','SEGUIMIENTO','Cambio de Ingeniero','2023-04-23','2023-04-23'),(65472021,'CAH','PROYECTO DE DISEÑO GRÁFICO','MARÍA PÉREZ FLORES','NO891234567',150,250000,'Henry Orellana','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(78922022,'CAH','CONSTRUCCIÓN','JUAN GARCÍA RODRÍGUEZ','NO987654321',1000,1500000,'Henry Orellana','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(78932022,'CAH','DISEÑO DE INTERIORES','ANA MONTES FERNÁNDEZ','NO876543210',200,250000,'Henry Orellana','APROBADO','Cumple Todo','2023-04-09','2023-04-22'),(78932023,'CAH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'Henry Orellana','SEGUIMIENTO','Inspeccion de elevador','2023-04-23','2023-04-23'),(78942022,'CAH','ARQUITECTURA','CARLOS HERNÁNDEZ SÁNCHEZ','NO765432109',800,1000000,'Henry Orellana','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(78952022,'CAH','PUENTE','LUIS GARCÍA RAMÍREZ','NO456789012',350,300000,'Henry Orellana','DESAPROBADO','No cumple con los requisitos','2023-03-25','2023-04-21'),(78962022,'CAH','CASA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'Henry Orellana','SOLICITUD DE DOCUMENTACION','Faltan documentos por presentar','2023-03-25','2023-04-21');
/*!40000 ALTER TABLE `proyectoscah` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Insertar_fecha_mod_cah` BEFORE INSERT ON `proyectoscah` FOR EACH ROW BEGIN
    SET NEW.fecha_mod = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Fecha_cah` BEFORE INSERT ON `proyectoscah` FOR EACH ROW BEGIN
    IF (DATEDIFF(NOW(), NEW.fecha) > 14 OR DATEDIFF(NOW(), NEW.fecha) < -14) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El valor del campo fecha no puede ser mayor a 14 días o menor de 14 días';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_UpdateFechaMod_cah` BEFORE UPDATE ON `proyectoscah` FOR EACH ROW BEGIN
    IF NEW.nombre_col <> OLD.nombre_col OR NEW.tipo_proyecto <> OLD.tipo_proyecto OR NEW.propietario <> OLD.propietario OR NEW.clave_catastral <> OLD.clave_catastral OR NEW.area <> OLD.area OR NEW.presupuesto <> OLD.presupuesto OR NEW.colegiado <> OLD.colegiado OR NEW.estatus <> OLD.estatus OR NEW.Observaciones <> OLD.Observaciones
    OR NEW.fecha <> OLD.fecha
    THEN
        SET NEW.fecha_mod = NOW();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `colegiado` varchar(45) NOT NULL DEFAULT 'Edgard Ordoñez',
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_mod` date DEFAULT NULL,
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
INSERT INTO `proyectoscich` VALUES (12023,'CICH','CASA ','ANA CRISTINA ','NO11025035',150,15000000,'Ing. Roberto Juarez ','SEGUIMIENTO','Cambio de Ingeniero ','2023-04-23','2023-04-23'),(22023,'CICH','PUENTE','INC MADERAS','NO12523658',100,10000000,'Ing. Robers','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(102023,'CICH','PUENTE VIAL ','MINICIPALIDAD ','NO12345612',100,20000000,'Ing. Carlos Gomez','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(112023,'CICH','PUENTE VIAL 2','MINICIPALIDAD SB','NM123456714',80,1500000000,'Ing. Carlos Gomez','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(122023,'CICH','CASA FAMILIAR','KARLA BERENICE','N12345671',200,150000000,'Ing. Carlos Gomez','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(742023,'CICH','CASA ','JULIA BANEGAS ','NO123456742',100,1500000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(782023,'CICH','CASA FAMILAR ','JULIA BANEGAS ','NO123456717',100,150000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(2252023,'CICH','CASA ','JULIO PEREZ ','SO12587922',100,200000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(5002023,'CICH','Vivienda','Juan Pérez','NO584789',200,500000,'Ing. Pedro Rodríguez','APROBADO','Cumple Todo','2023-04-14','2023-04-23'),(5012023,'CICH','Comercial','María González','NO732015',500,1200000,'Ing. Ana Ramírez','DESAPROBADO','Incumplimiento de normas','2023-04-20','2023-04-23'),(5022023,'CICH','Industrial','Pedro García','NO945631',1000,8000000,'Ing. Carlos Hernández','SEGUIMIENTO','Corrección de planos','2023-04-22','2023-04-23'),(5032023,'CICH','Vivienda','Luisa Martínez','NO236984',150,300000,'Ing. Roberto Sánchez','SOLICITUD DE DOCUMENTACION','Falta de permisos','2023-04-20','2023-04-23'),(5042023,'CICH','Comercial','Jorge Flores','NO367894',800,2500000,'Ing. María Torres','APROBADO','Aprobación de proyecto','2023-04-18','2023-04-23'),(5052023,'CICH','Industrial','José Rodríguez','NO547812',2000,15000000,'Ing. Ana López','DESAPROBADO','Deficiencias en el proyecto','2023-04-19','2023-04-23'),(5062023,'CICH','Vivienda','Ana García','NO690874',250,600000,'Ing. Luis Ramírez','SEGUIMIENTO','Corrección de permisos','2023-04-20','2023-04-23'),(5072023,'CICH','Comercial','Roberto Hernández','NO874692',600,1800000,'Ing. Juan Pérez','APROBADO','Cumplimiento de normas','2023-04-18','2023-04-23'),(5082023,'CICH','Vivienda','María Rodríguez','NO965874',180,450000,'Ing. Pedro García','SOLICITUD DE DOCUMENTACION','Falta de certificados','2023-04-15','2023-04-23'),(5092023,'CICH','Industrial','Carlos Flores','NO147963',3000,25000000,'Ing. Ana Ramírez','APROBADO','Aprobación de proyecto','2023-04-20','2023-04-23'),(5102023,'CICH','Comercial','Juan Hernández','NO256874',1000,3000000,'Ing. Roberto Sánchez','DESAPROBADO','Impacto ambiental','2023-04-18','2023-04-23'),(12032023,'CICH','MILLONARIO','JUAN CARLOS GÓMEZ ROJAS','NO444555666',800,1500000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-27','2023-04-22'),(12302023,'CICH','CASA N1','JUAN ORLNANDO HERNANDEZ ','NO12345611',60,1000000,'Ing. Henry Orellana','APROBADO','No cumple ','2023-04-23','2023-04-23'),(12312023,'CICH','CASA N2 ','JUAN ORLNANDO HERNANDEZ ','SO1478523',66,50000000,'Ing. Marlon Rivera ','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(12342022,'CICH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'Edgard Ordoñez','SEGUIMIENTO','Faltan Planos','2022-01-02','2023-04-21'),(12342023,'CICH','CASA N3','JUAN ORLNANDO HERNANDEZ ','NO1256348',82,15480000,'Ing. Carlos Gomez','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(12352022,'CICH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'Edgard Ordoñez','SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01','2023-04-21'),(12392022,'CICH','VIVIENDA EN SERIE','AXEL DAVID CORNEJO ORTEGA','NO123456784',270,471000,'Edgard Ordoñez','APROBADO','Cumple Todo','2022-01-05','2023-04-21'),(12402022,'CICH','FARMACIA','FRANCISCO ESQUIVEL ','NO123456783',150,199000,'Edgard Ordoñez','SOLICITUD DE DOCUMENTACION','Faltan Documentos','2023-04-23','2023-04-23'),(12412022,'CICH','VIVIENDA BIFAMILIAR','DENISE MABEL FIALLOS MARTINEZ','NO123456782',210,230000,'Edgard Ordoñez','APROBADO','Cumple Todo','2022-01-07','2023-04-21'),(12458236,'CICH','CONDOMINIO','FATIMA CARRANZA','NO123456752',120,3000000,'Ing. Marlon Rivera ','SEGUIMIENTO','Inspección de energía eléctrica','2023-04-13','2023-04-22'),(12485369,'CICH','GASOLINERA','MARIA RAMOS MILLA ','NO1234564752',100,300000,'Ing. Rodrigo Perez ','APROBADO','Cumple Todo','2023-04-13','2023-04-21'),(14582536,'CICH','FARMACIA','MARIO PEREZ ','NO123456710',200,500000,'Ing. Douglas Palma','APROBADO','Cumple Todo','2023-04-13','2023-04-21'),(15252022,'CICH','VIVIENDA','PRUEBA','NO123456754',100,100,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-22','2023-04-21'),(22052023,'CICH','MILLONARIO','MARTA GARCÍA JIMÉNEZ','NO777888999',1200,2500000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-28','2023-04-21'),(31062023,'CICH','MILLONARIO','ROBERTO PEREZ SÁNCHEZ','NO222333444',900,1800000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-29','2023-04-21'),(32152020,'CICH','PROYECTO DE ARQUITECTURA','CARLOS HERNÁNDEZ GARCÍA','NO345678912',800,750000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(58932023,'CICH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'Edgard Ordoñez','SEGUIMIENTO','Cambio de Ingeniero','2023-04-23','2023-04-23'),(65472021,'CICH','PROYECTO DE DISEÑO GRÁFICO','MARÍA PÉREZ FLORES','NO891234567',150,250000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(78902022,'CICH','MILLONARIO','ANA LÓPEZ HERNÁNDEZ','NO987654321',1000,2000000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(78932023,'CICH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'Edgard Ordoñez','SEGUIMIENTO','Inspeccion de elevador','2023-03-25','2023-04-21'),(78952022,'CICH','RESTAURANTE','LUIS GARCÍA RAMÍREZ','NO456789012',350,300000,'Edgard Ordoñez','DESAPROBADO','No cumple con los requisitos','2023-03-25','2023-04-21'),(78962022,'CICH','CASA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'Edgard Ordoñez','SOLICITUD DE DOCUMENTACION','Faltan documentos por presentar','2023-04-23','2023-04-23'),(90872022,'CICH','MILLONARIO','DANIEL RAMÍREZ CRUZ','NO111223344',1500,3000000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-04-09','2023-04-22'),(111111111,'CICH','PRUEBA CICH','PRUEBA CICH','NO123456711',200,1500000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-23','2023-04-21'),(2023457894,'CICH','Unifamiliar','Luis Salgado','NE784512',450,500000,'Edgard Ordoñez','APROBADO','Cumple Todo','2023-03-22','2023-04-21');
/*!40000 ALTER TABLE `proyectoscich` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Insertar_fecha_mod_cich` BEFORE INSERT ON `proyectoscich` FOR EACH ROW BEGIN
    SET NEW.fecha_mod = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Fecha_cich` BEFORE INSERT ON `proyectoscich` FOR EACH ROW BEGIN
    IF (DATEDIFF(NOW(), NEW.fecha) > 14 OR DATEDIFF(NOW(), NEW.fecha) < -14) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El valor del campo fecha no puede ser mayor a 14 días o menor de 14 días';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_UpdateFechaMod_cich` BEFORE UPDATE ON `proyectoscich` FOR EACH ROW BEGIN
    IF NEW.nombre_col <> OLD.nombre_col OR NEW.tipo_proyecto <> OLD.tipo_proyecto OR NEW.propietario <> OLD.propietario OR NEW.clave_catastral <> OLD.clave_catastral OR NEW.area <> OLD.area OR NEW.presupuesto <> OLD.presupuesto OR NEW.colegiado <> OLD.colegiado OR NEW.estatus <> OLD.estatus OR NEW.Observaciones <> OLD.Observaciones 
    OR NEW.fecha <> OLD.fecha
    THEN
        SET NEW.fecha_mod = NOW();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `colegiado` varchar(45) DEFAULT 'Carlos Gomez',
  `estatus` enum('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION') NOT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_mod` date DEFAULT NULL,
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
INSERT INTO `proyectoscimeqh` VALUES (52023,'CIMEQH','Puente ','Industrias Osborn','NO12535487',100,6000000,'Ing. Karen Reyes ','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(62023,'CIMEQH','Edificio ','INC MADERAS COMPANI','NE12356214',200,50000000,'Ing. Karen Reyes ','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(122023,'CIMEQH','VIVIENDA','Henry Estuardo Reyes ','NO125236485',100,2000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(242023,'CIMEQH','GASOLINERA PUMA ','Henry Estuardo Reyes ','NO123456747',80,150000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(392023,'CIMEQH','GASOLINERA PUMA 2','Henry Estuardo Reyes ','NO123456742',150,220000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(412023,'CIMEQH','GASOLINERA UNO ','Henry Estuardo Reyes ','NO123456725',100,15000000,'Ing. Marlon Rivera ','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(422023,'CIMEQH','GASOLINERA TEXACO','Henry Estuardo Reyes ','NO123456714',100,15200000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(432023,'CIMEQH','GASOLINERA PUMA 3','Henry Estuardo Reyes ','NE12356252',100,25000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(452023,'CIMEQH','GASOLINERA','Tulio Reyes ','NO14525862',100,15000000,'Ing. Luis Leiva ','APROBADO','Cumple Todo','2023-04-22','2023-04-22'),(502023,'CIMEQH','Casa de 3 plantas ','Douglas Chavez Toro','NO12345610',60,15000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(512023,'CIMEQH','Casa de 2 plantas ','Edgard Ordoñez Arias','NO123456752',150,200000000,'Ing. Henry Orellana','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(632023,'CIMEQH','CASA ','JULIAN ALVAREZ','NO1258974',200,650000000,'Ing. Edgard Arias','DESAPROBADO','Faltan Documentos','2023-04-23','2023-04-23'),(982023,'CIMEQH','PUENTE ','INDUSTRIAS OSS','SO1478514',200,5000000000,'Ing. Klemus Vladimir','SEGUIMIENTO','Falta Detalles de Construcción','2023-04-23','2023-04-23'),(1025849,'CIMEQH','CASA ','MARIO PONITO','NO123456747',150,1000000,'Ing. Douglas Palma','DESAPROBADO','F01','2023-01-02','2023-01-10'),(1112023,'CIMEQH','PUENTE 21','KLOTER','NO12345640',100,1520000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(1252023,'CIMEQH','Edificio ','BAC','SO12345641',100,150000000,'Ing. Edgard Arias','APROBADO','Cumple Todo','2023-04-23','2023-04-23'),(1262023,'CIMEQH','CASA ','BAC ','NO12345649',150,15600000,'Ing. Edgard Arias','DESAPROBADO','No cumple ','2023-04-23','2023-04-23'),(2002023,'CIMEQH','Vivienda','Juan Pérez','NO584789',200,500000,'Ing. Pedro Rodríguez','APROBADO','Inicio de la obra','2023-04-14','2023-04-23'),(2012023,'CIMEQH','Comercial','María González','NO732015',500,1200000,'Arq. Ana Ramírez','SOLICITUD DE DOCUMENTACION','Falta de documentación','2023-04-15','2023-04-23'),(2022023,'CIMEQH','Industrial','Pedro García','NO945631',1000,8000000,'Ing. Carlos Hernández','DESAPROBADO','No cumple con los requisitos','2023-04-15','2023-04-23'),(2032023,'CIMEQH','Vivienda','Luisa Martínez','NO236984',150,300000,'Arq. Roberto Sánchez','SEGUIMIENTO','Falta de pago de derechos','2023-04-18','2023-04-23'),(2042023,'CIMEQH','Comercial','Jorge Flores','NO367894',800,2500000,'Arq. María Torres','SEGUIMIENTO','Revisión de planos','2023-04-18','2023-04-23'),(2052023,'CIMEQH','Vivienda','Ana García','NO690874',250,600000,'Arq. Luis Ramírez','SEGUIMIENTO','Falta de documentación','2023-04-19','2023-04-23'),(2062023,'CIMEQH','Comercial','Roberto Hernández','NO874692',600,1800000,'Arq. Juan Pérez','DESAPROBADO','Impacto ambiental','2023-04-18','2023-04-23'),(2072023,'CIMEQH','Vivienda','María Rodríguez','NO965874',180,450000,'Arq. Pedro García','SEGUIMIENTO','Revisión de permisos','2023-04-20','2023-04-23'),(2082023,'CIMEQH','Industrial','Carlos Flores','NO147963',3000,25000000,'Ing. Ana Ramírez','APROBADO','Firma de contrato','2023-04-22','2023-04-23'),(2092023,'CIMEQH','Industrial','José Rodríguez','NO547812',2000,15000000,'Ing. Ana López','APROBADO','Solicitud de permisos','2023-04-18','2023-04-23'),(12042031,'CIMEQH','CASA DE 2 PLANTAS','ADOLFO ORDOÑEZ','NO123456782',1000,5000000,'Ing. Raul Reyes ','APROBADO','Cumple Todo','2023-04-29','2023-04-23'),(12342014,'CIMEQH','Condominio','KUNNO','NO123456781',100,1000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-22','2023-03-22'),(12342022,'CIMEQH','VIVIENDA UNIFAMILIAR','JOSUE MORONI BENAVENTE NUNEZ','NO123456789',150,168000,'Carlos Gomez','SOLICITUD DE DOCUMENTACION','Faltan Planos','2022-01-02','2023-01-12'),(12342023,'CIMEQH','VIVIENDA','JEIDY PINEDA','NO123456788',100,100000,'Carlos Gomez','DESAPROBADO','Cumple Todo','2022-01-03','2023-01-21'),(12348596,'CIMEQH','PRUEBA','PRUEBA11','NO123456755',100,50000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-23','2023-03-24'),(12352022,'CIMEQH','VIVIENDA BIFAMILIAR','KEVIN ALBERTO ALVA CASTRO','NO123456788',200,146000,'Carlos Gomez','SEGUIMIENTO','Falta Hoja De Afiliacion','2022-01-01','2023-01-21'),(12362022,'CIMEQH','VIVIENDA UNIFAMILIAR','FERNANDO JOSUE CABALLERO DUBON','NO123456787',250,200000,'Carlos Gomez','APROBADO','Cumple Todo','2022-01-03','2023-01-05'),(12372022,'CIMEQH','FARMACIA','WALTER FERNANDO CEREN ESPINAL','NO123456786',300,350000,'Carlos Gomez','SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-04','2023-01-21'),(12382022,'CIMEQH','GASOLINERA','DOUGLAS MAUDIEL CHAVEZ TORO','NO123456785',289,300000,'Carlos Gomez','APROBADO','Cumple Todo','2022-01-05','2023-01-21'),(12392022,'CIMEQH','VIVIENDA EN SERIE','AXEL DAVID CORNEJO ORTEGA','NO123456784',270,471000,'Carlos Gomez','APROBADO','Cumple Todo','2022-01-05','2023-01-21'),(12402022,'CIMEQH','FARMACIA','FRANCISCO JAVIER ESQUIVEL GONZALES','NO123456783',150,199000,'Carlos Gomez','SOLICITUD DE DOCUMENTACION','Faltan Documentos','2022-01-06','2023-01-28'),(12412022,'CIMEQH','VIVIENDA BIFAMILIAR','DENISE MABEL FIALLOS MARTINEZ','NO123456782',210,230000,'Carlos Gomez','APROBADO','Cumple Todo','2022-01-07','2023-01-21'),(12412023,'CIMEQH','NORMAL','HENRY ESTUARDO ORELLANA','NO123456789',100,500000,'Carlos Gomez','DESAPROBADO','No cumple','2022-03-22','2023-04-21'),(13582024,'CIMEQH','MILLONARIO','PEDRO RODRÍGUEZ GARCÍA','NO123456789',800,8000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-03-30'),(14526893,'CIMEQH','CASA BIFAMILIAR','ROLANDO BUESO AGUILAR','NO123456742',1000,5000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-04-13','2023-04-22'),(21538684,'CIMEQH','VIVIENDA','MILTON TURCIOS','NO123456723',100,1000000,'Ing. Marlon Rivera ','SEGUIMIENTO','Cambio de Ingeniero ','2023-03-07','2023-04-21'),(24672024,'CIMEQH','MILLONARIO','ANA MARÍA SANTOS PÉREZ','NO123456789',1200,12000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(35792025,'CIMEQH','MILLONARIO','JUAN GARCÍA RODRÍGUEZ','NO123456789',900,9000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(45672021,'CIMEQH','PROYECTO DE INGENIERÍA','JOSÉ LÓPEZ GONZÁLEZ','NO123456789',500,500000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(45672023,'CIMEQH','MILLONARIO','CARLOS VELASCO RAMÍREZ','NO123456789',200,10000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-23'),(58932023,'CIMEQH','VIVIENDA','NIXON ANTONIO CHAVEZ','NO123456789',700,900000,'Carlos Gomez','SEGUIMIENTO','Cambio de Ingeniero','2023-04-09','2023-04-22'),(78932023,'CIMEQH','CONDOMINIO','MARTHA GONZÁLEZ RAMÍREZ','NO123456789',700,900000,'Carlos Gomez','SEGUIMIENTO','Inspeccion de elevador','2023-04-10','2023-04-21'),(78952022,'CIMEQH','PROYECTO DE INGENIERÍA CIVIL','LUIS GARCÍA RAMÍREZ','NO456789012',370,300000,'Carlos Gomez','DESAPROBADO','No cumple con los requisitos','2023-03-25','2023-04-22'),(78962022,'CIMEQH','PROYECTO DE ARQUITECTURA','ANA MARTÍNEZ GÓMEZ','NO123456789',200,200000,'Carlos Gomez','SOLICITUD DE DOCUMENTACION','F01','2023-03-25','2023-04-21'),(78962023,'CIMEQH','MILLONARIO','MARÍA LÓPEZ SÁNCHEZ','NO123456789',1500,15000000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-21'),(98762019,'CIMEQH','PROYECTO DE REMODELACIÓN','JULIA MARTÍNEZ RAMOS','NO987654321',250,350000,'Carlos Gomez','APROBADO','Cumple Todo','2023-03-25','2023-04-21');
/*!40000 ALTER TABLE `proyectoscimeqh` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Insertar_fecha_mod_cimeqh` BEFORE INSERT ON `proyectoscimeqh` FOR EACH ROW BEGIN
    SET NEW.fecha_mod = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Fecha` BEFORE INSERT ON `proyectoscimeqh` FOR EACH ROW BEGIN
    IF (DATEDIFF(NOW(), NEW.fecha) > 14 OR DATEDIFF(NOW(), NEW.fecha) < -14) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El valor del campo fecha no puede ser mayor a 14 días o menor de 14 días';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_UpdateFechaMod_cimeqh` BEFORE UPDATE ON `proyectoscimeqh` FOR EACH ROW BEGIN
    IF NEW.nombre_col <> OLD.nombre_col OR NEW.tipo_proyecto <> OLD.tipo_proyecto OR NEW.propietario <> OLD.propietario OR NEW.clave_catastral <> OLD.clave_catastral OR NEW.area <> OLD.area OR NEW.presupuesto <> OLD.presupuesto OR NEW.colegiado <> OLD.colegiado OR NEW.estatus <> OLD.estatus OR NEW.Observaciones <> OLD.Observaciones
    OR NEW.fecha <> OLD.fecha
    THEN
        SET NEW.fecha_mod = NOW();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACTUALIZAR_CAH`(
    IN n_num_expediente INT,
    IN n_tipo_proyecto VARCHAR(100),
    IN n_propietario VARCHAR(50),
    IN n_clave_catastral VARCHAR(100),
    IN n_area FLOAT,
    IN n_presupuesto FLOAT,
    IN n_colegiado VARCHAR(45),
    IN n_estatus ENUM('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION'),
    IN n_observaciones VARCHAR(200),
    IN n_fecha DATE
)
BEGIN
    UPDATE proyectoscah SET
        tipo_proyecto = n_tipo_proyecto,
        propietario = n_propietario,
        clave_catastral = n_clave_catastral,
        area = n_area,
        presupuesto = n_presupuesto,
        colegiado = n_colegiado,
        estatus = n_estatus,
        Observaciones = n_observaciones,
        fecha = n_fecha
    WHERE num_expediente = n_num_expediente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACTUALIZAR_CICH`(
    IN n_num_expediente INT,
    IN n_tipo_proyecto VARCHAR(100),
    IN n_propietario VARCHAR(50),
    IN n_clave_catastral VARCHAR(100),
    IN n_area FLOAT,
    IN n_presupuesto FLOAT,
    IN n_colegiado VARCHAR(45),
    IN n_estatus ENUM('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION'),
    IN n_observaciones VARCHAR(200),
    IN n_fecha DATE
)
BEGIN
    UPDATE proyectoscich SET
        tipo_proyecto = n_tipo_proyecto,
        propietario = n_propietario,
        clave_catastral = n_clave_catastral,
        area = n_area,
        presupuesto = n_presupuesto,
        colegiado = n_colegiado,
        estatus = n_estatus,
        Observaciones = n_observaciones,
        fecha = n_fecha
    WHERE num_expediente = n_num_expediente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_CIMEQH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ACTUALIZAR_CIMEQH`(
    IN n_num_expediente INT,
    IN n_tipo_proyecto VARCHAR(100),
    IN n_propietario VARCHAR(50),
    IN n_clave_catastral VARCHAR(100),
    IN n_area FLOAT,
    IN n_presupuesto FLOAT,
    IN n_colegiado VARCHAR(45),
    IN n_estatus ENUM('APROBADO','DESAPROBADO','SEGUIMIENTO','SOLICITUD DE DOCUMENTACION'),
    IN n_observaciones VARCHAR(200),
    IN n_fecha DATE
)
BEGIN
    UPDATE proyectoscimeqh SET
        tipo_proyecto = n_tipo_proyecto,
        propietario = n_propietario,
        clave_catastral = n_clave_catastral,
        area = n_area,
        presupuesto = n_presupuesto,
        colegiado = n_colegiado,
        estatus = n_estatus,
        Observaciones = n_observaciones,
        fecha = n_fecha
    WHERE num_expediente = n_num_expediente;
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
        estatus, date_format(fecha_mod, "%d/%m/%Y") as fecha
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
        estatus, date_format(fecha_mod, "%d/%m/%Y") as fecha
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
        estatus, date_format(fecha_mod, "%d/%m/%Y") as fecha
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESCONTINUADOS_CAH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESCONTINUADOS_CAH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT num_expediente, colegiado, Observaciones, tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha
    FROM proyectoscah
    WHERE Observaciones LIKE '%cambio de%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESCONTINUADOS_CICH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DESCONTINUADOS_CICH`(
    IN fecha_inicial DATE,
    IN fecha_final DATE
)
BEGIN
    SELECT num_expediente, colegiado, Observaciones, tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha
    FROM proyectoscich
    WHERE Observaciones LIKE '%cambio de%' 
    AND fecha BETWEEN fecha_inicial AND fecha_final;
END ;;
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
    SELECT num_expediente, colegiado, Observaciones,tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha
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
    SELECT COUNT(*) AS Total,Observaciones
	FROM proyectoscah
    where Observaciones like '%inspeccion%' and fecha BETWEEN fecha_inicial AND fecha_final
    GROUP BY Observaciones;
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
    SELECT COUNT(*) AS Total,Observaciones
	FROM proyectoscich
    where Observaciones like '%inspeccion%' and fecha BETWEEN fecha_inicial AND fecha_final
    GROUP BY Observaciones;
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
    SELECT COUNT(*) AS Total,Observaciones
	FROM proyectoscimeqh
    where Observaciones like '%inspeccion%' and fecha BETWEEN fecha_inicial AND fecha_final
    GROUP BY Observaciones;
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
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha 
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
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha 
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
    SELECT num_expediente,presupuesto,area, clave_catastral, tipo_proyecto, date_format(fecha_mod, "%d/%m/%Y") as fecha 
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
		select num_expediente as "Expediente", tipo_proyecto as "Tipo_de_Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave_Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha", fecha_mod as "Fecha_mod", area as "Area", presupuesto as "Presupuesto"
        , colegiado as "Colegiado" from proyectoscah order by fecha desc;
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
		select num_expediente as "Expediente", tipo_proyecto as "Tipo_de_Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave_Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha", fecha_mod as "Fecha_mod", area as "Area", presupuesto as "Presupuesto"
        , colegiado as "Colegiado" from proyectoscich order by fecha desc;
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
		select num_expediente as "Expediente", tipo_proyecto as "Tipo_de_Proyecto",
        propietario as "Propietario" , clave_catastral as "Clave_Catastral", estatus as "Estatus", observaciones as 
        "Observaciones" , fecha as "Fecha", fecha_mod as "Fecha_mod", area as "Area", presupuesto as "Presupuesto"
        , colegiado as "Colegiado" from ProyectosCIMEQH order by fecha desc;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CAH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN COLEGIADO VARCHAR(30),IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscah(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,colegiado,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,COLEGIADO,ESTATUS,OBSERVACIONES,FECHA);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CICH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN COLEGIADO VARCHAR(30),IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscich(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,colegiado,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,COLEGIADO,ESTATUS,OBSERVACIONES,FECHA);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_REGISTRAR_APROBADO_CIMEQH`(IN EXPE VARCHAR(45),IN PROYECT VARCHAR(100), IN PROPI VARCHAR(50), IN CLAVE VARCHAR(100),IN DATO_AREA FLOAT, IN PRESUPUESTO FLOAT,IN COLEGIADO VARCHAR(30),IN ESTATUS VARCHAR(30) ,IN OBSERVACIONES VARCHAR(100), IN FECHA DATE)
BEGIN
INSERT INTO proyectoscimeqh(num_expediente,tipo_proyecto,propietario,clave_catastral,area,presupuesto,colegiado,estatus,observaciones,fecha)
VALUES (EXPE,PROYECT,PROPI,CLAVE,DATO_AREA,PRESUPUESTO,COLEGIADO,ESTATUS,OBSERVACIONES,FECHA);
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

-- Dump completed on 2023-04-23 16:44:55
