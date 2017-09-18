
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: tektonrestaurant
-- ------------------------------------------------------
DROP DATABASE IF EXISTS tektonrestaurant;
CREATE DATABASE tektonrestaurant;
USE tektonrestaurant;
-- Server version	5.7.19
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: tektonrestaurant
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden` (
  `idorden` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) DEFAULT NULL,
  `nombrecliente` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `tipopago` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `idplato` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorden`),
  KEY `idplato` (`idplato`),
  CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`idplato`) REFERENCES `plato` (`idplato`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,1,'bryan aguilar','13/09/2017',1,28,1),(12,1,'bryan CESAR','13/09/2017',1,25,1),(13,1,'bryan CESAR','13/09/2017',1,25,1),(14,1,'jordan michael','13/09/2017',1,25,1),(15,2,'JEAMPOL ULISES','14/09/2017',1,15.5,1),(16,2,'JEJOJSODCSDES','14/09/2017',1,12.5,1),(17,1,'cscs','hoy',NULL,NULL,1),(18,1,'kike','hoy',NULL,NULL,1),(19,1,'juanjo','hoy',NULL,NULL,1),(20,1,'kakaroto','hoy',NULL,NULL,1),(21,1,'pqpqpq','hoy',NULL,NULL,1),(22,1,'btbtbtbt','hoy',NULL,NULL,1),(23,1,'as','hoy',NULL,NULL,1),(24,1,'assa','hoy',NULL,NULL,1),(25,1,'tbggffd','hoy',NULL,NULL,1),(26,1,'sc','hoy',NULL,NULL,1),(27,1,'sd','hoy',NULL,NULL,1),(28,1,'sd','hoy',NULL,NULL,1),(29,1,'sdsd','hoy',NULL,NULL,1),(30,1,'sdfsd','hoy',NULL,NULL,1),(31,1,'ffgfd','hoy',NULL,NULL,1),(32,1,'qs','hoy',NULL,NULL,1),(33,1,'asd','hoy',NULL,NULL,1),(34,1,'fgg','hoy',NULL,NULL,1),(35,1,'sdfa','hoy',NULL,NULL,1),(36,1,'asdas','hoy',NULL,NULL,NULL),(37,1,'as','hoy',NULL,NULL,NULL),(38,1,'lalalalalalalala','hoy',NULL,NULL,NULL),(39,1,'adasd','hoy',NULL,NULL,NULL),(40,1,'nsdj','hoy',3,23,3),(41,1,'asad','hoy',1,23,1),(42,1,'saas','hoy',2,23,2),(43,1,'pedro loco','hoy',2,23,2);
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_plato`
--

DROP TABLE IF EXISTS `orden_plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_plato` (
  `idorden_plato` int(11) NOT NULL AUTO_INCREMENT,
  `idorden` int(11) DEFAULT NULL,
  `idplato` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorden_plato`),
  KEY `idorden` (`idorden`),
  KEY `idplato` (`idplato`),
  CONSTRAINT `orden_plato_ibfk_1` FOREIGN KEY (`idorden`) REFERENCES `orden` (`idorden`),
  CONSTRAINT `orden_plato_ibfk_2` FOREIGN KEY (`idplato`) REFERENCES `plato` (`idplato`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_plato`
--

LOCK TABLES `orden_plato` WRITE;
/*!40000 ALTER TABLE `orden_plato` DISABLE KEYS */;
INSERT INTO `orden_plato` VALUES (1,12,3);
/*!40000 ALTER TABLE `orden_plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato`
--

DROP TABLE IF EXISTS `plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plato` (
  `idplato` int(11) NOT NULL AUTO_INCREMENT,
  `nombreplato` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`idplato`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato`
--

LOCK TABLES `plato` WRITE;
/*!40000 ALTER TABLE `plato` DISABLE KEYS */;
INSERT INTO `plato` VALUES (1,'Arros con pollo','Delicioso',15),(2,'Aji de Gallina','Rico',13),(3,'Lomo Saltado','Lomo',14),(4,'Arroz con Mariscos','ricooo',13.5),(7,'tallarines','sdfds',15.5);
/*!40000 ALTER TABLE `plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` varchar(40) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('asdas@tektons.com','dssd','1'),('bryanap@tektons.com','1234','1'),('bryansdfs@tektond.com','assadasdasd','1'),('brydfddfdna@tektond.com','mmmmm','1'),('bryna@tektond.com','mmmmm','1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18  1:44:38
