
--
-- Table structure for table `achete`
--

DROP TABLE IF EXISTS `achete`;

CREATE TABLE `achete` (
  `id_client` int(11) NOT NULL,
  `id_focacia` int(11) NOT NULL,
  `jour` date NOT NULL,
  KEY `id_client` (`id_client`),
  KEY `id_focacia` (`id_focacia`),
  CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focacia`) REFERENCES `focacia` (`id_focacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `achete`
--

LOCK TABLES `achete` WRITE;

INSERT INTO `achete` VALUES (1,1,'2025-01-01');

UNLOCK TABLES;

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;

CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  `id_marque` int(11) NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`),
  CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boisson`
--

LOCK TABLES `boisson` WRITE;

INSERT INTO `boisson` VALUES (1,'Coca-cola',1),(2,'Pepsi',2),(3,'Eau de source',3);

UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `cp_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;

INSERT INTO `client` VALUES (1,'Client1',33,10);

UNLOCK TABLES;

--
-- Table structure for table `focacia`
--

DROP TABLE IF EXISTS `focacia`;

CREATE TABLE `focacia` (
  `id_focacia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_focacia` varchar(45) NOT NULL,
  `prix_focacia` float DEFAULT NULL,
  PRIMARY KEY (`id_focacia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `focacia`
--

LOCK TABLES `focacia` WRITE;

INSERT INTO `focacia` VALUES (1,'Raclaccia',8.90);

UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;

CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;

INSERT INTO `ingredient` VALUES (1,'Base tomate'),(2,'raclette'),(3,'cresson'),(4,'ail'),(5,'champignon'),(6,'parmesan'),(7,'poivre');

UNLOCK TABLES;

--
-- Table structure for table `ingredient_focacia`
--

DROP TABLE IF EXISTS `ingredient_focacia`;

CREATE TABLE `ingredient_focacia` (
  `id_focacia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  KEY `id_focacia` (`id_focacia`),
  KEY `id_ingredient` (`id_ingredient`),
  CONSTRAINT `ingredient_focacia_ibfk_1` FOREIGN KEY (`id_focacia`) REFERENCES `focacia` (`id_focacia`),
  CONSTRAINT `ingredient_focacia_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `ingredient_focacia`
--

LOCK TABLES `ingredient_focacia` WRITE;

INSERT INTO `ingredient_focacia` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7);

UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;

INSERT INTO `marque` VALUES (1,'Coca-cola'),(2,'Pepsico'),(3,'Cristalline');

UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;

INSERT INTO `menu` VALUES (1,'Menu 1',500);

UNLOCK TABLES;

--
-- Table structure for table `menu_boisson`
--

DROP TABLE IF EXISTS `menu_boisson`;

CREATE TABLE `menu_boisson` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_boisson` (`id_boisson`),
  CONSTRAINT `menu_boisson_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `menu_boisson_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Dumping data for table `menu_boisson`
--

LOCK TABLES `menu_boisson` WRITE;

INSERT INTO `menu_boisson` VALUES (1,1);

UNLOCK TABLES;



DROP TABLE IF EXISTS `menu_focacia`;

CREATE TABLE `menu_focacia` (
  `id_menu` int(11) NOT NULL,
  `id_focacia` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_focacia` (`id_focacia`),
  CONSTRAINT `menu_focacia_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `menu_focacia_ibfk_2` FOREIGN KEY (`id_focacia`) REFERENCES `focacia` (`id_focacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `menu_focacia` WRITE;

INSERT INTO `menu_focacia` VALUES (1,1);

UNLOCK TABLES;

--
-- Table structure for table `paye`
--

DROP TABLE IF EXISTS `paye`;

CREATE TABLE `paye` (
  `id_client` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jour` date NOT NULL,
  KEY `id_client` (`id_client`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `paye` WRITE;

INSERT INTO `paye` VALUES (1,1,'2025-01-01');

UNLOCK TABLES;


-------SAUVEGARDE DE LA BASE DONNEES-------

mysqldump -u tifosi -p tifoso2025 > C:\MySQLBackup\tifosi_2025.sq