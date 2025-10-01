-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: phpdev
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dv_user_role`
--

DROP TABLE IF EXISTS `dv_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dv_user_role` (
  `role_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `dv_user_role_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dv_user_role`
--

LOCK TABLES `dv_user_role` WRITE;
/*!40000 ALTER TABLE `dv_user_role` DISABLE KEYS */;
INSERT INTO `dv_user_role` VALUES (1,1),(2,1),(4,1),(4,2),(2,3),(4,3),(5,3),(2,4),(1,5),(2,5),(3,5),(1,6),(4,6),(5,6),(2,7),(3,8),(1,9),(2,9),(3,9),(2,10),(1,11),(3,11),(4,11),(2,12),(1,13),(2,13),(3,13),(2,14),(3,14),(4,14),(3,15),(1,16),(2,16),(5,16),(2,17),(5,18),(4,19),(4,20),(2,21),(4,21),(5,21),(1,22),(2,23),(3,23),(1,24),(1,25),(3,25),(5,25),(1,26),(2,26),(4,26),(2,27),(1,28),(2,29),(4,29),(1,30),(3,30),(4,30),(4,31),(1,32),(2,32),(1,33),(5,33),(1,34),(3,34),(1,35),(3,35),(3,36),(1,37),(2,37),(3,37),(1,38),(3,38),(1,39),(2,39),(3,39),(4,40),(1,41),(3,41),(4,42),(5,42),(4,43),(1,44),(3,44),(5,44),(4,45),(5,45),(2,46),(4,46),(5,46),(3,47),(4,47),(5,47),(5,48),(2,49),(1,50),(5,50),(1,51),(3,51);
/*!40000 ALTER TABLE `dv_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dv_users`
--

DROP TABLE IF EXISTS `dv_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dv_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dv_users_username_unique` (`username`),
  UNIQUE KEY `dv_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dv_users`
--

LOCK TABLES `dv_users` WRITE;
/*!40000 ALTER TABLE `dv_users` DISABLE KEYS */;
INSERT INTO `dv_users` VALUES (1,'Mr. Tristian Ward','rheaney','].3v},','hilpert.kennith@mcclure.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(2,'Dagmar Rutherford DDS','dudley.green','9mhL&K)\"','darius.wisozk@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(3,'Mr. Dayne Runte II','randy89','g2BMm|p','streich.angel@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(4,'Aryanna Dietrich','upurdy','=)r<pPg','kgreenfelder@raynor.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(5,'Prof. Tobin Heidenreich I','nathan14','5*ae,`QR','oreilly.jessika@senger.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(6,'Audra Osinski','daisha.simonis','d[;$bAH','arnulfo58@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(7,'Amy Schulist','brain59','cBQkQYk%','norval01@wuckert.biz',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(8,'Paolo Feil','eaufderhar','cInWX/','bkling@kshlerin.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(9,'Miss Modesta Jakubowski IV','emerson.mertz','p,\"sJi$','darlene53@bednar.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(10,'Arno Franecki','stokes.joanie','UURbu%Z','zyost@watsica.info',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(11,'Jamie Kohler','faye62','duuY;Qz6','abshire.hadley@labadie.biz',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(12,'Cale Rosenbaum','lowell.mclaughlin',';rcRP)C?','hettinger.ronny@swaniawski.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(13,'Rod Schimmel','kjones','J3sEJv_','jolie29@emard.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(14,'Miss Kiara Kuvalis','tjerde','JAV40.','lue89@haley.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(15,'Ms. Alexa Berge','pmosciski','_OU2BA\'','ritchie.casandra@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(16,'Cletus Stamm MD','asha86','_~*w#6','richard92@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(17,'Destinee Mohr','iherman','``nm[:`','gwen.dietrich@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(18,'Dr. Violette Jones Jr.','vonrueden.grace','_VwA(0!','bridgette11@breitenberg.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(19,'Hardy Beahan','eliane.franecki','Ge\\Y?w','bdaugherty@emard.biz',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(20,'Kade O\'Connell','yazmin.tromp','-&shJ/e|','emmalee48@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(21,'Tianna Hyatt','osinski.tracey','ITxhgY4','rruecker@welch.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(22,'Annabell Homenick PhD','amclaughlin','cf8Y<<','gudrun.johnson@christiansen.org',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(23,'Judge Bednar','pwuckert','%=.5W\\=','helena.stiedemann@schiller.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(24,'Ms. Alicia Sporer','tdaniel','l`?TZz','mohamed35@treutel.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(25,'Reyna Nienow','boyle.cassie','J$z%8jp|','adonis84@wyman.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(26,'Prof. Camryn Howell','khalid86','0eQvrxV','aohara@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(27,'Dr. Jayce Mitchell','iblanda','L3.HzW','djones@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(28,'Colin Renner','kelton98','\"Dm#Tm','bonnie.champlin@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(29,'Ashlee Borer','smitham.jefferey','+v7.O]}','andre99@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(30,'Nasir Sporer','dominique73','3+__c(;','sidney79@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(31,'Ervin Miller','margarita.kunde','WEhTt%','nader.amparo@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(32,'Mr. Ross O\'Hara','zziemann','iLm^pr,','yward@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(33,'Prof. Rosario Brekke','kuhlman.fidel','v;>%S>_*','hdouglas@champlin.net',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(34,'Marge King','medhurst.rhiannon','%)(m/f','ruby.stracke@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(35,'Amelie Grady','zvonrueden','|-ZRZv','max.lowe@stehr.biz',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(36,'Mr. Kody Schmeler PhD','udietrich','YI,5E!N','amos.cassin@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(37,'Dr. Adrain VonRueden','meaghan.mertz','agclRN','tkohler@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(38,'Marco Sauer','serenity.olson','nX#-N#]R','norn@yahoo.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(39,'Sherman Mayer','lpollich','>=}Wb)D','joy.lindgren@west.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(40,'Hortense Pacocha','ethan.schultz','v$3^.Sf6','lavon.casper@farrell.biz',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(41,'Maximilian Grady','jfarrell',')Hqeyc','schiller.johnnie@mitchell.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(42,'Vernie Considine','cora08','O:97<P(','juliet81@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(43,'Tania Grimes','tia43',';~d^y;*)','ihegmann@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(44,'Prof. Alex Dare MD','schuyler.mayert','zj5:D/,,','consuelo23@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(45,'Keyon Mills','wendell.upton','rEE)xv','kirlin.hattie@kulas.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(46,'Miss Hope Boyer IV','conn.kelley','JmHL=G','donnelly.cale@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(47,'Kane Schultz','kacey12','K_:s$\"P','lubowitz.lenny@gmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(48,'Allene Mayert','hand.alf','40|NDm','vbuckridge@hotmail.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(49,'Darryl Huels','peter.stark','}/fr2kx5','hailey02@runolfsson.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(50,'Matilde Brakus MD','keagan.reynolds','w{CeEB.D','beier.robyn@roberts.com',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(51,'Akis','xnos.gr','$2y$12$evfXWHRtdP8vTTNBEDMX6.Hgd0Xrdmx.GyS37BkP/RjCLfnYvNzUK','xnos.gr@gmail.com',1,'2025-09-25 17:36:30','2025-09-25 17:36:30');
/*!40000 ALTER TABLE `dv_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dv_users_roles`
--

DROP TABLE IF EXISTS `dv_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dv_users_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dv_users_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dv_users_roles`
--

LOCK TABLES `dv_users_roles` WRITE;
/*!40000 ALTER TABLE `dv_users_roles` DISABLE KEYS */;
INSERT INTO `dv_users_roles` VALUES (1,'admin',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(2,'editor',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(3,'viewer',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(4,'contributor',1,'2025-09-25 16:36:39','2025-09-25 16:36:39'),(5,'moderator',1,'2025-09-25 16:36:39','2025-09-25 16:36:39');
/*!40000 ALTER TABLE `dv_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2025_09_24_180200_create_dv_users_roles_table',1),(2,'2025_09_24_180419_create_dv_users_table',1),(3,'2025_09_24_180631_create_dv_user_role_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'phpdev'
--

--
-- Dumping routines for database 'phpdev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-26  2:38:22
