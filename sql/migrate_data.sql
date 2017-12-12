-- MySQL dump 10.13  Distrib 5.6.16, for osx10.7 (x86_64)
--
-- Host: 127.0.0.1    Database: at_migrate
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cats` (
  `name` varchar(32) DEFAULT NULL,
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `cats` VALUES ('Rupert',1),('Tupac',2),('Floss',3),('Catbro',4),('Battlecat',5),('Bagpuss',6),('The Cheshire Cat',7),('Mrs Wol',8),('Murphy',9),('Nina',10);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dog_breeds`
--

DROP TABLE IF EXISTS `dog_breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dog_breeds` (
  `name` varchar(32) DEFAULT NULL,
  `breed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`breed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog_breeds`
--

LOCK TABLES `dog_breeds` WRITE;
/*!40000 ALTER TABLE `dog_breeds` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `dog_breeds` VALUES ('Cairn Terrier',1,'Ratters originating from Scotland'),('Dalmation',2,'Medium sized spotted breed'),('Rough Collie',3,'Long coated herder');
/*!40000 ALTER TABLE `dog_breeds` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dogs` (
  `name` varchar(32) DEFAULT NULL,
  `dog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `breed_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`dog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `dogs` VALUES ('Tobias',1,1),('Windsor',2,1),('Pongo',3,2),('Perdita',4,2),('Lassie',5,3);
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `monkeys`
--

DROP TABLE IF EXISTS `monkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monkeys` (
  `name` varchar(32) DEFAULT NULL,
  `monkey_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `best_friend_id` int(10) DEFAULT NULL,
  `favourite_tree_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`monkey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monkeys`
--

LOCK TABLES `monkeys` WRITE;
/*!40000 ALTER TABLE `monkeys` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `monkeys` VALUES ('Isembard',1,2,1),('Ozymandias',2,1,1),('Thwak',3,5,2),('Akina',4,4,2),('Squamish',5,3,3);
/*!40000 ALTER TABLE `monkeys` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `sloths`
--

DROP TABLE IF EXISTS `sloths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sloths` (
  `name` varchar(32) DEFAULT NULL,
  `sloth_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sloth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sloths`
--

LOCK TABLES `sloths` WRITE;
/*!40000 ALTER TABLE `sloths` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sloths` VALUES ('Elfrieda',1),('Ceinwyn',2),('Rapido',3),('Lightning',4);
/*!40000 ALTER TABLE `sloths` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trees` (
  `name` varchar(10) DEFAULT NULL,
  `tree_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `trees` VALUES ('Apple tree',1),('Oak tree',2),('Elm tree',3);
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-12 16:36:48
