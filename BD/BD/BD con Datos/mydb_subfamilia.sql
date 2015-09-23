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
-- Table structure for table `subfamilia`
--

DROP TABLE IF EXISTS `subfamilia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subfamilia` (
  `idSubFamilia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key Tabla SubFamilia',
  `nomsubfam` varchar(128) DEFAULT NULL COMMENT 'Nombre SubCategoria ',
  `Familia_idFamilia` int(11) NOT NULL COMMENT 'Foreing Key tabla famililia',
  PRIMARY KEY (`idSubFamilia`),
  KEY `fk_SubFamilia_Familia1_idx` (`Familia_idFamilia`),
  CONSTRAINT `fk_SubFamilia_Familia1` FOREIGN KEY (`Familia_idFamilia`) REFERENCES `familia` (`idFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subfamilia`
--

LOCK TABLES `subfamilia` WRITE;
/*!40000 ALTER TABLE `subfamilia` DISABLE KEYS */;
INSERT INTO `subfamilia` VALUES (1,'TV y Video',1),(2,'Audio',1),(3,'Fotografía',1),(4,'Computación',2),(5,'Impresoras',2),(6,'Accesorios Computación',2),(7,'Consolas y Accesorios',3),(8,'Video Juegos',3),(9,'Peliculas',3),(10,'Conservas',4),(11,'Pastas y Harinas',4),(12,'Comida Instantanea',4),(13,'Leche',5),(14,'Yogur',5),(15,'Queso',5);
/*!40000 ALTER TABLE `subfamilia` ENABLE KEYS */;
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
