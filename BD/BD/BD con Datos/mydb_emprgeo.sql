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
-- Table structure for table `emprgeo`
--

DROP TABLE IF EXISTS `emprgeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emprgeo` (
  `idempgeo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Prymary key Id empresa geocalización',
  `latitud` float DEFAULT NULL COMMENT 'Parametros para la busqueda ',
  `longitud` float DEFAULT NULL COMMENT 'Parametros para la busqueda',
  `Empresa_idemp` int(5) NOT NULL COMMENT 'Foreing key tabla empresa',
  `tipo` varchar(75) DEFAULT NULL COMMENT 'Casa/Comercio/varios(Clasificacion)',
  PRIMARY KEY (`idempgeo`),
  KEY `fk_EmprGeo_Empresa1_idx` (`Empresa_idemp`),
  CONSTRAINT `fk_EmprGeo_Empresa1` FOREIGN KEY (`Empresa_idemp`) REFERENCES `empresa` (`idemp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprgeo`
--

LOCK TABLES `emprgeo` WRITE;
/*!40000 ALTER TABLE `emprgeo` DISABLE KEYS */;
INSERT INTO `emprgeo` VALUES (1,-33.5786,-70.5638,1,'Comercio'),(2,-33.5801,-70.569,2,'Casa'),(3,-33.5901,-70.5479,3,'Comercio'),(4,-33.595,-70.5465,4,'Comercio'),(5,-33.5984,-70.5786,5,'Comercio');
/*!40000 ALTER TABLE `emprgeo` ENABLE KEYS */;
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
