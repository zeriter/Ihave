# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: Ihave
# Generation Time: 2017-10-26 09:22:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table old
# ------------------------------------------------------------

DROP TABLE IF EXISTS `old`;

CREATE TABLE `old` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(50) DEFAULT 'images/img-portfolio/portfolio0.jpg',
  `price` int(11) NOT NULL,
  `word` text,
  `userid` int(11) NOT NULL,
  `kind` text NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `old_users` (`userid`),
  CONSTRAINT `old_users` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `old` WRITE;
/*!40000 ALTER TABLE `old` DISABLE KEYS */;

INSERT INTO `old` (`id`, `url`, `price`, `word`, `userid`, `kind`, `name`)
VALUES
	(3,'images/img-book/1.jpg',16,'哈默手稿，刚买回来一周，可以出租。',26,'book','哈默手稿'),
	(5,'images/img-book/3.jpg',16,'有没有想看童话书的啊',26,'book','童话书'),
	(6,'images/img-book/4.jpg',16,'不解释，三体迷们来吧',27,'book','三体'),
	(7,'images/img-book/5.jpg',16,'人生，不迷茫，青春不落幕',27,'book','散文集'),
	(8,'images/img-book/6.jpg',16,'将来的你是什么样的呢',27,'book','将来的你'),
	(9,'images/img-book/7.jpg',16,'只是一本书',28,'book','一本童话书'),
	(10,'images/img-book/8.jpg',16,'二十到三十岁，我们能做什么？',28,'book','书'),
	(12,'images/img-compute/2.jpg',2300,'正版超薄平板手机，屏幕有点划痕',29,'compute','正版手机'),
	(16,'images/img-compute/6.jpg',4900,'三星s7 eage，刚买回来3天，缺钱。',29,'compute','三星手机'),
	(17,'images/img-compute/7.jpg',4500,'三星手机最新款。低价出售',29,'compute','三星手机'),
	(18,'images/img-compute/8.jpg',3000,'屏幕有点划痕，不过不影响外观。低价出售',29,'compute','苹果手机'),
	(19,'images/img-compute/9.jpg',5000,'有要的私聊',31,'compute','iphone7\n'),
	(20,'images/img-compute/10.jpg',7900,'红色系列iPhone7，有要的私聊',31,'compute','iphone手机'),
	(22,'images/img-coat/1.jpg',55,'没穿过多少次的，要毕业了，有要的么',31,'coat','二手外套'),
	(23,'images/img-coat/2.jpg',55,'没穿过多少次的，要毕业了，有要的么',33,'coat','二手外套v'),
	(24,'images/img-coat/3.jpg',55,'没穿过多少次的，要毕业了，有要的么',52,'coat','二手外套'),
	(25,'images/img-coat/4.jpg',55,'没穿过多少次的，要毕业了，有要的么',33,'coat','二手外套'),
	(26,'images/img-coat/5.jpg',55,'没穿过多少次的，要毕业了，有要的么',33,'coat','二手外套'),
	(27,'images/img-coat/6.jpg',80,'asd水电费水电费是短发asd',52,'other','zxc'),
	(28,'images/img-coat/7.jpg',80,'asd水电费水电费是短发asd',52,'other','zxc'),
	(29,'images/img-coat/8.jpg',80,'自己看图片，想要的私聊',52,'other','看图片'),
	(30,'images/img-other/1.jpg',80,'水电费水电费是短发',52,'other','zxc'),
	(31,'images/img-other/2.jpg',80,'asd水电费水电费是短发asd',52,'other','zsc'),
	(32,'images/img-other/3.jpg',80,'asd水电费水电',52,'other','zsv爱上'),
	(34,'images/img-other/5.jpg',80,'asd水电费水电费是短发asd',52,'other','asf'),
	(37,'images/img-book/9.jpg',1,'看完了，里面没有损坏，便宜卖',57,'book','一本二手书'),
	(40,'images/img-portfolio/portfolio0.jpg',111,'I have a book',57,'book','book'),
	(44,'images/img-portfolio/portfolio0.jpg',123,'I have a book',57,'book','book'),
	(45,'images/img-portfolio/portfolio0.jpg',1,'q',61,'other','q');

/*!40000 ALTER TABLE `old` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sell`;

CREATE TABLE `sell` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `oldid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sell` WRITE;
/*!40000 ALTER TABLE `sell` DISABLE KEYS */;

INSERT INTO `sell` (`id`, `oldid`, `userid`)
VALUES
	(1,1,25),
	(2,1,25),
	(3,2,26),
	(4,2,27),
	(5,2,28),
	(6,3,28),
	(7,3,28),
	(8,5,57),
	(9,5,57),
	(10,12,57),
	(11,12,52),
	(12,12,52),
	(13,12,52),
	(14,23,57),
	(15,3,61),
	(16,3,61),
	(17,14,61),
	(18,33,61),
	(19,24,57);

/*!40000 ALTER TABLE `sell` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `qianming` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `tel`, `username`, `password`, `address`, `email`, `school`, `sex`, `qianming`)
VALUES
	(1,'黑科大','15776619876','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','0',NULL),
	(24,'黑科大','15776619876','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(25,'黑科大','15776619876','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(26,'黑科大','15776619876','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(27,'黑科大','15776619876','havehave','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(28,'黑科大','13846517777','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(29,'黑科大','13846517777','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(30,'黑科大','13846517777','have','444','黑龙江大学','15776619876@163.com','黑龙江大学','1',NULL),
	(31,'黑科大黑科大','13766445522','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(32,'黑科大','13766445522','have','444','南京大学','15776619876@163.com','南京大学','1',NULL),
	(33,'黑科大','13766445522','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(34,'黑科大','13766445522','havehave','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(35,'黑科大','13766445522','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(36,'黑科大','13766445522','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(37,'黑科大','13766445522','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(38,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(39,'黑科大','15776612345','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(40,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(41,'黑科大','15776612345','have','444','哈工大','15776619876@163.com','哈工大','1',NULL),
	(42,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(43,'黑科大','15776612345','have','444','南京大学','15776619876@163.com','南京大学','1',NULL),
	(44,'黑科大','15776612345','have','444','南京大学','15776619876@163.com','南京大学','1',NULL),
	(45,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(46,'黑科大','15776612345','have','444','清华大学','15776619876@163.com','清华大学','1',NULL),
	(47,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(48,'黑科大','15776612345','have','444','北京大学','15776619876@163.com','北京大学','1',NULL),
	(49,'黑科大','15776612345','have','444','北京大学','15776619876@163.com','北京大学','1',NULL),
	(50,'黑科大','15776612345','havehave','444','北京大学','15776619876@163.com','北京大学','1',NULL),
	(51,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(52,'黑科大','15776612345','have','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(57,'黑科大','15776612345','have','123','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1','没有签名'),
	(61,'黑科大','18304549999','Ihave','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL),
	(62,'v','12345678977','havehave','444','黑龙江科技大学','15776619876@163.com','黑龙江科技大学','1',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
