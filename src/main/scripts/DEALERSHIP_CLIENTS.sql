CREATE TABLE `DEALERSHIP_CLIENTS` (
  `DEALERSHIP_ID` bigint(20) NOT NULL,
  `CLIENTS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DEALERSHIP_ID`,`CLIENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;