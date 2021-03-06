CREATE TABLE `SALE_ITEMS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `HAS_DOMAIN_CERTIFICATE` bit(1) DEFAULT NULL,
  `HAS_REGISTRATION` bit(1) DEFAULT NULL,
  `SELLING_PRICE` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `TAX_DEBT` int(11) DEFAULT NULL,
  `TRAFFIC_TICKETS_DEBT` int(11) DEFAULT NULL,
  `VEHICLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK985F79A8DC262A51` (`VEHICLE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;