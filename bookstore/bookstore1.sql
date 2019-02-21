# Host: localhost  (Version 5.7.17-log)
# Date: 2018-11-05 00:28:11
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "catalog"
#

CREATE TABLE `catalog` (
  `catalogid` int(11) NOT NULL AUTO_INCREMENT,
  `catalogname` varchar(20) NOT NULL,
  PRIMARY KEY (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

#
# Data for table "catalog"
#

INSERT INTO `catalog` VALUES (1,'新书推荐'),(2,'Web开发'),(3,'数据库应用');

#
# Structure for table "book"
#

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `catalogid` int(11) NOT NULL,
  `bookname` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `FK_Relationship_3` (`catalogid`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`catalogid`) REFERENCES `catalog` (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

#
# Data for table "book"
#

INSERT INTO `book` VALUES (1,1,'Android实用教程',45,'Android.jpg'),(2,2,'ASP.NET项目开发教程',45,'ASP.NET.jpg'),(3,2,'Java EE基础实用教程（第2版）',49,'JavaEE.jpg'),(4,2,'Java EE实用教程（第2版）',53,'JavaEE2.jpg'),(5,3,'MySQL教程',44,'MySQL.jpg'),(6,3,'MySQL实用教程（第2版）',59,'MySQL2.jpg'),(7,3,'Oracle实用教程（11g版）',49,'Oracle11g.jpg'),(8,3,'Oracle实用教程（12c版）',49,'Oracle12c.jpg'),(9,1,'Qt 5开发及实例（第3版）',99,'Qt.jpg'),(10,3,'SQL Server实用教程（第4版）',49,'SQL Server.jpg'),(11,1,'Visual C++实用教程（第5版）',59,'VC++.jpg');

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'123','123',NULL,NULL),(2,'123@mail.com','123',NULL,NULL);

#
# Structure for table "orders"
#

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `FK_Relationship_1` (`userid`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=gb2312;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (15,2,'2018-10-18 10:04:14'),(16,2,'2018-10-18 10:06:39'),(17,2,'2018-10-18 10:38:06'),(18,2,'2018-10-18 10:44:41'),(19,2,'2018-10-18 10:49:02'),(20,2,'2018-10-18 10:51:12'),(21,2,'2018-10-20 23:15:13'),(22,2,'2018-10-22 23:30:52'),(23,2,'2018-10-22 23:31:18'),(24,1,'2018-11-04 22:06:57'),(25,1,'2018-11-04 22:10:10');

#
# Structure for table "orderitem"
#

CREATE TABLE `orderitem` (
  `orderitemid` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderitemid`),
  KEY `FK_Relationship_2` (`orderid`),
  KEY `FK_Relationship_4` (`bookid`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`bookid`) REFERENCES `book` (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

#
# Data for table "orderitem"
#

INSERT INTO `orderitem` VALUES (4,1,15,1,45),(5,2,16,1,45),(6,2,17,1,45),(7,2,18,3,135),(8,5,19,1,44),(9,5,20,1,44),(10,5,21,2,88),(11,1,22,1,45),(12,1,23,3,135),(13,1,24,2,90),(14,6,25,2,118);
