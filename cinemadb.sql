CREATE DATABASE  IF NOT EXISTS `cinemadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinemadb`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cinemadb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant_admin` varchar(45) DEFAULT NULL,
  `mdp_admin` varchar(45) DEFAULT NULL,
  `email_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_catégorie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'action'),(2,'comedie'),(3,'fantastique'),(4,'horreur'),(5,'animation'),(6,'super-heros');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `nom_contact` varchar(45) DEFAULT NULL,
  `prenom_contact` varchar(45) DEFAULT NULL,
  `email_contact` varchar(45) DEFAULT NULL,
  `message_contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'nom1','prenom1','email1@gmail.com','message1'),(2,'nom2','prenom2','email2@gmail.com','message2'),(3,'nom3','prenom3','email3@gmail.com','message3'),(4,'nom4','prenom4','email4@gmail.com','message4'),(5,'nom5','prenom5','email5@gmail.com','message5');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `nom_film` varchar(45) DEFAULT NULL,
  `image_film` varchar(45) DEFAULT NULL,
  `acteur_film` varchar(255) DEFAULT NULL,
  `durée_film` int(11) DEFAULT NULL,
  `synopsis_film` varchar(255) DEFAULT NULL,
  `ba_film` varchar(45) DEFAULT NULL,
  `datesortie_film` varchar(45) DEFAULT NULL,
  `id_format` int(11) DEFAULT NULL,
  `id_statut` int(11) DEFAULT NULL,
  `id_version` int(11) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_format_idx` (`id_format`),
  KEY `id_statut_idx` (`id_statut`),
  KEY `id_version_idx` (`id_version`),
  KEY `id_categorie_idx` (`id_categorie`),
  CONSTRAINT `id_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  CONSTRAINT `id_format` FOREIGN KEY (`id_format`) REFERENCES `format` (`id_format`),
  CONSTRAINT `id_statut` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`),
  CONSTRAINT `id_version` FOREIGN KEY (`id_version`) REFERENCES `version` (`id_version`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (24,'Avengers : Endgame','images/avengers.jpg','Mark Ruffalo, Scarlett Johansson, Robert Downey Jr.',182,'Thanos ayant anéanti la moitié de l\'univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d\'un des chapitres de l\'Univers Cinématographique Marvel.','https://youtu.be/wV-Q0o2OQjQ','2019-04-24',2,1,1,6),(25,'Shazam!','images/shazam.jpg','Zachary Levi, Asher Angel, Mark Strong',132,'On a tous un super-héros qui sommeille au fond de soi… il faut juste un peu de magie pour le réveiller. Pour Billy Batson, gamin débrouillard de 14 ans placé dans une famille d\'accueil, il suffit de crier \"Shazam !\" ','https://youtu.be/m1eE2BEPua0','2019-04-03',2,1,1,6),(26,'Toy story 4','images/toy_story_4.jpg','Joan Cusack, Tom Hanks, Tony Hale',93,'Le retour de Buzz l\'éclair, Woody et les autres pour une quatrième aventure...','https://youtu.be/KIgbEvK2GOU','2019-06-26',2,2,1,5),(27,'Simetierre','images/simetierre.jpg','Jason Clarke, John Lithgow',111,'Le docteur Louis Creed, sa femme Rachel et leurs deux jeunes enfants quittent Boston pour s\'installer dans une région rurale du Maine. Près de sa maison, le docteur découvre un mystérieux cimetière caché au fond des bois...','https://youtu.be/YYhTeJjFO7c','2019-04-10',1,1,2,4),(28,'La malédiction de la Dame Blanche','images/la_malediction_de_la_dame_blanche.jpg','Linda Cardellini, Raymond Cruz, Tony Amendola',94,'La Dame Blanche. Spectre terrifiant, pris en étau entre le paradis et l\'enfer, piégé par un terrible destin dont elle est elle-même l\'artisan. La seule évocation de son nom sème la terreur dans le monde depuis des siècles. ','https://youtu.be/NlVWRyA8eAc','2019-04-17',1,1,1,4),(29,'Pokemon Detective Pikachu','images/pokemon_detective_pikachu.jpg','Suki Waterhouse, Bill Nighy, Ken Watanabe, ',104,'Après la disparition mystérieuse de Harry Goodman, un détective privé, son fils Tim va tenter de découvrir ce qui s\'est passé.  Le détective Pikachu, ancien partenaire de Harry, participe alors à l\'enquête : un super-détective adorable','https://youtu.be/pAOeW9JixYQ','2019-05-08',2,1,1,2);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `format` (
  `id_format` int(11) NOT NULL AUTO_INCREMENT,
  `nom_format` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_format`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `format`
--

LOCK TABLES `format` WRITE;
/*!40000 ALTER TABLE `format` DISABLE KEYS */;
INSERT INTO `format` VALUES (1,'2D'),(2,'3D');
/*!40000 ALTER TABLE `format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newsletter` (
  `id_newsletter` int(11) NOT NULL AUTO_INCREMENT,
  `email_newsletter` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_newsletter`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (1,'newsletter1@gmail.com'),(2,'newsletter2@gmail.com'),(3,'newsletter3@gmail.com'),(4,'newsletter4@gmail.com'),(5,'newsletter5@gmail.com');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL AUTO_INCREMENT,
  `nom_reservation` varchar(45) NOT NULL,
  `prenom_reservation` varchar(45) NOT NULL,
  `email_reservation` varchar(45) NOT NULL,
  `id_seance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `id_seance_idx` (`id_seance`),
  CONSTRAINT `id_seance` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `id_review` int(11) NOT NULL AUTO_INCREMENT,
  `note_review` float DEFAULT NULL,
  `commentaire_review` varchar(255) DEFAULT NULL,
  `id_film` int(11) DEFAULT NULL,
  `id_reservation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_review`),
  KEY `id_film_idx` (`id_film`),
  KEY `id_reservation_idx` (`id_reservation`),
  CONSTRAINT `id_film3` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `id_reservation` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `nom_salle` varchar(45) NOT NULL,
  `capacite_salle` int(11) NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,'salle 1',10),(2,'salle 2',20),(3,'salle 3',30),(4,'salle 4',40),(5,'salle 5',50);
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seance` (
  `id_seance` int(11) NOT NULL AUTO_INCREMENT,
  `date_seance` datetime DEFAULT NULL,
  `heure_seance` datetime DEFAULT NULL,
  `placedisponible_seance` int(11) DEFAULT NULL,
  `id_film` int(11) DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `id_salle_idx` (`id_salle`),
  KEY `id_film_idx` (`id_film`),
  CONSTRAINT `id_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `id_salle` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut`
--

DROP TABLE IF EXISTS `statut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `statut` (
  `id_statut` int(11) NOT NULL AUTO_INCREMENT,
  `nom_statut` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut`
--

LOCK TABLES `statut` WRITE;
/*!40000 ALTER TABLE `statut` DISABLE KEYS */;
INSERT INTO `statut` VALUES (1,'a l\'affiche'),(2,'prochainement'),(3,'avant-premiere');
/*!40000 ALTER TABLE `statut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `version` (
  `id_version` int(11) NOT NULL AUTO_INCREMENT,
  `langue_version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'VF'),(2,'VOSTFR');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-21 17:11:40
