-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: shopjpa
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cseq` int NOT NULL AUTO_INCREMENT,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  `quantity` int NOT NULL,
  `member_userid` varchar(50) DEFAULT NULL,
  `product_pseq` int DEFAULT NULL,
  PRIMARY KEY (`cseq`),
  KEY `FKejuk4lebauc9ialo3xfgajylj` (`member_userid`),
  KEY `FKpb1ksg1d291npn9a2xiq6i68h` (`product_pseq`),
  CONSTRAINT `FKejuk4lebauc9ialo3xfgajylj` FOREIGN KEY (`member_userid`) REFERENCES `member` (`userid`),
  CONSTRAINT `FKpb1ksg1d291npn9a2xiq6i68h` FOREIGN KEY (`product_pseq`) REFERENCES `product` (`pseq`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (14,'2025-02-04 10:05:29',1,'2794053001',24);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `userid` varchar(50) NOT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `pwd` varchar(300) DEFAULT NULL,
  `snsid` varchar(50) DEFAULT NULL,
  `zip_num` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('2794053001','서울 관악구 신림로44가길 32','제이타워',NULL,'heejoon73@daum.net','2025-01-27 17:05:49','강희준','010-6400-6068','kakao','$2a$10$mhSQ/W7oy7C5uviquwloP.gRIhQA78wPbOTMB/lI6HMtx2I5z7e2a',NULL,'08783'),('aaaaa','aaaa','aaa','aaa','aaa','2025-01-31 16:15:15','aaa','aaaa',NULL,'$2a$10$X8l5Ma2LjrUSiDnjUeQF.OvoV/Q9ga8MvhQfFBEgzAyIiJG25zxBO',NULL,NULL),('hong1','서울 종로구 인사동길 12','701호','(대일빌딩)','heejoonk5@naver.com','2025-01-27 14:52:59','홍길동','010-7777-8888',NULL,'$2a$10$Bqy.748q0T8vJiq/SS5.de7B4q3eMmWOzf415UiNAjMm.RZFmFqOG',NULL,'03163'),('hong2','서울 종로구 인사동길 12','701호','(대일빌딩)','heejoon73@daum.net','2025-01-27 17:44:18','홍길남','010-8888-8888',NULL,'$2a$10$X8l5Ma2LjrUSiDnjUeQF.OvoV/Q9ga8MvhQfFBEgzAyIiJG25zxBO',NULL,'03163'),('scott','서울시 종로구 인사동길 12','대일빌딩 701호','(인사동)','scott@abc.com','2025-01-24 16:00:33','김하나','010-1111-1111',NULL,'$2a$10$X8l5Ma2LjrUSiDnjUeQF.OvoV/Q9ga8MvhQfFBEgzAyIiJG25zxBO',NULL,'110-110');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_member_role_list`
--

DROP TABLE IF EXISTS `member_member_role_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_member_role_list` (
  `member_userid` varchar(50) NOT NULL,
  `member_role_list` tinyint DEFAULT NULL,
  KEY `FKexx5eaay6sasnhyyg2iv1x60x` (`member_userid`),
  CONSTRAINT `FKexx5eaay6sasnhyyg2iv1x60x` FOREIGN KEY (`member_userid`) REFERENCES `member` (`userid`),
  CONSTRAINT `member_member_role_list_chk_1` CHECK ((`member_role_list` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member_role_list`
--

LOCK TABLES `member_member_role_list` WRITE;
/*!40000 ALTER TABLE `member_member_role_list` DISABLE KEYS */;
INSERT INTO `member_member_role_list` VALUES ('scott',0),('scott',1),('2794053001',0),('hong2',0),('hong1',0),('hong1',1);
/*!40000 ALTER TABLE `member_member_role_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `odseq` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `result` int NOT NULL,
  `orders_oseq` int DEFAULT NULL,
  `product_pseq` int DEFAULT NULL,
  PRIMARY KEY (`odseq`),
  KEY `FKfuxkt6nitk1gr6x57ucrvwp2a` (`orders_oseq`),
  KEY `FK7xhgfjryga763ea7fngeg0pgx` (`product_pseq`),
  CONSTRAINT `FK7xhgfjryga763ea7fngeg0pgx` FOREIGN KEY (`product_pseq`) REFERENCES `product` (`pseq`),
  CONSTRAINT `FKfuxkt6nitk1gr6x57ucrvwp2a` FOREIGN KEY (`orders_oseq`) REFERENCES `orders` (`oseq`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (3,1,1,7,4),(4,1,1,7,6),(5,1,1,7,2),(6,1,3,8,2),(7,1,3,8,9),(8,1,1,9,10),(9,1,1,9,3),(10,1,1,10,4),(11,1,1,11,2),(12,1,1,11,23),(13,1,1,12,8),(14,1,1,12,8);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_view`
--

DROP TABLE IF EXISTS `order_view`;
/*!50001 DROP VIEW IF EXISTS `order_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_view` AS SELECT 
 1 AS `odseq`,
 1 AS `oseq`,
 1 AS `indate`,
 1 AS `userid`,
 1 AS `mname`,
 1 AS `zip_num`,
 1 AS `address1`,
 1 AS `address2`,
 1 AS `address3`,
 1 AS `phone`,
 1 AS `pseq`,
 1 AS `price2`,
 1 AS `quantity`,
 1 AS `result`,
 1 AS `pname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oseq` int NOT NULL AUTO_INCREMENT,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  `member_userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oseq`),
  KEY `FKog3agfn6vha47jxwuqqoq4gga` (`member_userid`),
  CONSTRAINT `FKog3agfn6vha47jxwuqqoq4gga` FOREIGN KEY (`member_userid`) REFERENCES `member` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,'2025-01-31 12:25:53','hong2'),(8,'2025-01-31 12:47:24','hong2'),(9,'2025-01-31 12:50:33','hong2'),(10,'2025-01-31 13:04:22','hong2'),(11,'2025-02-04 10:04:51','scott'),(12,'2025-02-04 10:05:55','scott');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pseq` int NOT NULL AUTO_INCREMENT,
  `bestyn` varchar(5) DEFAULT 'N',
  `category` int NOT NULL,
  `content` varchar(1000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `price1` int NOT NULL,
  `price2` int NOT NULL,
  `price3` int NOT NULL,
  `savefilename` varchar(255) NOT NULL,
  `useyn` varchar(5) DEFAULT 'Y',
  PRIMARY KEY (`pseq`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'N',2,'따뜻한 롱부츠 입니다.','w-28.jpg','2025-01-24 15:02:53','롱부츠',40000,50000,10000,'w-28.jpg','Y'),(2,'N',1,'여성용전용 힐','w-14.jpg','2025-01-24 15:02:53','힐',10000,12000,2000,'w-14.jpg','Y'),(3,'Y',5,'편안한 슬리퍼입니다.','w-25.jpg','2025-01-24 15:02:54','슬리퍼',5000,5500,500,'w-25.jpg','Y'),(4,'Y',1,'여성용전용 힐','w-23.jpg','2025-01-24 15:02:54','회색힐',10000,12000,2000,'w-23.jpg','Y'),(5,'N',2,'여성용 부츠','w4.jpg','2025-01-24 15:02:54','여성부츠',12000,18000,6000,'w4.jpg','Y'),(6,'Y',3,'사계절용 샌달입니다.','w-24.jpg','2025-01-24 15:02:54','핑크샌달',5000,5500,500,'w-24.jpg','Y'),(7,'Y',5,'편안한 슬리퍼입니다.','w11.jpg','2025-01-24 15:02:54','슬리퍼',5000,5500,500,'w11.jpg','Y'),(8,'N',4,'활동성이 좋은 스니커즈입니다.','w-13.jpg','2025-01-24 15:02:54','스니커즈',15000,20000,5000,'w-13.jpg','Y'),(9,'N',3,'사계절용 샌달입니다.','w-09.jpg','2025-01-24 15:02:54','샌달',5000,5500,500,'w-09.jpg','Y'),(10,'N',4,'활동성이 좋은 스니커즈입니다.','w-05.jpg','2025-01-24 15:02:54','스니커즈',15000,20000,5000,'w-05.jpg','Y'),(11,'N',2,'따뜻한 롱부츠 입니다.','w-28.jpg','2025-02-03 12:38:01','롱부츠',40000,50000,10000,'w-28.jpg','Y'),(12,'N',1,'여성용전용 힐','w-14.jpg','2025-02-03 12:38:01','힐',10000,12000,2000,'w-14.jpg','Y'),(13,'Y',5,'편안한 슬리퍼입니다.','w-25.jpg','2025-02-03 12:38:01','슬리퍼',5000,5500,500,'w-25.jpg','Y'),(14,'Y',1,'여성용전용 힐','w-23.jpg','2025-02-03 12:38:02','회색힐',10000,12000,2000,'w-23.jpg','Y'),(15,'N',2,'여성용 부츠','w4.jpg','2025-02-03 12:38:02','여성부츠',12000,18000,6000,'w4.jpg','Y'),(16,'Y',3,'사계절용 샌달입니다.','w-24.jpg','2025-02-03 12:38:02','핑크샌달',5000,5500,500,'w-24.jpg','Y'),(17,'Y',5,'편안한 슬리퍼입니다.','w11.jpg','2025-02-03 12:38:02','슬리퍼',5000,5500,500,'w11.jpg','Y'),(18,'N',4,'활동성이 좋은 스니커즈입니다.','w-13.jpg','2025-02-03 12:38:02','스니커즈',15000,20000,5000,'w-13.jpg','Y'),(19,'N',3,'사계절용 샌달입니다.','w-09.jpg','2025-02-03 12:38:02','샌달',5000,5500,500,'w-09.jpg','Y'),(20,'N',4,'활동성이 좋은 스니커즈입니다.','w-05.jpg','2025-02-03 12:38:02','스니커즈',15000,20000,5000,'w-05.jpg','Y'),(21,'N',2,'따뜻한 롱부츠 입니다.','w-28.jpg','2025-02-03 12:38:14','롱부츠',40000,50000,10000,'w-28.jpg','Y'),(22,'N',1,'여성용전용 힐','w-14.jpg','2025-02-03 12:38:14','힐',10000,12000,2000,'w-14.jpg','Y'),(23,'Y',5,'편안한 슬리퍼입니다.','w-25.jpg','2025-02-03 12:38:14','슬리퍼',5000,5500,500,'w-25.jpg','Y'),(24,'Y',1,'여성용전용 힐','w-23.jpg','2025-02-03 12:38:14','회색힐',10000,12000,2000,'w-23.jpg','Y'),(25,'N',2,'여성용 부츠','w4.jpg','2025-02-03 12:38:14','여성부츠',12000,18000,6000,'w4.jpg','Y'),(26,'Y',3,'사계절용 샌달입니다.','w-24.jpg','2025-02-03 12:38:14','핑크샌달',5000,5500,500,'w-24.jpg','Y'),(27,'Y',5,'편안한 슬리퍼입니다.','w11.jpg','2025-02-03 12:38:14','슬리퍼',5000,5500,500,'w11.jpg','Y'),(28,'N',4,'활동성이 좋은 스니커즈입니다.','w-13.jpg','2025-02-03 12:38:14','스니커즈',15000,20000,5000,'w-13.jpg','Y'),(29,'N',3,'사계절용 샌달입니다.','w5.jpg','2025-02-03 12:38:15','샌달',5000,5500,500,'w51738565509232.jpg','Y'),(30,'N',4,'활동성이 좋은 스니커즈입니다.','w-05.jpg','2025-02-03 12:38:15','스니커즈',15000,20000,5000,'w-05.jpg','Y'),(31,'N',1,'겨울용 힐\n겨울용 힐\n겨울용 힐\n겨울용 힐\n겨울용 힐','w7.jpg','2025-02-03 14:59:41','겨울용 힐',10000,200000,190000,'w71738562337239.jpg','Y');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qseq` int NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  `pass` varchar(100) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `security` varchar(5) NOT NULL DEFAULT 'N',
  `subject` varchar(100) NOT NULL,
  `member_userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qseq`),
  KEY `FK63p5ailaw7tng20b04f301e9s` (`member_userid`),
  CONSTRAINT `FK63p5ailaw7tng20b04f301e9s` FOREIGN KEY (`member_userid`) REFERENCES `member` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (2,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:08','',NULL,'N','배송관련 문의입니다','scott'),(3,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:08','',NULL,'N','환불관련','scott'),(4,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:09','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(5,'언제 받을 수 있나요','2025-01-31 17:16:09','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(6,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:09','',NULL,'N','불량품 교환 문의','hong1'),(7,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:09','',NULL,'N','배송관련 문의입니다','hong2'),(8,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:09','',NULL,'N','환불관련','hong2'),(9,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:09','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(10,'언제 받을 수 있나요','2025-01-31 17:16:09','',NULL,'N','배송이 많이 지연되고 있습니다','scott'),(11,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:09','',NULL,'N','불량품 교환 문의','scott'),(12,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:13','',NULL,'N','배송관련 문의입니다','scott'),(13,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:13','',NULL,'N','환불관련','scott'),(14,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:13','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(15,'언제 받을 수 있나요','2025-01-31 17:16:13','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(16,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:13','',NULL,'N','불량품 교환 문의','hong1'),(17,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:13','',NULL,'N','배송관련 문의입니다','hong2'),(18,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:13','',NULL,'N','환불관련','hong2'),(19,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:13','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(20,'언제 받을 수 있나요','2025-01-31 17:16:13','',NULL,'N','배송이 많이 지연되고 있습니다','scott'),(21,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:13','',NULL,'N','불량품 교환 문의','scott'),(22,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:15','',NULL,'N','배송관련 문의입니다','scott'),(23,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:15','',NULL,'N','환불관련','scott'),(24,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:15','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(25,'언제 받을 수 있나요','2025-01-31 17:16:15','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(26,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:15','',NULL,'N','불량품 교환 문의','hong1'),(27,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:15','',NULL,'N','배송관련 문의입니다','hong2'),(28,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:15','',NULL,'N','환불관련','hong2'),(29,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:15','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(30,'언제 받을 수 있나요','2025-01-31 17:16:15','',NULL,'N','배송이 많이 지연되고 있습니다','scott'),(31,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:15','',NULL,'N','불량품 교환 문의','scott'),(32,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:17','',NULL,'N','배송관련 문의입니다','scott'),(33,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:17','',NULL,'N','환불관련','scott'),(34,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:17','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(35,'언제 받을 수 있나요','2025-01-31 17:16:17','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(36,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:17','',NULL,'N','불량품 교환 문의','hong1'),(37,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:17','',NULL,'N','배송관련 문의입니다','hong2'),(38,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:17','',NULL,'N','환불관련','hong2'),(39,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:17','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(40,'언제 받을 수 있나요','2025-01-31 17:16:17','',NULL,'N','배송이 많이 지연되고 있습니다','scott'),(41,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:17','',NULL,'N','불량품 교환 문의','scott'),(42,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:19','',NULL,'N','배송관련 문의입니다','scott'),(43,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:19','',NULL,'N','환불관련','scott'),(44,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:19','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(45,'언제 받을 수 있나요','2025-01-31 17:16:19','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(46,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:19','',NULL,'N','불량품 교환 문의','hong1'),(47,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:19','',NULL,'N','배송관련 문의입니다','hong2'),(48,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:19','',NULL,'N','환불관련','hong2'),(49,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:19','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(50,'언제 받을 수 있나요','2025-01-31 17:16:19','',NULL,'N','배송이 많이 지연되고 있습니다','scott'),(51,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:19','',NULL,'N','불량품 교환 문의','scott'),(52,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:21','',NULL,'N','배송관련 문의입니다','scott'),(53,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:21','',NULL,'N','환불관련','scott'),(54,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:21','',NULL,'N','사이즈 교환 하고 싶어요','hong1'),(55,'언제 받을 수 있나요','2025-01-31 17:16:21','',NULL,'N','배송이 많이 지연되고 있습니다','hong1'),(56,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:21','','전화드리겠습니다','N','불량품 교환 문의','hong1'),(57,'현재 배송상태와 예상 배송일을 답변 부탁합니다','2025-01-31 17:16:21','',NULL,'N','배송관련 문의입니다','hong2'),(58,'환불절차 안내부탁드려요.... 배송사 선택은 어떻게 되는지도...','2025-01-31 17:16:21','',NULL,'N','환불관련','hong2'),(59,'사이즈가 예상보다 작습니다. 교환절차를 안내부탁드려요','2025-01-31 17:16:21','',NULL,'N','사이즈 교환 하고 싶어요','hong2'),(60,'언제 받을 수 있나요','2025-01-31 17:16:21','','내일 배송될 예정입니다','N','배송이 많이 지연되고 있습니다','scott'),(61,'교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','2025-01-31 17:16:21','',NULL,'N','불량품 교환 문의','scott');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `order_view`
--

/*!50001 DROP VIEW IF EXISTS `order_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_view` AS select `d`.`odseq` AS `odseq`,`o`.`oseq` AS `oseq`,`o`.`indate` AS `indate`,`o`.`member_userid` AS `userid`,`m`.`name` AS `mname`,`m`.`zip_num` AS `zip_num`,`m`.`address1` AS `address1`,`m`.`address2` AS `address2`,`m`.`address3` AS `address3`,`m`.`phone` AS `phone`,`d`.`product_pseq` AS `pseq`,`p`.`price2` AS `price2`,`d`.`quantity` AS `quantity`,`d`.`result` AS `result`,`p`.`name` AS `pname` from (((`orders` `o` join `order_detail` `d`) join `member` `m`) join `product` `p`) where ((`o`.`oseq` = `d`.`orders_oseq`) and (`o`.`member_userid` = `m`.`userid`) and (`d`.`product_pseq` = `p`.`pseq`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 11:59:39
