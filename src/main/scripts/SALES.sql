CREATE TABLE `Sales` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `operationDate` datetime DEFAULT NULL,
  `paymentType` int(11) DEFAULT NULL,
  `sellingAmount` int(11) NOT NULL,
  `clientId` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4BF58ECD58A36FA` (`clientId`),
  KEY `FK4BF58ECDC262A51` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;