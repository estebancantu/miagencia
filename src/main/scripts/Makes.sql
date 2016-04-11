CREATE TABLE `Makes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehicleType` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;