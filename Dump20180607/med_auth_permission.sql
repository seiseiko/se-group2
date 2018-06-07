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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add category',7,'add_category'),(20,'Can change category',7,'change_category'),(21,'Can delete category',7,'delete_category'),(22,'Can add medicine',8,'add_medicine'),(23,'Can change medicine',8,'change_medicine'),(24,'Can delete medicine',8,'delete_medicine'),(25,'Can add auth group',9,'add_authgroup'),(26,'Can change auth group',9,'change_authgroup'),(27,'Can delete auth group',9,'delete_authgroup'),(28,'Can add auth group permissions',10,'add_authgrouppermissions'),(29,'Can change auth group permissions',10,'change_authgrouppermissions'),(30,'Can delete auth group permissions',10,'delete_authgrouppermissions'),(31,'Can add auth permission',11,'add_authpermission'),(32,'Can change auth permission',11,'change_authpermission'),(33,'Can delete auth permission',11,'delete_authpermission'),(34,'Can add auth user',12,'add_authuser'),(35,'Can change auth user',12,'change_authuser'),(36,'Can delete auth user',12,'delete_authuser'),(37,'Can add auth user groups',13,'add_authusergroups'),(38,'Can change auth user groups',13,'change_authusergroups'),(39,'Can delete auth user groups',13,'delete_authusergroups'),(40,'Can add auth user user permissions',14,'add_authuseruserpermissions'),(41,'Can change auth user user permissions',14,'change_authuseruserpermissions'),(42,'Can delete auth user user permissions',14,'delete_authuseruserpermissions'),(43,'Can add django admin log',15,'add_djangoadminlog'),(44,'Can change django admin log',15,'change_djangoadminlog'),(45,'Can delete django admin log',15,'delete_djangoadminlog'),(46,'Can add django content type',16,'add_djangocontenttype'),(47,'Can change django content type',16,'change_djangocontenttype'),(48,'Can delete django content type',16,'delete_djangocontenttype'),(49,'Can add django migrations',17,'add_djangomigrations'),(50,'Can change django migrations',17,'change_djangomigrations'),(51,'Can delete django migrations',17,'delete_djangomigrations'),(52,'Can add django session',18,'add_djangosession'),(53,'Can change django session',18,'change_djangosession'),(54,'Can delete django session',18,'delete_djangosession'),(55,'Can add order',19,'add_order'),(56,'Can change order',19,'change_order'),(57,'Can delete order',19,'delete_order'),(58,'Can add pharmacy',20,'add_pharmacy'),(59,'Can change pharmacy',20,'change_pharmacy'),(60,'Can delete pharmacy',20,'delete_pharmacy'),(61,'Can add customer',21,'add_customer'),(62,'Can change customer',21,'change_customer'),(63,'Can delete customer',21,'delete_customer'),(64,'Can add stock',22,'add_stock'),(65,'Can change stock',22,'change_stock'),(66,'Can delete stock',22,'delete_stock');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07 21:03:06
