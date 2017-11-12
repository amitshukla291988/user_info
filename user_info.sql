-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `name`, `pwd`, `email`) VALUES
(1,	'admin',	'admin@123',	'admin@gmail.com');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `category` (`id`, `name`) VALUES
(1,	'PHP '),
(2,	'IOS ');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `name`, `contactNo`, `email`, `status`) VALUES
(1,	'Amit Kumar Shukla',	'9817465852',	'amitshukla@gmail.com',	1),
(2,	'Bijay Shukla',	'7815465621',	'vijay@gmail.com',	1);

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userId` bigint(10) NOT NULL,
  `categoryId` int(5) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `document` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user_detail` (`id`, `userId`, `categoryId`, `title`, `description`, `document`) VALUES
(1,	2,	1,	'Amit Shukla',	'<p>Hi, Test</p>\r\n',	'Amit_Shukla_2017_update.doc'),
(2,	1,	2,	'Amit Shukla',	'<p>Hi, Test</p>\r\n',	'Amit_Shukla_2017_update (1).doc'),
(3,	1,	1,	'Rahul Singh',	'<p>hi, test data</p>\r\n',	'Amit_Shukla_2017_update (2).doc');

-- 2017-11-12 17:35:42
