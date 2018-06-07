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
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmacy` (
  `idpharmacy` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(45) NOT NULL,
  `district` enum('普陀区','静安区','杨浦区','黄浦区','南汇区','嘉定区','徐汇区','奉贤区','长宁区','闵行区') DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpharmacy`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (1,'场联路\n744号','普陀区','释强大药房',108),(2,'白城路\n837号','奉贤区','饭革大药房',109),(3,'川环南路\n253号','杨浦区','雪议药店',110),(4,'包头南路\n263号','闵行区','指的药店',111),(5,'板泉路\n254号','静安区','充把医药',112),(6,'大吉路\n764号','普陀区','掉差医药',113),(7,'宝源路\n252号','黄浦区','价普药店',114),(8,'川沙新镇\n606号','徐汇区','醒千药店',115),(9,'鞍山路\n218号','黄浦区','己鲜大药房',116),(10,'漕溪北路\n640号','徐汇区','味双医药',117),(11,'昌邑路\n854号','闵行区','司节医药',118),(12,'丹东路\n120号','奉贤区','米乎堂',119),(13,'蔡伦路\n559号','闵行区','受寻堂',120),(14,'保德路\n71号','长宁区','美熟医药',121),(15,'宝源路\n451号','闵行区','列土医药',122),(16,'保德路\n635号','黄浦区','维意大药房',123),(17,'成山路\n256号','普陀区','细渐堂',124),(18,'宝林路\n897号','奉贤区','品拉医药',125),(19,'茶陵北路\n256号','静安区','期戏堂',126),(20,'大林路\n305号','普陀区','流什药店',127),(21,'八一路\n907号','长宁区','贝我药店',128),(22,'安澜路\n411号','杨浦区','能课大药房',129),(23,'白城路\n515号','普陀区','用大药店',130),(24,'北张家浜路\n993号','奉贤区','续派大药房',131),(25,'丹巴路\n504号','黄浦区','微程堂',132),(26,'大华三路\n462号','嘉定区','短批医药',133),(27,'本溪路\n328号','闵行区','字仅药店',134),(28,'北宝兴路\n51号','普陀区','稜统大药房',135),(29,'大田路\n296号','普陀区','除划医药',136),(30,'大华一路\n217号','杨浦区','终困医药',137),(31,'宝安路\n518号','嘉定区','爱编堂',138),(32,'成都南路\n398号','普陀区','断话药店',139),(33,'鞍山路\n118号','嘉定区','却脚医药',140),(34,'大华二路\n391号','普陀区','玛青医药',141),(35,'博园路（黄渡镇）\n580号','普陀区','甚七堂',142),(36,'成都北路\n227号','长宁区','线紶大药房',143),(37,'大华一路\n254号','南汇区','烈角药店',144),(38,'大华三路\n767号','普陀区','经山大药房',145),(39,'宝山路\n485号','杨浦区','料指医药',146),(40,'宝昌路\n863号','杨浦区','急河大药房',147),(41,'北京西路\n987号','徐汇区','局种大药房',148),(42,'宝昌路\n685号','南汇区','班宫堂',149),(43,'白兰路\n445号','普陀区','刻阿医药',150),(44,'保德路\n744号','普陀区','野败大药房',151),(45,'大华二路\n351号','普陀区','业彩医药',152),(46,'大统路\n491号','静安区','香能大药房',153),(47,'大华三路\n652号','嘉定区','度线大药房',154),(48,'安图路\n728号','闵行区','岛站大药房',155),(49,'碧波路\n16号','静安区','照能大药房',156),(50,'白兰路\n626号','长宁区','校候大药房',157),(51,'苍梧路\n938号','黄浦区','写息药店',158),(52,'安远路\n873号','闵行区','集蒙大药房',159),(53,'保定路\n210号','黄浦区','浪渐大药房',160),(54,'宾南路\n626号','闵行区','虽顿医药',161),(55,'百色路\n623号','静安区','玩信大药房',162),(56,'北苏州路\n516号','普陀区','快负大药房',163),(57,'大宁路\n310号','黄浦区','岁故药店',164),(58,'安亭路\n307号','徐汇区','持沙医药',165),(59,'潮州路\n25号','南汇区','乎观医药',166),(60,'安边路\n4号','嘉定区','智败堂',167),(61,'保屯路\n2号','静安区','妙适大药房',168),(62,'大同路\n154号','南汇区','场星大药房',169),(63,'大康路\n58号','奉贤区','短奥堂',170),(64,'船厂路\n248号','南汇区','问我堂',171),(65,'北张家浜路\n529号','奉贤区','敢情医药',172),(66,'宝祁路\n467号','静安区','骨装大药房',173),(67,'博园路（黄渡镇）\n399号','普陀区','会笔大药房',174),(68,'大统路\n852号','奉贤区','先胡大药房',175),(69,'白城路\n728号','南汇区','翻救药店',176),(70,'大渡河路\n355号','徐汇区','片世大药房',177),(71,'百色路\n427号','普陀区','莫恋药店',178),(72,'丹巴路\n276号','长宁区','拿考大药房',179),(73,'滨江大道\n644号','闵行区','马费堂',180),(74,'鞍山路\n276号','杨浦区','作失堂',181),(75,'慈溪路\n677号','南汇区','遇雷堂',182),(76,'车亭公路\n805号','嘉定区','杂语医药',183),(77,'大境路\n303号','闵行区','疑兰大药房',184),(78,'川环南路\n214号','普陀区','哥园大药房',185),(79,'包头南路\n980号','静安区','坚发大药房',186),(80,'安福路\n643号','杨浦区','骨常药店',187),(81,'大林路\n481号','黄浦区','之压堂',188),(82,'百花街\n892号','南汇区','差平大药房',189),(83,'宝安路\n503号','静安区','演您药店',190),(84,'大统路\n404号','杨浦区','从甚药店',191),(85,'大康路\n698号','普陀区','基曾堂',192),(86,'北海路\n673号','徐汇区','超免堂',193),(87,'川周公路\n973号','杨浦区','野便医药',194),(88,'滨江大道\n100号','杨浦区','戏休医药',195),(89,'川沙路\n584号','嘉定区','露忽药店',196),(90,'昌翔路\n270号','普陀区','计项医药',197),(91,'保屯路\n310号','南汇区','莱实药店',198),(92,'曹安公路\n584号','嘉定区','默福医药',199),(93,'安波路\n719号','静安区','经为堂',200),(94,'北海路\n135号','杨浦区','刘毫堂',201),(95,'白城南路\n699号','普陀区','治恋大药房',202),(96,'滨江大道\n725号','嘉定区','决江堂',203),(97,'包头路\n6号','普陀区','可走药店',204),(98,'春申路\n767号','南汇区','片集医药',205),(99,'城南路\n661号','南汇区','医报药店',206),(100,'城中路\n468号','杨浦区','西良医药',207),(101,'成山路\n311号','奉贤区','盛杂药店',208),(102,'大华一路\n575号','静安区','奇日医药',209),(103,'碧云路\n132号','闵行区','爸数药店',210),(104,'安亭路\n823号','静安区','怀负大药房',211),(105,'大华三路\n428号','普陀区','空料堂',212),(106,'白渡桥\n200号','静安区','选列药店',213),(107,'春荣路（黄渡镇）\n195号','静安区','勒十大药房',214),(108,'安化路\n327号','南汇区','室究堂',215),(109,'程家桥路\n428号','奉贤区','段愿堂',216),(110,'曹杨路\n387号','奉贤区','出景堂',217),(111,'安化路\n393号','嘉定区','封失堂',218),(112,'宾南路\n913号','长宁区','产际医药',219),(113,'本溪路\n227号','杨浦区','容波堂',220),(114,'保定路\n520号','静安区','没实药店',221),(115,'本溪路\n976号','嘉定区','主玩药店',222),(116,'陈翔路\n197号','徐汇区','萼健大药房',223),(117,'宝安公路\n495号','嘉定区','禁病医药',224),(118,'百安路（方泰镇）\n139号','徐汇区','定文医药',225),(119,'大华路\n10号','南汇区','她救堂',226),(120,'车站北路\n796号','杨浦区','曾保医药',227),(121,'安顺路\n561号','嘉定区','改花大药房',228),(122,'鞍山路\n465号','静安区','级看药店',229),(123,'大康路\n347号','闵行区','娘们医药',230),(124,'车站西路\n61号','徐汇区','直营药店',231),(125,'漕溪北路\n628号','奉贤区','雪规药店',232),(126,'大统路\n59号','普陀区','童治大药房',233),(127,'场联路\n107号','闵行区','编该医药',234),(128,'赤峰路\n370号','长宁区','藸看大药房',235),(129,'宾阳路\n904号','奉贤区','但没医药',236),(130,'场中路\n444号','南汇区','近方大药房',237),(131,'北京西路\n729号','普陀区','烈光大药房',238),(132,'安仁路\n505号','南汇区','始达药店',239),(133,'安远路\n961号','静安区','拿舞堂',240),(134,'春江路\n311号','奉贤区','排分药店',241),(135,'大沽路\n970号','嘉定区','汉忍药店',242),(136,'成都南路\n293号','黄浦区','困院堂',243),(137,'大统路\n205号','闵行区','以察大药房',244),(138,'昌翔路\n461号','嘉定区','立视堂',245),(139,'宝林路\n901号','闵行区','普稜堂',246),(140,'丹巴路\n560号','静安区','物个药店',247),(141,'宝安公路\n235号','黄浦区','教害医药',248),(142,'白城南路\n497号','长宁区','八续大药房',249),(143,'安德路\n223号','徐汇区','对总医药',250),(144,'打浦路\n956号','闵行区','司制大药房',251),(145,'大连西路\n680号','普陀区','职鲁医药',252),(146,'川六公路\n660号','闵行区','臓故医药',253),(147,'安图路\n551号','静安区','忽秋堂',254),(148,'川黄路\n680号','长宁区','告记医药',255),(149,'安顺路\n603号','徐汇区','钟汉堂',256),(150,'北虹路\n85号','黄浦区','諣劳医药',257),(151,'北张家浜路\n899号','静安区','队饭药店',258),(152,'大连路\n881号','闵行区','作经药店',259),(153,'波阳路\n522号','黄浦区','苏爸药店',260),(154,'宝源路\n929号','长宁区','造刻堂',261),(155,'白城路\n853号','长宁区','诗称医药',262),(156,'船厂路\n288号','嘉定区','走令医药',263),(157,'安边路\n779号','嘉定区','底词医药',264),(158,'大华三路\n962号','杨浦区','次压堂',265),(159,'大华二路\n414号','嘉定区','专鞋药店',266),(160,'车站支路\n958号','长宁区','置阵医药',267),(161,'安福路\n348号','杨浦区','听之医药',268),(162,'丹阳路\n891号','奉贤区','英希堂',269),(163,'成都北路\n181号','杨浦区','啊党药店',270),(164,'保德路\n3号','黄浦区','世穿堂',271),(165,'百官街\n559号','黄浦区','州速医药',272),(166,'船厂路\n390号','南汇区','歌没堂',273),(167,'宾南路\n479号','杨浦区','洲影医药',274),(168,'漕溪路\n825号','长宁区','采恋大药房',275),(169,'包头路\n144号','普陀区','祖派堂',276),(170,'安德路\n593号','嘉定区','压买堂',277),(171,'大康路\n701号','徐汇区','贝下药店',278),(172,'漕溪路\n892号','嘉定区','编倒医药',279),(173,'保德路\n121号','奉贤区','松告堂',280),(174,'保德路\n588号','黄浦区','脱预药店',281),(175,'茶陵路\n459号','嘉定区','极定医药',282),(176,'打虎山路\n531号','嘉定区','看只医药',283),(177,'崇明路\n550号','奉贤区','酒康医药',284),(178,'茶陵路\n957号','闵行区','或品大药房',285),(179,'车亭公路\n95号','奉贤区','组兵药店',286),(180,'漕东三路\n907号','闵行区','红初药店',287),(181,'昌邑路\n558号','南汇区','草顶堂',288),(182,'宝源路\n167号','徐汇区','后灯医药',289),(183,'大华一路\n281号','杨浦区','守牙大药房',290),(184,'曹杨路\n585号','长宁区','待与医药',291),(185,'成都南路\n664号','嘉定区','授技堂',292),(186,'城南路\n460号','奉贤区','独仍医药',293),(187,'漕东三路\n785号','南汇区','建境大药房',294),(188,'城南路\n435号','嘉定区','告冷堂',295),(189,'丹棱路\n529号','南汇区','四听堂',296),(190,'大学路\n272号','杨浦区','营恐大药房',297),(191,'北虹路\n490号','徐汇区','既中大药房',298),(192,'安图路\n832号','奉贤区','是信医药',299),(193,'茶陵北路\n606号','南汇区','长酒堂',300),(194,'碧云路\n593号','徐汇区','乱与大药房',301),(195,'丹东路\n506号','闵行区','刘十药店',302),(196,'城银路\n800号','静安区','取洗堂',303),(197,'宾南路\n639号','嘉定区','通得大药房',304),(198,'川黄路\n359号','长宁区','窗续堂',305),(199,'陈广路\n589号','奉贤区','穿象药店',306);
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
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
