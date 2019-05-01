-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: VideoGameCollection
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `Collection`
--

DROP TABLE IF EXISTS `Collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `Collection_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collection`
--

LOCK TABLES `Collection` WRITE;
/*!40000 ALTER TABLE `Collection` DISABLE KEYS */;
INSERT INTO `Collection` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,3,1);
/*!40000 ALTER TABLE `Collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developer`
--

DROP TABLE IF EXISTS `Developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Developer`
--

LOCK TABLES `Developer` WRITE;
/*!40000 ALTER TABLE `Developer` DISABLE KEYS */;
INSERT INTO `Developer` VALUES (1,'Naughty Dog'),(2,'Insomiac'),(3,'Game Freak'),(4,'Rare, Ltd.');
/*!40000 ALTER TABLE `Developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `platform_id` int(11) NOT NULL,
  `releasedate` date DEFAULT NULL,
  `developer_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `players` int(11) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `rating` varchar(2) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `artwork` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `platform_id` (`platform_id`),
  KEY `developer_id` (`developer_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `Game_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `Platform` (`id`),
  CONSTRAINT `Game_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `Developer` (`id`),
  CONSTRAINT `Game_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `Publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES (1,'Crash Bandicoot',2,'1996-08-31',1,1,1,'Platformer','E','Crash Bandicoot, a heroic, agile and mutated marsupial who must save his girlfriend Tawna. The main antagonist is Doctor Neo Cortex, a mad scientist who was often ridiculed by the scientific community for his outlandish (but nearly workable) theories and is now motivated to prove his tormentors wrong by creating a mutated army of beasts to conquer the world. Cortex\'s henchman is Doctor Nitrus Brio, the insecure creator of the Evolvo-Ray. Crash\'s love interest is Tawna, a female bandicoot about to undergo experimentation by the Doctors. Helping Crash in his journey is an ancient witch doctor spirit named Aku Aku, who has scattered masks of himself throughout the islands to grant Crash special powers. The boss characters of the game include Papu Papu, the obese and short-tempered chief of the native village; Ripper Roo, a demented kangaroo with razor-sharp toenails; Koala Kong, a muscular but unintelligent koala; and Pinstripe Potoroo, the tommy gun-wielding bodyguard of Doctor Cortex.','artwork/crashbandicoot.png'),(2,'Spyro The Dragon',2,'1998-09-10',2,1,1,'Platformer','E','Spyro the Dragon is a platform game developed by Insomniac Games for the PlayStation. It stars the title character, a young purple dragon named Spyro and his dragonfly friend, Sparx, and is the first game in the Spyro the Dragon series. The first game was massively popular at its initial release and Spyro would later become one of the most recognizable, popular and respected gaming icons for the PlayStation gaming console. Spyro\'s best friend, Sparx the dragonfly, acts like the player\'s health meter and assists in gathering gems. The various dragons Spyro unfreezes along the way are also key characters in Spyro\'s progression through the game. Gnasty Gnorc is the main antagonist, who froze all the dragons of the land in crystal.','artwork/spyrothedragon.png'),(3,'Pokemon Ruby Version',3,'2002-11-21',3,2,1,'Role-Playing','E','The race to catch \'em all is on again in Pokemon Ruby. This entry in the Pokemon series features an all-new storyline, awesome new Pokemon, and addictive RPG gameplay. One of the biggest additions to Pokemon Ruby is the two-on-two battle system, which allows you to link up with three friends to battle competitively or cooperatively. You can also showcase your Pokemon\'s coolness, beauty, cuteness, smartness, and toughness in Pokemon contests. With new Pokemon, two-on-two battles, and an all-new region of Hoenn to explore, Pokemon Sapphire takes the Pokemon experience to the next level.','artwork/pokemonruby.png'),(4,'Banjo Kazooie',4,'1998-06-29',4,2,1,'Platformer','E','Action and Puzzles and Bears. Oh My! Trouble brews when Gruntilda the witch captures the unbearably beautiful cub, Tooty. But before the grisly hag can steal the bear’s good looks, big brother Banjo and his fine-feathered friend, Kazooie, join forces to stop her. Combining their 24 moves and special powers, Banjo and Kazooie will fend off armies of beasts. Bear and bird must hunt down the 100 puzzle pieces and 900 musical notes that will ultimately lead them to Gruntilda. However, miles of swamp, desert and snow and one bear of an adventure stand in their way. • Soar over islands to scout out buried treasure. • Brave past whirling blades in the belly of a mechanical shark. • With some voodoo magic, transform into different creatures to gain special powers. • Solve the puzzles of the ancients to unearth the cursed labyrinths.','artwork/banjokazooie.png');
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Platform`
--

DROP TABLE IF EXISTS `Platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Platform`
--

LOCK TABLES `Platform` WRITE;
/*!40000 ALTER TABLE `Platform` DISABLE KEYS */;
INSERT INTO `Platform` VALUES (2,'PS1'),(3,'GBA'),(4,'N64');
/*!40000 ALTER TABLE `Platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publisher`
--

DROP TABLE IF EXISTS `Publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publisher`
--

LOCK TABLES `Publisher` WRITE;
/*!40000 ALTER TABLE `Publisher` DISABLE KEYS */;
INSERT INTO `Publisher` VALUES (1,'Sony Computer Entertainment'),(2,'Nintendo');
/*!40000 ALTER TABLE `Publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(120) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'tomcat','','tomcat','',NULL,NULL),(2,'JDoe','jdoe1@madisoncollege.edu','password123','avatars/Jdoe.png',1,1),(3,'fflintstone','fredflinstone@madisoncollege.edu','barney!','avatars/fflintstone.png',2,2),(4,'msmyth','msmyth@frontier.com','defeathbc','avatars/msmyth.png',3,3);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRoles`
--

DROP TABLE IF EXISTS `UserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRoles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `UserRoles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRoles`
--

LOCK TABLES `UserRoles` WRITE;
/*!40000 ALTER TABLE `UserRoles` DISABLE KEYS */;
INSERT INTO `UserRoles` VALUES (1,1,'administrator',NULL),(2,2,'user',NULL),(3,3,'user',NULL),(4,4,'admin',NULL),(5,1,'administrator','tomcat');
/*!40000 ALTER TABLE `UserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wishlist`
--

DROP TABLE IF EXISTS `Wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `Wishlist_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wishlist`
--

LOCK TABLES `Wishlist` WRITE;
/*!40000 ALTER TABLE `Wishlist` DISABLE KEYS */;
INSERT INTO `Wishlist` VALUES (1,1,4),(2,3,2),(3,3,3),(4,3,4);
/*!40000 ALTER TABLE `Wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-01  9:18:57
