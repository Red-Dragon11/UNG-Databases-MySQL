-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gamestoresystem
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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL,
  `SKU` varchar(45) NOT NULL,
  `Amount` varchar(45) DEFAULT '0',
  PRIMARY KEY (`SKU`,`inventory_id`),
  KEY `conn_inv_idx` (`inventory_id`),
  CONSTRAINT `conn_inv` FOREIGN KEY (`inventory_id`) REFERENCES `stores` (`store_inventory`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'CODMWII22','100'),(2,'CODMWII22','20'),(3,'CODMWII22','12'),(1,'ERINGFSOFT','121'),(2,'ERINGFSOFT','29'),(3,'ERINGFSOFT','6'),(2,'GOWRPS5','36'),(3,'GOWRPS5','11'),(2,'HYPERXCLOUDII','15'),(1,'JOYCONRED','24'),(1,'KHIII','5'),(2,'KHIII','5'),(1,'NTDSLITE','13'),(2,'NTDSLITE','7'),(3,'NTDSLITE','10'),(1,'NTDSOLED','30'),(1,'PS4CONT','10'),(2,'PS4CONT','15'),(1,'PS4REG','4'),(2,'PS4REG','21'),(1,'PS5CONT','11'),(2,'PS5CONT','42'),(3,'PS5CONT','15'),(1,'SPLAT3NTDS','100'),(3,'SPLAT3NTDS','25'),(2,'SPS5DIG','10'),(3,'SPS5DIG','5'),(1,'SPS5REG','2'),(2,'SPS5REG','0'),(3,'SPS5REG','4'),(1,'TLZTKNTDS','0'),(2,'TLZTKNTDS','0'),(3,'TLZTKNTDS','0'),(1,'XBCONT','50'),(2,'XBCONT','10'),(3,'XBCONT','20'),(1,'XBOS','30'),(2,'XBOS','2'),(2,'XBOXKINECT','5'),(1,'XBSX','10'),(2,'XBSX','30'),(3,'XBSX','20');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 15:02:42
