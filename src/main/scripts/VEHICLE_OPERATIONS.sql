CREATE TABLE `VEHICLE_OPERATION` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `CLIENT_ID` bigint(20) NOT NULL,
  `VEHICLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK1A759BD4DC262A51` (`VEHICLE_ID`),
  KEY `FK1A759BD42DE6E2E3` (`CLIENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;