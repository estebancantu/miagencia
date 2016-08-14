CREATE TABLE `STATE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `COUNTRY_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MERCADO_LIBRE_ID` varchar(255) DEFAULT NULL,
  `OLX_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;