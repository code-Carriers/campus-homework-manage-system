# Host: localhost  (Version 5.7.17-log)
# Date: 2018-12-20 20:39:14
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "admin"
#

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'admin','admin');

#
# Structure for table "brand"
#

CREATE TABLE `brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `brandsname` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "brand"
#

INSERT INTO `brand` VALUES (1,'2nd day','2nd-day.jpg'),(2,'weekday','weekday1.jpg'),(3,'g-star raw','g-star-raw.jpg'),(4,'G-D',NULL);

#
# Structure for table "shoe"
#

CREATE TABLE `shoe` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shoename` varchar(255) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `brands` int(11) DEFAULT NULL,
  `catalog` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `brands` (`brands`),
  CONSTRAINT `brands` FOREIGN KEY (`brands`) REFERENCES `brand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "shoe"
#

INSERT INTO `shoe` VALUES (1,'Duis autem',99.99,1,'men','1.jpg'),(2,'Duis autem',98.99,1,'men','2.jpg'),(3,'Duis autem',199,2,'men','3.jpg'),(4,'Duis autem',444,2,'men','5.jpg'),(5,'dad',888,1,'men','12.jpg'),(6,'dad',555,1,'men',NULL),(7,'dd',222,1,'men','art1.png'),(8,'women',344,1,'women','11.jpg'),(9,'women',555,1,'men','11.jpg'),(11,'women',233,2,'women','9.jpg'),(12,'anta',355,3,'sport','ss6.jpg'),(13,'ss',29.99,4,'kid','small.jpg');

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'1','1','1',NULL),(2,'1','1','1',NULL),(3,'1','1','1',NULL);

#
# Structure for table "order"
#

CREATE TABLE `order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `orderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `product` (`sid`),
  KEY `user` (`uid`),
  CONSTRAINT `product` FOREIGN KEY (`sid`) REFERENCES `shoe` (`sid`),
  CONSTRAINT `user` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "order"
#

INSERT INTO `order` VALUES (1,1,1,99.99,'2018-12-20 17:30:36','广东科技学院','处理中',1),(2,2,1,98.99,'2018-12-20 17:36:47','广东科技学院 ','已发货',1),(3,2,1,98.99,'2018-12-20 17:37:10','广东科技学院 ','已取消',1);
