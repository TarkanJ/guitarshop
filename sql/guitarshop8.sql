-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: guitarshop
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kosik`
--

DROP TABLE IF EXISTS `kosik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kosik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `poradi` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `nazev` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `cena` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kosik`
--

LOCK TABLES `kosik` WRITE;
/*!40000 ALTER TABLE `kosik` DISABLE KEYS */;
/*!40000 ALTER TABLE `kosik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objednavky`
--

DROP TABLE IF EXISTS `objednavky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objednavky` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `prijmeni` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `ulice` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `psc` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `zbozi` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  `totalcena` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objednavky`
--

LOCK TABLES `objednavky` WRITE;
/*!40000 ALTER TABLE `objednavky` DISABLE KEYS */;
INSERT INTO `objednavky` VALUES (1,'Jojo','Iubirea','Monte-Carlo, Place du Casino 1 - MONACO','16309','<li>Bushman 1900 15900 kè','15900'),(2,'Tarkan','Tevetoglu','Istanbulska 72, Pod Drinopolem, Istanbul, Turkey','1972','<li>Ibanez Steve Vai 85600 kè<li>Kytara samotného Slashe! 175000 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Plakát Guns N Roses 200 kè<li>Plakát Guns N Roses 200 kè<li>Figurka Slashe 1500 kè<li>Plakát Slashe 500 kè<li>Trsadlo Guns N Roses 500 kè','265359'),(3,'Martino','Leonidas','Kungliga slottet, Stockholm 6, Kingdom of SWEDEN','109007','<li>Jasmine by Takamine 19000 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Figurka Slashe 1500 kè<li>Plakát Slashe 500 kè<li>Trsadlo Guns N Roses 500 kè','23359'),(4,'Mrs.','Robinson','Berkeley 67 California, USA','671931','<li>Figurka Slashe 1500 kè<li>Bluesteel Strings 359 kè<li>Takamine 8900 14350 kè','16209'),(5,'Gordon Mathew','Sting','New Castle Street 81, England - New Castle upon Tyne','45681','<li>Bushman 1900 15900 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Plakát Slashe 500 kè','18259'),(6,'Adriana','Draguseanu','strada Bucuresti 457/33 Romania','265007','<li>Fender Stratocaster 42000 kè<li>Fender Telecaster 35000 kè<li>Ibanez Steve Vai 85600 kè','162600'),(7,'Lola','Prsata','Kozi ulice, u Kozicky 1, PRAHA 1','16969','<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Fender Stratocaster 42000 kè','43859');
/*!40000 ALTER TABLE `objednavky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typ` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `nazev` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `popis` varchar(1000) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `cena` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `obrazek` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'e','Fender Stratocaster','Dnes již klasický model všech dob za bezkonkurenční cenu!','42000','fender1.jpg'),(2,'e','Fender Telecaster','Další z řady nejůspěšnějších kytar, které spatřily světlo světa','35000','telecaster1.jpg'),(3,'a','Bushman 1900','Není nad poctivý zvuk Americké kytary bushman','15900','bushman1.jpg'),(4,'p','Bluesteel Strings','Kvalitní struny pro akustické kytary','359','strings1.jpg'),(5,'a','Takamine 8900','Elektro-akustická kytara pro parádní hru jak u ohn?, tak ve studiu','14350','acoustic_dreadnout.jpg'),(6,'e','Ibanez Steve Vai','Krásná kytarka kterou používal Steve Vai','85600','ibanez_steve_vai.jpg'),(7,'e','Les Paul \"black beauty\"','Replika legendární kytary B.B.Kinga, \"?erná kráska\"','99990','gibson_black.jpg'),(8,'p','Guitar Tuner Thunderbird 3000','Naprosto skvělá ladička s jednoduchým ovládáním. Samozřejmostí je i ruční ladění tónů či podle frekvencí','1500','ladicka.jpg'),(9,'p','Plakát Guns N Roses','Velkoformátový plakát legendární kapely Guns N Roses','200','guns_roses.jpg'),(10,'p','Plakát Guns N Roses','Velkoformátový plakát legendární kapely\r\nGuns N Roses!','200','guns_n_roses_poster.jpg'),(11,'p','Figurka Slashe','Ak?ní figurka ze hry Guitar Hero Slashe!!!','1500','slash_figurka.jpg'),(12,'p','Plakát Slashe','Co k tomu dodat? Plakát kytarového génia Slashe','500','slash_poster.jpg'),(13,'p','Plakát Slash and Duff','Plakát kytaristy Slashe a basáka Duffa','150','slash_duff.jpg'),(14,'e','Kytara samotného Slashe!','Kytara mága z Guns n Roses','175000','slash_snakepit.jpg'),(15,'e','Ibanez Satriani','Luxusní elektrická kytara kterou používal Joe Satriani','149900','ibanez_luxus.jpg'),(16,'p','Trsadlo Guns N Roses','Poda?ilo se zachytit fanouškovi trsadlo rovnou od Slashe :)','500','guns_roses_trsadlo.jpg'),(17,'a','Jasmine by Takamine','Další skv?lá elektro-akustika od Takamine.\r\nJasmine by Takamine - TS74C','19000','jasmine_by_takamine.jpg');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$vD8deFFtWpcwubKGKIJJHeKfcm0McGwQBlSbTUW6HYZUGQVjhZc7e');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 21:02:05
