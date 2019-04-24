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
-- Table structure for table `Sections`
--

DROP TABLE IF EXISTS `Sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sections` (
  `course_id` varchar(45) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `section_type` varchar(45) NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `teaching_team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_no`,`course_id`,`section_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sections`
--

LOCK TABLES `Sections` WRITE;
/*!40000 ALTER TABLE `Sections` DISABLE KEYS */;
INSERT INTO `Sections` VALUES ('CHEM110',1,'Reg',40,10),('CHEM111',1,'Reg',40,31),('CHEM112',1,'Reg',40,34),('CMPEN270',1,'Reg',40,52),('CMPEN331',1,'Reg',40,3),('CMPEN351',1,'Reg',40,43),('CMPEN362',1,'Reg',40,54),('CMPEN411',1,'Reg',40,28),('CMPEN431',1,'Reg',40,16),('CMPEN441',1,'Reg',40,24),('CMPEN454',1,'Cap',40,47),('CMPSC131',1,'Reg',40,42),('CMPSC132',1,'Reg',40,25),('CMPSC221',1,'Reg',40,33),('CMPSC311',1,'Reg',40,11),('CMPSC360',1,'Reg',40,13),('CMPSC431W',1,'Reg',40,35),('CMPSC448',1,'Reg',40,2),('CMPSC461',1,'Reg',40,38),('CMPSC465',1,'Reg',40,5),('CMPSC475',1,'Reg',40,23),('CMPSC497',1,'Cap',40,30),('CSE543',1,'Reg',40,48),('CSE583',1,'Reg',40,37),('DS120',1,'Reg',40,9),('DS220',1,'Reg',40,8),('ECON101',1,'Reg',40,51),('ECON102',1,'Reg',40,20),('ECON201',1,'Reg',40,27),('EE210',1,'Reg',40,44),('EE211',1,'Reg',40,4),('EE212',1,'Reg',40,40),('EE311',1,'Reg',40,6),('EE320',1,'Reg',40,26),('EE330',1,'Reg',40,53),('EE340',1,'Cap',40,17),('EE352',1,'Reg',40,15),('EE353',1,'Reg',40,19),('IST110',1,'Reg',40,1),('IST128',1,'Reg',40,7),('IST558',1,'Cap',40,32),('MATH140',1,'Reg',40,36),('MATH141',1,'Reg',40,41),('MATH230',1,'Reg',40,50),('MATH231',1,'Reg',40,45),('PHYS211',1,'Reg',40,12),('PHYS212',1,'Reg',40,49),('PHYS213',1,'Reg',40,14),('PHYS214',1,'Reg',40,29),('STAT318',1,'Reg',40,21),('STAT319',1,'Reg',40,18),('STAT414',1,'Cap',40,39),('STAT415',1,'Reg',40,46),('CHEM110',2,'Reg',30,10),('CHEM111',2,'Reg',30,31),('CHEM112',2,'Reg',30,34),('CMPEN270',2,'Reg',30,52),('CMPEN331',2,'Reg',30,3),('CMPEN351',2,'Reg',30,43),('CMPEN362',2,'Reg',30,54),('CMPEN411',2,'Reg',30,28),('CMPEN431',2,'Reg',30,16),('CMPEN441',2,'Reg',30,24),('CMPEN454',2,'Cap',30,47),('CMPSC131',2,'Reg',30,42),('CMPSC132',2,'Reg',30,25),('CMPSC221',2,'Reg',30,33),('CMPSC311',2,'Reg',30,11),('CMPSC360',2,'Reg',30,13),('CMPSC431W',2,'Reg',30,35),('CMPSC448',2,'Reg',30,2),('CMPSC461',2,'Reg',30,38),('CMPSC465',2,'Reg',30,5),('CMPSC475',2,'Reg',30,23),('CMPSC497',2,'Cap',30,30),('CSE543',2,'Reg',30,48),('CSE583',2,'Reg',30,37),('DS120',2,'Reg',30,9),('DS220',2,'Reg',30,8),('ECON101',2,'Reg',30,51),('ECON102',2,'Reg',30,20),('ECON201',2,'Reg',30,27),('EE210',2,'Reg',30,44),('EE211',2,'Reg',30,4),('EE212',2,'Reg',30,40),('EE311',2,'Reg',30,6),('EE320',2,'Reg',30,26),('EE330',2,'Reg',30,53),('EE340',2,'Cap',30,17),('EE352',2,'Reg',30,15),('EE353',2,'Reg',30,19),('IST110',2,'Reg',30,1),('IST128',2,'Reg',30,7),('IST558',2,'Cap',30,32),('MATH140',2,'Reg',30,36),('MATH141',2,'Reg',30,41),('MATH230',2,'Reg',30,50),('MATH231',2,'Reg',30,45),('PHYS211',2,'Reg',30,12),('PHYS212',2,'Reg',30,49),('PHYS213',2,'Reg',30,14),('PHYS214',2,'Reg',30,29),('STAT318',2,'Reg',30,21),('STAT319',2,'Reg',30,18),('STAT414',2,'Cap',30,39),('STAT415',2,'Reg',30,46);
/*!40000 ALTER TABLE `Sections` ENABLE KEYS */;
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
