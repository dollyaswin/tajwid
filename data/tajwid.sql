-- MySQL dump 10.13  Distrib 5.6.14, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: tajwid
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(3) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Makhrojul Huruf',NULL),(2,'Mad',NULL),(3,'Hukum Nun Mati Atau Tanwin',NULL),(4,'Hukum Mim Mati',NULL),(5,'Mad Asli',2),(6,'Idgham',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tajwid`
--

DROP TABLE IF EXISTS `tajwid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tajwid` (
  `id` int(4) unsigned NOT NULL DEFAULT '0',
  `tajwid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(3) unsigned DEFAULT NULL,
  `recording_path` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tajwid`
--

LOCK TABLES `tajwid` WRITE;
/*!40000 ALTER TABLE `tajwid` DISABLE KEYS */;
INSERT INTO `tajwid` VALUES (1,'آ',1,NULL),(2,'ب',1,NULL),(3,'ت',1,NULL),(4,'ِث',1,NULL),(5,'ج',1,NULL),(6,'ح',1,NULL),(7,'خ',1,NULL),(8,'د',1,NULL),(9,'ذ',1,NULL),(10,'ر',1,NULL),(11,'ز',1,NULL),(12,'س',1,NULL),(13,'ش',1,NULL),(14,'ص',1,NULL),(15,'ض',1,NULL),(16,'ط',1,NULL),(17,'ظ',1,NULL),(18,'ع',1,NULL),(19,'غ',1,NULL),(20,'ف',1,NULL),(21,'ق',1,NULL),(22,'ك',1,NULL),(23,'ل',1,NULL),(24,'م',1,NULL),(25,'ن',1,NULL),(26,'و',1,NULL),(27,'ه',1,NULL),(28,'لا',1,NULL),(29,'ء',1,NULL),(30,'ى',1,NULL),(31,'ا',5,NULL),(32,'يّ',5,NULL),(33,'وْ',5,NULL),(34,'Izhar',3,NULL),(35,'Iqlab',3,NULL),(36,'Ikhfa',3,NULL),(37,'Idgham Bigunnah',6,NULL),(38,'Idgham Bilaghunnah',6,NULL);
/*!40000 ALTER TABLE `tajwid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-12 10:20:22