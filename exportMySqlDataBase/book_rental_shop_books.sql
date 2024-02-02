-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: book_rental_shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `idCategory` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `idCategory` (`idCategory`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Bumi','Tere Liye',2,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(2,'Hafalan Salat Delisa','Tere Liye',4,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(3,'si anak pintar si anak kuat','Tere Liye',2,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(4,'Pulang','Tere Liye',5,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(5,'about love','Tere Liye',5,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(6,'Harga Sebuah Percaya','Tere Liye',1,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(7,'Rich Dad Poor Dad','Robert Kiyosaki',4,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(8,'Cashflow Quadrant','Robert Kiyosaki',6,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(9,'Why We Want You To Be Rich','Robert Kiyosaki',7,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(10,'The Business School','Robert Kiyosaki',2,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(11,'Atlas Penciptaan','Harun Yahya',4,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(12,'Eternity Has Already Begun','Harun Yahya',5,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(13,'Keruntuhan Teori Evolusi','Harun Yahya',6,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(14,'Mengenal Allah lewat akal','Harun Yahya',2,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(15,'Yahudilik ve Masonluk','Harun Yahya',8,'2024-02-01 04:35:21','2024-02-01 04:35:21',NULL),(16,'Gajah Duduk','tereliye',4,'2024-02-01 07:39:34','2024-02-01 07:52:02','2024-02-01 07:54:58');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-01 16:01:15
