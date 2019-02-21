# Host: localhost  (Version 5.7.17-log)
# Date: 2019-02-13 23:36:40
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'admin','admin',22);
