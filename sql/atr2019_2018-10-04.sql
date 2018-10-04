# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: atr2019
# Generation Time: 2018-10-04 06:15:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table CODES
# ------------------------------------------------------------

CREATE TABLE `CODES` (
  `codesHeads` varchar(10) NOT NULL,
  `codesCodes` varchar(45) NOT NULL,
  `codesDesc1` varchar(200) DEFAULT NULL,
  `codesDesc2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codesHeads`,`codesCodes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `CODES` WRITE;
/*!40000 ALTER TABLE `CODES` DISABLE KEYS */;

INSERT INTO `CODES` (`codesHeads`, `codesCodes`, `codesDesc1`, `codesDesc2`)
VALUES
	('1','0','Jenis Project',NULL),
	('1','1','RTRW Nasional',NULL),
	('1','2','RTR Pulau',NULL),
	('1','3','RTR KSN',NULL),
	('1','4','RDTR Kawasan Perbatasan Negara',NULL),
	('1','5','RTRW Provinsi',NULL),
	('1','6','RTRW Kabupaten',NULL),
	('1','7','RTRW Kota',NULL),
	('1','8','RTRW Kawasan Perkotaan',NULL);

/*!40000 ALTER TABLE `CODES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table login
# ------------------------------------------------------------

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;

INSERT INTO `login` (`user_id`, `username`, `password`)
VALUES
	(1,'admin','admin');

/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project
# ------------------------------------------------------------

CREATE TABLE `project` (
  `no_project` int(11) NOT NULL AUTO_INCREMENT,
  `nama_project` varchar(100) NOT NULL,
  `jenis_project` varchar(50) NOT NULL,
  `tanggal_rencana` date NOT NULL,
  `tanggal_progress` date DEFAULT '1900-01-01',
  `status` varchar(50) DEFAULT '',
  PRIMARY KEY (`no_project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`no_project`, `nama_project`, `jenis_project`, `tanggal_rencana`, `tanggal_progress`, `status`)
VALUES
	(1,'Pembuata RTRW Provins Jawa Barat 2019','5','2018-08-17','0000-00-00',''),
	(2,'Optimalisasi Rencana Tata Ruang Wiliayah','6','2018-08-30','2018-08-31','Pengumpulan data sekunder'),
	(6,'project hallo','7','2018-01-01','1900-01-01',''),
	(9,'KSN Bandung 1','3','2017-08-15','1900-01-01','');

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
