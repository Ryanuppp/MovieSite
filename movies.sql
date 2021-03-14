CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movies`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `arrangement`
--

DROP TABLE IF EXISTS `arrangement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arrangement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `playTime` datetime NOT NULL,
  `totalTickets` int(11) NOT NULL,
  `numOfSaleOut` int(11) NOT NULL DEFAULT '0',
  `cineID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrangement`
--

LOCK TABLES `arrangement` WRITE;
/*!40000 ALTER TABLE `arrangement` DISABLE KEYS */;
INSERT INTO `arrangement` VALUES (1,2,'2019-09-04 22:34:55',50,0,0),(2,3,'2020-09-08 09:12:53',50,3,0);
/*!40000 ALTER TABLE `arrangement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `img_path1` varchar(50) NOT NULL,
  `img_path2` varchar(50) NOT NULL,
  `img_path3` varchar(50) NOT NULL,
  `img_path4` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'BIGWORLD','BIG Street','4.8','This is a introduction','020-8888000','images/cinemas/1/post.jpg','images/cinemas/1/f1.jpg','images/cinemas/1/f2.jpg','images/cinemas/1/f3.jpg','images/cinemas/1/f1.jpg'),(2,'SMALLWORLD','SMALL Street','4.6','This is a introduction','020-7777000','images/cinemas/2/post.jpg','images/cinemas/2/f1.jpg','images/cinemas/2/f2.jpg','images/cinemas/2/f3.jpg',''),(3,'MIDDLEWORLD','MIDDLE Street','3.9','This is a introduction','020-6666000','images/cinemas/3/post.jpg','images/cinemas/3/f1.jpg','images/cinemas/3/f2.jpg','images/cinemas/3/f3.jpg',''),(4,'TINYWORLD','TINY Street','4.3','This is a introduction','020-5555000','images/cinemas/4/post.jpg','images/cinemas/4/f1.jpg','images/cinemas/4/f2.jpg','images/cinemas/4/f3.jpg','');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieslib`
--

DROP TABLE IF EXISTS `movieslib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieslib` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自动生成id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `category` varchar(255) NOT NULL COMMENT '类别',
  `text` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `country` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `releaseTime` varchar(20) NOT NULL,
  `actor` varchar(1000) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `img_path1` varchar(50) NOT NULL,
  `img_path2` varchar(50) NOT NULL,
  `img_path3` varchar(50) NOT NULL,
  `img_path4` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieslib`
--

LOCK TABLES `movieslib` WRITE;
/*!40000 ALTER TABLE `movieslib` DISABLE KEYS */;
INSERT INTO `movieslib` VALUES (1,'Instersteller','Fiction','A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.','images/movie/1/post.jpg','America','95 mins','1967/7/6','Matthew McConaughey, Anne Hathaway, Jessica Chastain','5.0','images/movie/1/s1.jpg','images/movie/1/s2.jpg','images/movie/1/s3.jpg','images/movie/1/s4.jpg'),(2,'LALA LAND','Fiction','While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.','images/movie/2/post.jpg','America','150 mins','1987/8/6','Ryan Gosling, Emma Stone, Rosemarie DeWitt','4.8','images/movie/2/s1.jpg','images/movie/2/s2.jpg','images/movie/2/s3.jpg','images/movie/2/s4.jpg'),(3,'Avatar','Fiction','A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.','images/movie/3/post.jpg','America','230 mins','1258/7/6',' Sam Worthington, Zoe Saldana, Sigourney Weaver ','4.7','images/movie/3/s1.jpg','images/movie/3/s2.jpg','images/movie/3/s3.jpg','images/movie/3/s4.jpg'),(4,'Leon','love','Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.','images/movie/4/post.jpg','France','160 mins','456/12/5','Jean Reno, Gary Oldman, Natalie Portman','4.6','images/movie/4/s1.jpg','images/movie/4/s2.jpg','images/movie/4/s3.jpg','images/movie/4/s4.jpg'),(5,'The Martian','Fiction','An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.','images/movie/5/post.jpg','America','120 mins','556/21/7','Matt Damon, Jessica Chastain, Kristen Wiig','5.0','images/movie/5/s1.jpg','images/movie/5/s2.jpg','images/movie/5/s3.jpg','images/movie/5/s4.jpg'),(6,'Whiplash','action','A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','images/movie/6/post.jpg','America','180 mins','2008/9/9',' Miles Teller, J.K. Simmons, Melissa Benoist','4.8','images/movie/6/s1.jpg','images/movie/6/s2.jpg','images/movie/6/s3.jpg','images/movie/6/s4.jpg'),(7,'Alita: Battle Angel','action','A deactivated cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.','images/movie/7/post.jpg','America','120 mins','2019/1/24','Rosa Salazar, Christoph Waltz, Jennifer Connelly','4.3','images/movie/7/s1.jpg','images/movie/7/s2.jpg','images/movie/7/s3.jpg','images/movie/7/s4.jpg'),(8,'Mr.Donkey','funny','In an effort to draw more funding from the government','images/movie/8/post.jpg','China','200 mins','2019/2/5','Suxi Ren','4.0','images/movie/8/s1.jpg','images/movie/8/s2.jpg','images/movie/8/s3.jpg','images/movie/8/s4.jpg'),(9,'Nan fang che zhan de ju hui','people','A gangster on the run sacrifices everything for his family and a woman he meets while on the lam.','images/movie/9/post.jpg','China','150 mins','2012/25/6',' Ge Hu','3.9','images/movie/9/s1.jpg','images/movie/9/s2.jpg','images/movie/9/s3.jpg','images/movie/9/s4.jpg'),(10,'The Avengers','Fiction','Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.','images/movie/10/post.jpg','America','210 mins','2020/16/4',' Robert Downey Jr.','4.2','images/movie/10/s1.jpg','images/movie/10/s2.jpg','images/movie/10/s3.jpg','images/movie/10/s4.jpg');
/*!40000 ALTER TABLE `movieslib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ticketID` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(20) NOT NULL,
  `seat` varchar(20) NOT NULL,
  `date_` varchar(20) NOT NULL,
  `time_` varchar(20) NOT NULL,
  `cinema` varchar(20) NOT NULL,
  `hall` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (40,'Whiplash','A8','08/09/2020','13:45','BIGWORLD','56','10',1),(41,'Whiplash','A9','08/09/2020','13:45','BIGWORLD','56','10',1),(42,'Whiplash','A10','08/09/2020','13:45','BIGWORLD','56','10',1),(44,'Whiplash','K9, K10, J10, J9','08/09/2020','13:45','BIGWORLD','56','120',1),(45,'Whiplash','C11, D10, E7','08/09/2020','13:45','BIGWORLD','56','40',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `test` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlib`
--

DROP TABLE IF EXISTS `userlib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlib` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `tel` mediumtext NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlib`
--

LOCK TABLES `userlib` WRITE;
/*!40000 ALTER TABLE `userlib` DISABLE KEYS */;
INSERT INTO `userlib` VALUES (1,'123456','ryan@qq.com','1111111111','ryan@qq.com'),(2,'123456','zjh@qq.com','11111111','zjh@qq.com'),(3,'123456','wgc@qq.com','11111111','566@qq.com'),(4,'123456','aaa','182123456789','458@qq.com'),(5,'','Ryan Ma','15910377353','5498@gmail.com'),(6,'123456','Ryan Li','15910377353','5498@gmail.com');
/*!40000 ALTER TABLE `userlib` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-12 13:14:46
