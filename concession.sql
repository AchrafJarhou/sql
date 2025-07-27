-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: consecion
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Dupont','Jean','jean.dupont@example.com','0601020304'),(2,'Martin','Sophie','sophie.martin@example.com','0605060708'),(3,'Leroy','Paul','paul.leroy@example.com','0611121314'),(4,'Durand','Claire','claire.durand@example.com','0678912345'),(5,'Petit','Lucas','lucas.petit@example.com','0687654321'),(6,'Moreau','Emma','emma.moreau@example.com','0698123456');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `id_commande` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `client_id` int DEFAULT NULL,
  `date_commande` date NOT NULL,
  `montant_total` decimal(10,2) NOT NULL,
  `numero_serie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `numero_serie` (`numero_serie`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,1,'2025-06-10',19950.00,'VF1DEF98765432101'),(2,2,'2025-07-01',44900.00,'WBA8E11030K123456'),(3,4,'2025-07-10',18990.00,'VF7XYZ12345678001'),(4,5,'2025-07-12',19950.00,'VF2ABC98765432100'),(5,6,'2025-07-15',42990.00,'5YJSA1E45HF000789');
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;

--
-- Table structure for table `modele`
--

DROP TABLE IF EXISTS `modele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modele` (
  `id_modele` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `marque` varchar(100) NOT NULL,
  `nom_modele` varchar(100) NOT NULL,
  `carburant` varchar(50) NOT NULL,
  `puissance` int NOT NULL,
  `prix_catalogue` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_modele`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modele`
--

/*!40000 ALTER TABLE `modele` DISABLE KEYS */;
INSERT INTO `modele` VALUES (1,'Peugeot','208','Essence',100,18990.00),(2,'Renault','Clio V','Diesel',90,19950.00),(3,'Tesla','Model 3','Électrique',350,42990.00),(4,'Toyota','Corolla','Hybride',122,25900.00),(5,'BMW','Série 3','Essence',184,44900.00);
/*!40000 ALTER TABLE `modele` ENABLE KEYS */;

--
-- Table structure for table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicule` (
  `numero_serie` varchar(50) NOT NULL,
  `modele_id` int DEFAULT NULL,
  `date_arrivee` date NOT NULL,
  `etat` varchar(50) NOT NULL,
  PRIMARY KEY (`numero_serie`),
  KEY `modele_id` (`modele_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicule`
--

/*!40000 ALTER TABLE `vehicule` DISABLE KEYS */;
INSERT INTO `vehicule` VALUES ('VF3ABC12345678901',1,'2025-05-10','disponible'),('VF1DEF98765432101',2,'2025-05-15','vendu'),('5YJ3E1EA7KF123456',3,'2025-05-20','en préparation'),('JTDBR32E530123456',4,'2025-06-01','disponible'),('WBA8E11030K123456',5,'2025-06-05','vendu'),('VF7XYZ12345678001',1,'2025-07-01','disponible'),('VF2ABC98765432100',2,'2025-07-03','disponible'),('5YJSA1E45HF000789',3,'2025-07-05','disponible');
/*!40000 ALTER TABLE `vehicule` ENABLE KEYS */;

--
-- Dumping routines for database 'consecion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 17:08:37
