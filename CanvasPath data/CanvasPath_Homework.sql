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
-- Table structure for table `Homework`
--

DROP TABLE IF EXISTS `Homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Homework` (
  `course_id` varchar(45) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `hw_no` int(11) NOT NULL,
  `hw_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`sec_no`,`hw_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Homework`
--

LOCK TABLES `Homework` WRITE;
/*!40000 ALTER TABLE `Homework` DISABLE KEYS */;
INSERT INTO `Homework` VALUES ('CHEM110',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CHEM110',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CHEM111',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CHEM111',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CHEM112',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CHEM112',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN270',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN270',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN331',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN331',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN351',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN351',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN362',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN362',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN411',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN411',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN431',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN431',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN441',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN441',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN454',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPEN454',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC131',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC131',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC132',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC132',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC221',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC221',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC311',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC311',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC360',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC360',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC431W',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC431W',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC448',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC448',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC461',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC461',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC465',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC465',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC475',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC475',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC497',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CMPSC497',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CSE543',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CSE543',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CSE583',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('CSE583',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('DS120',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('DS120',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('DS220',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('DS220',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON101',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON101',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON102',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON102',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON201',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('ECON201',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE210',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE210',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE211',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE211',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE212',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE212',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE311',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE311',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE320',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE320',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE330',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE330',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE340',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE340',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE352',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE352',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE353',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('EE353',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST110',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST110',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST128',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST128',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST558',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('IST558',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH140',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH140',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH141',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH141',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH230',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH230',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH231',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('MATH231',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS211',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS211',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS212',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS212',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS213',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS213',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS214',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('PHYS214',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT318',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT318',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT319',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT319',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT414',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT414',2,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT415',1,1,'Submit this homework on CanvasPath. Grade is out of 100'),('STAT415',2,1,'Submit this homework on CanvasPath. Grade is out of 100');
/*!40000 ALTER TABLE `Homework` ENABLE KEYS */;
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
