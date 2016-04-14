CREATE TABLE `smdental`.`treatment` (
  `treatmentid` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `treatmentname` VARCHAR(100) NOT NULL,
  `description` TEXT(1000) NULL,
  `price` DOUBLE NULL,
  PRIMARY KEY (`treatmentid`));
