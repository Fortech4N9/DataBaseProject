CREATE DATABASE  IF NOT EXISTS `basketbol_clubs_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `basketbol_clubs_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: basketbol_clubs_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clubs_copy`
--

DROP TABLE IF EXISTS `clubs_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs_copy` (
  `id_club` int NOT NULL AUTO_INCREMENT,
  `name_club` varchar(100) NOT NULL,
  `lige` enum('VTB-lige','NBA','G-lige','Europe-Liga') DEFAULT NULL,
  `market_value` decimal(10,0) NOT NULL,
  `founding_date` date NOT NULL,
  PRIMARY KEY (`id_club`)
) ENGINE=InnoDB AUTO_INCREMENT=2065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs_copy`
--

LOCK TABLES `clubs_copy` WRITE;
/*!40000 ALTER TABLE `clubs_copy` DISABLE KEYS */;
INSERT INTO `clubs_copy` VALUES (2011,'dgrg','NBA',32545422,'2008-11-02'),(2012,'аовым','NBA',487534785,'2009-10-02'),(2058,'gsw','NBA',21000,'1976-05-05'),(2059,'fsdggfs','NBA',3245435436,'2002-10-20'),(2060,'выпап','NBA',4336564,'2002-10-10'),(2061,'Boge khrany Rassiy','NBA',346564757,'2002-10-10'),(2062,'абубакр','NBA',5658469569,'2002-10-20'),(2063,'Тестовый клуб','NBA',999,'1991-01-01'),(2064,'qweqwe','NBA',99999,'1991-10-10');
/*!40000 ALTER TABLE `clubs_copy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 10:39:40
