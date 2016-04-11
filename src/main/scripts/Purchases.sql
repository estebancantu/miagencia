CREATE TABLE `Purchases` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `operationDate` datetime DEFAULT NULL,
  `paidAmount` int(11) NOT NULL,
  `paymentType` int(11) DEFAULT NULL,
  `clientId` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCA9BB72D58A36FA` (`clientId`),
  KEY `FKCA9BB72DC262A51` (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;