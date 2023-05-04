-- --------------------------------------------------------
-- 主机:                           database-01.cgvjmyk27ifv.us-east-1.rds.amazonaws.com
-- 服务器版本:                        8.0.32 - Source distribution
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 meetup 的数据库结构
CREATE DATABASE IF NOT EXISTS `meetup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `meetup`;

-- 导出  表 meetup.connection 结构
CREATE TABLE IF NOT EXISTS `connection` (
  `connection_id` int NOT NULL AUTO_INCREMENT,
  `user_id1` varchar(100) DEFAULT NULL,
  `user_id2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`connection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.connection 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `connection` DISABLE KEYS */;
REPLACE INTO `connection` (`connection_id`, `user_id1`, `user_id2`) VALUES
	(2, 'atiwari3@albany.edu', 'haoweiQing526@gmail.com'),
	(7, 'meetupevents518@gmail.com', 'atiwari3@albany.edu'),
	(8, 'meetupevents518@gmail.com', 'haoweiQing526@gmail.com');
/*!40000 ALTER TABLE `connection` ENABLE KEYS */;

-- 导出  表 meetup.event 结构
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `organizer` int DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.event 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
REPLACE INTO `event` (`event_id`, `organizer`, `title`, `description`, `start_time`, `end_time`, `location`) VALUES
	(2, 5, 'Final Presentation', 'Presentation for final submission', '2023-04-29 21:35:00', '2023-04-29 22:35:00', 'Zoom'),
	(3, 6, 'Test Event', 'Test Event from Haowei', NULL, NULL, NULL),
	(4, 7, 'IEEE conference', 'Present your papers', NULL, NULL, NULL),
	(5, 8, 'Final Demo', 'Showing application for final demo', '2023-04-30 14:21:00', '2023-04-30 15:22:00', 'Zoom'),
	(6, 9, 'Meetup test 1', 'A test event', NULL, NULL, NULL),
	(7, 9, 'Meet Test', 'A test event', NULL, NULL, NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- 导出  表 meetup.invites 结构
CREATE TABLE IF NOT EXISTS `invites` (
  `invite_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`invite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.invites 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;

-- 导出  表 meetup.options 结构
CREATE TABLE IF NOT EXISTS `options` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `poll_id` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.options 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
REPLACE INTO `options` (`option_id`, `poll_id`, `start_time`, `end_time`, `location`) VALUES
	(3, 2, '2023-04-29 21:35:00', '2023-04-29 22:35:00', 'Zoom'),
	(4, 2, '2023-04-29 21:35:00', '2023-04-29 22:35:00', 'In Person'),
	(5, 3, '2023-05-07 21:38:00', '2023-05-07 00:38:00', 'Humanity 772'),
	(6, 3, '2023-05-14 21:38:00', '2023-05-14 00:38:00', 'Humanity 772'),
	(7, 4, '2023-04-29 09:00:00', '2023-04-29 10:00:00', 'Hilton, Albany, NY'),
	(8, 4, '2023-04-29 09:00:00', '2023-04-29 10:00:00', 'Zoom'),
	(9, 5, '2023-04-30 14:21:00', '2023-04-30 15:22:00', 'Zoom'),
	(10, 5, '2023-04-30 14:21:00', '2023-04-30 15:22:00', 'In Person'),
	(11, 6, '2023-04-30 16:15:00', '2023-04-30 17:15:00', 'Zoom'),
	(12, 6, '2023-04-30 16:15:00', '2023-04-30 17:15:00', 'In Person'),
	(13, 6, '2023-04-30 18:15:00', '2023-04-30 19:15:00', 'Zoom'),
	(14, 6, '2023-04-30 18:15:00', '2023-04-30 19:15:00', 'In Person'),
	(15, 7, '2023-04-30 16:44:00', '2023-04-30 17:44:00', 'Zoom'),
	(16, 7, '2023-04-30 16:44:00', '2023-04-30 17:44:00', 'In Person'),
	(17, 7, '2023-05-01 18:00:00', '2023-05-01 19:00:00', 'Zoom'),
	(18, 7, '2023-05-01 18:00:00', '2023-05-01 19:00:00', 'In Person');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- 导出  表 meetup.poll 结构
CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  PRIMARY KEY (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.poll 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;

-- 导出  表 meetup.response 结构
CREATE TABLE IF NOT EXISTS `response` (
  `response_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `option_id` int DEFAULT NULL,
  `poll_id` int DEFAULT NULL,
  `likelihood` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.response 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
REPLACE INTO `response` (`response_id`, `user_id`, `option_id`, `poll_id`, `likelihood`) VALUES
	(3, 6, 3, 2, 0.50),
	(4, 6, 4, 2, 1.00),
	(5, 5, 3, 2, 1.00),
	(6, 5, 4, 2, 0.25),
	(7, 7, 4, 2, 1.00),
	(8, 7, 3, 2, 0.50),
	(9, 7, 7, 4, 0.75),
	(10, 7, 8, 4, 1.00),
	(11, 5, 9, 5, 1.00),
	(12, 5, 10, 5, 0.25),
	(13, 8, 3, 2, 0.50),
	(14, 8, 4, 2, 1.00),
	(15, 6, 11, 6, 1.00),
	(16, 6, 12, 6, 0.75),
	(17, 6, 13, 6, 0.00),
	(18, 6, 14, 6, 0.50),
	(19, 5, 11, 6, 1.00),
	(20, 5, 12, 6, 0.25),
	(21, 5, 13, 6, 0.50),
	(22, 5, 14, 6, 0.00),
	(23, 8, 11, 6, 0.75),
	(24, 8, 12, 6, 0.50),
	(25, 8, 13, 6, 0.25),
	(26, 8, 14, 6, 0.00),
	(27, 7, 11, 6, 1.00),
	(28, 7, 12, 6, 0.75),
	(29, 7, 13, 6, 0.50),
	(30, 7, 14, 6, 0.00),
	(31, 7, 11, 6, 1.00);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;

-- 导出  表 meetup.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  meetup.user 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`user_id`, `name`, `email`) VALUES
	(5, 'Anusha', 'atiwari3@albany.edu'),
	(6, 'Haowei Qing', 'haoweiQing526@gmail.com'),
	(7, 'Teimur', 'teimur_94@hotmail.com'),
	(8, 'Anusha Tiwari', 'anusha.tiwari16@gmail.com'),
	(9, 'Meetup', 'meetupevents518@gmail.com'),
	(10, 'Haowei Qing', '1662560454@qq.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
