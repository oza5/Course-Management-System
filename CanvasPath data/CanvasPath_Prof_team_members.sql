-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: CanvasPath
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `Prof_team_members`
--

DROP TABLE IF EXISTS `Prof_team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prof_team_members` (
  `prof_email` varchar(45) NOT NULL,
  `teaching_team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prof_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prof_team_members`
--

LOCK TABLES `Prof_team_members` WRITE;
/*!40000 ALTER TABLE `Prof_team_members` DISABLE KEYS */;
INSERT INTO `Prof_team_members` VALUES ('aad@lionstate.edu',40),('abr@lionstate.edu',6),('are@lionstate.edu',12),('ase@lionstate.edu',21),('bbu@lionstate.edu',11),('bha@lionstate.edu',45),('bmo@lionstate.edu',28),('bro@lionstate.edu',17),('bsu@lionstate.edu',29),('cgo@lionstate.edu',53),('cja@lionstate.edu',18),('cpe@lionstate.edu',39),('cyo@lionstate.edu',41),('dco@lionstate.edu',23),('dsa@lionstate.edu',5),('dwh@lionstate.edu',54),('ema@lionstate.edu',49),('ffo@lionstate.edu',10),('fpr@lionstate.edu',47),('fro@lionstate.edu',2),('gbe@lionstate.edu',30),('hlo@lionstate.edu',38),('hph@lionstate.edu',16),('jca@lionstate.edu',36),('jma@lionstate.edu',52),('jwo@lionstate.edu',8),('kbo@lionstate.edu',27),('kho@lionstate.edu',19),('kmy@lionstate.edu',43),('kni@lionstate.edu',34),('lga@lionstate.edu',51),('lto@lionstate.edu',33),('mam@lionstate.edu',22),('mha@lionstate.edu',7),('mhi@lionstate.edu',44),('mpa@lionstate.edu',14),('nhu@lionstate.edu',48),('nwo@lionstate.edu',37),('rco@lionstate.edu',24),('red@lionstate.edu',13),('rfu@lionstate.edu',46),('rpa@lionstate.edu',31),('rpe@lionstate.edu',26),('rre@lionstate.edu',9),('rri@lionstate.edu',35),('rsi@lionstate.edu',32),('rsu@lionstate.edu',1),('sco@lionstate.edu',42),('swi@lionstate.edu',15),('tje@lionstate.edu',4),('vhi@lionstate.edu',50),('wca@lionstate.edu',25),('wmi@lionstate.edu',20),('wpe@lionstate.edu',3);
/*!40000 ALTER TABLE `Prof_team_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-20  0:19:28
