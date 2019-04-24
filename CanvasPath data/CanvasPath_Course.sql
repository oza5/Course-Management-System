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
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `course_id` varchar(45) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES ('CHEM110','Environmental Chemistry','Regular 3 credit course offered only on campus'),('CHEM111','Experimental Chemistry','Regular 3 credit course offered only on campus'),('CHEM112','Chemical Principles','Regular 3 credit course offered only on campus'),('CMPEN270','Embedded Systems Design','Regular 3 credit course offered only on campus'),('CMPEN331','Computer Organization And Design','Regular 3 credit course offered only on campus'),('CMPEN351','Microprocessors','Regular 3 credit course offered only on campus'),('CMPEN362','Communication Networks','Regular 3 credit course offered only on campus'),('CMPEN411','VLSI Digital Circuits','Regular 3 credit course offered only on campus'),('CMPEN431','Introduction to Computer Architecture','Regular 3 credit course offered only on campus'),('CMPEN441','Operating Systems','Regular 3 credit course offered only on campus'),('CMPEN454','Fundamentals of Computer Vision','Regular 3 credit course offered only on campus'),('CMPSC131','Programming and Computation','Regular 3 credit course offered only on campus'),('CMPSC132','Programming and Computation II','Regular 3 credit course offered only on campus'),('CMPSC221','OOP with Web Design','Regular 3 credit course offered only on campus'),('CMPSC311','Introduction to Systems Programming','Regular 3 credit course offered only on campus'),('CMPSC360','Discrete Mathematics for CMPSC','Regular 3 credit course offered only on campus'),('CMPSC431W','DBMS','Regular 3 credit course offered only on campus'),('CMPSC448','Machine Learning and Algorithmic AI','Regular 3 credit course offered only on campus'),('CMPSC461','Programming Language Concepts','Regular 3 credit course offered only on campus'),('CMPSC465','Data structures and algorithms','Regular 3 credit course offered only on campus'),('CMPSC475','Applications Programming','Regular 3 credit course offered only on campus'),('CMPSC497','Introduction to Data Mining','Regular 3 credit course offered only on campus'),('CSE543','Computer Security','Regular 3 credit course offered only on campus'),('CSE583','Pattern Recognition','Regular 3 credit course offered only on campus'),('DS120','Python for data science','Regular 3 credit course offered only on campus'),('DS220','Data Modelling','Regular 3 credit course offered only on campus'),('ECON101','Principles of Economics','Regular 3 credit course offered only on campus'),('ECON102','Introductory Microeconomic Analysis and Policy','Regular 3 credit course offered only on campus'),('ECON201','Intermediate Microeconomic Analysis','Regular 3 credit course offered only on campus'),('EE210','Continuous Time Linear Systems','Regular 3 credit course offered only on campus'),('EE211','Circuit Theory','Regular 3 credit course offered only on campus'),('EE212','Introduction to Signal Conditioning','Regular 3 credit course offered only on campus'),('EE311','Devices and Circuits I','Regular 3 credit course offered only on campus'),('EE320','Network Security and Cryptography','Regular 3 credit course offered only on campus'),('EE330','Energy Systems','Regular 3 credit course offered only on campus'),('EE340','Design in Communications','Regular 3 credit course offered only on campus'),('EE352','Design of Digital Circuits and Systems','Regular 3 credit course offered only on campus'),('EE353','Applied Electromagnetics','Regular 3 credit course offered only on campus'),('IST110','Introduction to Information, People And Technology','Regular 3 credit course offered only on campus'),('IST128','Introduction to Python','Regular 3 credit course offered only on campus'),('IST558','Data Mining 2','Regular 3 credit course offered only on campus'),('MATH140','Calculus with Analytic Geometry','Regular 3 credit course offered only on campus'),('MATH141','Matrices','Regular 3 credit course offered only on campus'),('MATH230','Ordinary and Partial Differential Equations','Regular 3 credit course offered only on campus'),('MATH231','Vector Calculus','Regular 3 credit course offered only on campus'),('PHYS211','Thermal Physics','Regular 3 credit course offered only on campus'),('PHYS212','Solid State Physics','Regular 3 credit course offered only on campus'),('PHYS213','General Physics: Electricity and Magnetism','Regular 3 credit course offered only on campus'),('PHYS214','General Physics: Wave Motion and Quantum Physics','Regular 3 credit course offered only on campus'),('STAT318','Elementary Probability','Regular 3 credit course offered only on campus'),('STAT319','Applied Statistics in Science','Regular 3 credit course offered only on campus'),('STAT414','Introduction to Probability Theory','Regular 3 credit course offered only on campus'),('STAT415','Introduction to Mathematical Statistics','Regular 3 credit course offered only on campus');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
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
