
----------Insertion de données test dans la base de données----------


LOCK TABLES `focacia` WRITE;
/*!40000 ALTER TABLE `focacia` DISABLE KEYS */;
INSERT INTO `focacia` 
VALUES (1,'Mozaccia',9.80),
(2,'Gorgonzollaccia',10.80),
(3,'Raclaccia',8.90),
(4,'Emmentalaccia',9.80),
(5,'Tradizione',8.90),
(6,'Hawaienne',11.20),
(7,'Americaine',10.80),
(8,'Paysanne',12.80);
/*!40000 ALTER TABLE `focacia` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` 
VALUES (1,'Ail'),
(2,'Ananas'),
(3,'Artichaut'),
(4,'Bacon'),
(5,'Base Tomate'),
(6,'Base crème'),
(7,'Champignon'),
(8,'Chevre'),
(9,'Cresson'),
(10,'Emmental'),
(11,'Gorgonzola'),
(12,'Jambon cuit'),
(13,'Jambon fumé'),
(14,'Mozarella'),
(15,'Oeuf'),
(16,'Oignon'),
(17,'Olive noire'),
(18,'Olive verte'),
(19,'Parmesan'),
(20,'Piment'),
(21,'Poivre'),
(22,'Pomme de terre'),
(23,'Raclette'),
(24,'Salami'),
(25,'Tomate cerise');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `ingredient_focacia` WRITE;
/*!40000 ALTER TABLE `ingredient_focacia` DISABLE KEYS */;
INSERT INTO `ingredient_focacia` VALUES (1,5),(1,14),(1,9),(1,13),(1,3),(1,7),(1,19);
INSERT INTO `ingredient_focacia` VALUES (2,5),(2,11),(2,9),(2,1),(2,7),(2,19),(2,21),(2,17);
INSERT INTO `ingredient_focacia` VALUES (3,5),(3,23),(3,9),(3,1),(3,7),(3,19),(3,21);
INSERT INTO `ingredient_focacia` VALUES (4,6),(4,10),(4,9),(4,7),(4,19),(4,21),(4,17),(4,18);
INSERT INTO `ingredient_focacia` VALUES (5,5),(5,14),(5,9),(5,12),(5,7),(5,19),(5,21),(5,17),(5,18);
INSERT INTO `ingredient_focacia` VALUES (6,5),(6,14),(6,9),(6,4),(6,2),(6,20),(6,19),(6,21),(6,17);
INSERT INTO `ingredient_focacia` VALUES (7,5),(7,14),(7,9),(7,4),(7,22),(7,19),(7,21),(7,17);
INSERT INTO `ingredient_focacia` VALUES (8,6),(8,8),(8,9),(8,22),(8,13),(8,1),(8,3),(8,7),(8,19),(8,21),(8,17),(8,15);
/*!40000 ALTER TABLE `ingredient_focacia` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coca-cola'),(2,'Cristalline'),(3,'Monster'),(4,'Pepsico');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `boisson` WRITE;
/*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` 
VALUES (1,'Coca-cola zéro',1),
(2,'Cocoa-cola original',1),
(3,'Fanta citron',1),
(4,'Fanta orange',1),
(5,'Capri-sun',1),
(6,'Pepsi',4),
(7,'Pepsi Max Zéro',4),
(8,'Lipton zéro citron',4),
(9,'Lipton Peach',4),
(10,'Monster energy ultra gold',3),
(11,'Monster energy ultra blue',4),
(12,'Eau de source',2);
/*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;


/* Test sur 2 clients*/

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Client1',33,10);
INSERT INTO `client` VALUES (2,'Client2',25,5);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `achete` WRITE;
/*!40000 ALTER TABLE `achete` DISABLE KEYS */;
INSERT INTO `achete` VALUES (1,1,'2025-01-01');
INSERT INTO `achete` VALUES (2,7,'2025-01-03');
/*!40000 ALTER TABLE `achete` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` 
VALUES 
(1,'Menu 1',13.90),
(2,'Menu 2',15.80);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `paye` WRITE;
/*!40000 ALTER TABLE `paye` DISABLE KEYS */;
INSERT INTO `paye` VALUES (1,1,'2025-01-01');
INSERT INTO `paye` VALUES (2,2,'2025-01-03');
/*!40000 ALTER TABLE `paye` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `menu_boisson` WRITE;
/*!40000 ALTER TABLE `menu_boisson` DISABLE KEYS */;
INSERT INTO `menu_boisson` VALUES (1,1);
INSERT INTO `menu_boisson` VALUES (2,4);
/*!40000 ALTER TABLE `menu_boisson` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `menu_focacia` WRITE;
/*!40000 ALTER TABLE `menu_focacia` DISABLE KEYS */;
INSERT INTO `menu_focacia` VALUES (1,1);
INSERT INTO `menu_focacia` VALUES (2,7);
/*!40000 ALTER TABLE `menu_focacia` ENABLE KEYS */;
UNLOCK TABLES;

