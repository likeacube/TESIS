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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproduc` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Primary key tabla producto',
  `nomprod` varchar(128) DEFAULT NULL COMMENT 'Nombre producto',
  `precio` double DEFAULT NULL COMMENT 'Precio producto',
  `Empresa_idemp` int(5) NOT NULL COMMENT 'Foreing keey talba empresa',
  `SubFamilia_idSubFamilia` int(11) NOT NULL COMMENT 'Foreing key tabla subFamilia',
  `estados_idest` int(5) NOT NULL,
  PRIMARY KEY (`idproduc`),
  KEY `fk_Producto_Empresa1_idx` (`Empresa_idemp`),
  KEY `fk_Producto_SubFamilia1_idx` (`SubFamilia_idSubFamilia`),
  KEY `fk_producto_estados1_idx` (`estados_idest`),
  CONSTRAINT `fk_Producto_Empresa1` FOREIGN KEY (`Empresa_idemp`) REFERENCES `empresa` (`idemp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_SubFamilia1` FOREIGN KEY (`SubFamilia_idSubFamilia`) REFERENCES `subfamilia` (`idSubFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_estados1` FOREIGN KEY (`estados_idest`) REFERENCES `estados` (`idest`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Samsung, LED 32 HD Smart TV / 32H4303',169.99,1,1,1),(2,'Samsung, Reproductor DVD E360',11.994,2,1,1),(3,'Sony, Home Theater/DAV-TZ140',59.99,3,1,1),(4,'LG, Mini Componente MINI CM4340',49.99,4,2,1),(5,'Samsung, Minicomponente MX-HS7000',269.99,5,2,1),(6,'Onn, Microcomponente Bluetooth MCO-200BT',29.99,1,2,1),(7,'Nikon, Cámara Reflex D3200',329.99,2,3,1),(8,'Canon, Cámara Reflex EOS Rebel T5',399.99,3,3,1),(9,'Sony, Cinta Video Mini DV / DVM60PRR',1.79,4,3,1),(10,'Samsung, Tablet Galaxy TAB 3 Lite Dual Core 7 Pulgadas',69.99,5,4,1),(11,'HP, Notebook 14 / Intel Celeron / 4 GB / 500 GB',199.99,1,4,1),(12,'Acer, Notebook 11.6 / Intel Celeron / 2 GB / 500 GB',189.99,2,4,1),(13,'HP, Multifuncional Deskjet Ink Advantage 2645',29.99,3,5,1),(14,'Brother, Impresora Láser / HL-1112',24.99,4,5,1),(15,'HP, Impresora Deskjet Ink Advantage 2545 All in One',34.99,5,5,1),(16,'Media Store, Porta CD/MS-32',1.914,1,6,1),(17,'Green-e, Cable Micro USB a USB 2.0',1.99,2,6,1),(18,'Green-e, Cable Adaptador 5 Pin Mini USB a USB 2.0',1.99,3,6,1),(19,'Nintendo, Consola Wii Mini Red + Mario Kart',79.99,4,7,1),(20,'Microsoft, Xbox One Edición Limitada + 2 Juegos Descargables',299.99,5,7,1),(21,'Sony, Consola PS3 12GB + God of War Collection',149.99,1,7,1),(22,'X360, FIFA 15',34.99,2,8,1),(23,'PS2, Gran Turismo 4',4.99,3,8,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 13:07:29
