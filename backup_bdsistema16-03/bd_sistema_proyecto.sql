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
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `num_expediente` int NOT NULL,
  `usu_id` int NOT NULL,
  `tipo_proyecto` varchar(100) NOT NULL,
  `propietario` varchar(50) NOT NULL,
  `clave_catastral` varchar(100) NOT NULL,
  `fecha_de_aprobacion` date NOT NULL,
  `estatus` enum('APROBADO','NO APROBADO') NOT NULL,
  PRIMARY KEY (`num_expediente`),
  KEY `usu_id` (`usu_id`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,5,'Millonario','Henry Orellana','123456789','2023-02-01','APROBADO'),(2,4,'Millonario','Edgard Ordoñez','123456','2023-03-01','APROBADO'),(3,3,'Millonario','Douglas Chavez','12345','2023-04-05','APROBADO'),(6,5,'Normal ','Raul Reyes rEYES ','1348','2023-03-23','APROBADO'),(8,3,'Normal ','Raul Reyes rEYES ','1348','2023-03-23','APROBADO'),(10,3,'Normal ','Raul Reyes rEYES ','1348','2023-03-23','APROBADO'),(45,4,'Millonario','KO','1234589','2023-03-08','APROBADO'),(46,4,'Normal ','JI','1356','2023-03-28','APROBADO'),(55,4,'Millonario','Juan Jose Lopez','4587','2023-03-14','APROBADO'),(58,5,'Millonario','Edwin Orellana ','123864','2023-03-12','APROBADO'),(135,5,'Normal','Raul Reyes','31552','2023-02-05','APROBADO'),(274,5,'Normal ','Reyes ','31864','2023-03-21','APROBADO'),(528,4,'Millonario ','Yo','123234','2023-08-05','APROBADO'),(894,5,'Millonario','INversiones','135861','2023-08-05','APROBADO'),(1386,5,'Normal ','jUAN CARLOS MENDONZA','3186','2023-03-11','APROBADO'),(13868,3,'Normal ','Jh','368515','2023-03-23','APROBADO'),(16816,5,'Millonario','Juan Carlos ','316845','2023-05-06','APROBADO');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 10:15:07
