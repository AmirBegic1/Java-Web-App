USE zadaca_db2_161;

CREATE TABLE `users` (
  `id` int  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `username` varchar(50)  NOT NULL,
  `address` varchar(100)  NOT NULL,
  `password` varchar(109)  NOT NULL,
  `role` smallint NOT NULL

);

SELECT * FROM items;