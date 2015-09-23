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
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idemp` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ID de la empresa',
  `rutemp` int(8) DEFAULT NULL COMMENT 'Numero identificador de la empresa rut',
  `dvemp` char(1) DEFAULT NULL COMMENT 'Dígito verificador Empresa',
  `nomb` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa',
  `fenac` date DEFAULT NULL COMMENT 'Fecha de inicio de actividades',
  `fevalde` date DEFAULT NULL COMMENT 'Fecha de activación empresa en el sistema',
  `Cliente_idclie` int(5) NOT NULL COMMENT 'Foreing key tabla cliente',
  `urlemp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idemp`),
  KEY `fk_Empresa_Cliente1_idx` (`Cliente_idclie`),
  CONSTRAINT `fk_Empresa_Cliente1` FOREIGN KEY (`Cliente_idclie`) REFERENCES `cliente` (`idclie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,12523047,'4','Empresa 1','2000-07-22','2014-11-01',1,'www.laborum.com'),(2,14495899,'3','Empresa 2','1999-07-12','2014-11-01',2,'www.lun.com'),(3,24757505,'7','Empresa 3','1980-12-01','2014-11-01',3,'www.emol.com'),(4,14348263,'4','Empresa 4','2005-03-01','2014-11-01',4,'www.entel.cl'),(5,9153945,'4','Empresa 5','2013-04-01','2014-11-01',5,'www.movistar.cl');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 13:07:27
