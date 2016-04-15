CREATE DATABASE smdental;
CREATE TABLE `smdental`.`treatment` (
  `treatmentid` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `treatmentname` VARCHAR(100) NOT NULL,
  `description` TEXT(1000) NULL,
  `price` DOUBLE NULL,
  PRIMARY KEY (`treatmentid`));

CREATE TABLE `smdental`.`user` (
  `userid` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `userrole` VARCHAR(45) NULL,
  PRIMARY KEY (`userid`));

CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;