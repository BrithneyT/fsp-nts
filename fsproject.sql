CREATE DATABASE  IF NOT EXISTS `fsproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fsproject`;

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fsproject
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `cerita`
--

DROP TABLE IF EXISTS `cerita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerita` (
  `idcerita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `idusers_pembuat_awal` varchar(40) NOT NULL,
  PRIMARY KEY (`idcerita`),
  KEY `fk_cerita_users1_idx` (`idusers_pembuat_awal`),
  CONSTRAINT `fk_cerita_users1` FOREIGN KEY (`idusers_pembuat_awal`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerita`
--

LOCK TABLES `cerita` WRITE;
/*!40000 ALTER TABLE `cerita` DISABLE KEYS */;
INSERT INTO `cerita` VALUES (1,'Lorem Ipsum','160421148'),(2,'Mario','160421148'),(3,'Lorem Ipsum2','160721003'),(4,'Lorem Ipsum3','160721003');
/*!40000 ALTER TABLE `cerita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paragraf`
--

DROP TABLE IF EXISTS `paragraf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paragraf` (
  `idparagraf` int(11) NOT NULL AUTO_INCREMENT,
  `idusers` varchar(40) NOT NULL,
  `idcerita` int(11) NOT NULL,
  `isi_paragraf` varchar(3000) DEFAULT NULL,
  `tanggal_buat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idparagraf`),
  KEY `fk_paragraf_users_idx` (`idusers`),
  KEY `fk_paragraf_cerita1_idx` (`idcerita`),
  CONSTRAINT `fk_paragraf_cerita1` FOREIGN KEY (`idcerita`) REFERENCES `cerita` (`idcerita`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_paragraf_users` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paragraf`
--

LOCK TABLES `paragraf` WRITE;
/*!40000 ALTER TABLE `paragraf` DISABLE KEYS */;
INSERT INTO `paragraf` VALUES (1,'160421148',1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus scelerisque ullamcorper mollis. Integer a justo suscipit, interdum lacus eu, hendrerit odio. Vivamus consequat blandit metus, cursus varius orci accumsan egestas. Aliquam in lobortis mi, et euismod velit. Morbi ultrices tincidunt est, ut ultrices dui condimentum a. Nunc molestie, lorem eget facilisis blandit, ipsum elit porta mi, vel vestibulum nisl magna quis tortor. Nam sagittis massa dolor, eu pellentesque lorem lacinia id. Proin posuere turpis eget mi auctor lobortis. Phasellus in nunc lacus. Sed ut leo risus. Cras auctor ipsum quis sem eleifend elementum. Vestibulum nisi erat, volutpat quis semper vel, aliquet vel tellus.','2023-10-18 21:10:03'),(2,'160421148',1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus scelerisque ullamcorper mollis. Integer a justo suscipit, interdum lacus eu, hendrerit odio. Vivamus consequat blandit metus, cursus varius orci accumsan egestas. Aliquam in lobortis mi, et euismod velit. Morbi ultrices tincidunt est, ut ultrices dui condimentum a. Nunc molestie, lorem eget facilisis blandit, ipsum elit porta mi, vel vestibulum nisl magna quis tortor. Nam sagittis massa dolor, eu pellentesque lorem lacinia id. Proin posuere turpis eget mi auctor lobortis. Phasellus in nunc lacus. Sed ut leo risus. Cras auctor ipsum quis sem eleifend elementum. Vestibulum nisi erat, volutpat quis semper vel, aliquet vel tellus.\r\n\r\nEtiam lacus nibh, tempor a convallis vel, pellentesque a mi. Sed nibh urna, consectetur et tincidunt ac, suscipit quis lorem. Curabitur sed laoreet dolor. Nam vitae rutrum leo. Vivamus sit amet sem sed purus pharetra vulputate vitae non sem. Maecenas lectus metus, sodales id finibus sed, elementum nec dui. Vivamus molestie at purus eu lacinia. Phasellus pharetra feugiat orci, blandit elementum lorem mollis nec. Praesent vulputate facilisis lacus, in blandit sem. Nulla facilisi.','2023-10-18 21:10:13'),(3,'160421148',1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus scelerisque ullamcorper mollis. Integer a justo suscipit, interdum lacus eu, hendrerit odio. Vivamus consequat blandit metus, cursus varius orci accumsan egestas. Aliquam in lobortis mi, et euismod velit. Morbi ultrices tincidunt est, ut ultrices dui condimentum a. Nunc molestie, lorem eget facilisis blandit, ipsum elit porta mi, vel vestibulum nisl magna quis tortor. Nam sagittis massa dolor, eu pellentesque lorem lacinia id. Proin posuere turpis eget mi auctor lobortis. Phasellus in nunc lacus. Sed ut leo risus. Cras auctor ipsum quis sem eleifend elementum. Vestibulum nisi erat, volutpat quis semper vel, aliquet vel tellus.\r\n\r\nEtiam lacus nibh, tempor a convallis vel, pellentesque a mi. Sed nibh urna, consectetur et tincidunt ac, suscipit quis lorem. Curabitur sed laoreet dolor. Nam vitae rutrum leo. Vivamus sit amet sem sed purus pharetra vulputate vitae non sem. Maecenas lectus metus, sodales id finibus sed, elementum nec dui. Vivamus molestie at purus eu lacinia. Phasellus pharetra feugiat orci, blandit elementum lorem mollis nec. Praesent vulputate facilisis lacus, in blandit sem. Nulla facilisi.','2023-10-18 21:11:20'),(4,'160421148',2,'WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO','2023-10-18 21:11:50'),(5,'160421148',2,'WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO','2023-10-18 21:18:58'),(6,'160421148',2,'WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO','2023-10-18 21:19:15'),(7,'160421148',2,'WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO','2023-10-18 21:20:34'),(8,'160421148',2,'WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO WAHOOOOOOOOOOOOO','2023-10-18 21:20:37'),(9,'160721003',3,'Etiam lacus nibh, tempor a convallis vel, pellentesque a mi. Sed nibh urna, consectetur et tincidunt ac, suscipit quis lorem. Curabitur sed laoreet dolor. Nam vitae rutrum leo. Vivamus sit amet sem sed purus pharetra vulputate vitae non sem. Maecenas lectus metus, sodales id finibus sed, elementum nec dui. Vivamus molestie at purus eu lacinia. Phasellus pharetra feugiat orci, blandit elementum lorem mollis nec. Praesent vulputate facilisis lacus, in blandit sem. Nulla facilisi.','2023-10-18 21:28:26'),(10,'160721003',3,'Etiam lacus nibh, tempor a convallis vel, pellentesque a mi. Sed nibh urna, consectetur et tincidunt ac, suscipit quis lorem. Curabitur sed laoreet dolor. Nam vitae rutrum leo. Vivamus sit amet sem sed purus pharetra vulputate vitae non sem. Maecenas lectus metus, sodales id finibus sed, elementum nec dui. Vivamus molestie at purus eu lacinia. Phasellus pharetra feugiat orci, blandit elementum lorem mollis nec. Praesent vulputate facilisis lacus, in blandit sem. Nulla facilisi.\r\n\r\nProin id sapien elementum, hendrerit ipsum vel, consectetur libero. Morbi vehicula felis sed lorem tempus, eu fermentum risus sagittis. Nunc viverra tincidunt eros. Suspendisse interdum, mauris quis euismod auctor, ipsum massa tristique enim, at tristique sapien sapien eget ligula. Ut feugiat blandit quam. Pellentesque nisl tortor, finibus id ultrices at, pretium in enim. In accumsan eros ut velit scelerisque euismod. Aenean pharetra augue id sem placerat, at tristique ipsum efficitur. Integer congue ex quis sapien placerat, eu placerat tellus efficitur.','2023-10-18 21:28:40'),(11,'160721003',4,'Nunc velit mauris, hendrerit sit amet dictum eget, sagittis vel nisi. Mauris iaculis leo dolor, sit amet tincidunt nibh sagittis et. Praesent at nisl vitae ligula dictum tempus. Morbi hendrerit imperdiet placerat. Phasellus convallis faucibus massa eget condimentum. Cras non neque in justo mollis sodales. Nulla auctor, magna quis feugiat feugiat, ex nibh bibendum libero, id pharetra nulla leo mollis lacus. Aenean quis consectetur nulla. Phasellus sed orci sed odio cursus ullamcorper. Duis vehicula sem vitae nibh semper mollis. Suspendisse feugiat vel tellus non malesuada. Pellentesque rhoncus nibh et nulla dignissim tempus.','2023-10-18 21:37:17'),(12,'160721003',4,'Phasellus fermentum justo eros, ac mattis velit consectetur in. Curabitur tristique arcu sit amet ullamcorper pellentesque. Praesent varius imperdiet neque, non condimentum orci. Nam lacinia odio eget justo dictum, eget tempor erat rhoncus. Nunc ut tincidunt velit, nec ullamcorper nibh. Cras a tellus non tortor maximus convallis sit amet vel ligula. Praesent congue sagittis semper. Sed ac lorem lectus. Duis tortor mauris, vehicula non orci ultricies, consequat dapibus mauris. Quisque sollicitudin finibus turpis et consequat.','2023-10-18 21:37:30');
/*!40000 ALTER TABLE `paragraf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` varchar(40) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('160421148','Brithney','e223d5be7e719da173c3ca4aacdebac6f7c018b9f8a3633ae3634c02246cb3b2','7f1e7fd1f73ac67b1ba7'),('160721003','Irvan','576faf75fc1edbcfda1ab8a46ee1bc265ddee7543943eed1450a4cad6db30066','38476028e249ba7d90f2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19  9:51:19
