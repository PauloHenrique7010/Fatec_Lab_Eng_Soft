-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calculadora`
--

DROP TABLE IF EXISTS `calculadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculadora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conta_efetuada` varchar(50) DEFAULT NULL,
  `data_operacao` datetime DEFAULT NULL,
  `cod_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculadora`
--

LOCK TABLES `calculadora` WRITE;
/*!40000 ALTER TABLE `calculadora` DISABLE KEYS */;
INSERT INTO `calculadora` VALUES (2,'Fabrecio','2020-07-10 00:00:00',2),(3,'5 + 9','2020-07-10 00:00:00',2),(4,'2 + 9 = 11.0','2020-07-10 00:00:00',2),(5,'1 + 1 = 2.0','2020-07-10 22:09:21',1),(6,'20 + 1 = 21.0','2020-07-11 08:51:25',2),(7,'50 + 9 = 59.0','2020-07-11 08:58:46',2),(8,'45 + 9 = 54.0','2020-07-11 20:32:22',2),(9,'5 + 6 = 11.0','2020-07-11 21:46:02',2),(10,'1 + 2 = 3.0','2020-07-11 21:47:38',2),(11,'1 + 2 = 3.0','2020-07-11 21:50:43',2),(12,'1 + 2 = 3.0','2020-07-11 21:55:57',2),(13,'3.0 + 6 = 9.0','2020-07-11 21:56:02',2),(14,'9.0 + 8 = 17.0','2020-07-11 21:56:06',2),(15,'17.0 + 5 = 22.0','2020-07-11 21:56:13',2),(16,'1 + 2 = 3.0','2020-07-11 21:57:06',2),(17,'3.0 + 6 = 9.0','2020-07-11 21:57:08',2),(18,'9.0 + 1 = 10.0','2020-07-11 21:57:10',2),(19,'1 + 2 = 3.0','2020-07-11 21:58:09',2),(20,'3.0 + 2 = 5.0','2020-07-11 21:58:13',2),(21,'5.0 + 3 = 8.0','2020-07-11 21:58:18',2),(22,'8.0 + 8 = 16.0','2020-07-11 21:58:21',2),(23,'16.0 + 9 = 25.0','2020-07-11 21:58:24',2),(24,'1 + 5 = 6.0','2020-07-11 22:02:05',2),(25,'1 + 2.5 = 3.5','2020-07-11 22:03:08',2),(26,'5 - 6 = -1.0','2020-07-11 22:06:03',2),(27,'-1.0 + 6 = 5.0','2020-07-11 22:06:13',2),(28,'5.0 + 8 = 13.0','2020-07-11 22:06:17',2),(29,'13.0 / 2 = 6.5','2020-07-11 22:06:22',2),(30,'2 + 5 = 7.0','2020-07-11 22:11:04',2),(31,'7.0 + 1 = 8.0','2020-07-11 22:11:10',2),(32,'8.0 - 5 = 3.0','2020-07-11 22:11:15',2),(33,'3.0 - 2 = 1.0','2020-07-11 22:11:18',2),(34,'8 + 8 = 16.0','2020-07-11 22:11:26',2),(35,'16.0 / 2 = 8.0','2020-07-11 22:11:32',2),(36,'8.0 / 3.5 = 2.2857142857142856','2020-07-11 22:11:39',2),(37,'1 + 1 = 2.0','2020-07-11 22:12:09',2),(38,'2.0 - 1 = 1.0','2020-07-11 22:12:12',2),(39,'1.0 + 6 = 7.0','2020-07-11 22:12:15',2),(40,'7.0 * 2 = 14.0','2020-07-11 22:12:17',2),(41,'5 + 6 = 11.0','2020-07-11 22:56:18',2),(42,'11.0 * 5 = 55.0','2020-07-11 22:56:21',2),(43,'5 + 7 = 12.0','2020-07-11 22:56:33',2),(44,'5 + 6 = 11.0','2020-07-11 22:56:39',2),(45,'11.0 * 5 = 55.0','2020-07-11 22:56:41',2),(46,'2 ^ 9 = 512.0','2020-07-13 21:09:49',2),(47,'2 ^ 2 = 4.0','2020-07-13 21:10:06',2),(48,' V``` 49 = 7.0','2020-07-13 21:21:15',0),(49,' V``` 7.0 = 2.6457513110645907','2020-07-13 21:21:47',0),(50,'  .6457513110645907 = 0.0','2020-07-13 21:21:51',0),(51,'2 / 2 = 1.0','2020-07-13 21:27:20',2),(52,'5 * 0 = 0.0','2020-07-13 21:27:54',2),(53,'0.06 ^ 0 = 1.0','2020-07-13 21:28:01',2),(54,'6 * 6 = 36.0','2020-07-13 21:31:24',2),(55,' V``` 36 = 6.0','2020-07-13 21:31:31',2),(56,'8 - 9 = -1.0','2020-07-13 21:31:40',2),(57,'-1.0 *  = -0.0','2020-07-13 21:31:44',2),(58,'9 + 6 = 15.0','2020-07-13 21:31:53',2),(59,'15.0 + 8 = 23.0','2020-07-13 21:31:55',2),(60,'23.0 + 9 = 32.0','2020-07-13 21:31:57',2),(61,'32.0 - 5 = 27.0','2020-07-13 21:32:00',2),(62,'27.0 * 2 = 54.0','2020-07-13 21:32:02',2),(63,'54.0 / 2 = 27.0','2020-07-13 21:32:04',2);
/*!40000 ALTER TABLE `calculadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (64);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Paulo','123'),(2,'Gabriel','202cb962ac59075b964b07152d234b70'),(3,'lucas','202cb962ac59075b964b07152d234b70');
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

-- Dump completed on 2020-07-13 22:10:17
