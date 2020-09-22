-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for limadb
DROP DATABASE IF EXISTS `limadb`;
CREATE DATABASE IF NOT EXISTS `limadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `limadb`;

-- Dumping structure for table limadb.board
DROP TABLE IF EXISTS `board`;
CREATE TABLE IF NOT EXISTS `board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `goal` varchar(50) NOT NULL,
  `contents` varchar(255) NOT NULL,
  `goal_ham` int(11) NOT NULL,
  `goal_date` date NOT NULL,
  `is_success` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_no`),
  KEY `FK_member_TO_board` (`member_no`),
  CONSTRAINT `FK_member_TO_board` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table limadb.board: ~0 rows (approximately)
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- Dumping structure for table limadb.member
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ham` int(11) NOT NULL,
  PRIMARY KEY (`member_no`),
  UNIQUE KEY `UIX_member` (`id`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table limadb.member: ~0 rows (approximately)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
