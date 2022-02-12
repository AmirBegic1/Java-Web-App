USE zadaca_db2_161;


CREATE TABLE `items` (
  `id` int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `itemNaziv` varchar(50)  NOT NULL,
  `itemCijena` int DEFAULT NULL

);