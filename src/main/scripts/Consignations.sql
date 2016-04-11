CREATE TABLE `Consignations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `operationDate` datetime DEFAULT NULL,
  `offeringPrice` int(11) NOT NULL,
  `clientId` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7C4636FDD58A36FA` (`clientId`),
  KEY `FK7C4636FDDC262A51` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;