CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idclie` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Primary key tabla ClienteId',
  `rut` int(8) DEFAULT NULL COMMENT 'Rut cliente',
  `dv` char(1) DEFAULT NULL COMMENT 'Dígito verificador cliente',
  `nomb` varchar(128) DEFAULT NULL COMMENT 'Nombres de cliente',
  `apells` varchar(128) DEFAULT NULL COMMENT 'Apellidos del cliente',
  `fenac` date DEFAULT NULL COMMENT 'Fecha nacimiento del cliente',
  `fevalde` date DEFAULT NULL COMMENT 'Fecha de activación del cliente',
  `Correo` varchar(128) DEFAULT NULL COMMENT 'Correo electronico Cliente',
  PRIMARY KEY (`idclie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,15001148,'5','Cliente 1','Ap Cliente 1','1984-10-01','2014-11-01','cliente1@cliente.cl'),(2,12786704,'6','Cliente 2','Ap Cliente 2','1980-12-11','2014-11-01','cliente2@cliente.cl'),(3,11600430,'5','Cliente 3','Ap Cliente 3','1979-11-01','2014-11-01','cliente3@cliente.cl'),(4,15216910,'8','Cliente 4','Ap Cliente 4','1975-02-10','2014-11-01','cliente4@cliente.cl'),(5,16139030,'5','Cliente 5','Ap Cliente 5','1965-06-24','2014-11-01','cliente5@cliente.cl');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 13:07:30
