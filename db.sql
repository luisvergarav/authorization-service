-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: neargrocery
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

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
-- Table structure for table `Actualizacion`
--

DROP TABLE IF EXISTS `Actualizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actualizacion` (
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `IDACTUALIZACION` int(11) NOT NULL,
  `IDALMACEN` int(11) NOT NULL,
  PRIMARY KEY (`IDACTUALIZACION`,`IDALMACEN`),
  KEY `FK_Actualizacion_IDALMACEN` (`IDALMACEN`),
  CONSTRAINT `FK_Actualizacion_IDALMACEN` FOREIGN KEY (`IDALMACEN`) REFERENCES `Almacen` (`IDALMACEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actualizacion`
--

LOCK TABLES `Actualizacion` WRITE;
/*!40000 ALTER TABLE `Actualizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Actualizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ActualizacionArticulo`
--

DROP TABLE IF EXISTS `ActualizacionArticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActualizacionArticulo` (
  `Actualizacion_idActualizacion` int(11) NOT NULL,
  `Articulo_idArticulo` int(11) NOT NULL,
  PRIMARY KEY (`Actualizacion_idActualizacion`,`Articulo_idArticulo`),
  KEY `FK_ActualizacionArticulo_Articulo_idArticulo` (`Articulo_idArticulo`),
  CONSTRAINT `ActualizacionArticuloActualizacion_idActualizacion` FOREIGN KEY (`Actualizacion_idActualizacion`) REFERENCES `Actualizacion` (`IDACTUALIZACION`),
  CONSTRAINT `FK_ActualizacionArticulo_Articulo_idArticulo` FOREIGN KEY (`Articulo_idArticulo`) REFERENCES `Articulo` (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActualizacionArticulo`
--

LOCK TABLES `ActualizacionArticulo` WRITE;
/*!40000 ALTER TABLE `ActualizacionArticulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ActualizacionArticulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Almacen`
--

DROP TABLE IF EXISTS `Almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Almacen` (
  `IDALMACEN` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVO` varchar(255) DEFAULT NULL,
  `IMAGEN` varchar(255) DEFAULT NULL,
  `NOMBREALMACEN` varchar(255) DEFAULT NULL,
  `TIPOALMACEN` varchar(255) DEFAULT NULL,
  `idTipoAlmacen` int(11) DEFAULT NULL,
  `Ubicacion_Ubicacion_ID` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDALMACEN`),
  KEY `FK_Almacen_idTipoAlmacen` (`idTipoAlmacen`),
  KEY `FK_Almacen_Ubicacion_Ubicacion_ID` (`Ubicacion_Ubicacion_ID`),
  KEY `FK_Almacen_idUsuario` (`idUsuario`),
  CONSTRAINT `FK_Almacen_idTipoAlmacen` FOREIGN KEY (`idTipoAlmacen`) REFERENCES `TipoAlmacen` (`IDTIPOALMACEN`),
  CONSTRAINT `FK_Almacen_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`IDUSUARIO`),
  CONSTRAINT `FK_Almacen_Ubicacion_Ubicacion_ID` FOREIGN KEY (`Ubicacion_Ubicacion_ID`) REFERENCES `Ubicacion` (`Ubicacion_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Almacen`
--

LOCK TABLES `Almacen` WRITE;
/*!40000 ALTER TABLE `Almacen` DISABLE KEYS */;
INSERT INTO `Almacen` VALUES (1,'1','imagen','Frutos doña juanita','tipo',NULL,1,1),(2,'1','imagen','nombre',NULL,NULL,1,NULL),(3,'1','imagen','nombre',NULL,NULL,1,NULL),(4,'1','imagen','nombre',NULL,NULL,1,NULL),(5,'1','imagen','nombre',NULL,NULL,1,NULL),(6,'1','imagen','nombre',NULL,NULL,1,NULL),(7,'1','imagen','nombre',NULL,NULL,1,NULL),(8,'1','imagen','nombre',NULL,NULL,1,NULL),(9,'1','imagen','nombre',NULL,NULL,1,NULL),(10,'1','imagen','nombre',NULL,NULL,1,NULL),(11,'1','imagen','nombre',NULL,NULL,1,NULL),(12,'1','imagen','nombre',NULL,NULL,1,NULL),(13,'1','imagen','nombre',NULL,NULL,1,NULL),(14,'1','imagen','nombre',NULL,NULL,1,NULL),(15,'1','imagen','nombre',NULL,NULL,1,NULL),(16,'1','imagen','nombre',NULL,NULL,1,NULL),(17,'1','imagen','nombre',NULL,NULL,1,NULL),(18,'1','imagen','nombre',NULL,NULL,1,NULL),(19,'1','imagen','nombre',NULL,NULL,1,NULL),(20,'1','imagen','nombre',NULL,NULL,1,NULL),(21,'1','imagen','nombre',NULL,NULL,1,NULL),(22,'1','imagen','nombre',NULL,NULL,1,NULL),(23,'1','imagen','nombre',NULL,NULL,1,NULL),(24,'1','imagen','nombre',NULL,NULL,1,NULL),(25,'1','imagen','nombre',NULL,NULL,1,NULL),(26,'1','imagen','nombre',NULL,NULL,1,NULL),(27,'1','imagen','nombre',NULL,NULL,1,NULL),(28,'1','imagen','nombre',NULL,NULL,1,NULL),(29,'1','imagen','nombre 1',NULL,NULL,1,NULL),(30,'1','imagen','nombre 1',NULL,NULL,1,NULL),(31,'1','imagen','nombre 1',NULL,NULL,1,NULL),(32,'1','imagen','nombre 122',NULL,NULL,1,NULL),(33,'1','imagen','nombre 1',NULL,NULL,1,NULL),(34,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(35,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(36,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(37,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(38,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(39,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(40,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(41,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(42,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(43,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(44,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(45,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(46,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(47,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(48,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(49,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(50,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(51,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(52,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(53,'1','imagen','NombreAlmacen',NULL,NULL,NULL,NULL),(54,'1','imagen','nombreAlmacen',NULL,NULL,NULL,NULL),(55,'1','imange','nombreAlmacen',NULL,NULL,NULL,20),(56,'1','imagen','almacenProd4',NULL,NULL,2,23),(57,'1','imagen','almacen5',NULL,NULL,NULL,NULL),(58,'1','imagen','almacen6',NULL,NULL,NULL,NULL),(59,'1','imagen','almacen6',NULL,NULL,NULL,25),(60,'1','imagen','almacen6',NULL,NULL,NULL,24);
/*!40000 ALTER TABLE `Almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Articulo`
--

DROP TABLE IF EXISTS `Articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Articulo` (
  `CANTIDAD` double DEFAULT NULL,
  `FECHAACTUALIZACION` date DEFAULT NULL,
  `NOMBREARTICULO` varchar(255) DEFAULT NULL,
  `PRECIO` int(11) DEFAULT NULL,
  `UNIDADMEDIDA` varchar(255) DEFAULT NULL,
  `idarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `IDALMACEN` int(11) NOT NULL,
  `idTipoArticulo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `FK_Articulo_idTipoArticulo` (`idTipoArticulo`),
  KEY `FK_Articulo_IDALMACEN` (`IDALMACEN`),
  CONSTRAINT `FK_Articulo_IDALMACEN` FOREIGN KEY (`IDALMACEN`) REFERENCES `Almacen` (`IDALMACEN`),
  CONSTRAINT `FK_Articulo_idTipoArticulo` FOREIGN KEY (`idTipoArticulo`) REFERENCES `TipoArticulo` (`IDTIPOARTICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articulo`
--

LOCK TABLES `Articulo` WRITE;
/*!40000 ALTER TABLE `Articulo` DISABLE KEYS */;
INSERT INTO `Articulo` VALUES (2,'2018-12-31','articulo2',1,'kg',38,1,1),(222,'2018-12-31','Peras',323,'KG',39,1,1),(21,'2018-12-31','tomates',12,'kg',40,1,1),(3,'2011-12-31','platanos',123,'kg',41,20,1),(23,'2028-12-31','sandia',123,'kg',42,55,1),(112,'2017-12-31','harina',3,'kg',43,55,1),(3,'2011-12-31','azucar',23,'KG',44,55,1),(1,'2016-12-31','limon',2,'kg',45,56,1),(3,'2016-12-31','peras',3333,'kg',46,59,1),(43,'2016-12-31','manzanas',3333,'kg',47,59,1);
/*!40000 ALTER TABLE `Articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ciudad`
--

DROP TABLE IF EXISTS `Ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ciudad` (
  `Descripcion` varchar(255) DEFAULT NULL,
  `IDCIUDAD` int(11) NOT NULL,
  `IDREGION` int(11) NOT NULL,
  PRIMARY KEY (`IDCIUDAD`,`IDREGION`),
  KEY `FK_Ciudad_IDREGION` (`IDREGION`),
  CONSTRAINT `FK_Ciudad_IDREGION` FOREIGN KEY (`IDREGION`) REFERENCES `Region` (`IDREGION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ciudad`
--

LOCK TABLES `Ciudad` WRITE;
/*!40000 ALTER TABLE `Ciudad` DISABLE KEYS */;
INSERT INTO `Ciudad` VALUES ('Santiago',1,1);
/*!40000 ALTER TABLE `Ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comuna`
--

DROP TABLE IF EXISTS `Comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comuna` (
  `Descripcion` varchar(255) DEFAULT NULL,
  `IDCOMUNA` int(11) NOT NULL,
  `IDCIUDAD` int(11) NOT NULL,
  `IDREGION` int(11) NOT NULL,
  PRIMARY KEY (`IDCOMUNA`,`IDCIUDAD`,`IDREGION`),
  KEY `FK_Comuna_IDCIUDAD` (`IDCIUDAD`,`IDREGION`),
  CONSTRAINT `FK_Comuna_IDCIUDAD` FOREIGN KEY (`IDCIUDAD`, `IDREGION`) REFERENCES `Ciudad` (`IDCIUDAD`, `IDREGION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comuna`
--

LOCK TABLES `Comuna` WRITE;
/*!40000 ALTER TABLE `Comuna` DISABLE KEYS */;
INSERT INTO `Comuna` VALUES ('Santiago',1,1,1);
/*!40000 ALTER TABLE `Comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direccion` (
  `CALLE` varchar(255) DEFAULT NULL,
  `LATITUD` int(11) DEFAULT NULL,
  `LONGITUD` int(11) DEFAULT NULL,
  `NUMEROCALLE` int(11) DEFAULT NULL,
  `IDCIUDAD` int(11) NOT NULL,
  `IDCOMUNA` int(11) NOT NULL,
  `IDREGION` int(11) NOT NULL,
  `IDUSUARIO` int(11) NOT NULL,
  PRIMARY KEY (`IDCIUDAD`,`IDCOMUNA`,`IDREGION`,`IDUSUARIO`),
  KEY `FK_Direccion_IDCOMUNA` (`IDCOMUNA`,`IDCIUDAD`,`IDREGION`),
  KEY `FK_Direccion_IDUSUARIO` (`IDUSUARIO`),
  CONSTRAINT `FK_Direccion_IDCOMUNA` FOREIGN KEY (`IDCOMUNA`, `IDCIUDAD`, `IDREGION`) REFERENCES `Comuna` (`IDCOMUNA`, `IDCIUDAD`, `IDREGION`),
  CONSTRAINT `FK_Direccion_IDUSUARIO` FOREIGN KEY (`IDUSUARIO`) REFERENCES `Usuario` (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Item` (
  `idArticulo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreArticulo` varchar(255) NOT NULL,
  `precio` double(12,0) DEFAULT NULL,
  `idTipoArticulo` int(11) DEFAULT NULL,
  `cantidad` double(12,0) DEFAULT NULL,
  `unidadMedida` varchar(255) DEFAULT NULL,
  `orden_idOrder` int(11) unsigned NOT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `orden_idOrder` (`orden_idOrder`),
  CONSTRAINT `Item_ibfk_1` FOREIGN KEY (`orden_idOrder`) REFERENCES `Orden` (`idOrder`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES (5,'articulo2',1,NULL,2,'kg',28),(6,'articulo2',1,NULL,2,'kg',29),(7,'articulo2',1,NULL,2,'kg',45),(8,'articulo2',1,NULL,2,'kg',49),(9,'articulo2',1,NULL,2,'kg',50),(10,'articulo2',1,NULL,2,'kg',50),(11,'articulo2',1,NULL,2,'kg',50),(12,'articulo2',1,NULL,2,'kg',50),(13,'articulo2',1,NULL,2,'kg',50),(14,'articulo2',1,NULL,2,'kg',50),(15,'articulo2',1,NULL,2,'kg',50),(16,'articulo2',1,NULL,2,'kg',50),(17,'articulo2',1,NULL,2,'kg',50),(18,'articulo2',1,NULL,2,'kg',50),(19,'articulo2',1,NULL,2,'kg',50),(20,'articulo2',1,NULL,2,'kg',50),(21,'articulo2',1,NULL,2,'kg',51),(22,'articulo2',1,NULL,2,'kg',51),(23,'articulo2',1,NULL,2,'kg',51),(24,'articulo2',1,NULL,2,'kg',51),(25,'articulo2',1,NULL,2,'kg',52),(26,'articulo2',1,NULL,2,'kg',52),(27,'limon',2,NULL,1,'kg',53),(28,'limon',2,NULL,1,'kg',54),(29,'limon',2,NULL,1,'kg',54),(30,'limon',2,NULL,1,'kg',54),(31,'limon',2,NULL,1,'kg',54),(32,'limon',2,NULL,1,'kg',55),(33,'limon',2,NULL,1,'kg',55),(34,'limon',2,NULL,1,'kg',55),(35,'limon',2,NULL,1,'kg',55),(36,'limon',2,NULL,1,'kg',56),(37,'limon',2,NULL,1,'kg',56),(38,'limon',2,NULL,1,'kg',56),(39,'limon',2,NULL,1,'kg',56),(40,'limon',2,NULL,1,'kg',56),(41,'limon',2,NULL,1,'kg',57),(42,'limon',2,NULL,1,'kg',57),(43,'limon',2,NULL,1,'kg',57),(44,'limon',2,NULL,1,'kg',57),(45,'limon',2,NULL,1,'kg',57),(46,'limon',2,NULL,1,'kg',57),(47,'limon',2,NULL,1,'kg',58),(48,'limon',2,NULL,1,'kg',58),(49,'limon',2,NULL,1,'kg',58),(50,'limon',2,NULL,1,'kg',59),(51,'limon',2,NULL,1,'kg',59),(52,'limon',2,NULL,1,'kg',59),(53,'limon',2,NULL,1,'kg',59),(54,'limon',2,NULL,1,'kg',59),(55,'limon',2,NULL,1,'kg',60),(56,'limon',2,NULL,1,'kg',60),(57,'limon',2,NULL,1,'kg',60),(58,'limon',2,NULL,1,'kg',60),(59,'limon',2,NULL,1,'kg',60),(60,'limon',2,NULL,1,'kg',60),(61,'limon',2,NULL,1,'kg',61),(62,'limon',2,NULL,1,'kg',61),(63,'limon',2,NULL,1,'kg',62),(64,'peras',3333,NULL,3,'kg',63),(65,'articulo2',1,NULL,2,'kg',64),(66,'Peras',323,NULL,222,'KG',64),(67,'tomates',12,NULL,21,'kg',64),(68,'articulo2',1,NULL,2,'kg',64),(69,'Peras',323,NULL,222,'KG',64),(70,'tomates',12,NULL,21,'kg',64),(71,'peras',3333,NULL,3,'kg',65),(72,'manzanas',3333,NULL,43,'kg',65);
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mensaje`
--

DROP TABLE IF EXISTS `Mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mensaje` (
  `TEXTO` varchar(255) DEFAULT NULL,
  `IDMENSAJE` int(11) NOT NULL,
  `IDALMACEN` int(11) NOT NULL,
  `idTipoMensaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDMENSAJE`,`IDALMACEN`),
  KEY `FK_Mensaje_IDALMACEN` (`IDALMACEN`),
  KEY `FK_Mensaje_idTipoMensaje` (`idTipoMensaje`),
  CONSTRAINT `FK_Mensaje_IDALMACEN` FOREIGN KEY (`IDALMACEN`) REFERENCES `Almacen` (`IDALMACEN`),
  CONSTRAINT `FK_Mensaje_idTipoMensaje` FOREIGN KEY (`idTipoMensaje`) REFERENCES `TIPOMENSAJE` (`IDTIPOMENSAJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mensaje`
--

LOCK TABLES `Mensaje` WRITE;
/*!40000 ALTER TABLE `Mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orden`
--

DROP TABLE IF EXISTS `Orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orden` (
  `idOrder` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fechaCreacion` date NOT NULL,
  `idAlmacen` int(11) NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `idAlmacen` (`idAlmacen`),
  CONSTRAINT `Orden_ibfk_1` FOREIGN KEY (`idAlmacen`) REFERENCES `Almacen` (`IDALMACEN`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orden`
--

LOCK TABLES `Orden` WRITE;
/*!40000 ALTER TABLE `Orden` DISABLE KEYS */;
INSERT INTO `Orden` VALUES (1,'2016-12-31',1),(28,'2016-12-31',1),(29,'2016-12-31',1),(30,'2016-12-31',1),(31,'2016-12-31',1),(32,'2016-12-31',1),(33,'2016-12-31',1),(34,'2016-12-31',1),(35,'2016-12-31',1),(36,'2016-12-31',1),(37,'2016-12-31',1),(38,'2016-12-31',1),(39,'2016-12-31',1),(40,'2016-12-31',1),(41,'2016-12-31',1),(42,'2016-12-31',1),(43,'2016-12-31',1),(44,'2016-12-31',1),(45,'2016-12-31',1),(46,'2016-12-31',1),(47,'2016-12-31',1),(48,'2016-12-31',1),(49,'2016-12-31',1),(50,'2016-12-31',1),(51,'2016-12-31',1),(52,'2016-12-31',1),(53,'2016-12-31',56),(54,'2016-12-31',56),(55,'2016-12-31',56),(56,'2016-12-31',56),(57,'2016-12-31',56),(58,'2016-12-31',56),(59,'2016-12-31',56),(60,'2016-12-31',56),(61,'2016-12-31',56),(62,'2016-12-31',56),(63,'2016-12-31',59),(64,'2016-12-31',59),(65,'2016-12-31',59);
/*!40000 ALTER TABLE `Orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promocion`
--

DROP TABLE IF EXISTS `Promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promocion` (
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `idpromocion` int(11) NOT NULL AUTO_INCREMENT,
  `IDALMACEN` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`idpromocion`),
  KEY `FK_Promocion_IDALMACEN` (`IDALMACEN`),
  CONSTRAINT `FK_Promocion_IDALMACEN` FOREIGN KEY (`IDALMACEN`) REFERENCES `Almacen` (`IDALMACEN`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promocion`
--

LOCK TABLES `Promocion` WRITE;
/*!40000 ALTER TABLE `Promocion` DISABLE KEYS */;
INSERT INTO `Promocion` VALUES ('desc145','2090-12-15',26,1,1000),('desp55','2912-12-05',27,1,1000),('promo3','2012-12-28',28,1,1000),('PapasX1000','2016-12-28',29,1,1000),('sandias','2911-02-27',30,55,1000),('Promo limones','2018-12-30',31,56,1000),('peras','2018-12-30',32,59,1000),('apples','2010-12-30',33,1,NULL);
/*!40000 ALTER TABLE `Promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromocionArticulo`
--

DROP TABLE IF EXISTS `PromocionArticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PromocionArticulo` (
  `Articulo_idArticulo` int(11) NOT NULL,
  `Promocion_idPromocion` int(11) NOT NULL,
  PRIMARY KEY (`Articulo_idArticulo`,`Promocion_idPromocion`),
  KEY `FK_PromocionArticulo_Articulo_idArticulo` (`Articulo_idArticulo`),
  KEY `FK_PromocionArticulo_Promocion_idPromocion` (`Promocion_idPromocion`),
  CONSTRAINT `FK_PromocionArticulo_Articulo_idArticulo` FOREIGN KEY (`Articulo_idArticulo`) REFERENCES `Articulo` (`idarticulo`),
  CONSTRAINT `FK_PromocionArticulo_Promocion_idPromocion` FOREIGN KEY (`Promocion_idPromocion`) REFERENCES `Promocion` (`idpromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromocionArticulo`
--

LOCK TABLES `PromocionArticulo` WRITE;
/*!40000 ALTER TABLE `PromocionArticulo` DISABLE KEYS */;
INSERT INTO `PromocionArticulo` VALUES (38,26),(38,27),(38,28),(38,29),(38,33),(39,26),(39,27),(39,28),(39,29),(39,33),(40,26),(40,27),(40,28),(40,29),(40,33),(42,30),(43,30),(44,30),(45,31),(46,32),(47,32);
/*!40000 ALTER TABLE `PromocionArticulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `IDREGION` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDREGION`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'Metropolitana');
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TIPOMENSAJE`
--

DROP TABLE IF EXISTS `TIPOMENSAJE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TIPOMENSAJE` (
  `IDTIPOMENSAJE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDTIPOMENSAJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TIPOMENSAJE`
--

LOCK TABLES `TIPOMENSAJE` WRITE;
/*!40000 ALTER TABLE `TIPOMENSAJE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TIPOMENSAJE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoAlmacen`
--

DROP TABLE IF EXISTS `TipoAlmacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoAlmacen` (
  `IDTIPOALMACEN` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDTIPOALMACEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoAlmacen`
--

LOCK TABLES `TipoAlmacen` WRITE;
/*!40000 ALTER TABLE `TipoAlmacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoAlmacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoArticulo`
--

DROP TABLE IF EXISTS `TipoArticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoArticulo` (
  `IDTIPOARTICULO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDTIPOARTICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoArticulo`
--

LOCK TABLES `TipoArticulo` WRITE;
/*!40000 ALTER TABLE `TipoArticulo` DISABLE KEYS */;
INSERT INTO `TipoArticulo` VALUES (1,'Verduras');
/*!40000 ALTER TABLE `TipoArticulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ubicacion`
--

DROP TABLE IF EXISTS `Ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ubicacion` (
  `Ubicacion_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CALLE` varchar(255) DEFAULT NULL,
  `CIUDAD` varchar(255) DEFAULT NULL,
  `COMUNA` varchar(255) DEFAULT NULL,
  `LATITUD` varchar(255) DEFAULT NULL,
  `LONGITUD` varchar(255) DEFAULT NULL,
  `NUMEROCALLE` int(11) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `idAlmacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ubicacion_ID`),
  KEY `FK_Ubicacion_idAlmacen` (`idAlmacen`),
  CONSTRAINT `FK_Ubicacion_idAlmacen` FOREIGN KEY (`idAlmacen`) REFERENCES `Almacen` (`IDALMACEN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ubicacion`
--

LOCK TABLES `Ubicacion` WRITE;
/*!40000 ALTER TABLE `Ubicacion` DISABLE KEYS */;
INSERT INTO `Ubicacion` VALUES (1,'bandera','santiago','Santiago','3','2',324,'Metropolitana',1),(2,'salitreras','santiago','Santiago','1','1',344,'Metropolitana',56),(3,'salitreras','Santiago','Santiago','2','2',324234,'Metropolitana',59);
/*!40000 ALTER TABLE `Ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVO` int(11) DEFAULT NULL,
  `NICK` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,1,'productor1','productor1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam','ROLE_ADMIN'),(2,1,'usuario1','usuario1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam','ROLE_CLIENT'),(16,1,'test1','test1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam','ROLE_CLIENT'),(17,1,'test1','test1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam','ROLE_CLIENT'),(18,1,'test1','test1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam',NULL),(20,1,'username','test1','$2a$04$5Nw4qysi/pQklYATIN6r1uG4z9eh.EfNeuwUhFcv9c0tgVdpv0fam','ROLE_ADMIN'),(21,1,'productor2','test1','1.aAdas',NULL),(22,1,'productor3','test1','$2a$10$QgQc1iT0gplcrVwehfwGceFjX28u0zPZQNI.gii4i7SQ3h94EnuUm','ROLE_ADMIN'),(23,1,'productor4','test1','$2a$10$oPj1FV.8MIbUg0jNlp1eB.gMykQ/3G/Zv0xyY1yMa4d977tIfhvcW','ROLE_ADMIN'),(24,1,'productor5','test1','$2a$10$JogE2NKEJUsOM/bhwf2sCe5NKIQ5YtTVdAzd0diRoQC9hUDRZyb5W','ROLE_ADMIN'),(25,1,'productor6','test1','$2a$10$AaV4PoifyUDvzvwSGxOOJeYkJw/4YKQ6/voU2FK91v9jYAguLAkTO','ROLE_ADMIN');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioRoles`
--

DROP TABLE IF EXISTS `UsuarioRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsuarioRoles` (
  `AUTHORITY` varchar(255) DEFAULT NULL,
  `USUARIOROLESID` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSUARIO` int(11) NOT NULL,
  PRIMARY KEY (`USUARIOROLESID`,`IDUSUARIO`),
  KEY `FK_UsuarioRoles_IDUSUARIO` (`IDUSUARIO`),
  CONSTRAINT `FK_UsuarioRoles_IDUSUARIO` FOREIGN KEY (`IDUSUARIO`) REFERENCES `Usuario` (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioRoles`
--

LOCK TABLES `UsuarioRoles` WRITE;
/*!40000 ALTER TABLE `UsuarioRoles` DISABLE KEYS */;
INSERT INTO `UsuarioRoles` VALUES ('ROLE_USER',1,1),('ROLE_CLIENT',2,2),('ROLE_ADMIN',11,16),('ROLE_ADMIN',12,17),('ROLE_ADMIN',13,18),('ROLE_ADMIN',15,20),('ROLE_ADMIN',16,21),('ROLE_ADMIN',17,22),('ROLE_ADMIN',18,23),('ROLE_ADMIN',19,24),('ROLE_ADMIN',20,25);
/*!40000 ALTER TABLE `UsuarioRoles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  2:06:58
