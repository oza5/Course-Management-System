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
-- Table structure for table `Professor`
--

DROP TABLE IF EXISTS `Professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professor` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `office_address` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor`
--

LOCK TABLES `Professor` WRITE;
/*!40000 ALTER TABLE `Professor` DISABLE KEYS */;
INSERT INTO `Professor` VALUES ('aad@lionstate.edu','dc06u9nm','Dr Arlie Adams',60,'F','131, Building 13','EE','Professor'),('abr@lionstate.edu','s6ali6hq','Dr Aspen Brown',49,'F','276, Building 13','EE','Professor'),('are@lionstate.edu','mpe2olmx','Dr Addai Reyes',48,'F','174, Building 8','PHYS','Head'),('ase@lionstate.edu','owq94wfe','Dr Adan Senior',57,'F','110, Building 14','STAT','Head'),('bbu@lionstate.edu','wgqpqh2t','Dr Blas Butler',44,'F','228, Building 7','CMPSC','Professor'),('bha@lionstate.edu','d1uz3aya','Dr Bethel Hawkins',44,'M','294, Building 12','MATH','Professor'),('bmo@lionstate.edu','0p3ipgfz','Dr Beauregard Moore',59,'M','107, Building 5','CMPEN','Professor'),('bro@lionstate.edu','6cbbt7ot','Dr Baldwin Roberts',42,'F','293, Building 13','EE','Professor'),('bsu@lionstate.edu','845bd92l','Dr Buddy Sutherland',57,'M','175, Building 8','PHYS','Professor'),('cgo@lionstate.edu','diy0nmdr','Dr Cassidy Gomez',44,'F','149, Building 13','EE','Professor'),('cja@lionstate.edu','rlj07keq','Dr Cavan Jacobs',56,'M','156, Building 14','STAT','Professor'),('cpe@lionstate.edu','x26uaxzr','Dr Carlyle Peters',42,'M','227, Building 14','STAT','Professor'),('cyo@lionstate.edu','l9q4tta8','Dr Casimiro Young',41,'F','277, Building 12','MATH','Professor'),('dco@lionstate.edu','ususknvt','Dr Deshawn Cox',51,'M','187, Building 7','CMPSC','Professor'),('dsa@lionstate.edu','duf07wf7','Dr Dikembe Sanchez',47,'M','232, Building 7','CMPSC','Professor'),('dwh@lionstate.edu','6v7gf9s0','Dr Derwent White',59,'F','138, Building 5','CMPEN','Professor'),('ema@lionstate.edu','ebtz2fob','Dr Erasmo Martin',50,'F','127, Building 8','PHYS','Professor'),('ffo@lionstate.edu','9uhmclic','Dr Finch Foster',50,'F','217, Building 3','CHEM','Head'),('fpr@lionstate.edu','jtoamzax','Dr Ford Price',56,'F','189, Building 5','CMPEN','Professor'),('fro@lionstate.edu','5p2ex4mp','Dr Freowine Rogers',47,'M','105, Building 7','CMPSC','Professor'),('gbe@lionstate.edu','bg3kzhnv','Dr Gil Bell',52,'M','284, Building 7','CMPSC','Professor'),('hlo@lionstate.edu','rq02mf0g','Dr Halsey Lopez',52,'F','289, Building 7','CMPSC','Professor'),('hph@lionstate.edu','tqsaz0vp','Dr Halliwell Phillips',43,'M','124, Building 5','CMPEN','Professor'),('jca@lionstate.edu','55ycoqop','Dr Jackie Carpenter',47,'F','181, Building 12','MATH','Head'),('jma@lionstate.edu','wmb17np1','Dr Jerred Martinez',55,'F','239, Building 5','CMPEN','Head'),('jwo@lionstate.edu','x2boxvpo','Dr Jair Woods',58,'M','213, Building 6','DS','Head'),('kbo@lionstate.edu','cqw7hrg3','Dr Kourtney Booth',51,'M','224, Building 15','ECON','Professor'),('kho@lionstate.edu','a4827x3j','Dr Karol Hodgson',46,'M','144, Building 13','EE','Professor'),('kmy@lionstate.edu','v9xe9cd3','Dr Kofi Myers',46,'M','222, Building 5','CMPEN','Professor'),('kni@lionstate.edu','sekbfhqm','Dr Konnor Nicholson',55,'M','170, Building 3','CHEM','Professor'),('lga@lionstate.edu','zrcwnnrz','Dr Lexis Gardner',46,'F','206, Building 15','ECON','Head'),('lto@lionstate.edu','c2hp2dd4','Dr Luca Torres',57,'F','188, Building 7','CMPSC','Professor'),('mam@lionstate.edu','jlt1x825','Dr Marni Amor',56,'M','216, Building 6','DS','Professor'),('mha@lionstate.edu','2xzermda','Dr Mina Harding',57,'F','184, Building 10','IST','Professor'),('mhi@lionstate.edu','m18o3u41','Dr Merle Hill',60,'M','180, Building 13','EE','Head'),('mpa@lionstate.edu','2koidnt2','Dr Mikelle Parry',41,'M','182, Building 8','PHYS','Professor'),('nhu@lionstate.edu','yzpp5f1t','Dr Norton Hughes',48,'F','212, Building 18','CSE','Professor'),('nwo@lionstate.edu','r403d0qn','Dr Nann Wood',56,'M','256, Building 18','CSE','Head'),('rco@lionstate.edu','sx0mkxzn','Dr Rich Collins',49,'M','142, Building 5','CMPEN','Professor'),('red@lionstate.edu','yqh493g3','Dr Royce Edwards',48,'M','261, Building 7','CMPSC','Professor'),('rfu@lionstate.edu','gusbe091','Dr Roy Fuller',41,'M','104, Building 14','STAT','Professor'),('rpa@lionstate.edu','cukoqrzk','Dr Royal Parsons',44,'M','257, Building 3','CHEM','Professor'),('rpe@lionstate.edu','44j06cnw','Dr Raimy Perez',53,'M','152, Building 13','EE','Professor'),('rre@lionstate.edu','m56icvld','Dr Ralf Reed',56,'M','270, Building 6','DS','Professor'),('rri@lionstate.edu','1d7gjq5g','Dr Russell Richardson',53,'M','168, Building 7','CMPSC','Head'),('rsi@lionstate.edu','ogmh36q7','Dr Radcliff Silva',56,'M','274, Building 10','IST','Professor'),('rsu@lionstate.edu','qui392mr','Dr Rudd Sullivan',53,'M','195, Building 10','IST','Head'),('sco@lionstate.edu','4oioidlt','Dr Sheldon Cook',56,'M','253, Building 7','CMPSC','Professor'),('swi@lionstate.edu','29cu0i4q','Dr Searles Williams',53,'F','219, Building 13','EE','Professor'),('tje@lionstate.edu','jxxciuc9','Dr Thatcher Jenkins',52,'M','296, Building 13','EE','Professor'),('vhi@lionstate.edu','tslak1a6','Dr Virginia Hines',45,'F','268, Building 12','MATH','Professor'),('wca@lionstate.edu','gvaocvt1','Dr Walker Campbell',58,'M','126, Building 7','CMPSC','Professor'),('wmi@lionstate.edu','9ozcn0sr','Dr Welborn Mitchell',55,'M','236, Building 15','ECON','Professor'),('wpe@lionstate.edu','jqy2dgis','Dr Wincent Peterson',60,'F','160, Building 5','CMPEN','Professor');
/*!40000 ALTER TABLE `Professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-20  0:19:27
