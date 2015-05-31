-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.50-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pm1
--

CREATE DATABASE IF NOT EXISTS pm1;
USE pm1;

--
-- Definition of table `advantage`
--

DROP TABLE IF EXISTS `advantage`;
CREATE TABLE `advantage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advantage`
--

/*!40000 ALTER TABLE `advantage` DISABLE KEYS */;
INSERT INTO `advantage` (`id`,`name`) VALUES 
 (1,'编程'),
 (2,'建模'),
 (3,'文档'),
 (4,'美工'),
 (5,'实验'),
 (6,'硬件'),
 (7,'模型');
/*!40000 ALTER TABLE `advantage` ENABLE KEYS */;


--
-- Definition of table `attention`
--

DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u1` int(10) unsigned NOT NULL,
  `u2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_attention_1` (`u1`),
  KEY `FK_attention_2` (`u2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attention`
--

/*!40000 ALTER TABLE `attention` DISABLE KEYS */;
/*!40000 ALTER TABLE `attention` ENABLE KEYS */;


--
-- Definition of table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(10) unsigned NOT NULL,
  `file` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;


--
-- Definition of table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_member_1` (`team_id`),
  KEY `FK_member_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` int(10) unsigned NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_notice_1` (`team_id`),
  KEY `FK_notice_2` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `praise`
--

DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `give` int(10) unsigned NOT NULL,
  `accept` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `praise`
--

/*!40000 ALTER TABLE `praise` DISABLE KEYS */;
/*!40000 ALTER TABLE `praise` ENABLE KEYS */;


--
-- Definition of table `recruit`
--

DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(10) unsigned NOT NULL,
  `contact` varchar(45) NOT NULL,
  `intro` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruit`
--

/*!40000 ALTER TABLE `recruit` DISABLE KEYS */;
INSERT INTO `recruit` (`id`,`teamid`,`contact`,`intro`) VALUES 
 (1,0,'dgzxczh@163.com','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
/*!40000 ALTER TABLE `recruit` ENABLE KEYS */;


--
-- Definition of table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `strart_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `max_mem` int(10) unsigned NOT NULL,
  `leader_id` int(10) unsigned NOT NULL,
  `image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` (`id`,`name`,`strart_time`,`end_time`,`max_mem`,`leader_id`,`image`) VALUES 
 (1,'CS1','2015-05-31 15:28:51','2015-05-31 00:00:00',3,1,'xxx'),
 (2,'CS2','2015-05-06 00:00:00','2015-05-08 00:00:00',5,3,'xx');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;


--
-- Definition of table `team_type`
--

DROP TABLE IF EXISTS `team_type`;
CREATE TABLE `team_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teamid` int(10) unsigned NOT NULL,
  `typeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_type`
--

/*!40000 ALTER TABLE `team_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_type` ENABLE KEYS */;


--
-- Definition of table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`,`name`) VALUES 
 (1,'数学'),
 (2,'物理'),
 (3,'化学'),
 (4,'2015北美建模'),
 (5,'生物'),
 (6,'地理'),
 (7,'历史'),
 (8,'计算机');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender` int(10) unsigned NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `score` int(10) unsigned NOT NULL,
  `school` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`gender`,`email`,`password`,`name`,`level`,`district`,`score`,`school`,`major`,`introduce`,`image`) VALUES 
 (1,1,'dgzxczh@163.com','1','章化龙','大学本科','天津南开',10,'南开大学','软件工程','null','null'),
 (2,0,'dgzxcz@163.com','2','邹逸雄','大学本科','天津南开',5,'南开大学','软件工程','',''),
 (3,0,'dgzxczh1@163.com','1','朱晴宇','大学本科','天津南开',2,'南开大学','软件工程','',''),
 (4,0,'dgzxczh2@163.com','1','陈展昊','大学本科','广东东莞',4,'南开大学','软件工程','南开大学软件工程专业12级本科生','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `user_adv`
--

DROP TABLE IF EXISTS `user_adv`;
CREATE TABLE `user_adv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `advantageid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_adv`
--

/*!40000 ALTER TABLE `user_adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_adv` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
