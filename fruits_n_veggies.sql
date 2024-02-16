-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: 34.71.12.223    Database: fruits_n_veggies
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `formID` int NOT NULL AUTO_INCREMENT,
  `formName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`formID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'Fresh\r'),(2,'Canned\r'),(3,'Juice\r'),(4,'Dried\r'),(5,'Frozen');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemID` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Apples\r'),(2,'Apricots\r'),(3,'Artichoke\r'),(4,'Asparagus\r'),(5,'Avocados\r'),(6,'Bananas\r'),(7,'Beets\r'),(8,'Berries\r'),(9,'Black beans\r'),(10,'Blackberries\r'),(11,'Blueberries\r'),(12,'Broccoli\r'),(13,'Brussels sprouts\r'),(14,'Butternut squash\r'),(15,'Cabbage\r'),(16,'Carrots\r'),(17,'Cauliflower\r'),(18,'Cherries\r'),(19,'Collard greens\r'),(20,'Corn\r'),(21,'Cranberries\r'),(22,'Grapefruit\r'),(23,'Grapes\r'),(24,'Kale\r'),(25,'Kidney beans\r'),(26,'Kiwi\r'),(27,'Lettuce\r'),(28,'Lima beans\r'),(29,'Mangoes\r'),(30,'Mustard greens\r'),(31,'Navy beans\r'),(32,'Okra\r'),(33,'Oranges\r'),(34,'Papaya\r'),(35,'Peaches\r'),(36,'Pears\r'),(37,'Pineapple\r'),(38,'Pinto beans\r'),(39,'Plum\r'),(40,'Pomegranate\r'),(41,'Potatoes\r'),(42,'Raspberries\r'),(43,'Spinach\r'),(44,'Strawberries\r'),(45,'Tomatoes\r'),(46,'Turnip greens\r'),(47,'Watermelon\r'),(48,'Zucchini');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `priceID` int NOT NULL AUTO_INCREMENT,
  `itemID` int DEFAULT NULL,
  `formID` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `priceUnit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`priceID`),
  KEY `prices_items_itemID_fk` (`itemID`),
  KEY `prices_forms_formID_fk` (`formID`),
  CONSTRAINT `prices_forms_formID_fk` FOREIGN KEY (`formID`) REFERENCES `forms` (`formID`),
  CONSTRAINT `prices_items_itemID_fk` FOREIGN KEY (`itemID`) REFERENCES `items` (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,1,1,1.5193,'per pound'),(2,1,2,1.066,'per pound'),(3,1,3,0.5853,'per pint'),(4,2,1,2.9665,'per pound'),(5,2,4,6.6188,'per pound'),(6,2,2,1.6905,'per pound'),(7,3,1,2.1913,'per pound'),(8,3,2,3.4119,'per pound'),(9,4,1,2.7576,'per pound'),(10,4,2,3.1269,'per pound'),(11,4,5,6.7045,'per pound'),(12,5,1,2.2368,'per pound'),(13,6,1,0.5249,'per pound'),(14,7,2,1.2684,'per pound'),(15,8,5,3.5585,'per pound'),(16,9,2,1.0281,'per pound'),(17,9,4,1.3753,'per pound'),(18,10,1,6.0172,'per pound'),(19,10,5,3.6362,'per pound'),(20,11,1,4.1739,'per pound'),(21,11,5,3.3898,'per pound'),(22,12,5,2.1543,'per pound'),(23,12,1,2.7486,'per pound'),(24,13,1,2.6895,'per pound'),(25,13,5,2.6214,'per pound'),(26,14,1,1.2325,'per pound'),(27,15,1,0.7025,'per pound'),(28,15,2,1.2823,'per pound'),(29,16,2,1.1315,'per pound'),(30,16,5,1.6763,'per pound'),(31,16,1,1.2716,'per pound'),(32,17,5,1.9946,'per pound'),(33,17,1,3.5859,'per pound'),(34,18,1,3.4269,'per pound'),(35,18,2,4.5257,'per pound'),(36,19,1,2.682,'per pound'),(37,19,2,1.0418,'per pound'),(38,19,5,1.9022,'per pound'),(39,20,1,1.8908,'per pound'),(40,20,2,1.0287,'per pound'),(41,20,5,1.6642,'per pound'),(42,21,4,4.6513,'per pound'),(43,22,1,1.1695,'per pound'),(44,22,3,1.0415,'per pint'),(45,23,1,1.8398,'per pound'),(46,23,4,3.7801,'per pound'),(47,23,3,0.7119,'per pint'),(48,24,1,2.5018,'per pound'),(49,24,5,2.1257,'per pound'),(50,25,2,0.9719,'per pound'),(51,25,4,1.7218,'per pound'),(52,26,1,2.1849,'per pound'),(53,27,1,0.9952,'per pound'),(54,28,2,1.4004,'per pound'),(55,28,5,1.8995,'per pound'),(56,28,4,2.1861,'per pound'),(57,29,1,1.1513,'per pound'),(58,29,4,10.5527,'per pound'),(59,30,2,1.0496,'per pound'),(60,30,5,1.9288,'per pound'),(61,31,2,1.0492,'per pound'),(62,31,4,1.4942,'per pound'),(63,32,1,3.9803,'per pound'),(64,32,5,1.8562,'per pound'),(65,33,1,1.2131,'per pound'),(66,33,3,0.9842,'per pint'),(67,34,1,1.2904,'per pound'),(68,34,4,5.5089,'per pound'),(69,35,1,1.7167,'per pound'),(70,35,2,2.0237,'per pound'),(71,36,1,1.5865,'per pound'),(72,36,2,1.9546,'per pound'),(73,37,1,0.5685,'per pound'),(74,37,4,6.6492,'per pound'),(75,37,3,0.6973,'per pound'),(76,37,2,1.4344,'per pound'),(77,38,2,0.8742,'per pound'),(78,38,4,1.2933,'per pound'),(79,39,1,2.0292,'per pound'),(80,39,3,1.5522,'per pint'),(81,39,4,5.7042,'per pound'),(82,40,1,2.235,'per pound'),(83,40,3,3.122,'per pint'),(84,41,1,0.6682,'per pound'),(85,41,2,1.107,'per pound'),(86,41,5,1.5371,'per pound'),(87,42,1,6.6391,'per pound'),(88,42,5,4.1877,'per pound'),(89,43,2,1.3154,'per pound'),(90,43,5,2.133,'per pound'),(91,43,1,2.994,'per pound'),(92,44,1,2.58,'per pound'),(93,44,5,2.8189,'per pound'),(94,45,2,1.0175,'per pound'),(95,45,1,4.1458,'per pound'),(96,46,1,2.4176,'per pound'),(97,46,2,1.0429,'per pound'),(98,46,5,1.9451,'per pound'),(99,47,1,0.3604,'per pound'),(100,48,1,1.5489,'per pound');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 20:29:26
