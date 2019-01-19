-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: txcrm
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
-- Table structure for table `tx_address`
--

DROP TABLE IF EXISTS `tx_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_address`
--

LOCK TABLES `tx_address` WRITE;
/*!40000 ALTER TABLE `tx_address` DISABLE KEYS */;
INSERT INTO `tx_address` VALUES (1,NULL,'Tân House',NULL,NULL),(2,NULL,'-',NULL,NULL),(3,NULL,'Dung mang về',NULL,NULL),(4,NULL,NULL,NULL,NULL),(5,NULL,'Dung ship',NULL,NULL),(6,NULL,'qua lấy',NULL,NULL),(7,NULL,'1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673',NULL,NULL),(8,NULL,'81A Trần Quốc Toản - 01639923468',NULL,NULL),(9,NULL,'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',NULL,NULL),(10,NULL,'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL),(16,NULL,'Tân House',NULL,NULL),(17,NULL,'Dung mang về',NULL,NULL),(18,NULL,'Dung ship',NULL,NULL),(19,NULL,'qua lấy',NULL,NULL),(20,NULL,'1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673',NULL,NULL),(21,NULL,'81A Trần Quốc Toản - 01639923468',NULL,NULL),(22,NULL,'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',NULL,NULL),(23,NULL,'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL);
/*!40000 ALTER TABLE `tx_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_catalog`
--

DROP TABLE IF EXISTS `tx_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_catalog` (
  `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`catalog_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_catalog`
--

LOCK TABLES `tx_catalog` WRITE;
/*!40000 ALTER TABLE `tx_catalog` DISABLE KEYS */;
INSERT INTO `tx_catalog` VALUES (1,'PRODUCT_UNIT','cuộn'),(2,'PRODUCT_UNIT','pc'),(3,'PRODUCT_UNIT','bag'),(4,'PRODUCT_UNIT','ổ'),(5,'PRODUCT_UNIT','100g'),(6,'PRODUCT_UNIT','chiếc'),(7,'PRODUCT_UNIT','túi'),(8,'PRODUCT_UNIT','250g'),(9,'PRODUCT_UNIT','hộp');
/*!40000 ALTER TABLE `tx_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_customer`
--

DROP TABLE IF EXISTS `tx_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_customer` (
  `customer_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_customer`
--

LOCK TABLES `tx_customer` WRITE;
/*!40000 ALTER TABLE `tx_customer` DISABLE KEYS */;
INSERT INTO `tx_customer` VALUES (1,'Anh Ân','1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673','',NULL,'2019-01-03 07:27:32',NULL),(2,'Anh Nguyên',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(3,'Ben',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(4,'Chị Cúc CSIP','qua lấy','',NULL,'2019-01-03 07:27:32',NULL),(5,'Chị Hồng Linh CCIHP gr 675 gb',NULL,'',NULL,'2019-01-19 08:41:07',NULL),(6,'Chị Ly','Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939','',NULL,'2019-01-03 07:27:32',NULL),(7,'Chị Minh (Dung)',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(8,'Chi Ngạc',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(9,'Chị Susu','81A Trần Quốc Toản - 01639923468','',NULL,'2019-01-03 07:27:32',NULL),(10,'Chị Trang',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(11,'Dung',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(12,'Đi chợ mùa thu',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(13,'Giang',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(14,'Hiếu Blue','Dung ship','',NULL,'2019-01-03 07:27:32',NULL),(15,'Hoàng Hiền',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(16,'Hùng (bạn Nhung)',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(17,'Lê (bạn Dung)',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(18,'Ngọc Chu',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(19,'Nguyễn Mạnh Tùng','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893','',NULL,'2019-01-03 07:27:32',NULL),(20,'Nhân Trần','Dung mang về','',NULL,'2019-01-03 07:27:32',NULL),(21,'SunPlay',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(22,'Tân House','Tân House','',NULL,'2019-01-03 07:27:32',NULL),(23,'Thu SunPlay',NULL,'',NULL,'2019-01-03 07:27:32',NULL),(24,'á 2',NULL,NULL,NULL,'2019-01-19 08:31:10',NULL),(25,'ád',NULL,NULL,NULL,'2019-01-19 07:50:38',NULL);
/*!40000 ALTER TABLE `tx_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_order`
--

DROP TABLE IF EXISTS `tx_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_net` decimal(10,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `invoice_status` int(1) DEFAULT '0',
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `shipping_address` varchar(2045) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_order`
--

LOCK TABLES `tx_order` WRITE;
/*!40000 ALTER TABLE `tx_order` DISABLE KEYS */;
INSERT INTO `tx_order` VALUES (1,'2018-09-03 00:00:00','1',NULL,NULL,1,NULL,NULL,22,NULL),(2,'2018-09-07 00:00:00','10',NULL,NULL,1,NULL,NULL,16,NULL),(3,'2018-09-07 00:00:00','11',NULL,NULL,1,NULL,NULL,11,NULL),(4,'2018-09-08 00:00:00','12',NULL,NULL,1,NULL,NULL,1,NULL),(5,'2018-09-08 00:00:00','13',NULL,NULL,1,NULL,NULL,17,NULL),(6,'2018-09-08 00:00:00','14',NULL,NULL,1,NULL,NULL,1,NULL),(7,'2018-09-08 00:00:00','15',NULL,NULL,1,NULL,NULL,15,NULL),(8,'2018-09-08 00:00:00','16',NULL,NULL,1,NULL,NULL,18,NULL),(9,'2018-09-08 00:00:00','17',NULL,NULL,1,NULL,NULL,21,NULL),(10,'2018-09-08 00:00:00','18',NULL,NULL,1,NULL,NULL,12,NULL),(11,'2018-09-09 00:00:00','19',NULL,NULL,1,NULL,NULL,10,NULL),(12,'2018-09-03 00:00:00','2',NULL,NULL,1,NULL,NULL,13,NULL),(13,'2018-09-09 00:00:00','20',NULL,NULL,1,NULL,NULL,23,NULL),(14,'2018-09-09 00:00:00','21',NULL,NULL,1,NULL,NULL,12,NULL),(15,'2018-09-10 00:00:00','22',NULL,NULL,1,NULL,NULL,21,NULL),(16,'2018-09-10 00:00:00','23',NULL,NULL,1,NULL,NULL,7,NULL),(17,'2018-09-10 00:00:00','24',NULL,NULL,1,NULL,NULL,9,NULL),(18,'2018-09-10 00:00:00','25',NULL,NULL,1,NULL,NULL,22,NULL),(19,'2018-09-11 00:00:00','26',NULL,NULL,1,NULL,NULL,5,NULL),(20,'2018-09-11 00:00:00','27',NULL,NULL,1,NULL,NULL,13,NULL),(21,'2018-09-11 00:00:00','28',NULL,NULL,1,NULL,NULL,2,NULL),(22,'2018-09-12 00:00:00','29',NULL,NULL,1,-22.00,NULL,6,NULL),(23,'2018-09-05 00:00:00','3',NULL,NULL,1,NULL,NULL,20,NULL),(24,'2018-09-12 00:00:00','30',NULL,NULL,1,NULL,NULL,2,NULL),(25,'2018-09-12 00:00:00','31',NULL,NULL,1,NULL,NULL,13,NULL),(26,'2018-09-12 00:00:00','32',NULL,NULL,1,NULL,NULL,19,NULL),(27,'2018-09-12 00:00:00','33',NULL,NULL,1,NULL,NULL,3,NULL),(28,'2018-09-13 00:00:00','34',NULL,NULL,1,NULL,NULL,13,NULL),(29,'2018-09-05 00:00:00','4',NULL,NULL,1,NULL,NULL,13,NULL),(30,'2018-09-05 00:00:00','5',NULL,NULL,1,NULL,NULL,8,NULL),(31,'2018-09-06 00:00:00','6',NULL,NULL,1,NULL,NULL,16,NULL),(32,'2018-09-07 00:00:00','7',NULL,NULL,1,NULL,NULL,14,NULL),(33,'2018-09-07 00:00:00','8',NULL,NULL,1,NULL,NULL,4,NULL),(34,'2018-09-07 00:00:00','9',NULL,NULL,1,NULL,NULL,22,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL),(44,'2019-01-19 15:41:58',NULL,NULL,NULL,NULL,NULL,NULL,5,'gr 4 878'),(45,'2019-01-19 15:31:38',NULL,NULL,NULL,NULL,NULL,NULL,24,'sadasd'),(46,'2019-01-19 16:22:53',NULL,NULL,NULL,1,NULL,'thử 1 cái',25,'gr 4 sdadsad');
/*!40000 ALTER TABLE `tx_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_order_item`
--

DROP TABLE IF EXISTS `tx_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `adjusted` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_order_item`
--

LOCK TABLES `tx_order_item` WRITE;
/*!40000 ALTER TABLE `tx_order_item` DISABLE KEYS */;
INSERT INTO `tx_order_item` VALUES (1,1,12,1,0),(2,1,7,2,0),(3,1,9,2,0),(4,12,6,1,-10),(5,23,7,1,0),(6,23,11,1,0),(7,29,6,1,-10),(8,29,11,1,-5),(9,30,16,1,0),(10,30,6,1,0),(11,31,15,20,0),(12,32,12,2,0),(13,32,15,20,0),(14,32,8,1,0),(15,33,14,1,0),(16,33,15,2,0),(17,34,6,1,0),(18,2,8,2,-90),(19,3,17,1,-10),(20,4,6,2,0),(21,5,6,1,0),(22,5,4,1,0),(23,5,15,12,0),(24,6,7,1,0),(25,6,9,1,0),(26,6,11,1,0),(27,7,6,1,0),(28,8,1,1,0),(29,9,10,1,0),(30,9,8,1,0),(31,9,13,1,0),(32,9,9,1,NULL),(33,10,13,3,0),(34,10,11,5,0),(35,10,10,3,0),(36,10,8,7,0),(37,11,10,1,0),(38,11,12,1,0),(39,13,1,1,0),(40,14,10,1,0),(41,14,8,1,0),(42,14,13,1,0),(43,14,11,4,0),(44,15,8,1,0),(45,15,11,2,NULL),(46,16,10,1,0),(47,17,6,2,0),(48,17,10,1,0),(49,18,12,1,0),(50,18,8,1,0),(51,18,4,1,0),(52,19,1,1,0),(53,19,11,2,0),(54,20,17,2,0),(55,21,19,1,0),(56,22,19,2,0),(57,22,12,1,0),(58,22,18,1,0),(59,22,15,6,0),(60,24,7,1,0),(61,24,11,1,0),(62,24,13,1,0),(63,24,18,1,0),(64,24,6,1,0),(65,25,6,1,-10),(66,26,10,1,0),(67,26,8,1,0),(68,26,13,1,0),(69,26,19,3,0),(70,26,15,20,0),(71,27,1,1,0),(72,28,7,1,-8),(73,28,11,1,-9),(74,42,1,1,0),(75,43,1,1,0),(76,44,32,1,10),(77,45,1,1,10),(78,46,1,1,0),(79,45,32,1,0);
/*!40000 ALTER TABLE `tx_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_product`
--

DROP TABLE IF EXISTS `tx_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_product`
--

LOCK TABLES `tx_product` WRITE;
/*!40000 ALTER TABLE `tx_product` DISABLE KEYS */;
INSERT INTO `tx_product` VALUES (1,'CUTI','Cuộn tinh than tre',NULL,'1',250.00),(2,'CUMA','Cuộn matcha',NULL,'1',250.00),(3,'CUSO','Cuộn chocolate',NULL,'1',250.00),(4,'CULA','Cuộn latte',NULL,'1',250.00),(5,'CHUm','Bánh chuối chocolate (miếng)',NULL,'2',15.00),(6,'CHUo','Bánh chuối chocolate (ổ)',NULL,'4',100.00),(7,'QCHA1','Quy chanh cốm 100g',NULL,'3',40.00),(8,'QCHA2','Quy chanh cốm 250g',NULL,'3',90.00),(9,'QCHU1','Quy chuối 100g',NULL,'3',40.00),(10,'QCHU2','Quy chuối 250g',NULL,'3',90.00),(11,'QHU1','Basil cookies 100g',NULL,'3',45.00),(12,'QHU2','Basil cookies 250g',NULL,'3',100.00),(13,'QHAA1','Quy hạnh nhân 100g (cũ)',NULL,'3',40.00),(14,'QHAA2','Quy hạnh nhân 250g (cũ)',NULL,'3',90.00),(15,'QBE','Gấu ôm hạnh nhân',NULL,'2',5.00),(16,'BR','Brownies hạt óc chó',NULL,'2',60.00),(17,'BR5','Brownies hạt óc chó 50K',NULL,'2',50.00),(18,'CUBA','Cuộn Earl Grey',NULL,'1',250.00),(19,'QVE','Vegan chocolate cookies',NULL,'5',50.00),(20,'BR3','Brownies',NULL,'2',30.00),(21,'QVnib','Vegan cookies cacao nibs',NULL,'5',55.00),(22,'BOLA','Bông lan trứng muối',NULL,'1',250.00),(23,'CUSN','Bánh cuộn sinh nhật',NULL,'6',175.00),(24,'BMSA','Bánh mỳ sấy',NULL,'7',60.00),(25,'CUSOBA','Cuộn Chocolate Earl Grey',NULL,'1',280.00),(26,'TBOLACL','Bông lan chanh leo (Test)',NULL,'4',75.00),(27,'QHA1','Quy hạnh nhân 100g ',NULL,'3',45.00),(28,'QHA2','Quy hạnh nhân 250g ',NULL,'3',100.00),(29,'CUTIB','Cuộn tinh than tre kem đậu biếc',NULL,'1',300.00),(30,'CUDFMCL','Cuộn củ dền phô mai chanh leo',NULL,'1',300.00),(31,'CUCLX','Cuộn chanh leo kem xoài',NULL,'1',300.00),(32,'QFING','Quy ngón tay hộp 20 cái',NULL,'9',75.00),(33,'TCHF1','Chiffon Cà phê Quế và hạt óc chó',NULL,'4',180.00),(34,'QCL','Quy mứt chanh leo',NULL,'9',60.00),(35,'TCHF2','Chiffon Earl Grey (hộp 4 miếng)',NULL,'9',100.00),(36,'CUDSO','Cuộn lá dứa chocolate',NULL,'1',300.00),(37,'CUBASO','Cuộn Earl Grey kem chocolate',NULL,'1',300.00),(38,'KHOBOLO','Khoai tây bỏ lò ',NULL,'9',50.00),(39,'CHUCHO','Bánh chuối chocolate hạt óc chó',NULL,'4',150.00),(40,'QHO1','Quy hồng sấy 100g',NULL,'5',45.00),(41,'QHO2','Quy hồng sấy 250g',NULL,'8',100.00),(42,'CHUm2','Bánh chuối chocolate (miếng)',NULL,'2',10.00),(43,'XMRLL','Christmas Roll',NULL,'6',200.00),(44,'CHEETA','Cheese tart ',NULL,'6',NULL);
/*!40000 ALTER TABLE `tx_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_tmp`
--

DROP TABLE IF EXISTS `tx_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tx_tmp` (
  `tmp_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjust` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tmp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_tmp`
--

LOCK TABLES `tx_tmp` WRITE;
/*!40000 ALTER TABLE `tx_tmp` DISABLE KEYS */;
INSERT INTO `tx_tmp` VALUES (1,'2018-09-03 00:00:00','1','Tân House','QHU2','0','Done',NULL,'1','Tân House',NULL,NULL,NULL),(2,'2018-09-03 00:00:00','1','Tân House','QCHA1','0','Done',NULL,'2','Tân House',NULL,NULL,NULL),(3,'2018-09-03 00:00:00','1','Tân House','QCHU1','0','Done',NULL,'2','Tân House',NULL,NULL,NULL),(4,'2018-09-03 00:00:00','2','Giang','CHUo','-10','Done',NULL,'0.5','-',NULL,NULL,NULL),(5,'2018-09-05 00:00:00','3','Nhân Trần','QCHA1','0','Done',NULL,'1','Dung mang về',NULL,NULL,NULL),(6,'2018-09-05 00:00:00','3','Nhân Trần','QHU1','0','Done',NULL,'1','Dung mang về',NULL,NULL,NULL),(7,'2018-09-05 00:00:00','4','Giang','CHUo','-10','Done',NULL,'0.5','-',NULL,NULL,NULL),(8,'2018-09-05 00:00:00','4','Giang','QHU1','-4.5','Done',NULL,'0.5','-',NULL,NULL,NULL),(9,'2018-09-05 00:00:00','5','Chi Ngạc','BR','0','Done',NULL,'1','-',NULL,NULL,NULL),(10,'2018-09-05 00:00:00','5','Chi Ngạc','CHUo','0','Done',NULL,'1','-',NULL,NULL,NULL),(11,'2018-09-06 00:00:00','6','Hùng (bạn Nhung)','QBE','0','Done',NULL,'20',NULL,NULL,NULL,NULL),(12,'2018-09-07 00:00:00','7','Hiếu Blue','QHU2','0','Done',NULL,'2','Dung ship',NULL,NULL,NULL),(13,'2018-09-07 00:00:00','7','Hiếu Blue','QBE','0','Done',NULL,'20','Dung ship',NULL,NULL,NULL),(14,'2018-09-07 00:00:00','7','Hiếu Blue','QCHA2','0','Done',NULL,'1','Dung ship',NULL,NULL,NULL),(15,'2018-09-07 00:00:00','8','Chị Cúc CSIP','QHAA2','0','Done',NULL,'1','qua lấy',NULL,NULL,NULL),(16,'2018-09-07 00:00:00','8','Chị Cúc CSIP','QBE','0','Done',NULL,'2','qua lấy',NULL,NULL,NULL),(17,'2018-09-07 00:00:00','9','Tân House','CHUo','0','Done',NULL,'1','-',NULL,NULL,NULL),(18,'2018-09-07 00:00:00','10','Hùng (bạn Nhung)','QCHA2','-90','Done',NULL,'2','-',NULL,NULL,NULL),(19,'2018-09-07 00:00:00','11','Dung','BR5','-10','Done',NULL,'1','-',NULL,NULL,NULL),(20,'2018-09-08 00:00:00','12','Anh Ân','CHUo','0','Done',NULL,'2','-',NULL,NULL,NULL),(21,'2018-09-08 00:00:00','13','Lê (bạn Dung)','ChUo','0','Done',NULL,'1','-',NULL,NULL,NULL),(22,'2018-09-08 00:00:00','13','Lê (bạn Dung)','CULA','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(23,'2018-09-08 00:00:00','13','Lê (bạn Dung)','QBE','0','Done',NULL,'12','-',NULL,NULL,NULL),(24,'2018-09-08 00:00:00','14','Anh An ','QCHA1','0','Done',NULL,'1','1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673',NULL,NULL,NULL),(25,'2018-09-08 00:00:00','14','Anh An ','QCHU1','0','Done',NULL,'1','1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673',NULL,NULL,NULL),(26,'2018-09-08 00:00:00','14','Anh An ','QHU1','0','Done',NULL,'1','1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673',NULL,NULL,NULL),(27,'2018-09-08 00:00:00','15','Hoàng Hiền','CHUo','0','Done',NULL,'1','-',NULL,NULL,NULL),(28,'2018-09-08 00:00:00','16','Ngọc Chu','CUTI','0','Done',NULL,'1','-',NULL,NULL,NULL),(29,'2018-09-08 00:00:00','17','SunPlay','QCHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(30,'2018-09-08 00:00:00','17','SunPlay','QCHA2','0','Done',NULL,'1','-',NULL,NULL,NULL),(31,'2018-09-08 00:00:00','17','SunPlay','QHAA1','0','Done',NULL,'1','-',NULL,NULL,NULL),(32,'2018-09-08 00:00:00','17','SunPlay','QCHU1',NULL,'Done',NULL,'1',NULL,NULL,NULL,NULL),(33,'2018-09-08 00:00:00','18','Đi chợ mùa thu','QHAA1','0','Done',NULL,'3','-',NULL,NULL,NULL),(34,'2018-09-08 00:00:00','18','Đi chợ mùa thu','QHU1','0','Done',NULL,'5','-',NULL,NULL,NULL),(35,'2018-09-08 00:00:00','18','Đi chợ mùa thu','QCHU2','0','Done',NULL,'3','-',NULL,NULL,NULL),(36,'2018-09-08 00:00:00','18','Đi chợ mùa thu','QCHA2','0','Done',NULL,'7','-',NULL,NULL,NULL),(37,'2018-09-09 00:00:00','19','Chị Trang','QCHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(38,'2018-09-09 00:00:00','19','Chị Trang','QHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(39,'2018-09-09 00:00:00','20','Thu SunPlay','CUTI','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(40,'2018-09-09 00:00:00','21','Đi chợ mùa thu','QCHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(41,'2018-09-09 00:00:00','21','Đi chợ mùa thu','QCHA2','0','Done',NULL,'1','-',NULL,NULL,NULL),(42,'2018-09-09 00:00:00','21','Đi chợ mùa thu','QHAA1','0','Done',NULL,'1','-',NULL,NULL,NULL),(43,'2018-09-09 00:00:00','21','Đi chợ mùa thu','QHU1','0','Done',NULL,'4','-',NULL,NULL,NULL),(44,'2018-09-10 00:00:00','22','SunPlay','QCHA2','0','Done',NULL,'1','-',NULL,NULL,NULL),(45,'2018-09-10 00:00:00','22','SunPlay','QHU1',NULL,'Done',NULL,'1.5','-',NULL,NULL,NULL),(46,'2018-09-10 00:00:00','23','Chị Minh (Dung)','QCHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(47,'2018-09-10 00:00:00','24','Chị Susu','CHUo','0','Done',NULL,'2','81A Trần Quốc Toản - 01639923468',NULL,NULL,NULL),(48,'2018-09-10 00:00:00','24','Chị Susu','QCHU2','0','Done',NULL,'1','81A Trần Quốc Toản - 01639923468',NULL,NULL,NULL),(49,'2018-09-10 00:00:00','25','Tân House','QHU2','0','Done',NULL,'1','-',NULL,NULL,NULL),(50,'2018-09-10 00:00:00','25','Tân House','QCHA2','0','Done',NULL,'1','-',NULL,NULL,NULL),(51,'2018-09-10 00:00:00','25','Tân House','CULA','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(52,'2018-09-11 00:00:00','26','Chị Hồng Linh CCIHP','CUTI','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(53,'2018-09-11 00:00:00','26','Chị Hồng Linh CCIHP','QHU1','0','Done',NULL,'1.5','-',NULL,NULL,NULL),(54,'2018-09-11 00:00:00','27','Giang','BR5','0','Done',NULL,'2','-',NULL,NULL,NULL),(55,'2018-09-11 00:00:00','28','Anh Nguyên','QVE','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(56,'2018-09-12 00:00:00','29','Chị Ly','QVE','0','Done',NULL,'2','Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',-22.00,NULL,NULL),(57,'2018-09-12 00:00:00','29','Chị Ly','QHU2','0','Done',NULL,'1','Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',NULL,NULL,NULL),(58,'2018-09-12 00:00:00','29','Chị Ly','CUBA','0','Done',NULL,'0.5','Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',NULL,NULL,NULL),(59,'2018-09-12 00:00:00','29','Chị Ly','QBE','0','Done',NULL,'6','Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939',NULL,NULL,NULL),(60,'2018-09-12 00:00:00','30','Anh Nguyên','QCHA1','0','Done',NULL,'1','-',NULL,NULL,NULL),(61,'2018-09-12 00:00:00','30','Anh Nguyên','QHU1','0','Done',NULL,'1','-',NULL,NULL,NULL),(62,'2018-09-12 00:00:00','30','Anh Nguyên','QHAA1','0','Done',NULL,'1','-',NULL,NULL,NULL),(63,'2018-09-12 00:00:00','30','Anh Nguyên','CUBA','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(64,'2018-09-12 00:00:00','30','Anh Nguyên','CHUo','0','Done',NULL,'0.5','-',NULL,NULL,NULL),(65,'2018-09-12 00:00:00','31','Giang','CHUo','-10','Done',NULL,'0.5','-',NULL,NULL,NULL),(66,'2018-09-12 00:00:00','32','Nguyễn Mạnh Tùng','QCHU2','0','Done',NULL,'1','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL,NULL),(67,'2018-09-12 00:00:00','32','Nguyễn Mạnh Tùng','QCHA2','0','Done',NULL,'1','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL,NULL),(68,'2018-09-12 00:00:00','32','Nguyễn Mạnh Tùng','QHAA1','0','Done',NULL,'1','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL,NULL),(69,'2018-09-12 00:00:00','32','Nguyễn Mạnh Tùng','QVE','0','Done',NULL,'2.5','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL,NULL),(70,'2018-09-12 00:00:00','32','Nguyễn Mạnh Tùng','QBE','0','Done',NULL,'20','Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893',NULL,NULL,NULL),(71,'2018-09-12 00:00:00','33','Ben','CUTI','0','Done',NULL,'0.5',NULL,NULL,NULL,NULL),(72,'2018-09-13 00:00:00','34','Giang','QCHA1','-8','Done',NULL,'1','-',NULL,NULL,NULL),(73,'2018-09-13 00:00:00','34','Giang','QHU1','-9','Done',NULL,'1','-',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tx_tmp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-19 22:24:09
