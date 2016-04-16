CREATE DATABASE smdental;
CREATE TABLE `smdental`.`treatment` (
  `treatmentid` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `treatmentname` VARCHAR(100) NOT NULL,
  `description` TEXT(1000) NULL,
  `price` DOUBLE NULL,
  PRIMARY KEY (`treatmentid`));

/* role table contains all possible roles */
create table role(
  roleid BIGINT NOT NULL AUTO_INCREMENT,
  role VARCHAR(30) NOT NULL,
  PRIMARY KEY (roleid),
  UNIQUE (role)
);


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

/* JOIN TABLE for MANY-TO-MANY relationship*/
CREATE TABLE userrole (
  userid BIGINT NOT NULL,
  roleid BIGINT NOT NULL,
  PRIMARY KEY (userid, roleid),
  CONSTRAINT FK_USER FOREIGN KEY (userid) REFERENCES user (userid),
  CONSTRAINT FK_ROLE FOREIGN KEY (roleid) REFERENCES role (roleid)
);
