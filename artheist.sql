CREATE DATABASE  IF NOT EXISTS `art_heist` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `art_heist`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: art_heist
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dummyartworks`
--

DROP TABLE IF EXISTS `dummyartworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dummyartworks` (
  `objectid` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Artist` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`objectid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummyartworks`
--

LOCK TABLES `dummyartworks` WRITE;
/*!40000 ALTER TABLE `dummyartworks` DISABLE KEYS */;
INSERT INTO `dummyartworks` VALUES (1,'Super',100000,'Chris'),(2,'fragile',28191,'Sadboy'),(3,'expe',17839,'Nastyboy'),(4,'docile',187980,'garbageboy'),(5,'little',75412,'rudeboy'),(6,'pain',6589,'po\'boy'),(7,'no worries',45216,'leaky'),(8,'misery',11,'Flow'),(9,'corn',7742,'Whimsy'),(10,'seven kittens riding a keg filled with the lost teeth of private school children ',3,'E. Sterbu Nee');
/*!40000 ALTER TABLE `dummyartworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblist`
--

DROP TABLE IF EXISTS `joblist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `joblist` (
  `objectid` int(11) DEFAULT NULL,
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT '123456',
  `availabilty` tinyint(4) DEFAULT '1',
  `shoppername` varchar(45) NOT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblist`
--

LOCK TABLES `joblist` WRITE;
/*!40000 ALTER TABLE `joblist` DISABLE KEYS */;
INSERT INTO `joblist` VALUES (5,1,'red',5555,1,'aja'),(3,3,'oragne',123456,1,'mike'),(1,4,'green',123456,1,'ed'),(6,5,'yellow',1111,1,'sue'),(4,6,'purple',11111,1,'manuel');
/*!40000 ALTER TABLE `joblist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 13:24:08
