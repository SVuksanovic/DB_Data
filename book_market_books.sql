-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: book_market
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `id_book` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(75) DEFAULT NULL,
  `book_publishing_year` int DEFAULT NULL,
  `book_number_of_copies` int NOT NULL DEFAULT '0',
  `book_price` float DEFAULT NULL,
  `book_delivery_date` date DEFAULT NULL,
  `id_author` int NOT NULL,
  `id_provider` int NOT NULL,
  `id_publishing_house` int NOT NULL,
  `id_ganre` int NOT NULL,
  PRIMARY KEY (`id_book`,`id_author`,`id_provider`,`id_publishing_house`,`id_ganre`),
  KEY `fk_books_authors_idx` (`id_author`),
  KEY `fk_books_providers1_idx` (`id_provider`),
  KEY `fk_books_publishing_houses1_idx` (`id_publishing_house`),
  KEY `fk_books_ganres1_idx` (`id_ganre`),
  CONSTRAINT `fk_books_authors` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`),
  CONSTRAINT `fk_books_ganres1` FOREIGN KEY (`id_ganre`) REFERENCES `ganres` (`id_ganre`),
  CONSTRAINT `fk_books_providers1` FOREIGN KEY (`id_provider`) REFERENCES `providers` (`id_provider`),
  CONSTRAINT `fk_books_publishing_houses1` FOREIGN KEY (`id_publishing_house`) REFERENCES `publishing_houses` (`id_publishing_house`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Моцарт и Сальери',1831,14,299.99,'2023-09-20',3,3,2,7),(2,'Преступление и наказание',1866,97,249.99,'2023-09-27',1,1,1,3),(3,'Идиот',1868,111,249.99,'2023-08-21',1,1,1,3),(5,'Война и мир',1873,35,449.99,'2023-09-30',2,1,2,3),(12,'Детство',1852,30,199.99,'2023-07-17',2,2,4,8),(13,'Отрочество',1854,27,224.99,'2023-08-07',2,3,4,8),(14,'Юность',1857,40,249.99,'2023-08-13',2,3,4,8),(15,'Капитанская дочка',1836,50,199.99,'2023-06-19',3,4,1,3),(16,'Евгений Онегин',1833,25,249.99,'2023-07-18',3,4,6,3),(17,'Братья Карамазовы',1878,100,299.99,'2023-09-29',1,1,5,3),(18,'Звёзды - холодные игрушки',1997,50,349.99,'2023-06-19',6,3,2,4),(19,'Горе от ума',1822,25,199.99,'2023-08-17',7,1,1,2),(20,'На западном фронте без перемен',1922,35,299.99,'2023-07-14',5,2,6,3);
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

-- Dump completed on 2023-10-27 17:54:54
