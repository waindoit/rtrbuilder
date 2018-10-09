# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: atr2019
# Generation Time: 2018-10-09 00:58:52 +0000
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

DROP TABLE IF EXISTS `CODES`;

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
	('1','1','RTRWN',NULL),
	('1','2','RTR Pulau',NULL),
	('1','3','RTR KSN',NULL),
	('1','4','RTRW Provinsi',NULL),
	('1','5','RTRW Kabupaten Kota',NULL),
	('1','6','RDTR Kawasan Perkotaan',NULL);

/*!40000 ALTER TABLE `CODES` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `no_project` int(11) NOT NULL AUTO_INCREMENT,
  `nama_project` varchar(300) NOT NULL,
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
	(10,'KLHS RDTR Kawasan Perbatasan Negara (Nangabadau, Skouw, Paloh Aruk, Nunukan, Entikong, Motaain, Wini)','6','2018-10-04','1900-01-01',''),
	(11,'Penyusunan Sistem Informasi RDTR Interaktif','6','2018-10-04','1900-01-01',''),
	(12,'RDTR Kawasan Perbatasan Negara di Long Nawang (Lokpri Kayan Hulu)','6','2018-10-04','1900-01-01',''),
	(13,'RDTR Kawasan Perbatasan Negara di Jagoibabang (Lokpri Jagoibabang)','6','2018-10-04','1900-01-01',''),
	(14,'RDTR Kawasan Perbatasan Negara di Ranai','6','2018-10-04','1900-01-01',''),
	(15,'RDTR Kawasan Perbatasan Negara di Kalabahi (Lokpri Teluk Mutiara)','6','2018-10-04','1900-01-01',''),
	(16,'Penyusunan Rencana Detail kawasan Perbatasan di Tarempa','6','2018-10-04','1900-01-01',''),
	(17,'RDTR Kawasan Perbatasan Negara di Kefamenanu (Lokpri Kefamenanu)','6','2018-10-04','1900-01-01',''),
	(18,'RDTR Kawasan Perbatasan Negara di Negara Ilwaki (Lokpri Wetar)','6','2018-10-04','1900-01-01',''),
	(19,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Provinsi Jawa Timur, Provinsi D.I. Yogyakarta, dan Provinsi Bali','6','2018-10-04','1900-01-01',''),
	(20,'RDTR Kawasan Perbatasan Di  Sorong (Lokpri Sorong Barat)','6','2018-10-04','1900-01-01',''),
	(21,'RDTR Kawasan Perbatasan Di Jasa (Lokpri Ketungau Hulu)','6','2018-10-04','1900-01-01',''),
	(22,'Penyusunan Materi Teknis RTR Kawasan Strategis Kabupaten Di Sekitar KI Morowali','6','2018-10-04','1900-01-01',''),
	(23,'RDTR Kawasan Perbatasan Di Napan (Lokpri Bikomi Utara)','6','2018-10-04','1900-01-01',''),
	(24,'RDTR Kawasan Perbatasan Di Oepoli (Lokpri Amfoang Timur)','6','2018-10-04','1900-01-01',''),
	(25,'RDTR Kawasan Perbatasan Di Maritaeng (Lokpri Alor Timur)','6','2018-10-04','1900-01-01',''),
	(26,'RDTR Kawasan Perbatasan Negara Di Tahuna (Lokpri Tahuna)','6','2018-10-04','1900-01-01',''),
	(27,'RDTR Kawasan Perbatasan Di Marampit (Lokpri Nanusa)','6','2018-10-04','1900-01-01',''),
	(28,'RDTR Kawasan Perbatasan Negara Di Long Midang (Lokpri Krayan)','6','2018-10-04','1900-01-01',''),
	(29,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Papua, Papua Barat, dan Maluku','6','2018-10-04','1900-01-01',''),
	(30,'RDTR Kawasan Perbatasan Di Marore (Lokpri Kep. Marore)','6','2018-10-04','1900-01-01',''),
	(31,'RDTR Kawasan Perbatasan Negara Di Jayapura (Lokpri Jayapura Utara)','6','2018-10-04','1900-01-01',''),
	(32,'RDTR Kawasan Perbatasan Negara Di Atambua (Lokpri Atambua)','6','2018-10-04','1900-01-01',''),
	(33,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Sumatera Bagian Selatan','6','2018-10-04','1900-01-01',''),
	(34,'Penyusunan Materi Teknis RTR Kawasan Strategis Kabupaten Di Sekitar KI Bantaeng','6','2018-10-04','1900-01-01',''),
	(35,'RDTR Kawasan Perbatasan Negara Di Tanah Merah (Lokpri Tanah Merah)','6','2018-10-04','1900-01-01',''),
	(36,'Penyusunan Masterplan Kota Baru Di Maja  (Fasilitasi Penyusunan Materi Teknis Rencana Detail Tata Ruang  dan Peraturan Zonasi Kawasan Perkotaan Maja di Kabupaten Lebak)','6','2018-10-04','1900-01-01',''),
	(38,'Penyusunan Masterplan Kota Baru di Padang','6','2018-10-04','1900-01-01',''),
	(39,'Penyusunan Materi Teknis RTR Kawasan Strategis Kabupaten di Sekitar KEK MBT','6','2018-10-04','1900-01-01',''),
	(40,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Sulawesi','6','2018-10-04','1900-01-01',''),
	(41,'Penyusunan Materi Teknis RTR Kawasan Strategis Kabupaten Di Sekitar KI Sei Mangkei','6','2018-10-04','1900-01-01',''),
	(42,'Bantuan Teknis Penyusunan RDTR Kawasan Perkotaan Pidie, Kabupaten Pidie','6','2018-10-04','1900-01-01',''),
	(43,'Penyusunan Masterplan Kawasan Rawan Bencana Di Kabupaten Pidie Jaya','6','2018-10-04','1900-01-01',''),
	(44,'Penyusunan Masterplan Kota Baru Di Banjar Baru','6','2018-10-04','1900-01-01',''),
	(45,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Sumantera Bagian Utara','6','2018-10-04','1900-01-01',''),
	(46,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Provinsi Banten, Provinsi Jawa Barat, dan Provinsi Jawa Tengah','6','2018-10-04','1900-01-01',''),
	(47,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di Kalimantan','6','2018-10-04','1900-01-01',''),
	(48,'Bimbingan Teknis Penyusunan RRTR/RDTRR Kab/Kota di NTB, NTT, dan Malut','6','2018-10-04','1900-01-01','');

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
