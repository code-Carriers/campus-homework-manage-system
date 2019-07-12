# Host: localhost  (Version 5.7.17-log)
# Date: 2019-04-24 16:48:07
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "courseclass"
#

CREATE TABLE `courseclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '班名',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '班级老师',
  PRIMARY KEY (`classid`),
  KEY `FreignerKey1` (`tid`),
  CONSTRAINT `FreignerKey1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "courseclass"
#

INSERT INTO `courseclass` VALUES (14,'15级软件工程10班',2),(15,'15软工10班（信息安全）',2),(19,'15级软件工程12班',2),(31,'15软件设计师',2),(32,'15级软件工程1班',2),(33,'商务英语1班',3);

#
# Structure for table "announce"
#

CREATE TABLE `announce` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '',
  `time` date NOT NULL DEFAULT '0000-00-00',
  `classid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `FreignerKey8` (`classid`),
  CONSTRAINT `FreignerKey8` FOREIGN KEY (`classid`) REFERENCES `courseclass` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "announce"
#

INSERT INTO `announce` VALUES (2,'it is test','2018-12-02',14),(5,'最新公告测试','2018-12-06',14),(6,'测试','2018-12-25',14);

#
# Structure for table "student"
#

CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `telephone` int(11) DEFAULT NULL,
  `school` varchar(255) NOT NULL DEFAULT '',
  `photo` longtext,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

INSERT INTO `student` VALUES (10,'s001','123@mail.com','123','onepeace',NULL,'广东科技学院',NULL),(11,'s002','li@mail.com','123','李四',NULL,'广东艺术培训学院',NULL),(12,'222333','tan@student.com','123','CASE',777666,'广州艺术职业学院',NULL);

#
# Structure for table "studentclass"
#

CREATE TABLE `studentclass` (
  `studentclassid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `classid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`studentclassid`),
  KEY `FreignerKey2` (`sid`),
  KEY `FreignerKey3` (`classid`),
  CONSTRAINT `FreignerKey2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `FreignerKey3` FOREIGN KEY (`classid`) REFERENCES `courseclass` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "studentclass"
#

INSERT INTO `studentclass` VALUES (1,10,14),(6,10,15),(7,12,33);

#
# Structure for table "teacher"
#

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `telephone` int(11) DEFAULT NULL,
  `school` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "teacher"
#

INSERT INTO `teacher` VALUES (2,'t001','zhang@teacher.com','123456','张影',123456,'广东科技学院',NULL),(3,'s002','lin@teacher.com','123','林佳',222,'广东科技学院',NULL);

#
# Structure for table "question"
#

CREATE TABLE `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  KEY `FreignerKey9` (`sid`),
  KEY `FreignerKey10` (`tid`),
  KEY `FreignerKey11` (`classid`),
  CONSTRAINT `FreignerKey10` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  CONSTRAINT `FreignerKey11` FOREIGN KEY (`classid`) REFERENCES `courseclass` (`classid`),
  CONSTRAINT `FreignerKey9` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "question"
#

INSERT INTO `question` VALUES (1,'test','test',10,2,14),(3,'Recently，the problem of water resource has aroused wide concern among the public.','answer investment invention',10,2,15),(5,'adopting positive attitude towards adversity\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','answer investment invention',10,2,15),(6,'action 1 test question\r\nanswer will questly','answer investment invention',10,2,15);

#
# Structure for table "work"
#

CREATE TABLE `work` (
  `workid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '题目',
  `context` varchar(255) NOT NULL DEFAULT '',
  `appendix` varchar(255) DEFAULT NULL COMMENT '附件',
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deadline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '截止日期',
  `classid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`workid`),
  KEY `FreignerKey6` (`tid`),
  KEY `FreignerKey7` (`classid`),
  CONSTRAINT `FreignerKey6` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  CONSTRAINT `FreignerKey7` FOREIGN KEY (`classid`) REFERENCES `courseclass` (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "work"
#

INSERT INTO `work` VALUES (7,'作业5','作业5 ','jianli9176.doc','2018-12-06 16:30:04','2018-12-11 00:00:00',14,2),(8,'测试','测试','测试.txt','2018-12-06 16:37:13','2018-12-19 00:00:00',14,2),(9,'测试','测试','jianli9176.doc','2018-12-20 22:06:52','2018-12-31 00:00:00',15,2),(10,'测试\t','测试',NULL,'2018-12-20 22:13:05','2018-12-20 22:13:05',15,2),(11,'change1\t\t\t','change1',NULL,'2018-12-20 23:28:36','2018-12-30 00:00:00',15,2),(12,'continue work\t\t\t','。。。','作业测试2.doc','2019-01-06 15:59:50','2019-01-10 00:00:00',33,3);

#
# Structure for table "studentwork"
#

CREATE TABLE `studentwork` (
  `studentworkid` int(11) NOT NULL AUTO_INCREMENT,
  `submitdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `context` varchar(255) DEFAULT NULL,
  `appendix` varchar(255) DEFAULT NULL COMMENT '附件',
  `sid` int(11) NOT NULL DEFAULT '0',
  `workid` int(11) NOT NULL DEFAULT '0',
  `score` float DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`studentworkid`),
  KEY `FreignerKey4` (`sid`),
  KEY `FreignerKey5` (`workid`),
  CONSTRAINT `FreignerKey4` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `FreignerKey5` FOREIGN KEY (`workid`) REFERENCES `work` (`workid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "studentwork"
#

INSERT INTO `studentwork` VALUES (1,'2018-12-06 16:40:12','作业提交测试','测试.txt',10,8,NULL),(2,'2018-12-20 21:17:56','....','C++开发工程师 -广东科技学院-黄宽录-软件工程-15016866354-15016866354@163.com.doc',10,7,0);
