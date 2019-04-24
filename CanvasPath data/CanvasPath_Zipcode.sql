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
-- Table structure for table `Zipcode`
--

DROP TABLE IF EXISTS `Zipcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zipcode` (
  `zipcode` int(11) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zipcode`
--

LOCK TABLES `Zipcode` WRITE;
/*!40000 ALTER TABLE `Zipcode` DISABLE KEYS */;
INSERT INTO `Zipcode` VALUES (6026,'East Granby','Connecticut'),(6066,'Vernon Rockville','Connecticut'),(6262,'Quinebaug','Connecticut'),(6370,'Oakdale','Connecticut'),(6384,'Voluntown','Connecticut'),(6762,'Middlebury','Connecticut'),(6785,'South Kent','Connecticut'),(6883,'Weston','Connecticut'),(19936,'Cheswold','Delaware'),(20390,'Washington','District of Columbia'),(30034,'Decatur','Georgia'),(30078,'Snellville','Georgia'),(30104,'Aragon','Georgia'),(30113,'Buchanan','Georgia'),(30206,'Concord','Georgia'),(30215,'Fayetteville','Georgia'),(30275,'Sargent','Georgia'),(30277,'Sharpsburg','Georgia'),(30339,'Atlanta','Georgia'),(30341,'Atlanta','Georgia'),(30410,'Ailey','Georgia'),(30467,'Sylvania','Georgia'),(30473,'Uvalda','Georgia'),(30523,'Clarkesville','Georgia'),(30529,'Commerce','Georgia'),(30545,'Helen','Georgia'),(30557,'Martin','Georgia'),(30701,'Calhoun','Georgia'),(30720,'Dalton','Georgia'),(30728,'La Fayette','Georgia'),(30755,'Tunnel Hill','Georgia'),(31007,'Byromville','Georgia'),(31016,'Culloden','Georgia'),(31216,'Macon','Georgia'),(31567,'West Green','Georgia'),(31623,'Argyle','Georgia'),(31630,'Du Pont','Georgia'),(31701,'Albany','Georgia'),(31771,'Norman Park','Georgia'),(32024,'Lake City','Florida'),(32164,'Palm Coast','Florida'),(32359,'Steinhatchee','Florida'),(32509,'Pensacola','Florida'),(32656,'Keystone Heights','Florida'),(32708,'Winter Springs','Florida'),(32754,'Mims','Florida'),(32780,'Titusville','Florida'),(32925,'Patrick Afb','Florida'),(32927,'Cocoa','Florida'),(32951,'Melbourne Beach','Florida'),(33001,'Long Key','Florida'),(33035,'Homestead','Florida'),(33062,'Pompano Beach','Florida'),(33136,'Miami','Florida'),(33162,'Miami','Florida'),(33169,'Miami','Florida'),(33763,'Clearwater','Florida'),(33778,'Largo','Florida'),(33847,'Homeland','Florida'),(33936,'Lehigh Acres','Florida'),(34210,'Bradenton','Florida'),(34470,'Ocala','Florida'),(34491,'Summerfield','Florida'),(34609,'Spring Hill','Florida'),(39834,'Climax','Georgia'),(46118,'Clayton','Indiana'),(46121,'Coatesville','Indiana'),(46148,'Knightstown','Indiana'),(46181,'Trafalgar','Indiana'),(46310,'Demotte','Indiana'),(46324,'Hammond','Indiana'),(46347,'Kouts','Indiana'),(46376,'Schneider','Indiana'),(46590,'Winona Lake','Indiana'),(46760,'Kimmell','Indiana'),(47340,'Farmland','Indiana'),(47360,'Mooreland','Indiana'),(47385,'Spiceland','Indiana'),(47434,'Harrodsburg','Indiana'),(47469,'West Baden Springs',''),(47558,'Montgomery','Indiana'),(47584,'Spurgeon','Indiana'),(47841,'Clay City','Indiana'),(47940,'Darlington','Indiana'),(47959,'Monon','Indiana'),(47983,'Stockwell','Indiana'),(50027,'Barnes City','Iowa'),(50120,'Haverhill','Iowa'),(50153,'Lynnville','Iowa'),(50208,'Newton','Iowa'),(50231,'Randall','Iowa'),(50238,'Russell','Iowa'),(50244,'Slater','Iowa'),(50420,'Alexander','Iowa'),(50515,'Ayrshire','Iowa'),(50560,'Lu Verne','Iowa'),(50634,'Gilbertville','Iowa'),(50654,'Masonville','Iowa'),(50851,'Lenox','Iowa'),(50857,'Nodaway','Iowa'),(50864,'Villisca','Iowa'),(51005,'Aurelia','Iowa'),(51007,'Bronson','Iowa'),(51031,'Le Mars','Iowa'),(51573,'Stanton','Iowa'),(52041,'Earlville','Iowa'),(52052,'Guttenberg','Iowa'),(52208,'Belle Plaine','Iowa'),(52216,'Clarence','Iowa'),(52254,'Lost Nation','Iowa'),(52341,'Toddville','Iowa'),(52550,'Delta','Iowa'),(52555,'Exline','Iowa'),(52569,'Melrose','Iowa'),(52571,'Moravia','Iowa'),(52588,'Selma','Iowa'),(52737,'Columbus City','Iowa'),(52751,'Grand Mound','Iowa'),(52776,'West Liberty','Iowa'),(60043,'Kenilworth','Illinois'),(60423,'Frankfort','Illinois'),(60474,'South Wilmington','Illinois'),(60503,'Aurora','Illinois'),(60515,'Downers Grove','Illinois'),(60551,'Sheridan','Illinois'),(60613,'Chicago','Illinois'),(60653,'Chicago','Illinois'),(60932,'East Lynn','Illinois'),(61242,'Cordova','Illinois'),(61252,'Fulton','Illinois'),(61274,'Osco','Illinois'),(61323,'Dover','Illinois'),(61377,'Wenona','Illinois'),(61570,'Washburn','Illinois'),(61740,'Flanagan','Illinois'),(61742,'Goodfield','Illinois'),(61870,'Ridge Farm','Illinois'),(61919,'Camargo','Illinois'),(62035,'Godfrey','Illinois'),(62049,'Hillsboro','Illinois'),(62053,'Kampsville','Illinois'),(62065,'Michael','Illinois'),(62087,'South Roxana','Illinois'),(62320,'Camp Point','Illinois'),(62358,'Niota','Illinois'),(62530,'Divernon','Illinois'),(62571,'Tower Hill','Illinois'),(62610,'Alsey','Illinois'),(62666,'Middletown','Illinois'),(62684,'Sherman','Illinois'),(62824,'Clay City','Illinois'),(62841,'Freeman Spur','Illinois'),(62884,'Sesser','Illinois'),(62888,'Tamaroa','Illinois'),(62901,'Carbondale','Illinois'),(62943,'Grantsburg','Illinois'),(66058,'Muscotah','Kansas'),(71602,'White Hall','Arkansas'),(72103,'Mabelvale','Arkansas'),(72118,'North Little Rock',''),(72126,'Perryville','Arkansas'),(72176,'Ward','Arkansas'),(72383,'Turner','Arkansas'),(72432,'Harrisburg','Arkansas'),(72513,'Ash Flat','Arkansas'),(72520,'Camp','Arkansas'),(72571,'Rosie','Arkansas'),(72852,'Oark','Arkansas'),(80005,'Arvada','Colorado'),(80104,'Castle Rock','Colorado'),(80229,'Denver','Colorado'),(80433,'Conifer','Colorado'),(80453,'Idledale','Colorado'),(80457,'Kittredge','Colorado'),(80615,'Eaton','Colorado'),(80631,'Greeley','Colorado'),(80652,'Roggen','Colorado'),(80720,'Akron','Colorado'),(80721,'Amherst','Colorado'),(80816,'Florissant','Colorado'),(80820,'Guffey','Colorado'),(80836,'Stratton','Colorado'),(80924,'Colorado Springs','Colorado'),(81024,'Boncarbo','Colorado'),(81067,'Rocky Ford','Colorado'),(81240,'Penrose','Colorado'),(81242,'Poncha Springs','Colorado'),(81248,'Sargents','Colorado'),(81332,'Rico','Colorado'),(81410,'Austin','Colorado'),(81501,'Grand Junction','Colorado'),(81615,'Snowmass Village','Colorado'),(81623,'Carbondale','Colorado'),(83283,'Thatcher','Idaho'),(83316,'Buhl','Idaho'),(83616,'Eagle','Idaho'),(83622,'Garden Valley','Idaho'),(83627,'Hammett','Idaho'),(83815,'Coeur D Alene','Idaho'),(85085,'Phoenix','Arizona'),(85192,'Winkelman','Arizona'),(85251,'Scottsdale','Arizona'),(85354,'Tonopah','Arizona'),(85615,'Hereford','Arizona'),(86042,'Polacca','Arizona'),(86426,'Fort Mohave','Arizona'),(86433,'Oatman','Arizona'),(86545,'Rock Point','Arizona'),(90017,'Los Angeles','California'),(90240,'Downey','California'),(91042,'Tujunga','California'),(91106,'Pasadena','California'),(91203,'Glendale','California'),(91343,'North Hills','California'),(91915,'Chula Vista','California'),(91950,'National City','California'),(92008,'Carlsbad','California'),(92024,'Encinitas','California'),(92624,'Capistrano Beach','California'),(92887,'Yorba Linda','California'),(93004,'Ventura','California'),(93207,'California Hot Sprin',''),(93240,'Lake Isabella','California'),(93242,'Laton','California'),(93449,'Pismo Beach','California'),(93455,'Santa Maria','California'),(93553,'Pearblossom','California'),(93631,'Kingsburg','California'),(93925,'Chualar','California'),(93930,'King City','California'),(94041,'Mountain View','California'),(94070,'San Carlos','California'),(94107,'San Francisco','California'),(94305,'Stanford','California'),(94512,'Birds Landing','California'),(94547,'Hercules','California'),(94601,'Oakland','California'),(94933,'Forest Knolls','California'),(94938,'Lagunitas','California'),(94947,'Novato','California'),(94957,'Ross','California'),(94965,'Sausalito','California'),(95231,'French Camp','California'),(95337,'Manteca','California'),(95388,'Winton','California'),(95425,'Cloverdale','California'),(95547,'Hydesville','California'),(95682,'Shingle Springs','California'),(95699,'Drytown','California'),(95709,'Camino','California'),(96058,'Macdoel','California'),(96103,'Blairsden-graeagle',''),(96113,'Herlong','California'),(96132,'Termo','California'),(96761,'Lahaina','Hawaii'),(96818,'Honolulu','Hawaii');
/*!40000 ALTER TABLE `Zipcode` ENABLE KEYS */;
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
