CREATE TABLE `Reservations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `operationDate` datetime DEFAULT NULL,
  `advancePayment` int(11) NOT NULL,
  `daysOnHold` int(11) NOT NULL,
  `clientId` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC19E8A47D58A36FA` (`clientId`),
  KEY `FKC19E8A47DC262A51` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;