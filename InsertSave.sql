-- ----------- INSERTION DES DONNES -------------------------
--
LOCK TABLES `achete` WRITE;
-- /*!40000 ALTER TABLE `achete` DISABLE KEYS */;
INSERT INTO `achete` VALUES (1,1,'2025-01-01');
-- /*!40000 ALTER TABLE `achete` ENABLE KEYS */;
UNLOCK TABLES;
--
--

LOCK TABLES `paye` WRITE;
-- /*!40000 ALTER TABLE `paye` DISABLE KEYS */;
INSERT INTO `paye` VALUES (1,1,'2025-01-01');
-- /*!40000 ALTER TABLE `paye` ENABLE KEYS */;
UNLOCK TABLES;
--
--

LOCK TABLES `menu_focacia` WRITE;
-- /*!40000 ALTER TABLE `menu_focacia` DISABLE KEYS */;
INSERT INTO `menu_focacia` VALUES (1,1);
-- /*!40000 ALTER TABLE `menu_focacia` ENABLE KEYS */;
UNLOCK TABLES;
--
--

LOCK TABLES `menu_boisson` WRITE;
-- /*!40000 ALTER TABLE `menu_boisson` DISABLE KEYS */;
INSERT INTO `menu_boisson` VALUES (1,1);
-- /*!40000 ALTER TABLE `menu_boisson` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
-- /*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Menu 1',500);
-- /*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
--

LOCK TABLES `marque` WRITE;
-- /*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coca'),(2,'Le Baron'),(3,'Naturel');
-- /*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
--

LOCK TABLES `ingredient_focacia` WRITE;
-- /*!40000 ALTER TABLE `ingredient_focacia` DISABLE KEYS */;
INSERT INTO `ingredient_focacia` VALUES (1,1),(1,2),(1,3);
-- /*!40000 ALTER TABLE `ingredient_focacia` ENABLE KEYS */;
UNLOCK TABLES;


--
--

LOCK TABLES `ingredient` WRITE;
-- /*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Oignon'),(2,'Farine'),(3,'Levure');
-- /*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;


--
--

LOCK TABLES `client` WRITE;
-- /*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Client1',33,10);
-- /*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
--

LOCK TABLES `boisson` WRITE;
-- /*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` VALUES (1,'Coca Cola',1),(2,'Vin rouge',2),(3,'Jus Bissap',3);
-- /*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
--

LOCK TABLES `focacia` WRITE;
-- /*!40000 ALTER TABLE `focacia` DISABLE KEYS */;
INSERT INTO `focacia` VALUES (1,'Focacia sarda',5);
-- /*!40000 ALTER TABLE `focacia` ENABLE KEYS */;
UNLOCK TABLES;


-------SAUVEGARDE DE LA BASE DONNEES

mysqldump -u tifosi -p tifoso2025 > C:\MySQLBackup\tifosi_2025.sql

