CREATE TABLE `Makes` (
  `id` bigint(20) NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `vehicleType` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `OLX_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;