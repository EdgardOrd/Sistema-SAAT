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
/*!40000 ALTER TABLE `proyectoscimeqh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20  7:59:14
