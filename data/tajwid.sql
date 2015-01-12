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
INSERT INTO `category` VALUES (1,'Makhrojul Huruf',NULL);
INSERT INTO `category` VALUES (2,'Mad',NULL);
INSERT INTO `category` VALUES (3,'Hukum Nun Mati Atau Tanwin',NULL);
INSERT INTO `category` VALUES (4,'Hukum Mim Mati',NULL);
INSERT INTO `category` VALUES (5,'Mad Asli',2);
INSERT INTO `category` VALUES (6,'Idgham',3);
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
INSERT INTO `tajwid` VALUES (1,'آ',1,'audio/alif.mp3');
INSERT INTO `tajwid` VALUES (2,'ب',1,'audio/ba.mp3');
INSERT INTO `tajwid` VALUES (3,'ت',1,'audio/ta.mp3');
INSERT INTO `tajwid` VALUES (4,'ِث',1,'audio/tsa.mp3');
INSERT INTO `tajwid` VALUES (5,'ج',1,'audio/jeem.mp3');
INSERT INTO `tajwid` VALUES (6,'ح',1,'audio/ha.small.mp3');
INSERT INTO `tajwid` VALUES (7,'خ',1,'audio/kha.mp3');
INSERT INTO `tajwid` VALUES (8,'د',1,'audio/dal.mp3');
INSERT INTO `tajwid` VALUES (9,'ذ',1,'audio/dzal.mp3');
INSERT INTO `tajwid` VALUES (10,'ر',1,'audio/ra.mp3');
INSERT INTO `tajwid` VALUES (11,'ز',1,'audio/zai.mp3');
INSERT INTO `tajwid` VALUES (12,'س',1,'audio/sin.mp3');
INSERT INTO `tajwid` VALUES (13,'ش',1,'audio/syim.mp3');
INSERT INTO `tajwid` VALUES (14,'ص',1,'audio/shod.mp3');
INSERT INTO `tajwid` VALUES (15,'ض',1,'audio/dhot.mp3');
INSERT INTO `tajwid` VALUES (16,'ط',1,'audio/tho.mp3');
INSERT INTO `tajwid` VALUES (17,'ظ',1,'audio/zho.mp3');
INSERT INTO `tajwid` VALUES (18,'ع',1,'audio/ain.mp3');
INSERT INTO `tajwid` VALUES (19,'غ',1,'audio/ghain.mp3');
INSERT INTO `tajwid` VALUES (20,'ف',1,'audio/fa.mp3');
INSERT INTO `tajwid` VALUES (21,'ق',1,'audio/qaf.mp3');
INSERT INTO `tajwid` VALUES (22,'ك',1,'audio/kaf.mp3');
INSERT INTO `tajwid` VALUES (23,'ل',1,'audio/lam.mp3');
INSERT INTO `tajwid` VALUES (24,'م',1,'audio/mim.mp3');
INSERT INTO `tajwid` VALUES (25,'ن',1,'audio/noon.mp3');
INSERT INTO `tajwid` VALUES (26,'و',1,'audio/waw.mp3');
INSERT INTO `tajwid` VALUES (27,'ه',1,'audio/ha.big.mp3');
INSERT INTO `tajwid` VALUES (28,'ء',1,'audio/hamza.mp3');
INSERT INTO `tajwid` VALUES (29,'ى',1,'audio/ya.mp3');
INSERT INTO `tajwid` VALUES (30,'ا',5,NULL);
INSERT INTO `tajwid` VALUES (31,'يّ',5,NULL);
INSERT INTO `tajwid` VALUES (32,'وْ',5,NULL);
INSERT INTO `tajwid` VALUES (33,'Izhar',3,NULL);
INSERT INTO `tajwid` VALUES (34,'Iqlab',3,NULL);
INSERT INTO `tajwid` VALUES (35,'Ikhfa',3,NULL);
INSERT INTO `tajwid` VALUES (36,'Idgham Bigunnah',6,NULL);
INSERT INTO `tajwid` VALUES (37,'Idgham Bilaghunnah',6,NULL);
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

-- Dump completed on 2015-01-12 11:05:01
