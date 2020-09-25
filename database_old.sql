-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: rtdas_upload
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `plant_station_lookup`
--

DROP TABLE IF EXISTS `plant_station_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_station_lookup` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) NOT NULL,
  `plant_station` varchar(100) NOT NULL,
  `station_code` bigint NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `station_location` varchar(250) NOT NULL,
  `parameter_code` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `station_name` (`station_name`),
  KEY `plant_station` (`plant_station`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_station_lookup`
--

LOCK TABLES `plant_station_lookup` WRITE;
/*!40000 ALTER TABLE `plant_station_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_station_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pli_bkp1`
--

DROP TABLE IF EXISTS `pli_bkp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pli_bkp1` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pli_bkp1`
--

LOCK TABLES `pli_bkp1` WRITE;
/*!40000 ALTER TABLE `pli_bkp1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pli_bkp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_info`
--

DROP TABLE IF EXISTS `pollutant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_info` (
  `pollutant_id` int NOT NULL AUTO_INCREMENT,
  `pollutant_slug` varchar(200) DEFAULT NULL,
  `plant_id` int DEFAULT '0',
  `pollutant_cd` varchar(10) NOT NULL DEFAULT '',
  `threshold_value` int DEFAULT NULL,
  `pollutant_name` varchar(100) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `pollutant_nm` varchar(40) DEFAULT NULL,
  `analyzer` varchar(8) NOT NULL DEFAULT 'Stack',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pollutant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_info`
--

LOCK TABLES `pollutant_info` WRITE;
/*!40000 ALTER TABLE `pollutant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos`
--

DROP TABLE IF EXISTS `pollutant_level_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos`
--

LOCK TABLES `pollutant_level_infos` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos` DISABLE KEYS */;
INSERT INTO `pollutant_level_infos` VALUES (1,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(2,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:10:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(3,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(4,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:11:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(5,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:11:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(6,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(7,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(8,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(9,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:14:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(10,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(11,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(12,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:16:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(13,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(14,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:21:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(15,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:21:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(16,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:22:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(17,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:22:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(18,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(19,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.75,2020,8,'2020-08-05',0,NULL,NULL);
/*!40000 ALTER TABLE `pollutant_level_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019`
--

LOCK TABLES `pollutant_level_infos_2019` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_11_bkp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_11_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_11_bkp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13636942 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_11_bkp`
--

LOCK TABLES `pollutant_level_infos_2019_11_bkp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_11_bkp1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_11_bkp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_11_bkp1` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13637405 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_11_bkp1`
--

LOCK TABLES `pollutant_level_infos_2019_11_bkp1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11_bkp1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11_bkp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_acc_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_acc_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_acc_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_acc_swap`
--

LOCK TABLES `pollutant_level_infos_acc_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_acc_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_acc_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_arati_steel_ctk`
--

DROP TABLE IF EXISTS `pollutant_level_infos_arati_steel_ctk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_arati_steel_ctk` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2058911 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_arati_steel_ctk`
--

LOCK TABLES `pollutant_level_infos_arati_steel_ctk` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_arati_steel_ctk` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_arati_steel_ctk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_arati_steel_ctk_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_arati_steel_ctk_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_arati_steel_ctk_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_arati_steel_ctk_swap`
--

LOCK TABLES `pollutant_level_infos_arati_steel_ctk_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_arati_steel_ctk_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_arati_steel_ctk_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_aryan_ispat_lpn`
--

DROP TABLE IF EXISTS `pollutant_level_infos_aryan_ispat_lpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_aryan_ispat_lpn` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_aryan_ispat_lpn`
--

LOCK TABLES `pollutant_level_infos_aryan_ispat_lpn` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_aryan_ispat_lpn` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_aryan_ispat_lpn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_aryan_ispat_lpn_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_aryan_ispat_lpn_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_aryan_ispat_lpn_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_aryan_ispat_lpn_swap`
--

LOCK TABLES `pollutant_level_infos_aryan_ispat_lpn_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_aryan_ispat_lpn_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_aryan_ispat_lpn_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_balasore_alloys`
--

DROP TABLE IF EXISTS `pollutant_level_infos_balasore_alloys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_balasore_alloys` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=109829 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_balasore_alloys`
--

LOCK TABLES `pollutant_level_infos_balasore_alloys` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_balasore_alloys` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_balasore_alloys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bel`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bel` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bel`
--

LOCK TABLES `pollutant_level_infos_bel` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bel_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bel_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bel_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bel_swap`
--

LOCK TABLES `pollutant_level_infos_bel_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bel_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bel_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bhagabati_jhar`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bhagabati_jhar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bhagabati_jhar` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bhagabati_jhar`
--

LOCK TABLES `pollutant_level_infos_bhagabati_jhar` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bhagabati_jhar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bhagabati_jhar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bhagabati_jhar_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bhagabati_jhar_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bhagabati_jhar_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bhagabati_jhar_swap`
--

LOCK TABLES `pollutant_level_infos_bhagabati_jhar_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bhagabati_jhar_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bhagabati_jhar_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bhaskar_bonai`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bhaskar_bonai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bhaskar_bonai` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=153556 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bhaskar_bonai`
--

LOCK TABLES `pollutant_level_infos_bhaskar_bonai` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bhaskar_bonai` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bhaskar_bonai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bhaskar_bonai_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bhaskar_bonai_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bhaskar_bonai_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=112647 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bhaskar_bonai_swap`
--

LOCK TABLES `pollutant_level_infos_bhaskar_bonai_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bhaskar_bonai_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bhaskar_bonai_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bilt_graphics_jpr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bilt_graphics_jpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bilt_graphics_jpr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bilt_graphics_jpr`
--

LOCK TABLES `pollutant_level_infos_bilt_graphics_jpr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bilt_graphics_jpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bilt_graphics_jpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bilt_graphics_jpr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bilt_graphics_jpr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bilt_graphics_jpr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bilt_graphics_jpr_swap`
--

LOCK TABLES `pollutant_level_infos_bilt_graphics_jpr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bilt_graphics_jpr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bilt_graphics_jpr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_birla_tyres`
--

DROP TABLE IF EXISTS `pollutant_level_infos_birla_tyres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_birla_tyres` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=32433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_birla_tyres`
--

LOCK TABLES `pollutant_level_infos_birla_tyres` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_birla_tyres` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_birla_tyres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_birla_tyres_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_birla_tyres_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_birla_tyres_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=22746 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_birla_tyres_swap`
--

LOCK TABLES `pollutant_level_infos_birla_tyres_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_birla_tyres_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_birla_tyres_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bppl_ctk`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bppl_ctk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bppl_ctk` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bppl_ctk`
--

LOCK TABLES `pollutant_level_infos_bppl_ctk` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bppl_ctk` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bppl_ctk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bppl_ctk_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bppl_ctk_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bppl_ctk_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bppl_ctk_swap`
--

LOCK TABLES `pollutant_level_infos_bppl_ctk_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bppl_ctk_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bppl_ctk_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bpsl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bpsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bpsl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=699810 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bpsl`
--

LOCK TABLES `pollutant_level_infos_bpsl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bpsl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bpsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bpsl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bpsl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bpsl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=551660 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bpsl_swap`
--

LOCK TABLES `pollutant_level_infos_bpsl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bpsl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bpsl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_brg_dkl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_brg_dkl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_brg_dkl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_brg_dkl`
--

LOCK TABLES `pollutant_level_infos_brg_dkl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_brg_dkl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_brg_dkl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_brg_dkl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_brg_dkl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_brg_dkl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_brg_dkl_swap`
--

LOCK TABLES `pollutant_level_infos_brg_dkl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_brg_dkl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_brg_dkl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bsl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bsl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bsl`
--

LOCK TABLES `pollutant_level_infos_bsl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bsl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bsl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bsl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bsl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bsl_swap`
--

LOCK TABLES `pollutant_level_infos_bsl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bsl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bsl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bsppl_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bsppl_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bsppl_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bsppl_keon`
--

LOCK TABLES `pollutant_level_infos_bsppl_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bsppl_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bsppl_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_bsppl_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_bsppl_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_bsppl_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_bsppl_keon_swap`
--

LOCK TABLES `pollutant_level_infos_bsppl_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_bsppl_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_bsppl_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_calcom_cement`
--

DROP TABLE IF EXISTS `pollutant_level_infos_calcom_cement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_calcom_cement` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3984 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_calcom_cement`
--

LOCK TABLES `pollutant_level_infos_calcom_cement` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_calcom_cement` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_calcom_cement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_cocacola`
--

DROP TABLE IF EXISTS `pollutant_level_infos_cocacola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_cocacola` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=59845 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_cocacola`
--

LOCK TABLES `pollutant_level_infos_cocacola` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_cocacola` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_cocacola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_delayed`
--

DROP TABLE IF EXISTS `pollutant_level_infos_delayed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_delayed` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_delayed`
--

LOCK TABLES `pollutant_level_infos_delayed` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_delayed_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_delayed_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_delayed_swap` (
  `pid` int NOT NULL,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_delayed_swap`
--

LOCK TABLES `pollutant_level_infos_delayed_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_epml_blsr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_epml_blsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_epml_blsr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=746882 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_epml_blsr`
--

LOCK TABLES `pollutant_level_infos_epml_blsr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_epml_blsr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_epml_blsr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_epml_blsr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_epml_blsr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_epml_blsr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=226586 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_epml_blsr_swap`
--

LOCK TABLES `pollutant_level_infos_epml_blsr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_epml_blsr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_epml_blsr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_essar_steel`
--

DROP TABLE IF EXISTS `pollutant_level_infos_essar_steel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_essar_steel` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_essar_steel`
--

LOCK TABLES `pollutant_level_infos_essar_steel` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_essar_steel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_essar_steel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_essar_steel_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_essar_steel_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_essar_steel_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_essar_steel_swap`
--

LOCK TABLES `pollutant_level_infos_essar_steel_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_essar_steel_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_essar_steel_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_facor_bhadrak`
--

DROP TABLE IF EXISTS `pollutant_level_infos_facor_bhadrak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_facor_bhadrak` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=446860 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_facor_bhadrak`
--

LOCK TABLES `pollutant_level_infos_facor_bhadrak` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_facor_bhadrak` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_facor_bhadrak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_facor_bhadrak_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_facor_bhadrak_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_facor_bhadrak_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_facor_bhadrak_swap`
--

LOCK TABLES `pollutant_level_infos_facor_bhadrak_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_facor_bhadrak_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_facor_bhadrak_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_facormines_ostapala`
--

DROP TABLE IF EXISTS `pollutant_level_infos_facormines_ostapala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_facormines_ostapala` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=500610 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_facormines_ostapala`
--

LOCK TABLES `pollutant_level_infos_facormines_ostapala` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_facormines_ostapala` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_facormines_ostapala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_facormines_ostapala_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_facormines_ostapala_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_facormines_ostapala_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=218245 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_facormines_ostapala_swap`
--

LOCK TABLES `pollutant_level_infos_facormines_ostapala_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_facormines_ostapala_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_facormines_ostapala_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gapl_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gapl_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gapl_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gapl_keon`
--

LOCK TABLES `pollutant_level_infos_gapl_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gapl_keon` DISABLE KEYS */;
INSERT INTO `pollutant_level_infos_gapl_keon` VALUES (1,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:40:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(2,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:41:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(3,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 14:41:00',103.80,2020,8,'2020-08-05',0,NULL,NULL),(4,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:42:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(5,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 14:42:00',103.80,2020,8,'2020-08-05',0,NULL,NULL),(6,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:43:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(7,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 14:43:00',103.80,2020,8,'2020-08-05',0,NULL,NULL),(8,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:44:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(9,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 14:44:00',103.80,2020,8,'2020-08-05',0,NULL,NULL),(10,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:45:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(11,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 14:46:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(12,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 14:46:00',103.80,2020,8,'2020-08-05',0,NULL,NULL),(13,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:02:00',1.13,2020,8,'2020-08-05',0,NULL,NULL),(14,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:10:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(15,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:10:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(16,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:11:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(17,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:11:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(18,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:12:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(19,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:12:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(20,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:13:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(21,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:13:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(22,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:14:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(23,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:14:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(24,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:15:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(25,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:16:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(26,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:16:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(27,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:17:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(28,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:17:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(29,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:25:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(30,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:25:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(31,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:26:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(32,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:26:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(33,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:42:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(34,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:43:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(35,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:43:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(36,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:44:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(37,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:44:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(38,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:46:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(39,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:47:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(40,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:47:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(41,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:48:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(42,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:48:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(43,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:49:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(44,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:49:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(45,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:50:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(46,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:50:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(47,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:51:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(48,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:51:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(49,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:52:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(50,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:52:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(51,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:53:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(52,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:54:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(53,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:54:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(54,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(55,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:10:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(56,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(57,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:11:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(58,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:11:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(59,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(60,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(61,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(62,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:14:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(63,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(64,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(65,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:16:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(66,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(67,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:21:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(68,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:21:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(69,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:22:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(70,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:22:00',102.75,2020,8,'2020-08-05',0,NULL,NULL),(71,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.97,2020,8,'2020-08-05',0,NULL,NULL),(72,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.75,2020,8,'2020-08-05',0,NULL,NULL);
/*!40000 ALTER TABLE `pollutant_level_infos_gapl_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gapl_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gapl_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gapl_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gapl_keon_swap`
--

LOCK TABLES `pollutant_level_infos_gapl_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gapl_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gapl_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gcl_paradeep`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gcl_paradeep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gcl_paradeep` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3837 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gcl_paradeep`
--

LOCK TABLES `pollutant_level_infos_gcl_paradeep` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gcl_paradeep` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gcl_paradeep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gcl_paradeep_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gcl_paradeep_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gcl_paradeep_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=11159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gcl_paradeep_swap`
--

LOCK TABLES `pollutant_level_infos_gcl_paradeep_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gcl_paradeep_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gcl_paradeep_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gmr_dkl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gmr_dkl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gmr_dkl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gmr_dkl`
--

LOCK TABLES `pollutant_level_infos_gmr_dkl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gmr_dkl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gmr_dkl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gmr_dkl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gmr_dkl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gmr_dkl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gmr_dkl_swap`
--

LOCK TABLES `pollutant_level_infos_gmr_dkl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gmr_dkl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gmr_dkl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gppl_sund`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gppl_sund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gppl_sund` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gppl_sund`
--

LOCK TABLES `pollutant_level_infos_gppl_sund` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gppl_sund` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gppl_sund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_gppl_sund_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_gppl_sund_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_gppl_sund_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_gppl_sund_swap`
--

LOCK TABLES `pollutant_level_infos_gppl_sund_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_gppl_sund_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_gppl_sund_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco`
--

LOCK TABLES `pollutant_level_infos_hindalco` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_cpp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_cpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_cpp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=15962 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_cpp`
--

LOCK TABLES `pollutant_level_infos_hindalco_cpp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_cpp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_cpp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_cpp_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_cpp_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_cpp_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_cpp_swap`
--

LOCK TABLES `pollutant_level_infos_hindalco_cpp_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_cpp_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_cpp_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_frp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_frp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_frp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=6910 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_frp`
--

LOCK TABLES `pollutant_level_infos_hindalco_frp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_frp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_frp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_frp_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_frp_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_frp_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=278026 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_frp_swap`
--

LOCK TABLES `pollutant_level_infos_hindalco_frp_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_frp_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_frp_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_lpng`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_lpng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_lpng` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=6412 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_lpng`
--

LOCK TABLES `pollutant_level_infos_hindalco_lpng` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_lpng` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_lpng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_lpng_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_lpng_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_lpng_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_lpng_swap`
--

LOCK TABLES `pollutant_level_infos_hindalco_lpng_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_lpng_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_lpng_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hindalco_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hindalco_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hindalco_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hindalco_swap`
--

LOCK TABLES `pollutant_level_infos_hindalco_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hindalco_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_iffco`
--

DROP TABLE IF EXISTS `pollutant_level_infos_iffco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_iffco` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_iffco`
--

LOCK TABLES `pollutant_level_infos_iffco` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_iffco` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_iffco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_iffco_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_iffco_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_iffco_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_iffco_swap`
--

LOCK TABLES `pollutant_level_infos_iffco_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_iffco_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_iffco_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=499812 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa`
--

LOCK TABLES `pollutant_level_infos_imfa` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa_mines`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa_mines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa_mines` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=567701 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa_mines`
--

LOCK TABLES `pollutant_level_infos_imfa_mines` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_mines` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_mines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa_mines_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa_mines_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa_mines_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=261036 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa_mines_swap`
--

LOCK TABLES `pollutant_level_infos_imfa_mines_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_mines_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_mines_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa_pp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa_pp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa_pp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=904145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa_pp`
--

LOCK TABLES `pollutant_level_infos_imfa_pp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_pp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_pp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa_pp_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa_pp_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa_pp_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=420689 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa_pp_swap`
--

LOCK TABLES `pollutant_level_infos_imfa_pp_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_pp_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_pp_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_imfa_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_imfa_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_imfa_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_imfa_swap`
--

LOCK TABLES `pollutant_level_infos_imfa_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_imfa_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_iocl_assam`
--

DROP TABLE IF EXISTS `pollutant_level_infos_iocl_assam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_iocl_assam` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=46321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_iocl_assam`
--

LOCK TABLES `pollutant_level_infos_iocl_assam` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_assam` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_assam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_iocl_paradeep`
--

DROP TABLE IF EXISTS `pollutant_level_infos_iocl_paradeep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_iocl_paradeep` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_iocl_paradeep`
--

LOCK TABLES `pollutant_level_infos_iocl_paradeep` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_paradeep` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_paradeep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_iocl_paradeep_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_iocl_paradeep_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_iocl_paradeep_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_iocl_paradeep_swap`
--

LOCK TABLES `pollutant_level_infos_iocl_paradeep_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_paradeep_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_iocl_paradeep_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jcl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jcl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=297848 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jcl`
--

LOCK TABLES `pollutant_level_infos_jcl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jcl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jcl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jcl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jcl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jcl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=108593 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jcl_swap`
--

LOCK TABLES `pollutant_level_infos_jcl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jcl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jcl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jhul_jhr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jhul_jhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jhul_jhr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jhul_jhr`
--

LOCK TABLES `pollutant_level_infos_jhul_jhr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jhul_jhr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jhul_jhr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jhul_jhr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jhul_jhr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jhul_jhr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jhul_jhr_swap`
--

LOCK TABLES `pollutant_level_infos_jhul_jhr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jhul_jhr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jhul_jhr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jitpl_tlchr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jitpl_tlchr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jitpl_tlchr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=25491 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jitpl_tlchr`
--

LOCK TABLES `pollutant_level_infos_jitpl_tlchr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jitpl_tlchr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jitpl_tlchr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jitpl_tlchr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jitpl_tlchr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jitpl_tlchr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=157888 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jitpl_tlchr_swap`
--

LOCK TABLES `pollutant_level_infos_jitpl_tlchr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jitpl_tlchr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jitpl_tlchr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jjspl_samb`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jjspl_samb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jjspl_samb` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jjspl_samb`
--

LOCK TABLES `pollutant_level_infos_jjspl_samb` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jjspl_samb` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jjspl_samb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jjspl_samb_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jjspl_samb_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jjspl_samb_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jjspl_samb_swap`
--

LOCK TABLES `pollutant_level_infos_jjspl_samb_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jjspl_samb_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jjspl_samb_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jkpaper`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jkpaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jkpaper` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jkpaper`
--

LOCK TABLES `pollutant_level_infos_jkpaper` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jkpaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jkpaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jkpaper_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jkpaper_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jkpaper_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jkpaper_swap`
--

LOCK TABLES `pollutant_level_infos_jkpaper_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jkpaper_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jkpaper_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jodaeast_mines`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jodaeast_mines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jodaeast_mines` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jodaeast_mines`
--

LOCK TABLES `pollutant_level_infos_jodaeast_mines` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jodaeast_mines` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jodaeast_mines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jodaeast_mines_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jodaeast_mines_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jodaeast_mines_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jodaeast_mines_swap`
--

LOCK TABLES `pollutant_level_infos_jodaeast_mines_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jodaeast_mines_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jodaeast_mines_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jsl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jsl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jsl`
--

LOCK TABLES `pollutant_level_infos_jsl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jsl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jsl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jsl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jsl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jsl_swap`
--

LOCK TABLES `pollutant_level_infos_jsl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jsl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jsl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jspl_anugul`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jspl_anugul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jspl_anugul` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jspl_anugul`
--

LOCK TABLES `pollutant_level_infos_jspl_anugul` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_anugul` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_anugul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jspl_anugul_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jspl_anugul_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jspl_anugul_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jspl_anugul_swap`
--

LOCK TABLES `pollutant_level_infos_jspl_anugul_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_anugul_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_anugul_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jspl_barbil`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jspl_barbil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jspl_barbil` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jspl_barbil`
--

LOCK TABLES `pollutant_level_infos_jspl_barbil` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_barbil` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_barbil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_jspl_barbil_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_jspl_barbil_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_jspl_barbil_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_jspl_barbil_swap`
--

LOCK TABLES `pollutant_level_infos_jspl_barbil_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_barbil_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_jspl_barbil_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_katamati`
--

DROP TABLE IF EXISTS `pollutant_level_infos_katamati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_katamati` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_katamati`
--

LOCK TABLES `pollutant_level_infos_katamati` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_katamati` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_katamati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_katamati_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_katamati_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_katamati_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_katamati_swap`
--

LOCK TABLES `pollutant_level_infos_katamati_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_katamati_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_katamati_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kcm_jajpur`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kcm_jajpur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kcm_jajpur` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=195659 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kcm_jajpur`
--

LOCK TABLES `pollutant_level_infos_kcm_jajpur` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kcm_jajpur` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kcm_jajpur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kcm_jajpur_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kcm_jajpur_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kcm_jajpur_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=96426 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kcm_jajpur_swap`
--

LOCK TABLES `pollutant_level_infos_kcm_jajpur_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kcm_jajpur_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kcm_jajpur_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kd_cement`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kd_cement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kd_cement` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=73672 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kd_cement`
--

LOCK TABLES `pollutant_level_infos_kd_cement` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kd_cement` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kd_cement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kjsa_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kjsa_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kjsa_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kjsa_keon`
--

LOCK TABLES `pollutant_level_infos_kjsa_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kjsa_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kjsa_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kjsa_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kjsa_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kjsa_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kjsa_keon_swap`
--

LOCK TABLES `pollutant_level_infos_kjsa_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kjsa_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kjsa_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mesco_jpr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mesco_jpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mesco_jpr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mesco_jpr`
--

LOCK TABLES `pollutant_level_infos_mesco_jpr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mesco_jpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mesco_jpr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mgm_minerals`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mgm_minerals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mgm_minerals` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=421618 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mgm_minerals`
--

LOCK TABLES `pollutant_level_infos_mgm_minerals` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mgm_minerals` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mgm_minerals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mgm_minerals_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mgm_minerals_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mgm_minerals_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=63874 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mgm_minerals_swap`
--

LOCK TABLES `pollutant_level_infos_mgm_minerals_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mgm_minerals_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mgm_minerals_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mil_jaj`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mil_jaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mil_jaj` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mil_jaj`
--

LOCK TABLES `pollutant_level_infos_mil_jaj` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mil_jaj` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mil_jaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_msp_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_msp_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_msp_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=171116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_msp_keon`
--

LOCK TABLES `pollutant_level_infos_msp_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_msp_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_msp_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_msp_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_msp_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_msp_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=104095 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_msp_keon_swap`
--

LOCK TABLES `pollutant_level_infos_msp_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_msp_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_msp_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mspl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mspl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mspl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3260 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mspl`
--

LOCK TABLES `pollutant_level_infos_mspl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mspl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mspl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mspl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mspl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mspl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4200 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mspl_swap`
--

LOCK TABLES `pollutant_level_infos_mspl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mspl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mspl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_cpp_agl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_cpp_agl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_cpp_agl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=1012 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_cpp_agl`
--

LOCK TABLES `pollutant_level_infos_nalco_cpp_agl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_cpp_agl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_cpp_agl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_cpp_agl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_cpp_agl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_cpp_agl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_cpp_agl_swap`
--

LOCK TABLES `pollutant_level_infos_nalco_cpp_agl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_cpp_agl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_cpp_agl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_damanjodi`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_damanjodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_damanjodi` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_damanjodi`
--

LOCK TABLES `pollutant_level_infos_nalco_damanjodi` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_damanjodi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_damanjodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_damanjodi_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_damanjodi_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_damanjodi_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_damanjodi_swap`
--

LOCK TABLES `pollutant_level_infos_nalco_damanjodi_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_damanjodi_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_damanjodi_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_smltr_agl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_smltr_agl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_smltr_agl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_smltr_agl`
--

LOCK TABLES `pollutant_level_infos_nalco_smltr_agl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_smltr_agl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_smltr_agl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nalco_smltr_agl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nalco_smltr_agl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nalco_smltr_agl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nalco_smltr_agl_swap`
--

LOCK TABLES `pollutant_level_infos_nalco_smltr_agl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_smltr_agl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nalco_smltr_agl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nava_bharat`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nava_bharat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nava_bharat` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=1252566 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nava_bharat`
--

LOCK TABLES `pollutant_level_infos_nava_bharat` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nava_bharat` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nava_bharat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nava_bharat_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nava_bharat_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nava_bharat_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=388675 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nava_bharat_swap`
--

LOCK TABLES `pollutant_level_infos_nava_bharat_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nava_bharat_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nava_bharat_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ninl_jajpur`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ninl_jajpur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ninl_jajpur` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=47842 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ninl_jajpur`
--

LOCK TABLES `pollutant_level_infos_ninl_jajpur` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ninl_jajpur` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ninl_jajpur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ninl_jajpur_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ninl_jajpur_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ninl_jajpur_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=428892 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ninl_jajpur_swap`
--

LOCK TABLES `pollutant_level_infos_ninl_jajpur_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ninl_jajpur_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ninl_jajpur_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nspcl_rkl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nspcl_rkl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nspcl_rkl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=491556 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nspcl_rkl`
--

LOCK TABLES `pollutant_level_infos_nspcl_rkl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nspcl_rkl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nspcl_rkl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_nspcl_rkl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_nspcl_rkl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_nspcl_rkl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=136023 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_nspcl_rkl_swap`
--

LOCK TABLES `pollutant_level_infos_nspcl_rkl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_nspcl_rkl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_nspcl_rkl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ntpc_sail`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ntpc_sail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ntpc_sail` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ntpc_sail`
--

LOCK TABLES `pollutant_level_infos_ntpc_sail` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ntpc_sail` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ntpc_sail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ntpc_sail_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ntpc_sail_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ntpc_sail_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13922 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ntpc_sail_swap`
--

LOCK TABLES `pollutant_level_infos_ntpc_sail_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ntpc_sail_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ntpc_sail_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_oclisl_sund`
--

DROP TABLE IF EXISTS `pollutant_level_infos_oclisl_sund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_oclisl_sund` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=104368 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_oclisl_sund`
--

LOCK TABLES `pollutant_level_infos_oclisl_sund` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_oclisl_sund` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_oclisl_sund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_oclisl_sund_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_oclisl_sund_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_oclisl_sund_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=256813 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_oclisl_sund_swap`
--

LOCK TABLES `pollutant_level_infos_oclisl_sund_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_oclisl_sund_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_oclisl_sund_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_omc_kalia`
--

DROP TABLE IF EXISTS `pollutant_level_infos_omc_kalia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_omc_kalia` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=1480532 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_omc_kalia`
--

LOCK TABLES `pollutant_level_infos_omc_kalia` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_omc_kalia` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_omc_kalia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_omc_kalia_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_omc_kalia_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_omc_kalia_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=420595 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_omc_kalia_swap`
--

LOCK TABLES `pollutant_level_infos_omc_kalia_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_omc_kalia_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_omc_kalia_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_opgc`
--

DROP TABLE IF EXISTS `pollutant_level_infos_opgc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_opgc` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_opgc`
--

LOCK TABLES `pollutant_level_infos_opgc` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_opgc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_opgc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_opgc_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_opgc_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_opgc_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_opgc_swap`
--

LOCK TABLES `pollutant_level_infos_opgc_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_opgc_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_opgc_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ppl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ppl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ppl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ppl`
--

LOCK TABLES `pollutant_level_infos_ppl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ppl_bkp26dec1029`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ppl_bkp26dec1029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ppl_bkp26dec1029` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=2515 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ppl_bkp26dec1029`
--

LOCK TABLES `pollutant_level_infos_ppl_bkp26dec1029` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl_bkp26dec1029` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl_bkp26dec1029` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ppl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ppl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ppl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13938 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ppl_swap`
--

LOCK TABLES `pollutant_level_infos_ppl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ppl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_psal_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_psal_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_psal_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=65486 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_psal_keon`
--

LOCK TABLES `pollutant_level_infos_psal_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_psal_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_psal_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_psal_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_psal_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_psal_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=39138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_psal_keon_swap`
--

LOCK TABLES `pollutant_level_infos_psal_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_psal_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_psal_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ptal_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ptal_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ptal_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ptal_keon`
--

LOCK TABLES `pollutant_level_infos_ptal_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ptal_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ptal_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ptal_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ptal_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ptal_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ptal_keon_swap`
--

LOCK TABLES `pollutant_level_infos_ptal_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ptal_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ptal_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_barbil`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_barbil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_barbil` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_barbil`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_barbil` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_barbil` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_barbil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_barbil_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_barbil_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_barbil_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_barbil_swap`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_barbil_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_barbil_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_barbil_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_koira`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_koira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_koira` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_koira`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_koira` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_koira_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_koira_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_koira_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_koira_swap`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_koira_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_koira`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_koira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_koira` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_koira`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_koira` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_koira`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_koira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_koira` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_koira`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_koira` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_rml_ksp_koira`
--

DROP TABLE IF EXISTS `pollutant_level_infos_rml_ksp_koira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_rml_ksp_koira` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_rml_ksp_koira`
--

LOCK TABLES `pollutant_level_infos_rml_ksp_koira` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_rml_ksp_koira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sail_rsp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sail_rsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sail_rsp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=1171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sail_rsp`
--

LOCK TABLES `pollutant_level_infos_sail_rsp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sail_rsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sail_rsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sail_rsp_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sail_rsp_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sail_rsp_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=2015286 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sail_rsp_swap`
--

LOCK TABLES `pollutant_level_infos_sail_rsp_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sail_rsp_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sail_rsp_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_saniclean`
--

DROP TABLE IF EXISTS `pollutant_level_infos_saniclean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_saniclean` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=13067 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_saniclean`
--

LOCK TABLES `pollutant_level_infos_saniclean` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_saniclean` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_saniclean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_saniclean_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_saniclean_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_saniclean_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=18078 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_saniclean_swap`
--

LOCK TABLES `pollutant_level_infos_saniclean_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_saniclean_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_saniclean_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sfml_samb`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sfml_samb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sfml_samb` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sfml_samb`
--

LOCK TABLES `pollutant_level_infos_sfml_samb` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sfml_samb` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sfml_samb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sfml_samb_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sfml_samb_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sfml_samb_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sfml_samb_swap`
--

LOCK TABLES `pollutant_level_infos_sfml_samb_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sfml_samb_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sfml_samb_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_smel_pnd`
--

DROP TABLE IF EXISTS `pollutant_level_infos_smel_pnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_smel_pnd` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_smel_pnd`
--

LOCK TABLES `pollutant_level_infos_smel_pnd` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_smel_pnd` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_smel_pnd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_smel_pnd_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_smel_pnd_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_smel_pnd_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_smel_pnd_swap`
--

LOCK TABLES `pollutant_level_infos_smel_pnd_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_smel_pnd_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_smel_pnd_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_smipl_sund`
--

DROP TABLE IF EXISTS `pollutant_level_infos_smipl_sund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_smipl_sund` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=47424 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_smipl_sund`
--

LOCK TABLES `pollutant_level_infos_smipl_sund` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_smipl_sund` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_smipl_sund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_smipl_sund_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_smipl_sund_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_smipl_sund_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=92175 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_smipl_sund_swap`
--

LOCK TABLES `pollutant_level_infos_smipl_sund_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_smipl_sund_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_smipl_sund_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_dist`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_dist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_dist` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_dist`
--

LOCK TABLES `pollutant_level_infos_ssl_dist` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_dist_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_dist_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_dist_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_dist_swap`
--

LOCK TABLES `pollutant_level_infos_ssl_dist_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dist_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dist_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_dkl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_dkl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_dkl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_dkl`
--

LOCK TABLES `pollutant_level_infos_ssl_dkl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dkl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dkl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_dkl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_dkl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_dkl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_dkl_swap`
--

LOCK TABLES `pollutant_level_infos_ssl_dkl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dkl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_dkl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_ipp_jhr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_ipp_jhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_ipp_jhr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_ipp_jhr`
--

LOCK TABLES `pollutant_level_infos_ssl_ipp_jhr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_ipp_jhr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_ipp_jhr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_ipp_jhr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_ipp_jhr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_ipp_jhr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_ipp_jhr_swap`
--

LOCK TABLES `pollutant_level_infos_ssl_ipp_jhr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_ipp_jhr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_ipp_jhr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_scpp_jhr`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_scpp_jhr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_scpp_jhr` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=1914 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_scpp_jhr`
--

LOCK TABLES `pollutant_level_infos_ssl_scpp_jhr` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_scpp_jhr_2019_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_scpp_jhr_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_scpp_jhr_2019_12` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=142557 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_scpp_jhr_2019_12`
--

LOCK TABLES `pollutant_level_infos_ssl_scpp_jhr_2019_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr_2019_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr_2019_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_ssl_scpp_jhr_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_ssl_scpp_jhr_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_ssl_scpp_jhr_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_ssl_scpp_jhr_swap`
--

LOCK TABLES `pollutant_level_infos_ssl_scpp_jhr_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_ssl_scpp_jhr_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sumrit_keon`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sumrit_keon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sumrit_keon` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sumrit_keon`
--

LOCK TABLES `pollutant_level_infos_sumrit_keon` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sumrit_keon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sumrit_keon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sumrit_keon_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sumrit_keon_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sumrit_keon_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sumrit_keon_swap`
--

LOCK TABLES `pollutant_level_infos_sumrit_keon_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sumrit_keon_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sumrit_keon_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_swap_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_swap_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_swap_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_swap_swap`
--

LOCK TABLES `pollutant_level_infos_swap_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_swap_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_swap_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tata_mines`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tata_mines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tata_mines` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=745506 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tata_mines`
--

LOCK TABLES `pollutant_level_infos_tata_mines` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_mines` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_mines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tata_mines_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tata_mines_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tata_mines_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=151295 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tata_mines_swap`
--

LOCK TABLES `pollutant_level_infos_tata_mines_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_mines_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_mines_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tata_steel`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tata_steel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tata_steel` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=4034001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tata_steel`
--

LOCK TABLES `pollutant_level_infos_tata_steel` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_steel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_steel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tata_steel_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tata_steel_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tata_steel_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=838030 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tata_steel_swap`
--

LOCK TABLES `pollutant_level_infos_tata_steel_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_steel_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tata_steel_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_thakurani`
--

DROP TABLE IF EXISTS `pollutant_level_infos_thakurani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_thakurani` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_thakurani`
--

LOCK TABLES `pollutant_level_infos_thakurani` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_thakurani` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_thakurani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_thakurani_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_thakurani_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_thakurani_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_thakurani_swap`
--

LOCK TABLES `pollutant_level_infos_thakurani_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_thakurani_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_thakurani_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tsil`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tsil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tsil` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tsil`
--

LOCK TABLES `pollutant_level_infos_tsil` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tsil` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tsil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_tsil_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_tsil_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_tsil_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_tsil_swap`
--

LOCK TABLES `pollutant_level_infos_tsil_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_tsil_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_tsil_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_utkal_alumina`
--

DROP TABLE IF EXISTS `pollutant_level_infos_utkal_alumina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_utkal_alumina` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=892 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_utkal_alumina`
--

LOCK TABLES `pollutant_level_infos_utkal_alumina` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_utkal_alumina_2019_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_utkal_alumina_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_utkal_alumina_2019_12` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=12803 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_utkal_alumina_2019_12`
--

LOCK TABLES `pollutant_level_infos_utkal_alumina_2019_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina_2019_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina_2019_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_utkal_alumina_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_utkal_alumina_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_utkal_alumina_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=21395 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_utkal_alumina_swap`
--

LOCK TABLES `pollutant_level_infos_utkal_alumina_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_alumina_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_utkal_metallics_rkl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_utkal_metallics_rkl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_utkal_metallics_rkl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_utkal_metallics_rkl`
--

LOCK TABLES `pollutant_level_infos_utkal_metallics_rkl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_metallics_rkl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_metallics_rkl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_utkal_metallics_rkl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_utkal_metallics_rkl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_utkal_metallics_rkl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_utkal_metallics_rkl_swap`
--

LOCK TABLES `pollutant_level_infos_utkal_metallics_rkl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_metallics_rkl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_utkal_metallics_rkl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_val_lanjigarh`
--

DROP TABLE IF EXISTS `pollutant_level_infos_val_lanjigarh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_val_lanjigarh` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_val_lanjigarh`
--

LOCK TABLES `pollutant_level_infos_val_lanjigarh` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_val_lanjigarh` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_val_lanjigarh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_val_lanjigarh_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_val_lanjigarh_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_val_lanjigarh_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_val_lanjigarh_swap`
--

LOCK TABLES `pollutant_level_infos_val_lanjigarh_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_val_lanjigarh_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_val_lanjigarh_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_viraj_steel`
--

DROP TABLE IF EXISTS `pollutant_level_infos_viraj_steel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_viraj_steel` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_viraj_steel`
--

LOCK TABLES `pollutant_level_infos_viraj_steel` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_viraj_steel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_viraj_steel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_viraj_steel_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_viraj_steel_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_viraj_steel_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_viraj_steel_swap`
--

LOCK TABLES `pollutant_level_infos_viraj_steel_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_viraj_steel_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_viraj_steel_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_viraja_steel`
--

DROP TABLE IF EXISTS `pollutant_level_infos_viraja_steel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_viraja_steel` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=64741 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_viraja_steel`
--

LOCK TABLES `pollutant_level_infos_viraja_steel` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_viraja_steel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_viraja_steel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_viraja_steel_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_viraja_steel_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_viraja_steel_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=22621 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_viraja_steel_swap`
--

LOCK TABLES `pollutant_level_infos_viraja_steel_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_viraja_steel_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_viraja_steel_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_visa_sunc`
--

DROP TABLE IF EXISTS `pollutant_level_infos_visa_sunc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_visa_sunc` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=456122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_visa_sunc`
--

LOCK TABLES `pollutant_level_infos_visa_sunc` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_visa_sunc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_visa_sunc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_visa_sunc_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_visa_sunc_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_visa_sunc_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=43472 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_visa_sunc_swap`
--

LOCK TABLES `pollutant_level_infos_visa_sunc_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_visa_sunc_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_visa_sunc_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_vmpl_sund`
--

DROP TABLE IF EXISTS `pollutant_level_infos_vmpl_sund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_vmpl_sund` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=17045 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_vmpl_sund`
--

LOCK TABLES `pollutant_level_infos_vmpl_sund` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_vmpl_sund` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_vmpl_sund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_vmpl_sund_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_vmpl_sund_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_vmpl_sund_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=48798 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_vmpl_sund_swap`
--

LOCK TABLES `pollutant_level_infos_vmpl_sund_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_vmpl_sund_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_vmpl_sund_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_vsl`
--

DROP TABLE IF EXISTS `pollutant_level_infos_vsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_vsl` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=947269 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_vsl`
--

LOCK TABLES `pollutant_level_infos_vsl` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_vsl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_vsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_vsl_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_vsl_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_vsl_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB AUTO_INCREMENT=506639 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_vsl_swap`
--

LOCK TABLES `pollutant_level_infos_vsl_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_vsl_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_vsl_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_western_joda`
--

DROP TABLE IF EXISTS `pollutant_level_infos_western_joda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_western_joda` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_western_joda`
--

LOCK TABLES `pollutant_level_infos_western_joda` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_western_joda` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_western_joda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_western_joda_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_western_joda_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_western_joda_swap` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_western_joda_swap`
--

LOCK TABLES `pollutant_level_infos_western_joda_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_western_joda_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_western_joda_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_unique_address`
--

DROP TABLE IF EXISTS `station_unique_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_unique_address` (
  `plant_id` varchar(200) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `imei_mac_number` varchar(300) NOT NULL,
  `station_name` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`plant_id`,`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_unique_address`
--

LOCK TABLES `station_unique_address` WRITE;
/*!40000 ALTER TABLE `station_unique_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_unique_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_history`
--

DROP TABLE IF EXISTS `upload_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_pid` int NOT NULL,
  `last_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `last_pid` (`last_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_history`
--

LOCK TABLES `upload_history` WRITE;
/*!40000 ALTER TABLE `upload_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rtdas_upload'
--

--
-- Dumping routines for database 'rtdas_upload'
--
/*!50003 DROP PROCEDURE IF EXISTS `ins_pol_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ins_pol_data`(in plant varchar(20), in station varchar(30),in rec_date varchar(10),in rec_time varchar(8), in pollutant_name varchar(10),in val varchar(20),in unit varchar(10), in analyzer varchar(14),in param varchar(20))
BEGIN



DECLARE recorded_time DATETIME;



DECLARE cyear  INT;



DECLARE cmonth INT;



DECLARE checkInsert INT;



SET checkInsert = 0;



SET recorded_time = STR_TO_DATE(concat(rec_date,' ',rec_time), '%Y-%m-%d %H:%i:%s');







SET cyear = YEAR(recorded_time);



SET cmonth = month(recorded_time);







SET @monthlyTable = concat("pollutant_level_infos_", cyear, "_", cmonth);







SET @monthlyAggTable = concat("db_migrate_pollutant_level_data_", cyear, "_", cmonth);







INSERT INTO `pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));





INSERT INTO `pollutant_level_infos_hourly` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));



IF analyzer != 'AAQ' then



INSERT INTO rtdas_upload.`pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));



INSERT INTO `real_pollutant_level_infos_sms` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`)















VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);







end if;







update real_pollutant_level_infos set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and parameter_code=pollutant_name;







if row_count() = 0 then







INSERT INTO `real_pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 5 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time)," and recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 5 , recorded_time = '", recorded_time, "', recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 1 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 1 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", date(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 14:13:39
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: rtdas
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) DEFAULT NULL,
  `display_name` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_info`
--

DROP TABLE IF EXISTS `action_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_info` (
  `action_display_id` int NOT NULL AUTO_INCREMENT,
  `action_display_name` varchar(100) NOT NULL,
  `icon_name` varchar(100) NOT NULL,
  `icon_path` varchar(100) NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `has_child` int NOT NULL,
  `action_id` int NOT NULL,
  `action_path` varchar(200) NOT NULL,
  `display_order` int NOT NULL DEFAULT '0',
  `parent_dsplay_order` int NOT NULL DEFAULT '0',
  `display` int NOT NULL,
  PRIMARY KEY (`action_display_id`),
  KEY `action_display_name` (`action_display_name`),
  KEY `display_order` (`display_order`),
  KEY `action_id` (`action_id`),
  KEY `parent_dsplay_order` (`parent_dsplay_order`),
  KEY `action_path` (`action_path`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_info`
--

LOCK TABLES `action_info` WRITE;
/*!40000 ALTER TABLE `action_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analyzer_info`
--

DROP TABLE IF EXISTS `analyzer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analyzer_info` (
  `analyzer_id` int NOT NULL,
  `analyzer_name` varchar(150) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analyzer_info`
--

LOCK TABLES `analyzer_info` WRITE;
/*!40000 ALTER TABLE `analyzer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `analyzer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calibration_parameter_master`
--

DROP TABLE IF EXISTS `calibration_parameter_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calibration_parameter_master` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(70) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calibration_parameter_master`
--

LOCK TABLES `calibration_parameter_master` WRITE;
/*!40000 ALTER TABLE `calibration_parameter_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `calibration_parameter_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calibration_test_1`
--

DROP TABLE IF EXISTS `calibration_test_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calibration_test_1` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `CO` decimal(10,4) DEFAULT NULL,
  `NOX` decimal(10,4) DEFAULT NULL,
  `SOX` decimal(10,4) DEFAULT NULL,
  `calibration_type` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_value` decimal(10,4) DEFAULT NULL,
  `flag` int DEFAULT '0',
  `threshold_level` decimal(10,2) DEFAULT NULL,
  `attr_1` varchar(15) NOT NULL,
  `attr_2` varchar(15) NOT NULL,
  `attr_3` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calibration_test_1`
--

LOCK TABLES `calibration_test_1` WRITE;
/*!40000 ALTER TABLE `calibration_test_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `calibration_test_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calibration_test_device_id_master`
--

DROP TABLE IF EXISTS `calibration_test_device_id_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calibration_test_device_id_master` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `divice_id` varchar(30) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `attr_1` varchar(100) NOT NULL,
  `plant_name` varchar(100) NOT NULL,
  `attr_2` varchar(100) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calibration_test_device_id_master`
--

LOCK TABLES `calibration_test_device_id_master` WRITE;
/*!40000 ALTER TABLE `calibration_test_device_id_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `calibration_test_device_id_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calibration_type_request_master`
--

DROP TABLE IF EXISTS `calibration_type_request_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calibration_type_request_master` (
  `plant_id` varchar(50) NOT NULL,
  `divice_id` varchar(50) NOT NULL,
  `calibration_type` varchar(100) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `attr_1` varchar(100) NOT NULL,
  `attr_2` varchar(100) NOT NULL,
  `attr_3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calibration_type_request_master`
--

LOCK TABLES `calibration_type_request_master` WRITE;
/*!40000 ALTER TABLE `calibration_type_request_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `calibration_type_request_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calibration_user_info`
--

DROP TABLE IF EXISTS `calibration_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calibration_user_info` (
  `cu_id` int NOT NULL AUTO_INCREMENT,
  `cal_time` datetime NOT NULL,
  `C_user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mob_no` varchar(15) DEFAULT NULL,
  `instrument_type` varchar(10) DEFAULT NULL,
  `iwp` varchar(40) DEFAULT NULL,
  `make` varchar(20) NOT NULL DEFAULT 'Sunjray',
  `model` varchar(30) DEFAULT NULL,
  `manufacture_yr` varchar(30) DEFAULT NULL,
  `COc_val` decimal(10,2) NOT NULL,
  `Noxc_val` decimal(10,2) NOT NULL,
  `SOxc_val` decimal(10,2) NOT NULL,
  `co_min` int NOT NULL,
  `co_max` int NOT NULL,
  `NOx_min` int NOT NULL,
  `NOx_max` int NOT NULL,
  `SOx_min` int NOT NULL,
  `SOx_max` int NOT NULL,
  `CO_cert` blob NOT NULL,
  `NOx_cert` blob NOT NULL,
  `SOx_cert` blob NOT NULL,
  `plant_id` varchar(30) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `ZeroConcentration` decimal(10,2) DEFAULT NULL,
  `Factor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calibration_user_info`
--

LOCK TABLES `calibration_user_info` WRITE;
/*!40000 ALTER TABLE `calibration_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `calibration_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_info`
--

DROP TABLE IF EXISTS `camera_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_info` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `plant_name` varchar(200) NOT NULL,
  `inlet_url` varchar(150) DEFAULT NULL,
  `outlet_url` varchar(150) DEFAULT NULL,
  `station_count` int NOT NULL DEFAULT '1',
  `station_id` varchar(30) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `parameter_name` varchar(30) DEFAULT NULL,
  `threshold_level` decimal(10,2) DEFAULT '0.00',
  `device_details` varchar(300) DEFAULT NULL,
  `rtmp_url` varchar(300) DEFAULT NULL,
  `ptzurl` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_info`
--

LOCK TABLES `camera_info` WRITE;
/*!40000 ALTER TABLE `camera_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_info`
--

DROP TABLE IF EXISTS `client_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` varchar(45) DEFAULT NULL,
  `station_id` varchar(45) DEFAULT NULL,
  `station_type` varchar(45) DEFAULT NULL,
  `plant_id` varchar(45) DEFAULT NULL,
  `client_imei` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_info`
--

LOCK TABLES `client_info` WRITE;
/*!40000 ALTER TABLE `client_info` DISABLE KEYS */;
INSERT INTO `client_info` VALUES (1,'1','CEMS_1','Stack','gapl_keon','k');
/*!40000 ALTER TABLE `client_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count_high_alert_sms`
--

DROP TABLE IF EXISTS `count_high_alert_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_high_alert_sms` (
  `alert_type` varchar(10) NOT NULL,
  `plant_nm` varchar(255) NOT NULL,
  `plant_type` varchar(20) DEFAULT NULL,
  `station` varchar(20) NOT NULL,
  `parameter_nm` varchar(10) NOT NULL,
  `val` varchar(20) NOT NULL,
  `threshold_val` varchar(20) NOT NULL,
  `dateTime` varchar(25) NOT NULL,
  `avg_for` varchar(20) NOT NULL,
  `cur_date` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_high_alert_sms`
--

LOCK TABLES `count_high_alert_sms` WRITE;
/*!40000 ALTER TABLE `count_high_alert_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `count_high_alert_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpcbevtslog`
--

DROP TABLE IF EXISTS `cpcbevtslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpcbevtslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evtName` varchar(60) NOT NULL,
  `step` int NOT NULL,
  `event_MESSAGE_TEXT` varchar(60) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28864 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpcbevtslog`
--

LOCK TABLES `cpcbevtslog` WRITE;
/*!40000 ALTER TABLE `cpcbevtslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpcbevtslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2010_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2010_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2010_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2010_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2010_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2010_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2011_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2011_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2011_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2011_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2011_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2011_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2012_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2012_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2012_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2012_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2012_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2012_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2013_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2013_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2013_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2013_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2013_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2013_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2014_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2014_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2014_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2014_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2014_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2014_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=334372 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=355307 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=457718 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=166459 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=272856 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2015_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2015_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2015_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=277321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2015_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2015_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2015_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=409925 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=530736 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=554843 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=553467 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=445961 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=529734 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=494199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=551354 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=536617 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=452613 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=410825 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2016_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2016_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2016_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=419527 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2016_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2016_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2016_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=345416 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2295428 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2143723 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2217176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=309237 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=701967 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=707359 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=727728 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=630453 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1200806 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2150268 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2017_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2017_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2017_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2264756 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2017_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2017_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2017_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2150270 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1303821 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1257370 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1251424 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4330955 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6745397 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1148389 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=529549 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1802031 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1425101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1417624 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2018_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2018_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2018_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1382242 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2018_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2018_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2018_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2453457 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6225692 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=7202913 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=7306617 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3825357 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5611183 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6228845 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4113897 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4712623 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4920722 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4972019 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2019_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2019_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2019_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4920441 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2019_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2019_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2019_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_1`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3481028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_1`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_1` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_10`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_10`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_10` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_11`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_11`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_11` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_12`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_12`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_12` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_2`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3386667 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_2`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_2` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_3`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3196676 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_3`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_3` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_4`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2683007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_4`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_4` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_5`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3295083 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_5`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_5` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_6`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3438436 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_6`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_6` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_7`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3543878 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_7`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_7` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_8`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_8`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_8` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_8` DISABLE KEYS */;
INSERT INTO `db_migrate_pollutant_level_data_2020_8` VALUES (1,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.970,0.970,0.970,3.88,4,1,16,5),(2,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.970,0.970,0.970,3.88,4,5,16,1),(3,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.970,0.970,0.970,3.88,4,5,0,2),(4,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.970,0.970,0.970,3.88,4,5,0,3),(5,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.750,102.750,102.750,308.25,3,1,16,5),(6,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.750,102.750,102.750,308.25,3,5,16,1),(7,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.750,102.750,102.750,308.25,3,5,0,2),(8,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.750,102.750,102.750,308.25,3,5,0,3),(9,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.970,0.970,0.970,1.94,2,1,16,5),(10,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.970,0.970,0.970,6.789999999999999,7,5,16,1),(11,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.970,0.970,0.970,6.789999999999999,7,5,0,2),(12,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.970,0.970,0.970,6.789999999999999,7,5,0,3),(13,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.750,102.750,102.750,102.75,1,1,16,5),(14,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.750,102.750,102.750,513.75,5,5,16,1),(15,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.750,102.750,102.750,513.75,5,5,0,2),(16,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.750,102.750,102.750,513.75,5,5,0,3),(17,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.970,0.970,0.970,4.85,5,2,16,5),(18,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.750,102.750,102.750,411,4,2,16,5);
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_migrate_pollutant_level_data_2020_9`
--

DROP TABLE IF EXISTS `db_migrate_pollutant_level_data_2020_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_migrate_pollutant_level_data_2020_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_type` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `min_recorded_level` (`min_recorded_level`),
  KEY `max_recorded_level` (`max_recorded_level`),
  KEY `sum_level` (`sum_level`),
  KEY `total_level` (`total_level`),
  KEY `recorded_day` (`recorded_day`),
  KEY `recorded_hour` (`recorded_hour`),
  KEY `recorded_type` (`recorded_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_migrate_pollutant_level_data_2020_9`
--

LOCK TABLES `db_migrate_pollutant_level_data_2020_9` WRITE;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_migrate_pollutant_level_data_2020_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicthreshold`
--

DROP TABLE IF EXISTS `dynamicthreshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamicthreshold` (
  `plant_id` varchar(30) DEFAULT NULL,
  `Analyzer` varchar(30) DEFAULT NULL,
  `Station_id` varchar(30) DEFAULT NULL,
  `Dynamic_Threshold` int DEFAULT NULL,
  `recorded_time` datetime DEFAULT NULL,
  `parameter_code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicthreshold`
--

LOCK TABLES `dynamicthreshold` WRITE;
/*!40000 ALTER TABLE `dynamicthreshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicthreshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_display_type`
--

DROP TABLE IF EXISTS `field_display_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_display_type` (
  `fdid` int NOT NULL AUTO_INCREMENT,
  `field_display_name` varchar(200) NOT NULL,
  PRIMARY KEY (`fdid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_display_type`
--

LOCK TABLES `field_display_type` WRITE;
/*!40000 ALTER TABLE `field_display_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_display_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_instance`
--

DROP TABLE IF EXISTS `field_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_instance` (
  `instance_id` int NOT NULL AUTO_INCREMENT,
  `fid` int NOT NULL,
  `fdid` int NOT NULL,
  `display_name` varchar(200) NOT NULL,
  PRIMARY KEY (`instance_id`),
  UNIQUE KEY `fid` (`fid`,`fdid`),
  KEY `fdid` (`fdid`),
  CONSTRAINT `field_instance_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `field_list` (`field_id`),
  CONSTRAINT `field_instance_ibfk_2` FOREIGN KEY (`fdid`) REFERENCES `field_display_type` (`fdid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_instance`
--

LOCK TABLES `field_instance` WRITE;
/*!40000 ALTER TABLE `field_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_list`
--

DROP TABLE IF EXISTS `field_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_list` (
  `field_id` int NOT NULL AUTO_INCREMENT,
  `field_name` varchar(200) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_list`
--

LOCK TABLES `field_list` WRITE;
/*!40000 ALTER TABLE `field_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_map_poly`
--

DROP TABLE IF EXISTS `google_map_poly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_map_poly` (
  `map_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(15) DEFAULT NULL,
  `lat_long` varchar(50) DEFAULT NULL,
  `seq_` int DEFAULT NULL,
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_map_poly`
--

LOCK TABLES `google_map_poly` WRITE;
/*!40000 ALTER TABLE `google_map_poly` DISABLE KEYS */;
/*!40000 ALTER TABLE `google_map_poly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high_alert_sms`
--

DROP TABLE IF EXISTS `high_alert_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `high_alert_sms` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `alert_type` varchar(10) NOT NULL,
  `plant_nm` varchar(255) NOT NULL,
  `plant_id` int NOT NULL,
  `plant_type` varchar(200) DEFAULT NULL,
  `station` varchar(20) NOT NULL,
  `parameter_nm` varchar(10) NOT NULL,
  `val` varchar(20) NOT NULL,
  `threshold_val` varchar(20) NOT NULL,
  `dateTime` varchar(25) NOT NULL,
  `avg_for` varchar(20) NOT NULL,
  `cur_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `sentTo` text NOT NULL,
  `sent_data_type` varchar(100) NOT NULL,
  `sms_type` varchar(100) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `sms_type` (`sms_type`),
  KEY `sent_data_type` (`sent_data_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14666 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high_alert_sms`
--

LOCK TABLES `high_alert_sms` WRITE;
/*!40000 ALTER TABLE `high_alert_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `high_alert_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high_alert_sms_master`
--

DROP TABLE IF EXISTS `high_alert_sms_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `high_alert_sms_master` (
  `alert_type` varchar(10) NOT NULL,
  `plant_nm` varchar(255) NOT NULL,
  `plant_type` varchar(20) DEFAULT NULL,
  `station` varchar(20) NOT NULL,
  `parameter_nm` varchar(10) NOT NULL,
  `val` varchar(20) NOT NULL,
  `threshold_val` varchar(20) NOT NULL,
  `dateTime` varchar(25) NOT NULL,
  `avg_for` varchar(20) NOT NULL,
  `sms_rec_name` varchar(100) DEFAULT NULL,
  `sms_rec_email` varchar(100) DEFAULT NULL,
  `sms_rec_mobno` varchar(10) NOT NULL,
  `cur_date` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high_alert_sms_master`
--

LOCK TABLES `high_alert_sms_master` WRITE;
/*!40000 ALTER TABLE `high_alert_sms_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `high_alert_sms_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hindalco_calibration_type_master`
--

DROP TABLE IF EXISTS `hindalco_calibration_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hindalco_calibration_type_master` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `calibration_type` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `attr_1` varchar(15) NOT NULL,
  `attr_2` varchar(15) NOT NULL,
  `attr_3` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindalco_calibration_type_master`
--

LOCK TABLES `hindalco_calibration_type_master` WRITE;
/*!40000 ALTER TABLE `hindalco_calibration_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `hindalco_calibration_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iso_parameter_codes`
--

DROP TABLE IF EXISTS `iso_parameter_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iso_parameter_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(200) NOT NULL,
  `parameter_code` varchar(10) DEFAULT NULL,
  `parameter_short_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iso_parameter_codes`
--

LOCK TABLES `iso_parameter_codes` WRITE;
/*!40000 ALTER TABLE `iso_parameter_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `iso_parameter_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `on_demand_sms_master`
--

DROP TABLE IF EXISTS `on_demand_sms_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `on_demand_sms_master` (
  `mob_no` varchar(10) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `hour_for_avg` int NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `on_demand_sms_master`
--

LOCK TABLES `on_demand_sms_master` WRITE;
/*!40000 ALTER TABLE `on_demand_sms_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `on_demand_sms_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospcb_delayed_plant_info`
--

DROP TABLE IF EXISTS `ospcb_delayed_plant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospcb_delayed_plant_info` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(25) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `auth_person` varchar(30) DEFAULT NULL,
  `auth_person_mob` varchar(10) DEFAULT NULL,
  `auth_person_desig` varchar(20) DEFAULT NULL,
  `cpcb_usr` varchar(50) DEFAULT NULL,
  `cpcb_usr_email` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob` varchar(50) DEFAULT NULL,
  `cpcb_usr2` varchar(50) DEFAULT NULL,
  `cpcb_usr_email2` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob2` varchar(50) DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `dept_email` varchar(50) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Industry',
  `plant_name` varchar(200) NOT NULL,
  `analyzer_count` int NOT NULL DEFAULT '0',
  `HQO_email` varchar(30) DEFAULT NULL,
  `inlet_url` varchar(150) DEFAULT NULL,
  `outlet_url` varchar(150) DEFAULT NULL,
  `ro_usr` varchar(50) DEFAULT NULL,
  `ro_usr_email` varchar(50) DEFAULT NULL,
  `ro_usr_mob` varchar(50) DEFAULT NULL,
  `plant_slug` varchar(200) DEFAULT NULL,
  `auth_req` int NOT NULL DEFAULT '1',
  `station_count` int NOT NULL DEFAULT '1',
  `ospcb_send_data` int NOT NULL,
  `ospcb_start_date` date DEFAULT NULL,
  `ospcb_end_date` date DEFAULT NULL,
  `ospcb_delayed_upload_status` time DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospcb_delayed_plant_info`
--

LOCK TABLES `ospcb_delayed_plant_info` WRITE;
/*!40000 ALTER TABLE `ospcb_delayed_plant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospcb_delayed_plant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospcb_plant_info`
--

DROP TABLE IF EXISTS `ospcb_plant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospcb_plant_info` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(25) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `auth_person` varchar(30) DEFAULT NULL,
  `auth_person_mob` varchar(10) DEFAULT NULL,
  `auth_person_desig` varchar(20) DEFAULT NULL,
  `cpcb_usr` varchar(50) DEFAULT NULL,
  `cpcb_usr_email` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob` varchar(50) DEFAULT NULL,
  `cpcb_usr2` varchar(50) DEFAULT NULL,
  `cpcb_usr_email2` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob2` varchar(50) DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `dept_email` varchar(50) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Industry',
  `plant_name` varchar(200) NOT NULL,
  `analyzer_count` int NOT NULL DEFAULT '0',
  `HQO_email` varchar(30) DEFAULT NULL,
  `inlet_url` varchar(150) DEFAULT NULL,
  `outlet_url` varchar(150) DEFAULT NULL,
  `ro_usr` varchar(50) DEFAULT NULL,
  `ro_usr_email` varchar(50) DEFAULT NULL,
  `ro_usr_mob` varchar(50) DEFAULT NULL,
  `plant_slug` varchar(200) DEFAULT NULL,
  `auth_req` int NOT NULL DEFAULT '1',
  `station_count` int NOT NULL DEFAULT '1',
  `ospcb_send_data` int NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospcb_plant_info`
--

LOCK TABLES `ospcb_plant_info` WRITE;
/*!40000 ALTER TABLE `ospcb_plant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospcb_plant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospcb_site_info`
--

DROP TABLE IF EXISTS `ospcb_site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospcb_site_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) NOT NULL,
  `site_public_key` text NOT NULL,
  `site_private_key` text NOT NULL,
  `site_id` varchar(100) NOT NULL,
  `aes_key` varchar(64) NOT NULL,
  `header_delimiter` char(1) NOT NULL,
  `software_version` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospcb_site_info`
--

LOCK TABLES `ospcb_site_info` WRITE;
/*!40000 ALTER TABLE `ospcb_site_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospcb_site_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospcb_site_pollutant_infos`
--

DROP TABLE IF EXISTS `ospcb_site_pollutant_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospcb_site_pollutant_infos` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `analyzer_name` varchar(200) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `ospcb_station_name` varchar(20) NOT NULL,
  `parameter_code` varchar(20) NOT NULL,
  `parameter_unit` varchar(20) NOT NULL,
  `ospcb_plant_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`plant_id`,`analyzer`,`station_id`,`parameter_code`),
  KEY `ospcb_site_pollutant_infos_ospcb_plant_id_idx` (`ospcb_plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospcb_site_pollutant_infos`
--

LOCK TABLES `ospcb_site_pollutant_infos` WRITE;
/*!40000 ALTER TABLE `ospcb_site_pollutant_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospcb_site_pollutant_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ospcb_station_info`
--

DROP TABLE IF EXISTS `ospcb_station_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ospcb_station_info` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `station_id` varchar(30) NOT NULL DEFAULT '',
  `analyzer` varchar(5) NOT NULL DEFAULT '',
  `analyzerv2` varchar(10) NOT NULL,
  `short_name` varchar(30) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `install_date` date DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `imei_mac_number` varchar(100) DEFAULT NULL,
  `station_number` int DEFAULT '0',
  `stn_type` varchar(20) DEFAULT '',
  `has_threshold` int DEFAULT '0',
  `ospcb_station_name` varchar(100) NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ospcb_station_info`
--

LOCK TABLES `ospcb_station_info` WRITE;
/*!40000 ALTER TABLE `ospcb_station_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospcb_station_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overall_pollutant_infos`
--

DROP TABLE IF EXISTS `overall_pollutant_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overall_pollutant_infos` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(20) NOT NULL,
  `analyzer` varchar(20) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `min_recorded_level` decimal(10,3) DEFAULT NULL,
  `max_recorded_level` decimal(20,3) DEFAULT NULL,
  `sum_level` double DEFAULT NULL,
  `total_level` double DEFAULT NULL,
  `recorded_time` datetime NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overall_pollutant_infos`
--

LOCK TABLES `overall_pollutant_infos` WRITE;
/*!40000 ALTER TABLE `overall_pollutant_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `overall_pollutant_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf_mail_master`
--

DROP TABLE IF EXISTS `pdf_mail_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pdf_mail_master` (
  `file_name` varchar(30) NOT NULL DEFAULT '',
  `create_date_time` varchar(30) NOT NULL,
  `create_date` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf_mail_master`
--

LOCK TABLES `pdf_mail_master` WRITE;
/*!40000 ALTER TABLE `pdf_mail_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdf_mail_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_category`
--

DROP TABLE IF EXISTS `plant_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_category`
--

LOCK TABLES `plant_category` WRITE;
/*!40000 ALTER TABLE `plant_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_cpcb`
--

DROP TABLE IF EXISTS `plant_cpcb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_cpcb` (
  `plant_id` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_cpcb`
--

LOCK TABLES `plant_cpcb` WRITE;
/*!40000 ALTER TABLE `plant_cpcb` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_cpcb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_daily_status`
--

DROP TABLE IF EXISTS `plant_daily_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_daily_status` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `daily_status` tinyint NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `recorded_time` (`recorded_time`),
  KEY `plant_id` (`plant_id`,`analyzer`,`station_id`,`parameter_code`),
  KEY `daily_status` (`daily_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_daily_status`
--

LOCK TABLES `plant_daily_status` WRITE;
/*!40000 ALTER TABLE `plant_daily_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_daily_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_data`
--

DROP TABLE IF EXISTS `plant_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pa_name` varchar(45) DEFAULT NULL,
  `pa_unit` varchar(45) DEFAULT NULL,
  `pa_value` varchar(45) DEFAULT NULL,
  `plant_id` varchar(45) DEFAULT NULL,
  `plant_name` varchar(45) DEFAULT NULL,
  `station_id` varchar(45) DEFAULT NULL,
  `station_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_data`
--

LOCK TABLES `plant_data` WRITE;
/*!40000 ALTER TABLE `plant_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_group`
--

DROP TABLE IF EXISTS `plant_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_group` (
  `group_id` varchar(50) DEFAULT NULL,
  `group_nm` varchar(70) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `district` varchar(70) DEFAULT NULL,
  `town` varchar(70) DEFAULT NULL,
  `state` varchar(70) DEFAULT NULL,
  `no_of_plant` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_group`
--

LOCK TABLES `plant_group` WRITE;
/*!40000 ALTER TABLE `plant_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_industry_code_mater_info`
--

DROP TABLE IF EXISTS `plant_industry_code_mater_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_industry_code_mater_info` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `Industry_Code` varchar(100) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Industry',
  `plant_name` varchar(200) NOT NULL,
  `plant_slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_industry_code_mater_info`
--

LOCK TABLES `plant_industry_code_mater_info` WRITE;
/*!40000 ALTER TABLE `plant_industry_code_mater_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_industry_code_mater_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_info`
--

DROP TABLE IF EXISTS `plant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_info` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(25) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `auth_person` varchar(30) DEFAULT NULL,
  `auth_person_mob` varchar(10) DEFAULT NULL,
  `auth_person_desig` varchar(20) DEFAULT NULL,
  `cpcb_usr` varchar(50) DEFAULT NULL,
  `cpcb_usr_email` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob` varchar(50) DEFAULT NULL,
  `cpcb_usr2` varchar(50) DEFAULT NULL,
  `cpcb_usr_email2` varchar(50) DEFAULT NULL,
  `cpcb_usr_mob2` varchar(50) DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `dept_email` varchar(50) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Industry',
  `plant_name` varchar(200) NOT NULL,
  `analyzer_count` int NOT NULL DEFAULT '0',
  `HQO_email` varchar(30) DEFAULT NULL,
  `inlet_url` varchar(150) DEFAULT NULL,
  `outlet_url` varchar(150) DEFAULT NULL,
  `ro_usr` varchar(50) DEFAULT NULL,
  `ro_usr_email` varchar(50) DEFAULT NULL,
  `ro_usr_mob` varchar(50) DEFAULT NULL,
  `plant_slug` varchar(200) DEFAULT NULL,
  `auth_req` int NOT NULL DEFAULT '1',
  `station_count` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_info`
--

LOCK TABLES `plant_info` WRITE;
/*!40000 ALTER TABLE `plant_info` DISABLE KEYS */;
INSERT INTO `plant_info` VALUES (91,'gapl_keon','gapl_keon#001','758035','M/S Grewal Associates (P) Ltd. ','Iron & Steel','Keonjhar','Barbil','Barbil','Odisha','mohanty.tanmayakumar@gmail.com','www.grewal.com ','industrial',NULL,'2015-09-26 11:53:23','Tanmay Mohanty ','9937063033','AGM','Sh. Nazimuddun','nazim.cpcb@nic.in','N/A','N/A','N/A','N/A','22.117538,85.397970',1,'steel.cpcb@nic.in','Industry','Grewal Associates Pvt. Ltd.',2,NULL,NULL,NULL,NULL,NULL,NULL,'gapl_keon',1,1);
/*!40000 ALTER TABLE `plant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_info_bkp`
--

DROP TABLE IF EXISTS `plant_info_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_info_bkp` (
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(25) DEFAULT NULL,
  `password_other` varchar(25) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `auth_person` varchar(30) DEFAULT NULL,
  `auth_person_mob` varchar(10) DEFAULT NULL,
  `auth_person_desig` varchar(20) DEFAULT NULL,
  `spcb_usr` varchar(50) DEFAULT NULL,
  `spcb_usr_email` varchar(50) DEFAULT NULL,
  `spcb_usr_mob` varchar(50) DEFAULT NULL,
  `ro_usr` varchar(50) DEFAULT NULL,
  `ro_usr_email` varchar(50) DEFAULT NULL,
  `ro_usr_mob` varchar(50) DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `HQO_email` varchar(30) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `auth_req` int DEFAULT '1',
  PRIMARY KEY (`plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_info_bkp`
--

LOCK TABLES `plant_info_bkp` WRITE;
/*!40000 ALTER TABLE `plant_info_bkp` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_info_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_pollutant_info`
--

DROP TABLE IF EXISTS `plant_pollutant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_pollutant_info` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(150) NOT NULL,
  `pollutant_id` int NOT NULL,
  `threshold_value` int NOT NULL,
  `min_range` int NOT NULL,
  `max_range` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_pollutant_info`
--

LOCK TABLES `plant_pollutant_info` WRITE;
/*!40000 ALTER TABLE `plant_pollutant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_pollutant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_register`
--

DROP TABLE IF EXISTS `plant_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_register` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_slug` varchar(200) DEFAULT NULL,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `plant_name` varchar(100) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `password_other` varchar(25) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `plant_nm` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `town` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `zonal` varchar(30) NOT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `auth_person` varchar(30) DEFAULT NULL,
  `auth_person_mob` varchar(10) DEFAULT NULL,
  `auth_person_desig` varchar(20) DEFAULT NULL,
  `spcb_usr` varchar(50) DEFAULT NULL,
  `spcb_usr_email` varchar(50) DEFAULT NULL,
  `spcb_usr_mob` varchar(50) DEFAULT NULL,
  `ro_usr` varchar(50) DEFAULT NULL,
  `ro_usr_email` varchar(50) DEFAULT NULL,
  `ro_usr_mob` varchar(50) DEFAULT NULL,
  `lat_long` varchar(100) DEFAULT NULL,
  `HQO_email` varchar(30) DEFAULT NULL,
  `connected` tinyint(1) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `inlet_url` varchar(150) DEFAULT NULL,
  `outlet_url` varchar(150) DEFAULT NULL,
  `auth_req` int DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `analyzer_count` int NOT NULL DEFAULT '0',
  `station_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `analyzer_count` (`analyzer_count`),
  KEY `station_count` (`station_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_register`
--

LOCK TABLES `plant_register` WRITE;
/*!40000 ALTER TABLE `plant_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_type`
--

DROP TABLE IF EXISTS `plant_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_type` (
  `type_id` int NOT NULL,
  `type_key` varchar(200) NOT NULL,
  `type_display_name` varchar(200) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_type`
--

LOCK TABLES `plant_type` WRITE;
/*!40000 ALTER TABLE `plant_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantrole_info`
--

DROP TABLE IF EXISTS `plantrole_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantrole_info` (
  `plantrole_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `plant_id` int NOT NULL,
  PRIMARY KEY (`plantrole_id`),
  KEY `role_id` (`role_id`),
  KEY `plant_id` (`plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantrole_info`
--

LOCK TABLES `plantrole_info` WRITE;
/*!40000 ALTER TABLE `plantrole_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantrole_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantuser_info`
--

DROP TABLE IF EXISTS `plantuser_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantuser_info` (
  `plantuser_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`plantuser_id`),
  KEY `plant_id` (`plant_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantuser_info`
--

LOCK TABLES `plantuser_info` WRITE;
/*!40000 ALTER TABLE `plantuser_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantuser_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pli28jan2020`
--

DROP TABLE IF EXISTS `pli28jan2020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pli28jan2020` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `recorded_time_2` (`recorded_time`,`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pli28jan2020`
--

LOCK TABLES `pli28jan2020` WRITE;
/*!40000 ALTER TABLE `pli28jan2020` DISABLE KEYS */;
/*!40000 ALTER TABLE `pli28jan2020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pli_hourly`
--

DROP TABLE IF EXISTS `pli_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pli_hourly` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pli_hourly`
--

LOCK TABLES `pli_hourly` WRITE;
/*!40000 ALTER TABLE `pli_hourly` DISABLE KEYS */;
/*!40000 ALTER TABLE `pli_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pli_jul`
--

DROP TABLE IF EXISTS `pli_jul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pli_jul` (
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pli_jul`
--

LOCK TABLES `pli_jul` WRITE;
/*!40000 ALTER TABLE `pli_jul` DISABLE KEYS */;
/*!40000 ALTER TABLE `pli_jul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_info`
--

DROP TABLE IF EXISTS `pollutant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_info` (
  `pollutant_id` int NOT NULL AUTO_INCREMENT,
  `pollutant_cd` varchar(10) NOT NULL DEFAULT '',
  `unit` varchar(10) DEFAULT NULL,
  `pollutant_nm` varchar(40) DEFAULT NULL,
  `analyzer` varchar(8) NOT NULL DEFAULT 'Stack',
  `min_range` int NOT NULL,
  `max_range` int NOT NULL,
  `threshold_value` int NOT NULL DEFAULT '0',
  `pollutant_slug` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pollutant_id`),
  KEY `pollutant_cd` (`pollutant_cd`),
  KEY `analyzer` (`analyzer`),
  KEY `min_range` (`min_range`),
  KEY `max_range` (`max_range`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_info`
--

LOCK TABLES `pollutant_info` WRITE;
/*!40000 ALTER TABLE `pollutant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_data`
--

DROP TABLE IF EXISTS `pollutant_level_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_data` (
  `PlantName` varchar(200) NOT NULL,
  `PlantID` varchar(200) NOT NULL,
  `StationID` varchar(200) NOT NULL,
  `StationType` varchar(200) NOT NULL,
  `DeviceID` varchar(200) NOT NULL,
  `PaName` varchar(200) NOT NULL,
  `PaValue` varchar(200) NOT NULL,
  `PaUnits` varchar(200) NOT NULL,
  `Timestamp` varchar(200) NOT NULL,
  `ThresholdValue` varchar(200) NOT NULL,
  `Latitude` varchar(200) NOT NULL,
  `Longitude` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_data`
--

LOCK TABLES `pollutant_level_data` WRITE;
/*!40000 ALTER TABLE `pollutant_level_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos`
--

DROP TABLE IF EXISTS `pollutant_level_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `recorded_time_2` (`recorded_time`,`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos`
--

LOCK TABLES `pollutant_level_infos` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos` DISABLE KEYS */;
INSERT INTO `pollutant_level_infos` VALUES ('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:02:00',1.13,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:10:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:10:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:11:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:11:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:12:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:12:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:13:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:13:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:14:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:14:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:15:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:16:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:16:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:17:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:17:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:25:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:25:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:26:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:26:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:42:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:43:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:43:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:44:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:44:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:46:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:47:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:47:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:48:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:48:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:49:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:49:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:50:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:50:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:51:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:51:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:52:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:52:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:53:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:54:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:54:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:10:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:11:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:11:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:14:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:16:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:21:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:21:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:22:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:22:00',102.75,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.97,2020,8,'2020-08-05'),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.75,2020,8,'2020-08-05');
/*!40000 ALTER TABLE `pollutant_level_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos2019_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos2019_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos2019_1` (
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos2019_1`
--

LOCK TABLES `pollutant_level_infos2019_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos2019_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos2019_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_1`
--

LOCK TABLES `pollutant_level_infos_2010_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `in_ganga` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_10`
--

LOCK TABLES `pollutant_level_infos_2010_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_11`
--

LOCK TABLES `pollutant_level_infos_2010_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_12`
--

LOCK TABLES `pollutant_level_infos_2010_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_2`
--

LOCK TABLES `pollutant_level_infos_2010_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_3`
--

LOCK TABLES `pollutant_level_infos_2010_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_4`
--

LOCK TABLES `pollutant_level_infos_2010_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_5`
--

LOCK TABLES `pollutant_level_infos_2010_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_6`
--

LOCK TABLES `pollutant_level_infos_2010_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_7`
--

LOCK TABLES `pollutant_level_infos_2010_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_8`
--

LOCK TABLES `pollutant_level_infos_2010_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2010_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2010_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2010_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2010_9`
--

LOCK TABLES `pollutant_level_infos_2010_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2010_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_1`
--

LOCK TABLES `pollutant_level_infos_2011_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_10`
--

LOCK TABLES `pollutant_level_infos_2011_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_11`
--

LOCK TABLES `pollutant_level_infos_2011_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_12`
--

LOCK TABLES `pollutant_level_infos_2011_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_2`
--

LOCK TABLES `pollutant_level_infos_2011_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_3`
--

LOCK TABLES `pollutant_level_infos_2011_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_4`
--

LOCK TABLES `pollutant_level_infos_2011_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_5`
--

LOCK TABLES `pollutant_level_infos_2011_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_6`
--

LOCK TABLES `pollutant_level_infos_2011_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_7`
--

LOCK TABLES `pollutant_level_infos_2011_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_8`
--

LOCK TABLES `pollutant_level_infos_2011_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2011_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2011_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2011_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2011_9`
--

LOCK TABLES `pollutant_level_infos_2011_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2011_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_1`
--

LOCK TABLES `pollutant_level_infos_2012_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_10`
--

LOCK TABLES `pollutant_level_infos_2012_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_11`
--

LOCK TABLES `pollutant_level_infos_2012_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_12`
--

LOCK TABLES `pollutant_level_infos_2012_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_2`
--

LOCK TABLES `pollutant_level_infos_2012_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_3`
--

LOCK TABLES `pollutant_level_infos_2012_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_4`
--

LOCK TABLES `pollutant_level_infos_2012_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_5`
--

LOCK TABLES `pollutant_level_infos_2012_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_6`
--

LOCK TABLES `pollutant_level_infos_2012_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_7`
--

LOCK TABLES `pollutant_level_infos_2012_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_8`
--

LOCK TABLES `pollutant_level_infos_2012_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2012_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2012_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2012_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2012_9`
--

LOCK TABLES `pollutant_level_infos_2012_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2012_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_1`
--

LOCK TABLES `pollutant_level_infos_2013_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_10`
--

LOCK TABLES `pollutant_level_infos_2013_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_11`
--

LOCK TABLES `pollutant_level_infos_2013_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_12`
--

LOCK TABLES `pollutant_level_infos_2013_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_2`
--

LOCK TABLES `pollutant_level_infos_2013_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_3`
--

LOCK TABLES `pollutant_level_infos_2013_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_4`
--

LOCK TABLES `pollutant_level_infos_2013_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_5`
--

LOCK TABLES `pollutant_level_infos_2013_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_6`
--

LOCK TABLES `pollutant_level_infos_2013_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_7`
--

LOCK TABLES `pollutant_level_infos_2013_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_8`
--

LOCK TABLES `pollutant_level_infos_2013_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2013_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2013_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2013_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2013_9`
--

LOCK TABLES `pollutant_level_infos_2013_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2013_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_1`
--

LOCK TABLES `pollutant_level_infos_2014_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_10`
--

LOCK TABLES `pollutant_level_infos_2014_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_11`
--

LOCK TABLES `pollutant_level_infos_2014_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_12`
--

LOCK TABLES `pollutant_level_infos_2014_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_2`
--

LOCK TABLES `pollutant_level_infos_2014_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_3`
--

LOCK TABLES `pollutant_level_infos_2014_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_4`
--

LOCK TABLES `pollutant_level_infos_2014_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_5`
--

LOCK TABLES `pollutant_level_infos_2014_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_6`
--

LOCK TABLES `pollutant_level_infos_2014_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_7`
--

LOCK TABLES `pollutant_level_infos_2014_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_8`
--

LOCK TABLES `pollutant_level_infos_2014_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2014_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2014_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2014_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2014_9`
--

LOCK TABLES `pollutant_level_infos_2014_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2014_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_1`
--

LOCK TABLES `pollutant_level_infos_2015_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=17855591 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_10`
--

LOCK TABLES `pollutant_level_infos_2015_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=18174844 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_11`
--

LOCK TABLES `pollutant_level_infos_2015_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=19132088 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_12`
--

LOCK TABLES `pollutant_level_infos_2015_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_2`
--

LOCK TABLES `pollutant_level_infos_2015_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_3`
--

LOCK TABLES `pollutant_level_infos_2015_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_4`
--

LOCK TABLES `pollutant_level_infos_2015_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_5`
--

LOCK TABLES `pollutant_level_infos_2015_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_6`
--

LOCK TABLES `pollutant_level_infos_2015_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=7962366 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_7`
--

LOCK TABLES `pollutant_level_infos_2015_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=13342602 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_8`
--

LOCK TABLES `pollutant_level_infos_2015_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2015_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2015_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2015_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=15348897 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2015_9`
--

LOCK TABLES `pollutant_level_infos_2015_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2015_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=16383961 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_1`
--

LOCK TABLES `pollutant_level_infos_2016_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_10` (
  `pid` varchar(10) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_10`
--

LOCK TABLES `pollutant_level_infos_2016_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=29435594 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_11`
--

LOCK TABLES `pollutant_level_infos_2016_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_12`
--

LOCK TABLES `pollutant_level_infos_2016_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=20806521 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_2`
--

LOCK TABLES `pollutant_level_infos_2016_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=24715867 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_3`
--

LOCK TABLES `pollutant_level_infos_2016_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=23649011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_4`
--

LOCK TABLES `pollutant_level_infos_2016_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=25380988 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_5`
--

LOCK TABLES `pollutant_level_infos_2016_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=24502174 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_6`
--

LOCK TABLES `pollutant_level_infos_2016_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=21798137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_7`
--

LOCK TABLES `pollutant_level_infos_2016_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_8` (
  `pid` varchar(10) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_8`
--

LOCK TABLES `pollutant_level_infos_2016_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2016_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2016_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2016_9` (
  `pid` varchar(10) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2016_9`
--

LOCK TABLES `pollutant_level_infos_2016_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2016_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=12874087 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_1`
--

LOCK TABLES `pollutant_level_infos_2017_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_10`
--

LOCK TABLES `pollutant_level_infos_2017_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_11`
--

LOCK TABLES `pollutant_level_infos_2017_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_12` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_12`
--

LOCK TABLES `pollutant_level_infos_2017_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_2` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=11343309 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_2`
--

LOCK TABLES `pollutant_level_infos_2017_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_3` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM AUTO_INCREMENT=27190573 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_3`
--

LOCK TABLES `pollutant_level_infos_2017_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_4` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_4`
--

LOCK TABLES `pollutant_level_infos_2017_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_5`
--

LOCK TABLES `pollutant_level_infos_2017_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_6` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_6`
--

LOCK TABLES `pollutant_level_infos_2017_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_7` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_7`
--

LOCK TABLES `pollutant_level_infos_2017_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_8` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_8`
--

LOCK TABLES `pollutant_level_infos_2017_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2017_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2017_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2017_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2017_9`
--

LOCK TABLES `pollutant_level_infos_2017_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2017_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2018_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2018_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2018_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2018_1`
--

LOCK TABLES `pollutant_level_infos_2018_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2018_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2018_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=98004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_10`
--

LOCK TABLES `pollutant_level_infos_2019_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_11` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_11`
--

LOCK TABLES `pollutant_level_infos_2019_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_12` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_12`
--

LOCK TABLES `pollutant_level_infos_2019_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_5` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_5`
--

LOCK TABLES `pollutant_level_infos_2019_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2019_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2019_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2019_9` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=73605 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2019_9`
--

LOCK TABLES `pollutant_level_infos_2019_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2019_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_02_21`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_02_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_02_21` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `recorded_time_2` (`recorded_time`,`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_02_21`
--

LOCK TABLES `pollutant_level_infos_2020_02_21` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_02_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_02_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_1` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_1`
--

LOCK TABLES `pollutant_level_infos_2020_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_10` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_10`
--

LOCK TABLES `pollutant_level_infos_2020_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_11` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_11`
--

LOCK TABLES `pollutant_level_infos_2020_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_12` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_12`
--

LOCK TABLES `pollutant_level_infos_2020_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_2` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_2`
--

LOCK TABLES `pollutant_level_infos_2020_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_25`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_25` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `recorded_time_2` (`recorded_time`,`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_25`
--

LOCK TABLES `pollutant_level_infos_2020_25` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_25` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_3` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_3`
--

LOCK TABLES `pollutant_level_infos_2020_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_4` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_4`
--

LOCK TABLES `pollutant_level_infos_2020_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_5` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_5`
--

LOCK TABLES `pollutant_level_infos_2020_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_6` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_6`
--

LOCK TABLES `pollutant_level_infos_2020_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_7` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_7`
--

LOCK TABLES `pollutant_level_infos_2020_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_8` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_8`
--

LOCK TABLES `pollutant_level_infos_2020_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_2020_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_2020_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_2020_9` (
  `pid` varchar(11) DEFAULT '',
  `plant_id` varchar(200) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_2020_9`
--

LOCK TABLES `pollutant_level_infos_2020_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_2020_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_backup`
--

DROP TABLE IF EXISTS `pollutant_level_infos_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_backup` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_backup`
--

LOCK TABLES `pollutant_level_infos_backup` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_backup_03_08_20181445`
--

DROP TABLE IF EXISTS `pollutant_level_infos_backup_03_08_20181445`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_backup_03_08_20181445` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_backup_03_08_20181445`
--

LOCK TABLES `pollutant_level_infos_backup_03_08_20181445` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_backup_03_08_20181445` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_backup_03_08_20181445` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_balasore_alloys`
--

DROP TABLE IF EXISTS `pollutant_level_infos_balasore_alloys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_balasore_alloys` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_balasore_alloys`
--

LOCK TABLES `pollutant_level_infos_balasore_alloys` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_balasore_alloys` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_balasore_alloys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_calcom_cement`
--

DROP TABLE IF EXISTS `pollutant_level_infos_calcom_cement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_calcom_cement` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=3888 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_calcom_cement`
--

LOCK TABLES `pollutant_level_infos_calcom_cement` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_calcom_cement` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_calcom_cement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_cocacola`
--

DROP TABLE IF EXISTS `pollutant_level_infos_cocacola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_cocacola` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_cocacola`
--

LOCK TABLES `pollutant_level_infos_cocacola` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_cocacola` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_cocacola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_1`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_1` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_1`
--

LOCK TABLES `pollutant_level_infos_days_1` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_10`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_10` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_10`
--

LOCK TABLES `pollutant_level_infos_days_10` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_11`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_11` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_11`
--

LOCK TABLES `pollutant_level_infos_days_11` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_12`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_12` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_12`
--

LOCK TABLES `pollutant_level_infos_days_12` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_13`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_13` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_13`
--

LOCK TABLES `pollutant_level_infos_days_13` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_14`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_14` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_14`
--

LOCK TABLES `pollutant_level_infos_days_14` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_14` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_15`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_15` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_15`
--

LOCK TABLES `pollutant_level_infos_days_15` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_16`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_16` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_16`
--

LOCK TABLES `pollutant_level_infos_days_16` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_16` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_17`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_17` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_17`
--

LOCK TABLES `pollutant_level_infos_days_17` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_17` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_18`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_18` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_18`
--

LOCK TABLES `pollutant_level_infos_days_18` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_18` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_19`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_19` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_19`
--

LOCK TABLES `pollutant_level_infos_days_19` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_2` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_2`
--

LOCK TABLES `pollutant_level_infos_days_2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_20`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_20` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_20`
--

LOCK TABLES `pollutant_level_infos_days_20` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_20` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_21`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_21` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_21`
--

LOCK TABLES `pollutant_level_infos_days_21` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_22`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_22` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_22`
--

LOCK TABLES `pollutant_level_infos_days_22` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_23`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_23` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_23`
--

LOCK TABLES `pollutant_level_infos_days_23` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_23` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_24`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_24` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_24`
--

LOCK TABLES `pollutant_level_infos_days_24` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_24` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_25`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_25` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_25`
--

LOCK TABLES `pollutant_level_infos_days_25` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_25` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_26`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_26` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_26`
--

LOCK TABLES `pollutant_level_infos_days_26` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_26` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_27`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_27` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_27`
--

LOCK TABLES `pollutant_level_infos_days_27` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_27` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_28`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_28` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_28`
--

LOCK TABLES `pollutant_level_infos_days_28` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_28` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_29`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_29` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_29`
--

LOCK TABLES `pollutant_level_infos_days_29` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_29` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_3`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_3` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_3`
--

LOCK TABLES `pollutant_level_infos_days_3` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_30`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_30` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_30`
--

LOCK TABLES `pollutant_level_infos_days_30` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_30` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_31`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_31` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_31`
--

LOCK TABLES `pollutant_level_infos_days_31` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_31` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_4`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_4` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_4`
--

LOCK TABLES `pollutant_level_infos_days_4` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_5`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_5` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_5`
--

LOCK TABLES `pollutant_level_infos_days_5` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_6`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_6` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_6`
--

LOCK TABLES `pollutant_level_infos_days_6` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_7`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_7` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_7`
--

LOCK TABLES `pollutant_level_infos_days_7` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_8`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_8` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_8`
--

LOCK TABLES `pollutant_level_infos_days_8` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_9`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_9` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_9`
--

LOCK TABLES `pollutant_level_infos_days_9` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_days_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_days_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_days_swap` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `recorded_import_type` int NOT NULL DEFAULT '0',
  `checksum` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_import_type` (`recorded_import_type`),
  KEY `checksum` (`checksum`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_days_swap`
--

LOCK TABLES `pollutant_level_infos_days_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_days_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_days_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_delayed`
--

DROP TABLE IF EXISTS `pollutant_level_infos_delayed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_delayed` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `pid` (`pid`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=852035 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_delayed`
--

LOCK TABLES `pollutant_level_infos_delayed` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_delayed_biswa`
--

DROP TABLE IF EXISTS `pollutant_level_infos_delayed_biswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_delayed_biswa` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `pid` (`pid`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=4101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_delayed_biswa`
--

LOCK TABLES `pollutant_level_infos_delayed_biswa` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed_biswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_delayed_biswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `record_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly`
--

LOCK TABLES `pollutant_level_infos_hourly` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly` DISABLE KEYS */;
INSERT INTO `pollutant_level_infos_hourly` VALUES ('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.97,2020,8,'2020-08-05',9),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:10:00',0.97,2020,8,'2020-08-05',10),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.75,2020,8,'2020-08-05',10),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:11:00',0.97,2020,8,'2020-08-05',11),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:11:00',102.75,2020,8,'2020-08-05',11),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.97,2020,8,'2020-08-05',12),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.75,2020,8,'2020-08-05',12),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.97,2020,8,'2020-08-05',13),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:14:00',0.97,2020,8,'2020-08-05',14),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.75,2020,8,'2020-08-05',14),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.97,2020,8,'2020-08-05',15),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:16:00',0.97,2020,8,'2020-08-05',16),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.75,2020,8,'2020-08-05',16),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:21:00',0.97,2020,8,'2020-08-05',1),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:21:00',102.75,2020,8,'2020-08-05',1),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:22:00',0.97,2020,8,'2020-08-05',2),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:22:00',102.75,2020,8,'2020-08-05',2),('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.97,2020,8,'2020-08-05',3),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.75,2020,8,'2020-08-05',3);
/*!40000 ALTER TABLE `pollutant_level_infos_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_16_04_20`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_16_04_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_16_04_20` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `record_count` int DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `record_count` (`record_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_16_04_20`
--

LOCK TABLES `pollutant_level_infos_hourly_16_04_20` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_16_04_20` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_16_04_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_20191104`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_20191104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_20191104` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_20191104`
--

LOCK TABLES `pollutant_level_infos_hourly_20191104` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_20191104` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_20191104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_2019_11_08`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_2019_11_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_2019_11_08` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `record_count` int DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `record_count` (`record_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_2019_11_08`
--

LOCK TABLES `pollutant_level_infos_hourly_2019_11_08` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_2019_11_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_2019_11_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_28_10_2019`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_28_10_2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_28_10_2019` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_28_10_2019`
--

LOCK TABLES `pollutant_level_infos_hourly_28_10_2019` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_28_10_2019` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_28_10_2019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_4th_nov_19`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_4th_nov_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_4th_nov_19` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_4th_nov_19`
--

LOCK TABLES `pollutant_level_infos_hourly_4th_nov_19` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_4th_nov_19` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_4th_nov_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_hourly_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_hourly_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_hourly_swap` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_hourly_swap`
--

LOCK TABLES `pollutant_level_infos_hourly_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_hourly_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_kd_cement`
--

DROP TABLE IF EXISTS `pollutant_level_infos_kd_cement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_kd_cement` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=21672 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_kd_cement`
--

LOCK TABLES `pollutant_level_infos_kd_cement` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_kd_cement` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_kd_cement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_mecpl_brp`
--

DROP TABLE IF EXISTS `pollutant_level_infos_mecpl_brp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_mecpl_brp` (
  `pid` double NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `upload_status` tinyint NOT NULL DEFAULT '0',
  `response` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `recorded_date` (`recorded_date`),
  KEY `upload_status` (`upload_status`)
) ENGINE=MyISAM AUTO_INCREMENT=68296 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_mecpl_brp`
--

LOCK TABLES `pollutant_level_infos_mecpl_brp` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_mecpl_brp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_mecpl_brp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_old2019`
--

DROP TABLE IF EXISTS `pollutant_level_infos_old2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_old2019` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_old2019`
--

LOCK TABLES `pollutant_level_infos_old2019` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_old2019` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_old2019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_old_archive`
--

DROP TABLE IF EXISTS `pollutant_level_infos_old_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_old_archive` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `pol_lvl_inf_ind` (`plant_id`,`analyzer`,`recorded_year`,`recorded_month`,`recorded_date`,`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_old_archive`
--

LOCK TABLES `pollutant_level_infos_old_archive` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_old_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_old_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_prepro_test`
--

DROP TABLE IF EXISTS `pollutant_level_infos_prepro_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_prepro_test` (
  `pindex` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created_date1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int NOT NULL DEFAULT '0',
  `Status2` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pindex`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `created_date1` (`created_date1`)
) ENGINE=InnoDB AUTO_INCREMENT=29865 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_prepro_test`
--

LOCK TABLES `pollutant_level_infos_prepro_test` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_prepro_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_prepro_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_prepro_test2`
--

DROP TABLE IF EXISTS `pollutant_level_infos_prepro_test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_prepro_test2` (
  `pindex` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created_date1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int NOT NULL DEFAULT '0',
  `recorded_type5_status` int NOT NULL DEFAULT '0',
  `recorded_type1_status` int NOT NULL DEFAULT '0',
  `recorded_type2_status` int NOT NULL DEFAULT '0',
  `recorded_type3_status` int NOT NULL DEFAULT '0',
  `Column 17` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pindex`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `created_date1` (`created_date1`)
) ENGINE=InnoDB AUTO_INCREMENT=25783 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_prepro_test2`
--

LOCK TABLES `pollutant_level_infos_prepro_test2` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_prepro_test2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_prepro_test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_sudarsan_test`
--

DROP TABLE IF EXISTS `pollutant_level_infos_sudarsan_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_sudarsan_test` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `created_date1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`),
  KEY `created_date1` (`created_date1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_sudarsan_test`
--

LOCK TABLES `pollutant_level_infos_sudarsan_test` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_sudarsan_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_sudarsan_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_infos_swap`
--

DROP TABLE IF EXISTS `pollutant_level_infos_swap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_infos_swap` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_date` date DEFAULT NULL,
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_year` (`recorded_year`),
  KEY `recorded_month` (`recorded_month`),
  KEY `station_id` (`station_id`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_date` (`recorded_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_infos_swap`
--

LOCK TABLES `pollutant_level_infos_swap` WRITE;
/*!40000 ALTER TABLE `pollutant_level_infos_swap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_infos_swap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_level_mytest_unque`
--

DROP TABLE IF EXISTS `pollutant_level_mytest_unque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_level_mytest_unque` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `recorded_date` date DEFAULT NULL,
  `recorded_year` int NOT NULL,
  `recorded_month` int NOT NULL,
  `recorded_day` int NOT NULL,
  `recorded_hour` int NOT NULL,
  `recorded_minute` int NOT NULL,
  `recorded_type1_status` int NOT NULL DEFAULT '0',
  `recorded_type2_status` int NOT NULL DEFAULT '0',
  `recorded_type3_status` int NOT NULL DEFAULT '0',
  `recorded_type4_status` int NOT NULL DEFAULT '0',
  `recorded_type5_status` int NOT NULL DEFAULT '0',
  `attribute1` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `uc_data_name` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_date`,`recorded_year`,`recorded_month`,`recorded_day`,`recorded_hour`,`recorded_minute`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_level_mytest_unque`
--

LOCK TABLES `pollutant_level_mytest_unque` WRITE;
/*!40000 ALTER TABLE `pollutant_level_mytest_unque` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_level_mytest_unque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollutant_video_infos`
--

DROP TABLE IF EXISTS `pollutant_video_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollutant_video_infos` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_start_time` datetime NOT NULL,
  `recorded_end_time` datetime NOT NULL,
  `recorded_video_file` varchar(200) NOT NULL,
  `storage_type` int NOT NULL,
  `is_downloaded` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `plant_id` (`plant_id`),
  KEY `analyzer` (`analyzer`),
  KEY `station_id` (`station_id`),
  KEY `parameter_code` (`parameter_code`),
  KEY `recorded_time` (`recorded_start_time`),
  KEY `recorded_level` (`recorded_video_file`),
  KEY `recorded_end_time` (`recorded_end_time`)
) ENGINE=MyISAM AUTO_INCREMENT=128629 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollutant_video_infos`
--

LOCK TABLES `pollutant_video_infos` WRITE;
/*!40000 ALTER TABLE `pollutant_video_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollutant_video_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(20) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `aggregation` varchar(4) DEFAULT '1Hr',
  `threshold_level` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`),
  UNIQUE KEY `idx_rl_pol_lvl_inf` (`plant_id`,`analyzer`,`station_id`,`parameter_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos`
--

LOCK TABLES `real_pollutant_level_infos` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos` DISABLE KEYS */;
INSERT INTO `real_pollutant_level_infos` VALUES ('gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.97,'1Hr',0.00),('gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.75,'1Hr',0.00),('gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.97,'1Hr',0.00),('gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.75,'1Hr',0.00);
/*!40000 ALTER TABLE `real_pollutant_level_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos_bak`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos_bak` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,2) NOT NULL,
  `aggregation` varchar(4) DEFAULT '1Hr',
  `threshold_level` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`),
  UNIQUE KEY `idx_rl_pol_lvl_inf` (`plant_id`,`analyzer`,`station_id`,`parameter_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos_bak`
--

LOCK TABLES `real_pollutant_level_infos_bak` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_pollutant_level_infos_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos_sms`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos_sms` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  `record_count` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `plant_id` (`plant_id`,`analyzer`,`station_id`,`parameter_code`),
  KEY `record_count` (`record_count`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos_sms`
--

LOCK TABLES `real_pollutant_level_infos_sms` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms` DISABLE KEYS */;
INSERT INTO `real_pollutant_level_infos_sms` VALUES (1,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:02:00',1.130,2),(2,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:10:00',0.970,10),(3,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:10:00',102.750,10),(4,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:11:00',0.970,11),(5,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:11:00',102.750,11),(6,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:12:00',0.970,12),(7,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:12:00',102.750,12),(8,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:13:00',0.970,13),(9,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:13:00',102.750,13),(10,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:14:00',0.970,14),(11,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:14:00',102.750,14),(12,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:15:00',0.970,15),(13,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:16:00',0.970,16),(14,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:16:00',102.750,16),(15,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:17:00',0.970,17),(16,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:17:00',102.750,17),(17,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:25:00',0.970,25),(18,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:25:00',102.750,25),(19,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:26:00',0.970,26),(20,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:26:00',102.750,26),(21,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:42:00',0.970,42),(22,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:43:00',0.970,43),(23,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:43:00',102.750,43),(24,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:44:00',0.970,44),(25,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:44:00',102.750,44),(26,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:46:00',0.970,46),(27,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:47:00',0.970,47),(28,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:47:00',102.750,47),(29,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:48:00',0.970,48),(30,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:48:00',102.750,48),(31,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:49:00',0.970,49),(32,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:49:00',102.750,49),(33,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:50:00',0.970,50),(34,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:50:00',102.750,50),(35,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:51:00',0.970,51),(36,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:51:00',102.750,51),(37,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:52:00',0.970,52),(38,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:52:00',102.750,52),(39,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:53:00',0.970,53),(40,'gapl_keon','Stack','analyzer_215','PM','2020-08-05 15:54:00',0.970,54),(41,'gapl_keon','Stack','analyzer_831','SO','2020-08-05 15:54:00',102.750,54),(42,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:09:00',0.970,9),(43,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:10:00',0.970,10),(44,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:10:00',102.750,10),(45,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:11:00',0.970,11),(46,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:11:00',102.750,11),(47,'gapl_keon','Stack','EMS_1','PM','2020-08-05 16:12:00',0.970,12),(48,'gapl_keon','Stack','EMS_1','SO','2020-08-05 16:12:00',102.750,12),(49,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:13:00',0.970,13),(50,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:14:00',0.970,14),(51,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:14:00',102.750,14),(52,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:15:00',0.970,15),(53,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:16:00',0.970,16),(54,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:16:00',102.750,16),(55,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:21:00',0.970,21),(56,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:21:00',102.750,21),(57,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:22:00',0.970,22),(58,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:22:00',102.750,22),(59,'gapl_keon','Stack','CEMS_1','PM','2020-08-05 16:23:00',0.970,23),(60,'gapl_keon','Stack','CEMS_1','SO','2020-08-05 16:23:00',102.750,23);
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos_sms_20191104`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos_sms_20191104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos_sms_20191104` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `real_pollutant_level_infos_sms_idx` (`plant_id`,`analyzer`,`parameter_code`,`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44412613 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos_sms_20191104`
--

LOCK TABLES `real_pollutant_level_infos_sms_20191104` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_20191104` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_20191104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos_sms_2019_10`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos_sms_2019_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos_sms_2019_10` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `recorded_time` datetime NOT NULL,
  `recorded_level` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `recorded_time` (`recorded_time`),
  KEY `recorded_level` (`recorded_level`),
  KEY `plant_id` (`plant_id`,`analyzer`,`station_id`,`parameter_code`)
) ENGINE=InnoDB AUTO_INCREMENT=35618670 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos_sms_2019_10`
--

LOCK TABLES `real_pollutant_level_infos_sms_2019_10` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_2019_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_2019_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_pollutant_level_infos_sms_status`
--

DROP TABLE IF EXISTS `real_pollutant_level_infos_sms_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `real_pollutant_level_infos_sms_status` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `threshold_level` int NOT NULL DEFAULT '0',
  `alert_time` varchar(50) NOT NULL,
  `zero_time_status` int NOT NULL,
  `sms_sent_time` datetime DEFAULT NULL,
  `zero_sent_time` datetime DEFAULT NULL,
  `alert_status` tinyint DEFAULT NULL,
  `sms_count` int NOT NULL DEFAULT '0',
  `zero_sms_count` int NOT NULL DEFAULT '0',
  `min_range` int DEFAULT NULL,
  `max_range` int DEFAULT NULL,
  PRIMARY KEY (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`alert_time`),
  KEY `plant_id` (`plant_id`),
  KEY `sms_sent_time` (`sms_sent_time`),
  KEY `zero_time_status` (`zero_time_status`),
  KEY `zero_sent_time` (`zero_sent_time`),
  KEY `alert_time` (`alert_time`),
  KEY `alert_status` (`alert_status`),
  KEY `threshold_level` (`threshold_level`),
  KEY `min_range` (`min_range`),
  KEY `max_range` (`max_range`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_pollutant_level_infos_sms_status`
--

LOCK TABLES `real_pollutant_level_infos_sms_status` WRITE;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_pollutant_level_infos_sms_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ROLE_ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) DEFAULT NULL,
  `ROLE_TYPE` int NOT NULL,
  `is_delete` tinyint NOT NULL DEFAULT '0',
  `is_edit` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_action`
--

DROP TABLE IF EXISTS `role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_action` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int DEFAULT NULL,
  `ACTION_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_ID_2` (`ROLE_ID`,`ACTION_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `ACTION_ID` (`ACTION_ID`),
  CONSTRAINT `role_action_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_action_ibfk_2` FOREIGN KEY (`ACTION_ID`) REFERENCES `action` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3534 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_action`
--

LOCK TABLES `role_action` WRITE;
/*!40000 ALTER TABLE `role_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_credential_info`
--

DROP TABLE IF EXISTS `site_credential_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_credential_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) NOT NULL,
  `private_key_auth` text,
  `private_key_sig` text,
  `public_key_auth` varchar(255) DEFAULT NULL,
  `public_key_sig` varchar(255) DEFAULT NULL,
  `aes_key` varchar(64) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `station_id` varchar(100) NOT NULL,
  `ospcb_station_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_credential_info`
--

LOCK TABLES `site_credential_info` WRITE;
/*!40000 ALTER TABLE `site_credential_info` DISABLE KEYS */;
INSERT INTO `site_credential_info` VALUES (184,'gapl_keon','MIIBVQIBADANBgkqhkiG9w0BAQEFAASCAT8wggE7AgEAAkEAg1Oq+XGrswluJBlamNnc5SOGNK358nA6U7kMObIlx3BoKDl9C5IHyUwU3nShz3Ja5fn/5c2ystpxHAyZTe+weQIDAQABAkA2Tv1flpBow7eWmh2LJF1jLOOtGV1J0vtr8BSML42MUVzjwAUs/QQPNA7vtqNRgTJ/2sdz/YlYNxK4LWP9pW8BAiMAmgPc/OBHIGkmrz5MAiTM72Luwhr/anOQZf7Ogu+Kas1VKQIfANpJw54l/1I1afI2xSdbqB578zW8dT6GGQcHak8a0QIiYhATpO8oWnqZJvuDadoEomdbnjuSZTUvu8GBu9zJRTd4AQIeUCvjYsRF3+WqQcGH64qoVnnju4q57PrHWmOI0gDhAiIHVbC7T15+K4ID4uRYxwJWy8rSu+dCYbxH2a5Ei5piZj0V',NULL,'MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAINTqvlxq7MJbiQZWpjZ3OUjhjSt+fJwOlO5DDmyJcdwaCg5fQuSB8lMFN50oc9yWuX5/+XNsrLacRwMmU3vsHkCAwEAAQ==',NULL,'c2l0ZV8yOTQ0XnZlcl8xLjBeT1NQQ0JeMjAxOS0xMC0wMy0xMzo0MjoyOQ==####','site_2944','CEMS_1','CEMS_1');
/*!40000 ALTER TABLE `site_credential_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_info`
--

DROP TABLE IF EXISTS `site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `site_public_key` text NOT NULL,
  `site_private_key` text NOT NULL,
  `site_id` varchar(100) NOT NULL,
  `server_name` varchar(20) NOT NULL,
  `aes_key` varchar(64) NOT NULL,
  `header_delimiter` char(1) NOT NULL,
  `software_version` varchar(10) NOT NULL,
  `analyzer_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server_name` (`server_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_info`
--

LOCK TABLES `site_info` WRITE;
/*!40000 ALTER TABLE `site_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_alert_time_list`
--

DROP TABLE IF EXISTS `sms_alert_time_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_alert_time_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alert_type` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `minutes` (`alert_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_alert_time_list`
--

LOCK TABLES `sms_alert_time_list` WRITE;
/*!40000 ALTER TABLE `sms_alert_time_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_alert_time_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_recipient_info`
--

DROP TABLE IF EXISTS `sms_recipient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_recipient_info` (
  `name` char(50) DEFAULT NULL,
  `mobno` char(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department` char(15) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mobno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_recipient_info`
--

LOCK TABLES `sms_recipient_info` WRITE;
/*!40000 ALTER TABLE `sms_recipient_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_recipient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsstatus_info`
--

DROP TABLE IF EXISTS `smsstatus_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smsstatus_info` (
  `smsstatus_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) NOT NULL,
  `sms_id` int NOT NULL,
  `comments` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`smsstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14773 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsstatus_info`
--

LOCK TABLES `smsstatus_info` WRITE;
/*!40000 ALTER TABLE `smsstatus_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `smsstatus_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_info`
--

DROP TABLE IF EXISTS `station_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_info` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `station_id` varchar(30) NOT NULL DEFAULT '',
  `analyzer` varchar(5) NOT NULL DEFAULT '',
  `analyzerv2` varchar(10) NOT NULL,
  `short_name` varchar(30) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `install_date` date DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `imei_mac_number` varchar(100) DEFAULT NULL,
  `station_number` int DEFAULT '0',
  `stn_type` varchar(20) DEFAULT '',
  `has_threshold` int DEFAULT '0',
  `pid` int NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=627 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_info`
--

LOCK TABLES `station_info` WRITE;
/*!40000 ALTER TABLE `station_info` DISABLE KEYS */;
INSERT INTO `station_info` VALUES (1,'gapl_keon','CEMS_1','CEMS','Stack','CEMS_1','CPP ESP','2014-10-10','CEMS-2','CPP ESP',1,' ',1,1);
/*!40000 ALTER TABLE `station_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_pollutant_info`
--

DROP TABLE IF EXISTS `station_pollutant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_pollutant_info` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(150) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `pollutant_id` int NOT NULL,
  `threshold_value` int NOT NULL,
  `min_range` int NOT NULL,
  `max_range` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_pollutant_info`
--

LOCK TABLES `station_pollutant_info` WRITE;
/*!40000 ALTER TABLE `station_pollutant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_pollutant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_pollutant_infos`
--

DROP TABLE IF EXISTS `station_pollutant_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_pollutant_infos` (
  `plant_id` varchar(30) NOT NULL,
  `station_id` varchar(15) NOT NULL,
  `pollutant_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_pollutant_infos`
--

LOCK TABLES `station_pollutant_infos` WRITE;
/*!40000 ALTER TABLE `station_pollutant_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_pollutant_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_register`
--

DROP TABLE IF EXISTS `station_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_register` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `plant_slug` varchar(200) DEFAULT NULL,
  `station_slug` varchar(200) DEFAULT NULL,
  `plant_id` varchar(30) NOT NULL DEFAULT '',
  `pid` int NOT NULL,
  `station_id` varchar(30) NOT NULL DEFAULT '',
  `analyzer` varchar(5) NOT NULL DEFAULT '',
  `analyzerv2` varchar(6) DEFAULT NULL,
  `short_name` varchar(30) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `imei_mac` varchar(50) DEFAULT NULL,
  `install_date` date DEFAULT NULL,
  `stn_type` varchar(10) DEFAULT NULL,
  `has_threshold` int NOT NULL DEFAULT '0',
  `station_number` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_register`
--

LOCK TABLES `station_register` WRITE;
/*!40000 ALTER TABLE `station_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_unique_address`
--

DROP TABLE IF EXISTS `station_unique_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_unique_address` (
  `plant_id` varchar(200) NOT NULL,
  `station_id` varchar(200) NOT NULL,
  `imei_mac_number` varchar(300) NOT NULL,
  `station_name` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`plant_id`,`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_unique_address`
--

LOCK TABLES `station_unique_address` WRITE;
/*!40000 ALTER TABLE `station_unique_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `station_unique_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threshold_info`
--

DROP TABLE IF EXISTS `threshold_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threshold_info` (
  `pollutant_cd` varchar(20) NOT NULL,
  `time_wei_avg` varchar(6) NOT NULL DEFAULT '',
  `for_industrial` decimal(5,2) DEFAULT NULL,
  `for_ecological_sensitive` double(5,2) DEFAULT NULL,
  `analyzer` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`pollutant_cd`,`time_wei_avg`,`analyzer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threshold_info`
--

LOCK TABLES `threshold_info` WRITE;
/*!40000 ALTER TABLE `threshold_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `threshold_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threshold_range`
--

DROP TABLE IF EXISTS `threshold_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threshold_range` (
  `plant_id` varchar(30) NOT NULL,
  `analyzer` varchar(5) NOT NULL,
  `station_id` varchar(10) NOT NULL,
  `parameter_code` varchar(20) NOT NULL,
  `threshold_range` varchar(20) NOT NULL,
  PRIMARY KEY (`plant_id`,`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threshold_range`
--

LOCK TABLES `threshold_range` WRITE;
/*!40000 ALTER TABLE `threshold_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `threshold_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threshold_table`
--

DROP TABLE IF EXISTS `threshold_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threshold_table` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(50) NOT NULL,
  `station_id` varchar(20) NOT NULL,
  `parameter_code` varchar(10) NOT NULL,
  `threshold_level` int NOT NULL,
  PRIMARY KEY (`tid`,`plant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threshold_table`
--

LOCK TABLES `threshold_table` WRITE;
/*!40000 ALTER TABLE `threshold_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `threshold_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_info`
--

DROP TABLE IF EXISTS `update_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_info` (
  `text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_info`
--

LOCK TABLES `update_info` WRITE;
/*!40000 ALTER TABLE `update_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `update_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatedthreshold_info`
--

DROP TABLE IF EXISTS `updatedthreshold_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updatedthreshold_info` (
  `ut_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pollutant_id` int NOT NULL,
  `threshold_value` int NOT NULL,
  `comments` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatedthreshold_info`
--

LOCK TABLES `updatedthreshold_info` WRITE;
/*!40000 ALTER TABLE `updatedthreshold_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `updatedthreshold_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `mob_no` varchar(15) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `plant_type` varchar(30) DEFAULT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'Industry',
  `designation` varchar(20) NOT NULL DEFAULT '',
  `reportto` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `USER_ROLE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `USER_ROLE` (`USER_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_info`
--

DROP TABLE IF EXISTS `video_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_info` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `email_text` varchar(200) NOT NULL,
  `gender_text` varchar(200) NOT NULL,
  `name_text` varchar(200) NOT NULL,
  `mobile_text` varchar(200) NOT NULL,
  `age_text` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`),
  UNIQUE KEY `fid` (`user_id`,`email`),
  KEY `fdid` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_info`
--

LOCK TABLES `video_info` WRITE;
/*!40000 ALTER TABLE `video_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xreal_pollutant_level_infos`
--

DROP TABLE IF EXISTS `xreal_pollutant_level_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xreal_pollutant_level_infos` (
  `plant_id` varchar(90) DEFAULT NULL,
  `analyzer` varchar(15) DEFAULT NULL,
  `station_id` varchar(45) DEFAULT NULL,
  `parameter_code` varchar(60) DEFAULT NULL,
  `recorded_time` datetime DEFAULT NULL,
  `recorded_level` decimal(12,0) DEFAULT NULL,
  `aggregation` varchar(12) DEFAULT NULL,
  `threshold_level` decimal(12,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xreal_pollutant_level_infos`
--

LOCK TABLES `xreal_pollutant_level_infos` WRITE;
/*!40000 ALTER TABLE `xreal_pollutant_level_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `xreal_pollutant_level_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rtdas'
--

--
-- Dumping routines for database 'rtdas'
--
/*!50003 DROP PROCEDURE IF EXISTS `createTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `createTables`(IN `start_year` INT)
BEGIN
    DECLARE month INT Default 1 ;
    DECLARE getYear INT(11);
    DECLARE tableName VARCHAR(250);
    SET getYear = YEAR(CURDATE())+1;
    
    year_loop : LOOP        
        SET month = 1;
        IF start_year >getYear THEN
            LEAVE year_loop;
        END IF;
        month_loop: LOOP
        SET tableName = CONCAT("db_migrate_pollutant_level_data_", start_year, "_", month);
        SET @tName = tableName;
       
        SET tableName = CONCAT("db_migrate_pollutant_level_data_", start_year, "_", month);
        SET @query = CONCAT('CREATE TABLE IF NOT EXISTS ', tableName, ' (pid int(11) NOT NULL AUTO_INCREMENT,plant_id varchar(200) NOT NULL, analyzer varchar(5) NOT NULL, station_id varchar(200) NOT NULL, parameter_code varchar(10) NOT NULL, recorded_time datetime NOT NULL, recorded_level decimal(10,3)  DEFAULT NULL, min_recorded_level decimal(10,3) DEFAULT NULL, max_recorded_level decimal(20,3) DEFAULT NULL,  `sum_level` double DEFAULT NULL, `total_level` double DEFAULT NULL,recorded_day int(11) NOT NULL, recorded_hour int(11) NOT NULL, recorded_type int(11) NOT NULL, PRIMARY KEY (pid), KEY plant_id (plant_id), KEY analyzer (analyzer), KEY station_id (station_id), KEY parameter_code (parameter_code), KEY recorded_time (recorded_time), KEY recorded_level(recorded_level), KEY min_recorded_level(min_recorded_level), KEY max_recorded_level(max_recorded_level),   KEY `sum_level` (`sum_level`),  KEY `total_level` (`total_level`),KEY recorded_day (recorded_day), KEY recorded_hour (recorded_hour), KEY recorded_type (recorded_type)) ENGINE=Myisam DEFAULT CHARSET=latin1');
            PREPARE stmt1 FROM @query;

            EXECUTE stmt1;  

SET tableName = CONCAT("pollutant_level_infos_", start_year, "_", month);
        SET @tName = tableName;
  
        SET tableName = CONCAT("pollutant_level_infos_", start_year, "_", month);
        SET @query = CONCAT('CREATE TABLE IF NOT EXISTS ', tableName, ' (pid varchar(11) default "",plant_id varchar(200) NOT NULL, analyzer varchar(5) NOT NULL, station_id varchar(200) NOT NULL, parameter_code varchar(10) NOT NULL, recorded_time datetime NOT NULL, recorded_level decimal(10,2)  DEFAULT NULL, recorded_year int(4) NOT NULL,
  recorded_month int(2) NOT NULL, recorded_date date DEFAULT NULL, KEY plant_id (plant_id), KEY analyzer (analyzer), KEY station_id (station_id), KEY parameter_code (parameter_code), KEY recorded_time (recorded_time), KEY recorded_level(recorded_level), KEY recorded_year(recorded_year), KEY recorded_month(recorded_month), KEY recorded_date (recorded_date)) ENGINE=Myisam DEFAULT CHARSET=latin1');
            PREPARE stmt1 FROM @query;
            EXECUTE stmt1;          
             SET month=month+1;
             IF month>12 THEN
                LEAVE month_loop;
             END IF;
        END LOOP month_loop;
        SET start_year=start_year+1;
    END LOOP year_loop;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `datalogger_dbagg_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `datalogger_dbagg_sp`(
	IN `datatype` VARCHAR(50),
	IN `plant` VARCHAR(20),
	IN `analyzer` VARCHAR(14),
	IN `station` VARCHAR(30),
	IN `pollutant_name` VARCHAR(10),
	IN `val` VARCHAR(20),
	IN `rec_date_time` VARCHAR(30),
	IN `v_min_recorded_level` VARCHAR(20) ,
	IN `v_max_recorded_level` VARCHAR(20),
	IN `v_sum_level` VARCHAR(20),
	IN `v_total_level` VARCHAR(20),
	IN `v_recorded_day` VARCHAR(20),
	IN `v_recorded_hour` VARCHAR(20),
	IN `recorded_type` VARCHAR(20)




)
BEGIN

DECLARE recorded_time DATETIME;

DECLARE cyear  INT;

DECLARE cmonth INT;

DECLARE checkInsert INT;

DECLARE cMinute INT;

SET checkInsert = 0;

SET recorded_time = STR_TO_DATE(rec_date_time, '%Y-%m-%d %H:%i:%s');
SET cyear = YEAR(recorded_time);
SET cmonth = month(recorded_time);
SET cMinute = MINUTE(recorded_time);
SET @monthlyAggTable = concat(CAST("db_migrate_pollutant_level_data_"  AS CHAR CHARACTER SET utf8), cyear, "_", cmonth);
IF datatype = 'CPCBper15minute' then
SET @query  = concat("INSERT INTO `", @monthlyAggTable , "`(`plant_id`, `analyzer`, `station_id`, `parameter_code`, `recorded_time`, `recorded_level`, `min_recorded_level`, `max_recorded_level`, `sum_level`, `total_level`, `recorded_day`, `recorded_hour`, `recorded_type`) VALUES ('",plant, "','", analyzer,"','", station,"','", pollutant_name,"','", recorded_time,"',", val,",",v_min_recorded_level,",",v_max_recorded_level,",",v_sum_level,",",v_total_level,",",v_recorded_day,", ",v_recorded_hour,",",recorded_type,")");
SELECT @query;

                PREPARE stmt1 FROM @query; 

                EXECUTE stmt1;
end if;
IF datatype = 'CPCBper1hours' then
SET @query  = concat("INSERT INTO `", @monthlyAggTable , "`(`plant_id`, `analyzer`, `station_id`, `parameter_code`, `recorded_time`, `recorded_level`, `min_recorded_level`, `max_recorded_level`, `sum_level`, `total_level`, `recorded_day`, `recorded_hour`, `recorded_type`) VALUES ('",plant, "','", analyzer,"','", station,"','", pollutant_name,"','", recorded_time,"',", val,",",v_min_recorded_level,",",v_max_recorded_level,",",v_sum_level,",",v_total_level,",",v_recorded_day,", ",v_recorded_hour,",",recorded_type,")");
SELECT @query;

                PREPARE stmt2 FROM @query; 

                EXECUTE stmt2;
                
SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", v_sum_level,") / (total_level + ",v_total_level,") , sum_level = sum_level + ", v_sum_level,", total_level = total_level+",v_total_level,", min_recorded_level = if(", v_min_recorded_level, "  < min_recorded_level,",v_min_recorded_level,", min_recorded_level), max_recorded_level = if(",v_max_recorded_level," > max_recorded_level,",v_max_recorded_level,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", date(recorded_time),"'");

                PREPARE stmt3 FROM @query; 

                EXECUTE stmt3;                

IF row_count() = 0 THEN
SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", v_sum_level,", total_level = ",v_total_level,", min_recorded_level = ", v_min_recorded_level, ", max_recorded_level = ",v_max_recorded_level,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");

select @query;

                PREPARE stmt4 FROM @query; 

                EXECUTE stmt4;

                

end if;



SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", v_sum_level,") / (total_level + ",v_total_level,") , sum_level = sum_level + ", v_sum_level,", total_level = total_level+",v_total_level,", min_recorded_level = if(", v_min_recorded_level, "  < min_recorded_level,",v_min_recorded_level,", min_recorded_level), max_recorded_level = if(",v_max_recorded_level," > max_recorded_level,",v_max_recorded_level,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");

                PREPARE stmt5 FROM @query; 

                EXECUTE stmt5;                

IF row_count() = 0 THEN



SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", v_sum_level,", total_level = ",v_total_level,", min_recorded_level = ", v_min_recorded_level, ", max_recorded_level = ",v_max_recorded_level,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");

select @query;

                PREPARE stmt6 FROM @query; 

                EXECUTE stmt6;

                

end if;
           
                
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `datalogger_eachminute_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `datalogger_eachminute_sp`(
	IN `datatype` VARCHAR(50),
	IN `plant` VARCHAR(20),
	IN `analyzer` VARCHAR(14),
	IN `station` VARCHAR(30),
	IN `pollutant_name` VARCHAR(10),
	IN `val` VARCHAR(20),
	IN `rec_date_time` VARCHAR(30)


)
BEGIN

DECLARE recorded_time DATETIME;

DECLARE cyear  INT;

DECLARE cmonth INT;

DECLARE checkInsert INT;

DECLARE cMinute INT;

SET checkInsert = 0;

SET recorded_time = STR_TO_DATE(rec_date_time, '%Y-%m-%d %H:%i:%s');
SET cyear = YEAR(recorded_time);
SET cmonth = month(recorded_time);
SET cMinute = MINUTE(recorded_time);
SET @monthlyTable = concat(CAST("pollutant_level_infos_"  AS CHAR CHARACTER SET utf8), cyear, "_", cmonth);

SET @query  = concat("INSERT INTO `", @monthlyTable , "` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES ('",plant, "','", analyzer,"','", station,"','", pollutant_name,"','", recorded_time,"','", val,"','",year(recorded_time),"','", month(recorded_time),"','", DATE(recorded_time), "')");

SELECT @query;

                PREPARE stmt1 FROM @query; 

                EXECUTE stmt1;

update `pollutant_level_infos_hourly` set `recorded_time` = recorded_time, `recorded_level` =val, plant_id=plant , `analyzer`= analyzer , station_id = station ,  parameter_code=pollutant_name where plant_id=plant and `analyzer`= analyzer and station_id = station and  parameter_code=pollutant_name  and recorded_time < recorded_time and pid = cMinute;

if row_count() = 0 then

INSERT IGNORE INTO `pollutant_level_infos_hourly` (pid, `plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (cMinute, plant,analyzer,station,pollutant_name,recorded_time,val);

end if;

IF analyzer != 'AAQ' then
INSERT INTO rtdas_upload.`pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) 
VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));

INSERT INTO `real_pollutant_level_infos_sms` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`)

VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);


end if;
update real_pollutant_level_infos set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and  parameter_code=pollutant_name;

if row_count() = 0 then

INSERT INTO `real_pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);

end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_pol_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_pol_data`(IN plant VARCHAR(20), IN station VARCHAR(30),IN rec_date VARCHAR(10),IN rec_time VARCHAR(8), IN pollutant_name VARCHAR(10),IN val VARCHAR(20),IN unit VARCHAR(10), IN analyzer VARCHAR(14),IN param VARCHAR(20))
BEGIN



DECLARE recorded_time DATETIME;
DECLARE cyear  INT;
DECLARE cmonth INT;
DECLARE checkInsert INT;

SET checkInsert = 0;
SET recorded_time = STR_TO_DATE(CONCAT(rec_date,' ',rec_time), '%Y-%m-%d %H:%i:%s');
SET cyear = YEAR(recorded_time);
SET cmonth = MONTH(recorded_time);


SET @monthlyTable = CONCAT("pollutant_level_infos_", cyear, "_", cmonth);
SET @monthlyAggTable = CONCAT("db_migrate_pollutant_level_data_", cyear, "_", cmonth);


INSERT INTO `pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,YEAR(recorded_time),MONTH(recorded_time),DATE(recorded_time));

SET @recordTime = MINUTE(recorded_time) MOD 20;

UPDATE pollutant_level_infos_hourly SET `recorded_time` = recorded_time, `recorded_level` =val WHERE plant_id=plant AND `analyzer`= analyzer AND station_id = station AND parameter_code=pollutant_name AND record_count= @recordTime;

IF ROW_COUNT() = 0 THEN

INSERT INTO `pollutant_level_infos_hourly` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`,`record_count`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,YEAR(recorded_time),MONTH(recorded_time),DATE(recorded_time), @recordTime);

END IF;


IF analyzer <> 'AAQ' THEN

SET @query = CONCAT("INSERT INTO rtdas_upload.pollutant_level_infos_", plant, " (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES ('", plant,"','",analyzer,"','",station,"','",pollutant_name,"','",recorded_time,"','",val,"','",YEAR(recorded_time),"','",MONTH(recorded_time),"','",DATE(recorded_time), "')");
                PREPARE stmt12 FROM @query; 
                EXECUTE stmt12; 
				
INSERT INTO rtdas_upload.`pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,YEAR(recorded_time),MONTH(recorded_time),DATE(recorded_time));

SET @recordTime = MINUTE(recorded_time) MOD 60;

UPDATE real_pollutant_level_infos_sms SET `recorded_time` = recorded_time, `recorded_level` =val WHERE plant_id=plant AND `analyzer`= analyzer AND station_id = station AND parameter_code=pollutant_name AND record_count= @recordTime;

IF ROW_COUNT() = 0 THEN

INSERT INTO `real_pollutant_level_infos_sms` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`record_count`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,@recordTime);

END IF;


END IF;


UPDATE real_pollutant_level_infos SET `recorded_time` = recorded_time, `recorded_level` =val WHERE plant_id=plant AND `analyzer`= analyzer AND station_id = station AND parameter_code=pollutant_name;

IF ROW_COUNT() = 0 THEN

INSERT INTO `real_pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);

END IF;

SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 5 and date(recorded_time) = '", DATE(recorded_time), "' and recorded_hour = ", HOUR(recorded_time)," and recorded_day = ", IF(MINUTE(recorded_time) <= 14,

        '1',
        IF(MINUTE(recorded_time) <= 29,
        '2',
        IF(MINUTE(recorded_time) <=44,
        '3',
        '4'))));

                PREPARE stmt2 FROM @query; 
                EXECUTE stmt2;                

IF ROW_COUNT() = 0 THEN

SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 5 , recorded_time = '", recorded_time, "', recorded_day = ", IF(MINUTE(recorded_time) <= 14,

        '1',
        IF(MINUTE(recorded_time) <= 29,
        '2',
        IF(MINUTE(recorded_time) <=44,
        '3',
        '4'))), ", recorded_hour = ", HOUR(recorded_time));

SELECT @query;

                PREPARE stmt3 FROM @query; 
                EXECUTE stmt3;

END IF;


SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 1 and date(recorded_time) = '", DATE(recorded_time), "' and recorded_hour = ", HOUR(recorded_time));

                PREPARE stmt2 FROM @query; 
                EXECUTE stmt2;                

IF ROW_COUNT() = 0 THEN


SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 1 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = ", HOUR(recorded_time));

SELECT @query;

                PREPARE stmt3 FROM @query; 
                EXECUTE stmt3;

END IF;


SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", DATE(recorded_time),"'");

                PREPARE stmt2 FROM @query; 
                EXECUTE stmt2;                

IF ROW_COUNT() = 0 THEN

SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");


SELECT @query;

                PREPARE stmt3 FROM @query; 
                EXECUTE stmt3;

END IF;

SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");

                PREPARE stmt2 FROM @query; 
                EXECUTE stmt2;                

IF ROW_COUNT() = 0 THEN

SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");

SELECT @query;
                PREPARE stmt3 FROM @query; 
                EXECUTE stmt3;

END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_pol_data1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ins_pol_data1`(in plant varchar(20), in station varchar(30),in rec_date varchar(10),in rec_time varchar(8), in pollutant_name varchar(10),in val varchar(20),in unit varchar(10), in analyzer varchar(14),in param varchar(20))
BEGIN



DECLARE recorded_time DATETIME;



DECLARE cyear  INT;



DECLARE cmonth INT;



DECLARE checkInsert INT;



SET checkInsert = 0;



SET recorded_time = STR_TO_DATE(concat(rec_date,' ',rec_time), '%Y-%m-%d %H:%i:%s');







SET cyear = YEAR(recorded_time);



SET cmonth = month(recorded_time);







SET @monthlyTable = concat("pollutant_level_infos_", cyear, "_", cmonth);







SET @monthlyAggTable = concat("db_migrate_pollutant_level_data_", cyear, "_", cmonth);







INSERT INTO `pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));





SET @recordTime = minute(recorded_time) mod 20;

update pollutant_level_infos_hourly set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and parameter_code=pollutant_name and record_count= @recordTime;







if row_count() = 0 then







INSERT INTO `pollutant_level_infos_hourly` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`,`record_count`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time), @recordTime);



end if;



IF analyzer <> 'AAQ' then


SET @query = CONCAT("INSERT INTO rtdas_upload.pollutant_level_infos_", plant, " (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES ('", plant,"','",analyzer,"','",station,"','",pollutant_name,"','",recorded_time,"','",val,"','",year(recorded_time),"','",month(recorded_time),"','",DATE(recorded_time), "')");

                PREPARE stmt12 FROM @query; 



                EXECUTE stmt12;             

INSERT INTO rtdas_upload.`pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));




SET @recordTime = minute(recorded_time) mod 60;

update real_pollutant_level_infos_sms set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and parameter_code=pollutant_name and record_count= @recordTime;

if row_count() = 0 then

INSERT INTO `real_pollutant_level_infos_sms` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`record_count`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,@recordTime);

end if;


end if;







update real_pollutant_level_infos set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and parameter_code=pollutant_name;







if row_count() = 0 then







INSERT INTO `real_pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 5 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time)," and recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 5 , recorded_time = '", recorded_time, "', recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 1 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 1 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", date(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_pol_data_new` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ins_pol_data_new`(in plant varchar(20), in station varchar(30),in rec_date varchar(10),in rec_time varchar(8), in pollutant_name varchar(10),in val varchar(20),in unit varchar(10), in analyzer varchar(14),in param varchar(20))
BEGIN



DECLARE recorded_time DATETIME;



DECLARE cyear  INT;



DECLARE cmonth INT;



DECLARE checkInsert INT;



SET checkInsert = 0;



SET recorded_time = STR_TO_DATE(concat(rec_date,' ',rec_time), '%Y-%m-%d %H:%i:%s');







SET cyear = YEAR(recorded_time);



SET cmonth = month(recorded_time);







SET @monthlyTable = concat("pollutant_level_infos_", cyear, "_", cmonth);







SET @monthlyAggTable = concat("db_migrate_pollutant_level_data_", cyear, "_", cmonth);

SET @rtdasUploadTable = concat("rtdas_upload.pollutant_level_infos_", plant);





INSERT INTO `pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));





INSERT INTO `pollutant_level_infos_hourly` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));



IF analyzer <> 'AAQ' then

SET @query = CONCAT("INSERT INTO ", @rtdasUploadTable, " (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES ('", plant,"','",analyzer, "','", station, "','", pollutant_name, "','",recorded_time,"','",val,"','", year(recorded_time),"','", month(recorded_time),"','", DATE(recorded_time),"')"); 
select @query;



                PREPARE stmt13 FROM @query; 



                EXECUTE stmt13;
                
INSERT INTO `real_pollutant_level_infos_sms` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);







end if;







update real_pollutant_level_infos set `recorded_time` = recorded_time, `recorded_level` =val where plant_id=plant and `analyzer`= analyzer and station_id = station and parameter_code=pollutant_name;







if row_count() = 0 then







INSERT INTO `real_pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val);



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 5 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time)," and recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 5 , recorded_time = '", recorded_time, "', recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 1 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 1 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", date(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_pol_delayed_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ins_pol_delayed_data`(in plant varchar(20), in station varchar(30),in rec_date varchar(10),in rec_time varchar(8), in pollutant_name varchar(10),in val varchar(20),in unit varchar(10), in analyzer varchar(14),in param varchar(20))
BEGIN



DECLARE recorded_time DATETIME;



DECLARE cyear  INT;



DECLARE cmonth INT;



DECLARE checkInsert INT;

DECLARE percentCount INT;

SET checkInsert = 0;



SET recorded_time = STR_TO_DATE(concat(rec_date,' ',rec_time), '%Y-%m-%d %H:%i:%s');







SET cyear = YEAR(recorded_time);



SET cmonth = month(recorded_time);







SET @monthlyTable = concat("pollutant_level_infos_", cyear, "_", cmonth);







SET @monthlyAggTable = concat("db_migrate_pollutant_level_data_", cyear, "_", cmonth);


INSERT INTO `pollutant_level_infos` (`plant_id`,`analyzer`,`station_id`,`parameter_code`,`recorded_time`,`recorded_level`,`recorded_year`,`recorded_month`,`recorded_date`) VALUES (plant,analyzer,station,pollutant_name,recorded_time,val,year(recorded_time),month(recorded_time),DATE(recorded_time));


SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 5 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time)," and recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 5 , recorded_time = '", recorded_time, "', recorded_day = ", if(minute(recorded_time) <= 14,



        '1',



        if(minute(recorded_time) <= 29,



        '2',



        if(minute(recorded_time) <=44,



        '3',



        '4'))), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 1 and date(recorded_time) = '", date(recorded_time), "' and recorded_hour = ", HOUR(recorded_time));



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 1 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = ", HOUR(recorded_time));



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 2 and date(recorded_time) = '", date(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 2 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;







SET @query = CONCAT("UPDATE  ", @monthlyAggTable," SET recorded_level = (sum_level + ", val,") / (total_level + 1) , sum_level = sum_level + ", val,", total_level = total_level+1, min_recorded_level = if(", val, "  < min_recorded_level,",val,", min_recorded_level), max_recorded_level = if(",val," > max_recorded_level,",val,", max_recorded_level) where plant_id = '",plant,"' and station_id = '",station,"' and analyzer = '",analyzer,"' and parameter_code = '",pollutant_name,"' and recorded_type = 3 and MONTH(recorded_time) = '", MONTH(recorded_time),"'");



                PREPARE stmt2 FROM @query; 



                EXECUTE stmt2;                



IF row_count() = 0 THEN







SET @query = CONCAT("INSERT INTO  ", @monthlyAggTable," SET recorded_level = ", val,", sum_level = ", val,", total_level = 1, min_recorded_level = ", val, ", max_recorded_level = ",val,", plant_id = '",plant,"' , station_id = '",station,"' , analyzer = '",analyzer,"' , parameter_code = '",pollutant_name,"' , recorded_type = 3 , recorded_time = '", recorded_time, "', recorded_day = ", DAY(recorded_time), ", recorded_hour = 0");



select @query;



                PREPARE stmt3 FROM @query; 



                EXECUTE stmt3;



                



end if;











END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `kill_user_processes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `kill_user_processes`(
	IN `user_to_kill` VARCHAR(255)


)
BEGIN

  DECLARE name_val VARCHAR(255);
  DECLARE no_more_rows BOOLEAN;
  DECLARE loop_cntr INT DEFAULT 0;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE friends_cur CURSOR FOR
    SELECT CONCAT('KILL ',id,';') FROM information_schema.processlist WHERE USER=user_to_kill and command='Sleep' and db <> 'rtdas_upload';

  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = TRUE;

  OPEN friends_cur;
  SELECT FOUND_ROWS() INTO num_rows;

  the_loop: LOOP

    FETCH  friends_cur
    INTO   name_val;

    IF no_more_rows THEN
        CLOSE friends_cur;
        LEAVE the_loop;
    END IF;


 SET @s = name_val;
    PREPARE stmt FROM @s;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SELECT name_val;

    SET loop_cntr = loop_cntr + 1;

  END LOOP the_loop;

  SELECT num_rows, loop_cntr;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 14:14:38
