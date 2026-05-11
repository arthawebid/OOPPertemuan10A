/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - instiki
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`instiki` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `instiki`;

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `IDMHS` bigint(20) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(10) DEFAULT NULL,
  `NAMA` varchar(30) DEFAULT NULL,
  `PRODI` varchar(50) DEFAULT NULL,
  `JENISKELAMIN` enum('0','1') DEFAULT NULL COMMENT '0 Perempuan; 1 Laki-laki',
  `TGLLAHIR` date DEFAULT NULL,
  `ALAMAT` varchar(255) DEFAULT NULL,
  `NOTELP` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `STASTUSKELAS` enum('Pekerja','Reguler') DEFAULT NULL,
  PRIMARY KEY (`IDMHS`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`IDMHS`,`NIM`,`NAMA`,`PRODI`,`JENISKELAMIN`,`TGLLAHIR`,`ALAMAT`,`NOTELP`,`EMAIL`,`STASTUSKELAS`) values 
(1,'1111111111','NurAmalia','Informatika','0','2000-05-11','Jl. Kamboja','08112212','nur@amelia.com','Reguler'),
(2,'1111111111','Santiadiasa','Informatika','1','2006-06-01','Jl. Gulamana','0833344556','dan@tiadi.com','Pekerja');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
