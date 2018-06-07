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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-24 07:53:58.414161'),(2,'auth','0001_initial','2018-04-24 07:53:59.465457'),(3,'admin','0001_initial','2018-04-24 07:53:59.716024'),(4,'admin','0002_logentry_remove_auto_add','2018-04-24 07:53:59.730084'),(5,'contenttypes','0002_remove_content_type_name','2018-04-24 07:53:59.896621'),(6,'auth','0002_alter_permission_name_max_length','2018-04-24 07:53:59.921186'),(7,'auth','0003_alter_user_email_max_length','2018-04-24 07:53:59.950264'),(8,'auth','0004_alter_user_username_opts','2018-04-24 07:53:59.963802'),(9,'auth','0005_alter_user_last_login_null','2018-04-24 07:54:00.055043'),(10,'auth','0006_require_contenttypes_0002','2018-04-24 07:54:00.062061'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-24 07:54:00.078606'),(12,'auth','0008_alter_user_username_max_length','2018-04-24 07:54:00.279208'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-24 07:54:00.313256'),(14,'seapp','0001_initial','2018-04-24 07:54:00.323756'),(15,'sessions','0001_initial','2018-04-24 07:54:00.399460'),(16,'seapp','0002_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django','2018-04-25 12:38:36.905100'),(17,'seapp','0003_customer_stock','2018-05-15 11:50:09.001523');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
