CREATE DATABASE  IF NOT EXISTS `pmtcompany` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pmtcompany`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: pmtcompany
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_name` varchar(45) DEFAULT 'blank',
  `ac_desc` varchar(45) DEFAULT 'blank',
  `ac_resourceid` int(11) DEFAULT NULL,
  `ac_businessunitid` int(11) DEFAULT NULL,
  `ac_deliveryunitid` int(11) DEFAULT NULL,
  `ac_startdate` date DEFAULT NULL,
  `ac_enddate` date DEFAULT NULL,
  `ac_domain` varchar(45) DEFAULT NULL,
  `ac_subdomain` varchar(45) DEFAULT NULL,
  `ac_contactperson` varchar(45) DEFAULT NULL,
  `ac_status` varchar(45) DEFAULT NULL,
  `ac_type` varchar(45) DEFAULT 'blank',
  PRIMARY KEY (`ac_id`),
  KEY `fk_ac_businessunitid_bu_id_idx` (`ac_businessunitid`),
  KEY `fk_ac_deliveryunitid_du_id_idx` (`ac_deliveryunitid`),
  KEY `fk_ac_resourceid_res_id_idx` (`ac_resourceid`),
  CONSTRAINT `fk_ac_businessunitid_bu_id` FOREIGN KEY (`ac_businessunitid`) REFERENCES `businessunit` (`bu_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_ac_deliveryunitid_du_id` FOREIGN KEY (`ac_deliveryunitid`) REFERENCES `deliveryunit` (`du_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_ac_resourceid_res_id` FOREIGN KEY (`ac_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'BP','British Petrolium',3,4,1,'2016-01-14','2016-01-22','domain1','subdomain1','dfs','active','blank'),(2,'AnU','Airways Unit',3,4,4,'2016-01-29','2016-01-29','domain3','subdomain3','sfdggfadsfdg','closed','blank'),(3,'SportsBet','Sports Gambling website',1,4,4,NULL,NULL,NULL,NULL,NULL,NULL,'blank'),(4,'PropertyGuru','PG-Real estate business',3,4,6,NULL,NULL,NULL,NULL,NULL,NULL,'blank'),(5,'Icon Global','Ngo Software vendor',7,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'blank'),(6,'Coles','Coles Retail chain',1,4,4,'2016-01-01','2017-01-29','domain2','subdomain2','NuGet','active','blank'),(7,'TestExisting','TestExisDesc',1,4,1,'2016-02-04','2016-02-05','domain2','subdomain1','Naveen','active','Existing');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessunit`
--

DROP TABLE IF EXISTS `businessunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessunit` (
  `bu_id` int(11) NOT NULL AUTO_INCREMENT,
  `bu_name` varchar(45) DEFAULT NULL,
  `bu_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessunit`
--

LOCK TABLES `businessunit` WRITE;
/*!40000 ALTER TABLE `businessunit` DISABLE KEYS */;
INSERT INTO `businessunit` VALUES (2,'NASA','North America & South America'),(4,'ROW','Rest of world');
/*!40000 ALTER TABLE `businessunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate` (
  `cer_id` int(11) NOT NULL AUTO_INCREMENT,
  `cer_name` varchar(45) DEFAULT NULL,
  `cer_certifyingorg` varchar(45) DEFAULT NULL,
  `cer_grade` varchar(45) DEFAULT NULL,
  `cer_percentage` varchar(45) DEFAULT NULL,
  `cer_validtill` date DEFAULT NULL,
  `cer_resourceid` int(11) DEFAULT NULL,
  `cer_certdate` date DEFAULT NULL,
  PRIMARY KEY (`cer_id`),
  KEY `fk_cer_resourceid_res_id_idx` (`cer_resourceid`),
  CONSTRAINT `fk_cer_resourceid_res_id` FOREIGN KEY (`cer_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (1,'OCJP','Oracle','A','80',NULL,24,NULL),(2,'OCJP1','Oracle1','A1','90',NULL,24,NULL),(5,'OCJP1','Oracle3','A12','90',NULL,5,NULL),(6,'OCJPu','Oracle2','Au','80',NULL,5,NULL),(7,'OCJPu','Oracle2','Au','80',NULL,2,NULL),(8,'OCJP1','Oracle3','A12','90',NULL,2,NULL),(9,'NavCert2','NavCertrgnz2','B','80',NULL,13,NULL),(10,NULL,NULL,NULL,NULL,NULL,13,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'bla2','','','',NULL,NULL,NULL),(13,'alab1','','','',NULL,9,NULL),(14,'alab2','','','',NULL,9,NULL),(15,'HPQC','HP','B','85',NULL,NULL,NULL),(16,'HPQTP','HP','A','90',NULL,NULL,NULL),(17,'IBM Rational Robo','IBM','B','70','2016-01-21',NULL,NULL),(18,'IBM WinRunner','IBM','C','85.9','2016-01-27',NULL,NULL),(19,'Bla2','bLA3','','',NULL,NULL,NULL),(20,'Bla','bla','','',NULL,NULL,NULL),(21,'RGV','navrg','a','',NULL,26,NULL),(22,'ksv','shnav','a','',NULL,26,NULL),(23,'hpnew','hpnav','','',NULL,NULL,NULL),(24,'ibmne','ibmnew','','',NULL,NULL,NULL),(25,'balald','blad','','',NULL,NULL,NULL),(26,'balanew','bala','','',NULL,NULL,NULL),(27,'bmw','bmw','','',NULL,NULL,NULL),(28,'ibmnew','ibm','','',NULL,NULL,NULL),(29,'baldhead','bh','','',NULL,21,NULL),(30,'bluhead','blue','','',NULL,21,NULL),(31,'hp','hap','','',NULL,NULL,NULL),(32,'ibm','bhi','','',NULL,NULL,NULL),(33,'sakshi','ysr','','',NULL,NULL,NULL),(34,'eenadu','ramji','','',NULL,NULL,NULL),(35,'indi','ind','','',NULL,21,NULL),(36,'usa','use','','',NULL,21,NULL),(37,'hpqtp','hp','','',NULL,21,NULL),(38,'spalsm','splas','','',NULL,21,NULL),(39,'HP ALM','HP','A','90.5','2016-10-31',6,NULL),(40,'HP QTP','HP','B','78.9','2016-11-25',6,NULL),(41,'HP QTP','HP','D','58.5','2016-01-21',28,NULL),(42,'PMP','Cigniti','A','76.9','2016-01-20',28,NULL),(43,'Selenium','MozillaCorp','S','92.4','2018-06-17',28,'2016-01-13'),(44,'JSF','J2EE','C','76.54','2016-01-13',28,'2016-01-28'),(45,'HP ALM','HP','A','65.98','2018-01-13',29,'2016-01-31'),(46,'HP QTP','HP','B','89.98','2016-01-20',29,'2016-01-21'),(47,'JDS Certified','JavaDS','A','92.1','2016-01-28',17,'2016-01-28'),(48,'JMS Certified','JavaMS','B','85.5','2016-01-29',17,'2016-01-26'),(49,'Cert2','CertOrg2','B','60','2016-01-29',31,'2016-01-29'),(50,'Cert1','CertOrg','C','70','2016-01-29',31,'2016-01-13');
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_name` varchar(45) DEFAULT NULL,
  `cl_desc` varchar(45) DEFAULT NULL,
  `cl_locationid` int(11) DEFAULT NULL,
  `cl_createddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cl_modifieddate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cl_isdeleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`cl_id`),
  KEY `fk_cl_locationid_loc_id_idx` (`cl_locationid`),
  CONSTRAINT `fk_cl_locationid_loc_id` FOREIGN KEY (`cl_locationid`) REFERENCES `location` (`loc_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'BP','BritishPetrolium',3,NULL,'2016-02-04 07:53:36','\0'),(3,'SportsBet','Online Betting Platform',3,NULL,'2016-02-04 07:53:36','\0'),(5,'PropertyGuru','Online RealEstate business',12,NULL,NULL,'\0'),(6,'sfsd','sdfs',3,NULL,'2016-01-29 12:54:34',''),(7,'NSWEdu','New South Wales Education Dept',3,NULL,'2016-02-04 07:53:36',''),(8,'Coles','Coles Retail store',3,NULL,'2016-02-04 07:53:36','\0'),(9,'Woolworths','WW Retail chain',4,NULL,NULL,'\0'),(10,'Jan','updated',3,'2016-01-29 12:31:09','2016-02-04 07:53:36',''),(11,'ACS','Australian Cmputer services',3,'2016-01-29 12:44:18','2016-02-04 07:53:36','\0'),(12,'TestClient','TestClientDescr',3,'2016-01-31 07:10:50','2016-02-04 07:53:36','\0');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryunit`
--

DROP TABLE IF EXISTS `deliveryunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveryunit` (
  `du_id` int(11) NOT NULL AUTO_INCREMENT,
  `du_name` varchar(45) DEFAULT NULL,
  `du_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`du_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryunit`
--

LOCK TABLES `deliveryunit` WRITE;
/*!40000 ALTER TABLE `deliveryunit` DISABLE KEYS */;
INSERT INTO `deliveryunit` VALUES (1,'ANZ','Australia & NewZeland'),(4,'Australia','Australia'),(5,'ME','Middle East'),(6,'APAC','Asia Pacific'),(7,'EU','European Countries'),(8,'UK','United Kingdom');
/*!40000 ALTER TABLE `deliveryunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_country` varchar(45) DEFAULT NULL,
  `loc_state` varchar(45) DEFAULT NULL,
  `loc_city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'India','Maharashtra','Mumbai'),(3,'Australia','NewSouthWales','Sydney'),(4,'India','Telangana','Hyderabad'),(5,'India','Karnataka','Bangalore'),(6,'India','Tamilnadu','Chennai'),(7,'India','Goa','Panaji'),(8,'India','WestBengal','Kolkata'),(9,'India','NewDelhi','Delhi'),(10,'India','Andhra Pradesh','Visakhapatnam'),(11,'India','Kerala','Kochi'),(12,'Singapore','Singapore','Singapore');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `prj_id` int(11) NOT NULL AUTO_INCREMENT,
  `prj_name` varchar(45) DEFAULT NULL,
  `prj_desc` varchar(45) DEFAULT NULL,
  `prj_type` varchar(45) DEFAULT NULL,
  `prj_locationid` int(11) DEFAULT NULL,
  `prj_projectstartdate` date DEFAULT NULL,
  `prj_projectenddate` date DEFAULT NULL,
  `prj_contracttype` varchar(45) DEFAULT NULL,
  `prj_resourceid` int(11) DEFAULT NULL,
  `prj_accountid` int(11) DEFAULT NULL,
  `prj_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prj_id`),
  KEY `fk_prj_locationid_loc_id_idx` (`prj_locationid`),
  KEY `fk_prj_resourceid_res_id_idx` (`prj_resourceid`),
  KEY `fk_prj_accountid_ac_id_idx` (`prj_accountid`),
  CONSTRAINT `fk_prj_accountid_ac_id` FOREIGN KEY (`prj_accountid`) REFERENCES `account` (`ac_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_prj_locationid_loc_id` FOREIGN KEY (`prj_locationid`) REFERENCES `location` (`loc_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_prj_resourceid_res_id` FOREIGN KEY (`prj_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'BP','British Petrolium','type2',1,'2016-02-12','2016-02-17','cntrtype2',18,2,'Active'),(2,'Sports Bet','Sports Bet gaming website testing','type2',NULL,'2016-01-07','2016-01-30','cntrtype2',6,3,NULL),(3,'PropertyGuru','Regression Support','type2',12,'2016-01-28','2020-01-14','cntrtype2',2,4,NULL),(4,'Augment','Augment','type2',4,'2016-01-14','2016-01-30','cntrtype3',29,2,NULL),(5,'Icon Globalhj','IG\'s manual testinghj','type2',5,'2016-01-14','2016-01-23','cntrtype1',16,1,'Cancel'),(6,'Coles Regression','Coles Pvt ltd','type2',4,'2016-01-13','2016-01-29','cntrtype3',16,3,'Cancel');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_name` varchar(45) DEFAULT NULL,
  `reg_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'APAC','Asia Pacific'),(2,'EU','European Countries'),(3,'ME','Middle East'),(4,'ANZ','Australia & NewZeland'),(5,'USA','United States Of Americ'),(6,'blabla','blksdfl');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resall`
--

DROP TABLE IF EXISTS `resall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resall` (
  `ra_id` int(11) NOT NULL AUTO_INCREMENT,
  `ra_resourceid` int(11) DEFAULT NULL,
  `ra_projectid` int(11) DEFAULT NULL,
  `ra_startdate` timestamp NULL DEFAULT NULL,
  `ra_enddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resall`
--

LOCK TABLES `resall` WRITE;
/*!40000 ALTER TABLE `resall` DISABLE KEYS */;
/*!40000 ALTER TABLE `resall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resallreq`
--

DROP TABLE IF EXISTS `resallreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resallreq` (
  `rar_id` int(11) NOT NULL AUTO_INCREMENT,
  `rar_projectid` int(11) DEFAULT NULL,
  `rar_status` varchar(45) DEFAULT NULL,
  `rar_requestid` varchar(45) DEFAULT NULL,
  `rar_owner` int(11) DEFAULT NULL,
  `rar_billable` varchar(45) DEFAULT 'blank',
  PRIMARY KEY (`rar_id`),
  KEY `fk_rar_projectid_prj_id_idx` (`rar_projectid`),
  KEY `fk_rar_ownerid_res_id_idx` (`rar_owner`),
  CONSTRAINT `fk_rar_ownerid_res_id` FOREIGN KEY (`rar_owner`) REFERENCES `resource` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rar_projectid_prj_id` FOREIGN KEY (`rar_projectid`) REFERENCES `project` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resallreq`
--

LOCK TABLES `resallreq` WRITE;
/*!40000 ALTER TABLE `resallreq` DISABLE KEYS */;
INSERT INTO `resallreq` VALUES (44,1,'new','rar001',1,'no'),(45,1,'new','rar001',1,'no'),(46,1,'new','rar001',1,'no'),(47,1,'new','rar001',1,'no'),(48,1,'new','rar001',1,'yes');
/*!40000 ALTER TABLE `resallreq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resallreqdetail`
--

DROP TABLE IF EXISTS `resallreqdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resallreqdetail` (
  `rard_id` int(11) NOT NULL AUTO_INCREMENT,
  `rard_resallreqid` int(11) DEFAULT NULL,
  `rard_primaryskillid` int(11) DEFAULT NULL,
  `rard_secondaryskillid` int(11) DEFAULT NULL,
  `rard_comments` varchar(80) DEFAULT NULL,
  `rard_resproposedid` int(11) DEFAULT NULL,
  `rard_status` varchar(45) DEFAULT NULL,
  `rard_requestid` varchar(45) DEFAULT NULL,
  `rard_decision` varchar(45) DEFAULT NULL,
  `rard_startdate` timestamp NULL DEFAULT NULL,
  `rard_enddate` timestamp NULL DEFAULT NULL,
  `rard_rmgapprover` int(11) DEFAULT NULL,
  `rard_deliveryapprover` int(11) DEFAULT NULL,
  `rard_requesttype` varchar(45) DEFAULT NULL,
  `rard_rolerequired` varchar(45) DEFAULT NULL,
  `rard_allctype` varchar(45) DEFAULT NULL,
  `rard_clientinterview` varchar(45) DEFAULT NULL,
  `rard_competencygroup` varchar(45) DEFAULT NULL,
  `rard_domain` int(11) DEFAULT NULL,
  `rard_location` int(11) DEFAULT NULL,
  PRIMARY KEY (`rard_id`),
  KEY `fk_rard_primaryskillid_sk_id_idx` (`rard_primaryskillid`),
  KEY `fk_rard_secondaryskillid_sk_id_idx` (`rard_secondaryskillid`),
  KEY `fk_rard_resproposedid_res_id_idx` (`rard_resproposedid`),
  KEY `fk_rard_rmgapprover_res_id_idx` (`rard_rmgapprover`),
  KEY `fk_rard_deliveryapprover_res_id_idx` (`rard_deliveryapprover`),
  KEY `fk_rard_resallreqid_rar_id_idx` (`rard_resallreqid`),
  CONSTRAINT `fk_rard_deliveryapprover_res_id` FOREIGN KEY (`rard_deliveryapprover`) REFERENCES `resource` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rard_primaryskillid_sk_id` FOREIGN KEY (`rard_primaryskillid`) REFERENCES `skill` (`sk_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rard_resallreqid_rar_id` FOREIGN KEY (`rard_resallreqid`) REFERENCES `resallreq` (`rar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rard_resproposedid_res_id` FOREIGN KEY (`rard_resproposedid`) REFERENCES `resource` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rard_rmgapprover_res_id` FOREIGN KEY (`rard_rmgapprover`) REFERENCES `resource` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rard_secondaryskillid_sk_id` FOREIGN KEY (`rard_secondaryskillid`) REFERENCES `skill` (`sk_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resallreqdetail`
--

LOCK TABLES `resallreqdetail` WRITE;
/*!40000 ALTER TABLE `resallreqdetail` DISABLE KEYS */;
INSERT INTO `resallreqdetail` VALUES (37,44,14,16,NULL,NULL,'Open','rard001',NULL,'2016-02-25 18:30:00','2016-02-09 18:30:00',1,1,'New','ppp','Buffer','NO','SME',14,7),(38,44,14,16,NULL,NULL,'Open','rard001',NULL,'2016-02-25 18:30:00','2016-02-09 18:30:00',1,1,'New','ppp','Buffer','NO','SME',14,7),(39,45,9,17,NULL,NULL,'Open','rard001',NULL,'2016-02-10 18:30:00','2016-02-10 18:30:00',1,1,'New','aaa','Billing','NO','Functional Testing',14,5),(40,45,9,17,NULL,NULL,'Open','rard001',NULL,'2016-02-10 18:30:00','2016-02-10 18:30:00',1,1,'New','aaa','Billing','NO','Functional Testing',14,5),(41,45,17,16,NULL,NULL,'processing','rard001',NULL,'2016-02-25 18:30:00','2016-02-27 18:30:00',1,1,'Replacement','bbb','Buffer','YES','Security Testing',14,4),(42,45,17,16,NULL,NULL,'processing','rard001',NULL,'2016-02-25 18:30:00','2016-02-27 18:30:00',1,1,'Replacement','bbb','Buffer','YES','Security Testing',14,4),(43,45,17,16,NULL,NULL,'processing','rard001',NULL,'2016-02-25 18:30:00','2016-02-27 18:30:00',1,1,'Replacement','bbb','Buffer','YES','Security Testing',14,4),(44,45,9,5,NULL,NULL,'processing','rard001',NULL,'2016-02-27 18:30:00','2016-02-28 18:30:00',1,1,'New','ccc','Buffer','YES','Project Management',14,5),(45,45,9,5,NULL,NULL,'processing','rard001',NULL,'2016-02-27 18:30:00','2016-02-28 18:30:00',1,1,'New','ccc','Buffer','YES','Project Management',14,5),(46,45,9,5,NULL,NULL,'allocated','rard001',NULL,'2016-02-27 18:30:00','2016-02-28 18:30:00',1,1,'New','ccc','Buffer','YES','Project Management',14,5),(47,45,9,5,NULL,NULL,'allocated','rard001',NULL,'2016-02-27 18:30:00','2016-02-28 18:30:00',1,1,'New','ccc','Buffer','YES','Project Management',14,5),(48,46,18,16,NULL,NULL,'allocated','rard001',NULL,'2016-02-25 18:30:00','2016-02-14 18:30:00',1,1,'Replacement','jjj','Buffer','NO','Functional Testing',14,8),(49,46,18,16,NULL,NULL,'rejected','rard001',NULL,'2016-02-25 18:30:00','2016-02-14 18:30:00',1,1,'Replacement','jjj','Buffer','NO','Functional Testing',14,8),(50,47,17,18,NULL,NULL,'rejected','rard001',NULL,'2016-02-26 18:30:00','2016-02-27 18:30:00',1,1,'New','eee','Billing','YES','Testing Services',14,9),(51,47,17,18,NULL,NULL,'rejected','rard001',NULL,'2016-02-26 18:30:00','2016-02-27 18:30:00',1,1,'New','eee','Billing','YES','Testing Services',14,9),(52,48,7,17,NULL,NULL,'proposed','rard001',NULL,'2016-01-31 18:30:00','2016-02-25 18:30:00',1,1,'New','SSS','Billing','NO','Functional Testing',14,1),(53,48,7,17,NULL,NULL,'proposed','rard001',NULL,'2016-01-31 18:30:00','2016-02-25 18:30:00',1,1,'New','SSS','Billing','NO','Functional Testing',14,1),(54,48,7,17,NULL,NULL,'accepted','rard001',NULL,'2016-01-31 18:30:00','2016-02-25 18:30:00',1,1,'New','SSS','Billing','NO','Functional Testing',14,1),(55,48,7,17,NULL,NULL,'accepted','rard001',NULL,'2016-01-31 18:30:00','2016-02-25 18:30:00',1,1,'New','SSS','Billing','NO','Functional Testing',14,1);
/*!40000 ALTER TABLE `resallreqdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_empid` int(11) DEFAULT NULL,
  `res_contactnumber` varchar(45) DEFAULT NULL,
  `res_currentlocationid` int(11) DEFAULT NULL,
  `res_permanentlocationid` int(11) DEFAULT NULL,
  `res_designation` varchar(45) DEFAULT NULL,
  `res_doj` date DEFAULT NULL,
  `res_tier` varchar(45) DEFAULT NULL,
  `res_firstname` varchar(45) DEFAULT NULL,
  `res_lastname` varchar(45) DEFAULT NULL,
  `res_gender` varchar(45) DEFAULT NULL,
  `res_maritalstatus` varchar(45) DEFAULT NULL,
  `res_email` varchar(45) DEFAULT NULL,
  `res_natureofemployment` varchar(45) DEFAULT NULL,
  `res_empstatus` varchar(45) DEFAULT NULL,
  `res_lastworkingday` date DEFAULT NULL,
  `res_contractstartdate` date DEFAULT NULL,
  `res_contractenddate` date DEFAULT NULL,
  `res_passportnumber` varchar(45) DEFAULT NULL,
  `res_passportexpirydate` date DEFAULT NULL,
  `res_track` varchar(45) DEFAULT NULL,
  `res_competencygroup` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `fk_res_currentlocationid_loc_id_idx` (`res_currentlocationid`),
  KEY `fk_res_permanentlocationid_loc_id_idx` (`res_permanentlocationid`),
  CONSTRAINT `fk_res_currentlocationid_loc_id` FOREIGN KEY (`res_currentlocationid`) REFERENCES `location` (`loc_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_res_permanentlocationid_loc_id` FOREIGN KEY (`res_permanentlocationid`) REFERENCES `location` (`loc_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,12345,'2222',NULL,6,'Associate Architect',NULL,NULL,'Naveen Kumar','Anem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,56789,'12345',8,7,'Project Engineer',NULL,NULL,'Lakshmi Sravani','Gutti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,11111,'22222',4,9,'Java Dev',NULL,'Tier 4','Sravas','Laks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1111,'2222',3,6,'Java Dev',NULL,'Tier 3','Pops','buddi','Male','Married',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,11111,'5667',10,11,'SAP Con',NULL,'Tier 3','Prati','Anem','Female','Married',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,99999,'9985137497',3,5,'Architect',NULL,'Tier 5','Prabhas Kumar','Raju','Male','Married',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,23456,'9999888822',3,11,'Actor',NULL,'Tier 1','Pawan Kalyan','K','Male','Divorced',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,21321,'23423423',5,7,'sdfsdaf','2015-12-16','Tier 5','wrew','fdgdfg','Female','Married',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,851540,'7382106811',4,4,'Assistant Engineer','2015-01-05','Tier 5','LakshmiSravani','Anem','Male','Single',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,39798,'86098798',7,7,'sldfjlsdk','2015-12-23','Tier 4','Navee','ksdflsd','Male','Married','naveenanem22@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,33242,'23423423',3,5,'sdfsd','2016-01-20','Tier 3','sdfsd','sdfsd','Male','Single','sdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,152705,'78674532',3,12,'JavaDeve','2016-01-19','Tier 2','Lakshmiiii','Sravaniiiii','Female','Married','blabla@blabla.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,15201676,'9988776655',4,4,'AssoArch','2015-02-12','Tier 3','Naveen Kumar','Anem','Male','Married','nav@nav.com','Permanent','Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,23423,'242342342',3,4,'sdfsdf','2016-01-13','Tier 5','sdfsd','sdfds','Male','Single','sdfds@lkjsldf.com','Contract','Inactive-Resigned','2016-01-28',NULL,'2016-01-28',NULL,NULL,NULL,NULL),(15,567567,'7978978',5,5,'zczxczx','2016-01-12','Tier 2','sdfsd','hjkhj','Male','Married','kjhkj@kjhkj.com','Permanent','Inactive-Resigned','2016-01-29','2016-01-30','2016-01-18',NULL,NULL,NULL,NULL),(16,234234,'3423423',NULL,NULL,'sdfsd','2016-01-20','Tier 3','ffdsf','sfsdfds','Female','Divorced','sdfsd','Contract','select','2016-01-26','2016-01-27','2016-01-28',NULL,NULL,NULL,NULL),(17,123213,'432432',6,9,'dfsdf','2016-01-20','Tier 4','sdfsdf','bttbg','Male','Married','dsfdsg','Contract','Inactive-ManagedOut','2016-01-28','2016-01-16','2016-01-13','324sfdsf','2016-01-22',NULL,NULL),(18,12345,'999999999',3,6,'Develper','2016-01-12','Tier 3','Crab','Crab Last','Female','Married','email@eamil.cm','Permanent','Inactive-Resigned','2016-01-13','2016-01-20','2016-01-16','J2940263','2043-06-17','Testing','Security Testing'),(21,11111,'99999999',4,5,'DDDDDDDD','2016-01-06','Tier 5','NNNNNN','LLLLLLL','Male','Married','email@email','Permanent','Inactive-Resigned','2016-01-30','2016-01-31','2016-01-09','rte345','2016-01-14','Testing','Performance Testing'),(24,423,'324',NULL,3,'dsf','2016-01-14','Tier 4','fds','dfds','Male','Married','dsf','Contract','Active','2016-01-21','2016-01-08','2016-01-16','sdf','2016-01-24','Development','Security Testing'),(25,345344,'645645',5,3,'gfhfg','2016-01-06','Tier 2','sdfsdsdf','sdfsd','Female','Married','fdgdfg','Permanent','Inactive-ManagedOut','2016-01-21','2016-01-30','2016-01-17','45243423','2016-01-22','Development','Manual Testing'),(26,11111,'99999999',4,5,'DDDDDDDD','2016-01-06','Tier 5','NNNNNN','LLLLLLL','Male','Married','email@email','Permanent','Inactive-Resigned','2016-01-30','2016-01-31','2016-01-09','rte345','2016-01-14','Testing','Performance Testing'),(27,22222,'888888',5,3,'LLLLL','2016-01-27','Tier 1','JJJJ','KKK','Female','Married','email','Contract','Active','2016-01-21','2016-01-30','2016-01-30','lksjdf','2016-01-23','Development','Manual Testing'),(28,152439,'9878675490',1,4,'Assistant Manager','2016-01-01','Tier 3','Sravan','Kumar','Male','Married','srav.kumar@cigniti.cm','Contract','Active',NULL,NULL,NULL,'J2940263',NULL,'Testing','Automation Testing'),(29,12345,'98787876',4,4,'Prj Mgr','2016-01-20','Tier 3','Siddhu','Kumar','Male','Married','emai@cig.cm','Permanent','Active',NULL,NULL,NULL,'J2940263',NULL,'SME','Automation Testing'),(30,152705,'111',NULL,1,'','2016-01-07','select','Bla','','Male','Married','adas','select','select',NULL,NULL,NULL,'234dsf',NULL,'select','select'),(31,15676,'88899',NULL,3,'qwerty','2016-01-13','select','Perm','last','Male','Married','niki.gutti@gmail.com','Permanent','Active',NULL,NULL,NULL,'12333',NULL,'select','select');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceskill`
--

DROP TABLE IF EXISTS `resourceskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceskill` (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `rs_resourceid` int(11) DEFAULT NULL,
  `rs_skillid` int(11) DEFAULT NULL,
  `rs_coreskill` tinyint(4) DEFAULT NULL,
  `rs_selfrating` int(11) DEFAULT NULL,
  PRIMARY KEY (`rs_id`),
  KEY `fk_rs_resourceid_res_id_idx` (`rs_resourceid`),
  KEY `fk_rs_skillid_sk_id_idx` (`rs_skillid`),
  CONSTRAINT `fk_rs_resourceid_res_id` FOREIGN KEY (`rs_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_rs_skillid_sk_id` FOREIGN KEY (`rs_skillid`) REFERENCES `skill` (`sk_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceskill`
--

LOCK TABLES `resourceskill` WRITE;
/*!40000 ALTER TABLE `resourceskill` DISABLE KEYS */;
INSERT INTO `resourceskill` VALUES (1,21,1,1,1),(2,21,1,1,1),(3,21,1,1,1),(4,29,16,1,1),(5,13,17,0,3),(6,28,19,0,1),(7,28,17,0,2),(8,29,11,0,3),(9,29,19,0,2),(10,29,4,0,1),(11,29,11,0,1),(12,29,19,0,2),(13,29,4,0,3),(14,17,11,0,2),(15,17,10,0,3),(16,17,2,0,4),(17,29,2,0,3),(18,29,19,0,4),(19,29,18,0,5),(20,31,19,0,2),(21,31,11,0,3),(22,31,2,0,3);
/*!40000 ALTER TABLE `resourceskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(45) DEFAULT NULL,
  `r_previlegeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `sk_id` int(11) NOT NULL AUTO_INCREMENT,
  `sk_name` varchar(45) DEFAULT NULL,
  `sk_desc` varchar(45) DEFAULT NULL,
  `sk_category` varchar(45) DEFAULT NULL,
  `sk_createddate` date DEFAULT NULL,
  `sk_modifieddate` date DEFAULT NULL,
  `sk_deleted` binary(1) DEFAULT NULL,
  PRIMARY KEY (`sk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Selenium','OpenSource Automation','tools',NULL,NULL,NULL),(2,'UFT','Com Functional Testing Tool','tools',NULL,NULL,NULL),(4,'WinRunner','IBM\'s Functional Test tool','tools',NULL,NULL,NULL),(5,'SOAP','WebServices testing tool','tools',NULL,NULL,NULL),(6,'Twist','Commercial Functional Testing Tool','tools',NULL,NULL,NULL),(7,'WebDriver','Selenium Tools','tools',NULL,NULL,NULL),(9,'Selenium Server','Selenium Tools','tools',NULL,NULL,NULL),(10,'Quality Center','Test Management Tools','lifecycle',NULL,NULL,NULL),(11,'Rational Manual Tester','IBM\'s Functional Test tool','lifecycle',NULL,NULL,NULL),(12,'CQTM','IBM\'s Tst Management tools','lifecycle',NULL,NULL,NULL),(13,'BugZilla','Defect Management Tool','lifecycle',NULL,NULL,NULL),(14,'Clear Quest','Defect Management Tool','lifecycle',NULL,NULL,NULL),(16,'TCDesign','TestCaseDesign','lifecycle',NULL,NULL,NULL),(17,'TCExecution','TestExecution','lifecycle',NULL,NULL,NULL),(18,'BFSI','Banking And Finance','domain',NULL,NULL,NULL),(19,'J2EE','Enterprise tech','technology',NULL,NULL,NULL),(20,'.Net','Microsoft Technology','technology',NULL,NULL,NULL),(21,'Retail','Retail industry','domain',NULL,NULL,NULL),(22,'QC','HP Quality Center','lifecycle',NULL,NULL,NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(45) DEFAULT NULL,
  `u_password` varchar(45) DEFAULT NULL,
  `u_createddate` timestamp NULL DEFAULT NULL,
  `u_modifiedate` timestamp NULL DEFAULT NULL,
  `u_resourceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_username_UNIQUE` (`u_username`),
  KEY `fk_u_resourceid_res_id_idx` (`u_resourceid`),
  CONSTRAINT `fk_u_resourceid_res_id` FOREIGN KEY (`u_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'deluser','rmgpass',NULL,NULL,16),(2,'rmguser','rmgpass',NULL,NULL,1),(3,'admin','admin',NULL,NULL,4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT,
  `ur_userid` int(11) DEFAULT NULL,
  `ur_roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visa`
--

DROP TABLE IF EXISTS `visa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visa` (
  `vsa_id` int(11) NOT NULL AUTO_INCREMENT,
  `vsa_country` varchar(45) DEFAULT NULL,
  `vsa_type` varchar(45) DEFAULT NULL,
  `vsa_validtill` date DEFAULT NULL,
  `vsa_resourceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`vsa_id`),
  KEY `fk_vsa_resourceid_resource_id_idx` (`vsa_resourceid`),
  CONSTRAINT `fk_vsa_resourceid_res_id` FOREIGN KEY (`vsa_resourceid`) REFERENCES `resource` (`res_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visa`
--

LOCK TABLES `visa` WRITE;
/*!40000 ALTER TABLE `visa` DISABLE KEYS */;
INSERT INTO `visa` VALUES (1,'USA','h1b','2016-01-27',21),(2,'AUS','WP','2016-01-28',21),(3,'Japan','WP','2016-01-14',21),(4,'Malaysia','PR','2016-01-10',21),(5,'USA','H1B','2020-01-14',29),(6,'Australia','WP','2020-01-21',29),(7,'India','NRI','2016-01-28',17),(8,'USA','H1B','2016-01-20',17),(9,'USA','H1B','2016-01-30',31),(10,'AUS','WP','2016-01-21',31);
/*!40000 ALTER TABLE `visa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pmtcompany'
--

--
-- Dumping routines for database 'pmtcompany'
--
/*!50003 DROP PROCEDURE IF EXISTS `crtAccDelBus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crtAccDelBus`(IN accName VARCHAR(20), OUT accDesc varchar(25))
BEGIN
Declare buid int;
select bu_id into buid from businessunit where bu_name like 'NASA';
if buid = 3 then
select  a.ac_desc into accDesc from account a where a.ac_name like accName;
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

-- Dump completed on 2018-04-15 13:46:52
