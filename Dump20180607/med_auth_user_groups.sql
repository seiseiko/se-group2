-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: med
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id_idx` (`user_id`),
  KEY `auth_user_groups_user_id_6a12ed8b_fk_auth_group_id_idx` (`group_id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,108,3),(2,109,3),(3,110,3),(4,111,3),(5,112,3),(6,113,3),(7,114,3),(8,115,3),(9,116,3),(10,117,3),(11,118,3),(12,119,3),(13,120,3),(14,121,3),(15,122,3),(16,123,3),(17,124,3),(18,125,3),(19,126,3),(20,127,3),(21,128,3),(22,129,3),(23,130,3),(24,131,3),(25,132,3),(26,133,3),(27,134,3),(28,135,3),(29,136,3),(30,137,3),(31,138,3),(32,139,3),(33,140,3),(34,141,3),(35,142,3),(36,143,3),(37,144,3),(38,145,3),(39,146,3),(40,147,3),(41,148,3),(42,149,3),(43,150,3),(44,151,3),(45,152,3),(46,153,3),(47,154,3),(48,155,3),(49,156,3),(50,157,3),(51,158,3),(52,159,3),(53,160,3),(54,161,3),(55,162,3),(56,163,3),(57,164,3),(58,165,3),(59,166,3),(60,167,3),(61,168,3),(62,169,3),(63,170,3),(64,171,3),(65,172,3),(66,173,3),(67,174,3),(68,175,3),(69,176,3),(70,177,3),(71,178,3),(72,179,3),(73,180,3),(74,181,3),(75,182,3),(76,183,3),(77,184,3),(78,185,3),(79,186,3),(80,187,3),(81,188,3),(82,189,3),(83,190,3),(84,191,3),(85,192,3),(86,193,3),(87,194,3),(88,195,3),(89,196,3),(90,197,3),(91,198,3),(92,199,3),(93,200,3),(94,201,3),(95,202,3),(96,203,3),(97,204,3),(98,205,3),(99,206,3),(100,207,3),(101,208,3),(102,209,3),(103,210,3),(104,211,3),(105,212,3),(106,213,3),(107,214,3),(108,215,3),(109,216,3),(110,217,3),(111,218,3),(112,219,3),(113,220,3),(114,221,3),(115,222,3),(116,223,3),(117,224,3),(118,225,3),(119,226,3),(120,227,3),(121,228,3),(122,229,3),(123,230,3),(124,231,3),(125,232,3),(126,233,3),(127,234,3),(128,235,3),(129,236,3),(130,237,3),(131,238,3),(132,239,3),(133,240,3),(134,241,3),(135,242,3),(136,243,3),(137,244,3),(138,245,3),(139,246,3),(140,247,3),(141,248,3),(142,249,3),(143,250,3),(144,251,3),(145,252,3),(146,253,3),(147,254,3),(148,255,3),(149,256,3),(150,257,3),(151,258,3),(152,259,3),(153,260,3),(154,261,3),(155,262,3),(156,263,3),(157,264,3),(158,265,3),(159,266,3),(160,267,3),(161,268,3),(162,269,3),(163,270,3),(164,271,3),(165,272,3),(166,273,3),(167,274,3),(168,275,3),(169,276,3),(170,277,3),(171,278,3),(172,279,3),(173,280,3),(174,281,3),(175,282,3),(176,283,3),(177,284,3),(178,285,3),(179,286,3),(180,287,3),(181,288,3),(182,289,3),(183,290,3),(184,291,3),(185,292,3),(186,293,3),(187,294,3),(188,295,3),(189,296,3),(190,297,3),(191,298,3),(192,299,3),(193,300,3),(194,301,3),(195,302,3),(196,303,3),(197,304,3),(198,305,3),(199,306,3),(200,1,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07 21:03:07