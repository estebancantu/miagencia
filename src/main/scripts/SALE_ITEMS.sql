CREATE TABLE `SaleItems` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `daysInDealership` int(11) NOT NULL,
  `sellingPrice` int(11) NOT NULL,
  `satus` ENUM('AVAILABLE','RESERVED','SOLD','DELIVERED') NOT NULL,
  `vehicleId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK70376B99B80F288A` (`vehicleId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;