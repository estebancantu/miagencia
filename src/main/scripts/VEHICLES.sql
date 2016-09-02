CREATE TABLE `VEHICLES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `CHASSIS_NUMBER` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ENGINE_NUMBER` varchar(255) DEFAULT NULL,
  `FUEL_TYPE` varchar(255) NOT NULL,
  `IMAGE_URL` varchar(255) DEFAULT NULL,
  `KILOMETERS` bigint(20) NOT NULL,
  `MAKE_ID` bigint(20) NOT NULL,
  `MODEL_ID` int(11) NOT NULL,
  `MODEL_YEAR` varchar(255) NOT NULL,
  `PLATE` varchar(255) NOT NULL,
  `TRANSMISSION` varchar(255) NOT NULL,
  `VEHICLE_CONDITION` varchar(255) NOT NULL,
  `VEHICLE_TYPE` varchar(255) NOT NULL,
  `DEALER_ID` bigint(20) NOT NULL,
  `DOOR_QUANTITY` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;