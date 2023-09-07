# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_inportal
# Server version:               5.1.56-community
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2022-10-03 13:56:53
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_inportal'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_inportal" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_inportal";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(11) NOT NULL AUTO_INCREMENT,
  "admin_name" varchar(50) NOT NULL,
  "admin_email" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_email", "admin_password") VALUES
	(1,'Georgekutty','george@gmail.com','admin');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_chat'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_chat" (
  "chat_id" int(11) NOT NULL AUTO_INCREMENT,
  "from_student_id" int(50) DEFAULT '0',
  "to_student_id" int(10) unsigned DEFAULT '0',
  "to_company_id" int(10) unsigned DEFAULT '0',
  "from_company_id" int(10) unsigned DEFAULT '0',
  "chat_content" varchar(500) NOT NULL,
  "chat_time" varchar(50) NOT NULL,
  "chat_date" varchar(50) NOT NULL,
  "chat_status" int(11) DEFAULT '0',
  PRIMARY KEY ("chat_id")
) AUTO_INCREMENT=100;



#
# Dumping data for table 'tbl_chat'
#

LOCK TABLES "tbl_chat" WRITE;
/*!40000 ALTER TABLE "tbl_chat" DISABLE KEYS;*/
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(1,2,'0','3','0','Hello','01:53 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(3,0,'2','0','3','Hai','01:53 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(4,2,'0','4','0','How are you','02:24 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(19,2,'0','10','0','hii','03:12 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(20,3,'0','2','0','how are you','03:18 PM','2022-08-29',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(21,2,'0','4','0','Hai','03:29 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(22,2,'0','4','0','Hello','03:30 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(23,2,'0','4','0','hgcvjbn','03:30 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(24,2,'0','4','0','addd','03:30 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(25,2,'0','3','0','hy','03:50 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(26,3,'0','2','0','io','03:50 PM','2022-08-29',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(27,3,'0','2','0','efgtrh','03:50 PM','2022-08-29',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(28,3,'0','2','0','efgtrh','03:50 PM','2022-08-29',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(29,0,'2','0','3','defgtfhnm','03:51 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(30,0,'3','0','3','hii','04:07 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(31,0,'3','0','3','Can i apply for internship?','04:09 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(32,3,'0','3','0','Yes ','04:09 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(33,2,'0','3','0','Can i apply for internship?','04:28 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(34,0,'3','0','3','Hii Vyshakh','04:31 PM','2022-08-29',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(35,2,'0','4','0','sheri enna......','03:20 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(36,2,'0','4','0','','03:20 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(37,0,'2','0','3','Good Evening','03:47 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(38,0,'2','0','3','hii','03:48 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(39,0,'2','0','3','Hello','03:48 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(40,2,'0','3','0','Hii','03:53 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(41,2,'0','3','0','Hii','04:11 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(42,0,'2','0','3','Hii','04:11 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(43,0,'2','0','3','hii','04:12 PM','2022-08-30',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(44,0,'2','0','3','Hii','01:18 AM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(45,2,'0','3','0','Haii','01:21 AM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(46,0,'2','0','3','Please give your contact details','01:22 AM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(47,4,'0','4','0','Hii','01:33 AM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(48,0,'4','0','4','Hii Thomaskutty','01:35 AM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(49,3,'0','3','0','hii','12:14 PM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(50,0,'3','0','3','hii','12:14 PM','2022-08-31',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(51,4,'0','10','0','Good Afternoon','01:16 PM','2022-09-15',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(52,0,'4','0','10','Good Afternoon','01:17 PM','2022-09-15',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(53,2,'0','3','0','8848753040','10:45 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(54,0,'2','0','3','ok','10:45 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(55,0,'2','0','3','Hii George','10:46 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(56,2,'0','3','0','Hii experion','10:46 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(57,0,'2','0','3','Interview Schedule','10:48 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(58,2,'0','3','0','Time??','10:49 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(59,0,'2','0','4','Hii','10:54 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(60,2,'0','4','0','Yes','10:54 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(61,0,'2','0','4','Fees?','11:18 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(62,2,'0','4','0','will pay','11:19 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(63,2,'0','4','0','Hii George','11:21 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(64,0,'2','0','4','Hii','11:21 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(65,2,'0','4','0','Sorry','11:22 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(66,0,'2','0','4','hii','11:24 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(67,2,'0','4','0','Hii Pro','11:25 PM','2022-09-23',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(68,0,'2','0','3','Hai','10:10 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(69,2,'0','3','0','Hai','10:10 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(70,2,'0','3','0','Hai','10:13 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(71,2,'0','3','0','Hai','10:13 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(72,0,'2','0','3','Hai','10:13 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(73,0,'2','0','3','Hai','10:13 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(74,0,'2','0','3','Hai','10:13 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(75,2,'0','3','0','Hello','10:14 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(76,2,'0','3','0','Hello','10:14 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(77,2,'0','3','0','Hello','10:14 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(78,2,'0','3','0','Hai','10:18 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(79,0,'2','0','3','Hai','10:18 AM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(80,3,'0','3','0','Hai','01:35 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(81,3,'0','3','0','Hai','01:53 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(82,3,'0','3','0','hai','01:53 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(83,3,'0','3','0','hai','01:53 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(84,3,'0','3','0','hai','01:53 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(85,3,'0','3','0','Hai','02:58 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(86,3,'0','3','0','Hai','02:58 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(87,3,'0','3','0','Hia','02:58 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(88,3,'0','4','0','Hai','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(89,3,'0','4','0','Hello','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(90,3,'0','4','0','Hello','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(91,3,'0','4','0','Hai','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(92,3,'0','4','0','Hello','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(93,3,'0','4','0','Hai','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(94,3,'0','4','0','Hello','02:59 PM','2022-09-24',0);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(95,3,'0','3','0','Hai','03:02 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(96,3,'0','3','0','Hello','03:02 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(97,3,'0','3','0','Hello','03:02 PM','2022-09-24',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(98,5,'0','6','0','Hii Ust','01:51 PM','2022-10-03',1);
REPLACE INTO "tbl_chat" ("chat_id", "from_student_id", "to_student_id", "to_company_id", "from_company_id", "chat_content", "chat_time", "chat_date", "chat_status") VALUES
	(99,0,'5','0','6','Yes milan','01:52 PM','2022-10-03',1);
/*!40000 ALTER TABLE "tbl_chat" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_company'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_company" (
  "company_id" int(11) NOT NULL AUTO_INCREMENT,
  "company_name" varchar(50) NOT NULL,
  "company_email" varchar(50) NOT NULL,
  "company_contact" varchar(20) NOT NULL,
  "company_address" varchar(250) NOT NULL,
  "company_logo" varchar(50) DEFAULT NULL,
  "company_proof" varchar(50) DEFAULT NULL,
  "company_liscenceno" varchar(50) NOT NULL,
  "place_id" int(50) DEFAULT NULL,
  "company_location" varchar(50) NOT NULL,
  "company_landmark1" varchar(50) NOT NULL,
  "company_landmark2" varchar(50) DEFAULT NULL,
  "company_password" varchar(50) NOT NULL,
  "company_vstatus" varchar(50) DEFAULT '0',
  "company_doj" date NOT NULL,
  "sector_id" int(11) DEFAULT NULL,
  "company_site" varchar(50) DEFAULT NULL,
  "company_about" varchar(1000) DEFAULT NULL,
  "company_date" date DEFAULT NULL,
  "isactive" int(11) DEFAULT '0',
  PRIMARY KEY ("company_id")
) AUTO_INCREMENT=18;



#
# Dumping data for table 'tbl_company'
#

LOCK TABLES "tbl_company" WRITE;
/*!40000 ALTER TABLE "tbl_company" DISABLE KEYS;*/
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(3,'Experion Technologies','experion@gmail.com','768754421','4th Floor, Athulya Building, Infopark SEZ, Kakkanad, Kochi, 682042','company_1603.png','company_proof_1119.jpg','U72200KL2006PTC019336',6,'Lulu Cyber Tower','Opposite to Sky Building','Opposite to Nest Digital','experion','1','2022-08-15',1,'https://www.experion.com','Experion Technologies is a 14+ year old IT solutions & services company with a focus on digital technologies. With over 300 customers across 32 countries, Experion uses the power of Mobile, Web, Analytics, Cloud, and Digital technologies to unlock the potential of businesses across verticals.','2004-06-21',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(4,'Progressive Solutions','pro@gmail.com','907854756','Koyas Tower
Post Office Junction, 
Muvattupuzha','company_logo_1405.jpg','company_proof_1488.jpg','U64202PB1994PLC015470',1,'Koyas Tower','Near Signal Junction','Opposite to Pizza Hut','Progressive','1','2022-08-15',1,'www.progressive.com','We train students for a better career','2005-08-21',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(5,'Nest Digital','nest@gmail.com','4287467309','NeST Towers University junction, Kalamassery, Kochi, Kerala 682033','company_1430.jpg','company_proof_1891.jpg','U72200KL1998PTC012602',6,'Cochin Special Economic Zone','Opposite to Sky Building','Near Infopark','nest','2','2022-08-16',1,'www.nest.com','We begin the Innovation','2000-08-21',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(6,'UST Global','clgeorgekutty7@gmail.com','8848753049',' TechnoPark Phase II, Service Rd, Kulathoor, Thiruvananthapuram, Kerala 695583','company_logo_1000.jpg','company_proof_1103.jpg','U72200KL2010PTC025653',5,'Kulathoor','Near Infosys','Near Airflix Badminton academy','ust','1','2022-08-16',1,'www.ustglobal.com','Kerala Based Company head quatered in US','2008-10-11',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(7,'Infosys Limited','infosys@gmail.com','8848753049','Plot No, 44, Hosur Rd, Konappana Agrahara, Electronic City, Bengaluru, Karnataka 560100','company_logo_1557.png','company_proof_1898.jpg','L85110KA1981PLC013115',9,'Konappana Agrahara','Opposite to Forum Mall','Near Konappana Bus Stand','infosys','2','2022-08-18',1,'www.infosys.com','MNC','1990-05-12',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(8,'Mphasis Limited','mphasis@gmail.com','080 4004 4444','XMH8+G8W, Bagmane Tech Park, Byrasandra Village, C V Raman Nagar, Bengaluru, Karnataka 560093','company_logo_1750.png','company_proof_1526.jpg','U72200KA1998PTC038932',9,'Bagmane Tech Park','Near Bagmane Bus Stand','Near Hotel Trivadia','mphasis','1','2022-08-22',1,'www.mphasis.com','Mphasis applies next-generation technology to help enterprises transform businesses globally. Customer centricity is foundational to Mphasis and is reflected in the Mphasis  Front2Back Transformation approach.','1998-06-15',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(10,'Bajaj Finance Limited','bajajfinance@gmail.com','8985783409',' 2nd Floor, Office No. 204 & 205, Sagartech Plaza, Andheri East, Mumbai 400072','company_logo_2034.webp','company_proof_1822.jpg','L65910MH1987PLC042961',11,'Andheri East',' Andheri - Kurla Rd','Sagartech Plaza','bajaj','1','2022-08-24',3,'www.bajajfinance.com','Bajaj Finserv Limited is an Indian non-banking financial services company headquartered in Pune. It is focused on lending, asset management, wealth management and insurance.','2007-06-04',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(11,'Apollo Hospitals  Limited','apollohospitalsq1@gmail.com','+910474562398','154, IIM, 11, Bannerghatta Main Rd, opposite Krishnaraju Layout,  Naga, Bengaluru, Karnataka 560076','company_logo_1847.jpeg','company_proof_1687.jpg','L85110TN1979PLC008035',12,'Amalodbhavi Nagar','opposite Krishnaraju Layout','Bannerghatta Main Rd','apollo','0','2022-09-30',4,'www.apollohealthcare.com','Apollo Hospitals Enterprise Limited is an Indian multinational healthcare group headquartered in Chennai. Apart from the eponymous hospital chain, the company also operates pharmacies, primary care and diagnostic centres, and telehealth clinics through its subsidiaries.The company was founded by Prathap C. Reddy in 1983 as the first corporate healthcare provider in India. Several of Apollos hospitals have been among the first in India to receive international healthcare accreditation by the America-based Joint Commission International (JCI) as well as NABH accreditation.','1983-03-08',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(12,'Cipla Limited','ciplalimited932@gmail.com','+915684671092','No. 815, Sansad Marg, Hanuman Road Area, Connaught Place, New Delhi, Delhi 110001','company_logo_1660.png','company_proof_1453.jpg','U24100MH2015PLC267880',13,'Sansad Marg','Hanuman Road Area','Opposite to Grand Mall','cipla','0','2022-09-30',4,'www.ciplalimited.com','A well known pharmaceutical company that manufactures various types of drugs for treating multiple diseases is Cipla. Khwaja Abdul Hamied founded the company in 1935. Cipla produces drug which can help in treating arthritis, cardiovascular diseases, weight control, diabetes, depression, and other health conditions. Cipla exports its goods in at least  150 countries though its headquartered in Mumbai. The company has at least 34 manufacturing plants where more than 3 billion units of drugs and containers are produced. Besides this, the company is also famous for producing antiretroviral drugs, which help in fighting dreaded diseases, including AIDS and HIV again.','1935-06-05',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(13,'Sun Pharma Limited','sunpharmaofficial178@gmail.com','+916789347210','3RXW+H59, Ram Mandir Road, Vile Parle East, Vile Parle, Mumbai, Maharashtra 400057','company_logo_2008.jpg','company_proof_1094.jpg','U24231HR1984PTC017474',14,'Vile Parle East','Ram Mandir Road','Near Hotel Trivadia','sun','0','2022-09-30',4,'www.sunpharma.com','
In at least 100 countries all over the world, Sun Pharma has made its presence having more than 32 thousand employees. In 1961 the company was founded, and today it is one of the renowned and leading pharmaceutical manufacturing companies in the nation. Additionally, you can say it is one of the biggest companies across the country now, and it manufactures a number of drugs for diseases, including diabetology, cardiology, neurology, etc. Presently it has 48 manufacturing plants, and here at least 2000 researchers and scientists work. Manufacturing drugs is the core aim of this company, and it also produces generic drugs.','1961-02-02',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(14,'MAHINDRA FINANCIAL','mahindrafinance234@gmail.com','+914928607133','498W+HR8, Mahammadpur Kazi, Musahri, Muzaffarpur, Bihar','company_logo_1035.png','company_proof_1281.jpg','L65921MH1991PLC059642',15,'Mahammadpur Kazi','kazi road','Kazi Street','mahindra','0','2022-09-30',3,'www.mahindrafinance.com','Mahindra & Mahindra Financial Services Limited (MMFSL) was established in 1991 and has over 1000 branches, and a customer base of over 3 million, all over the country. MMFSL is one of the most renowned organizations and has two affiliates offering Insurance services and rural housing financial services. It also specializes in offering gold advances, vehicle advances, corporate advances, home credits, working capital advances, and much more.','1991-06-13',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(15,'Aditya Birla Finance Ltd','adityabirlafina12nce@gmail.com','+910348952386','3rd Floor, Chammany Chambers, Kaloor - Kadavanthara Rd, Kaloor, Ernakulam, Kerala 682017','company_logo_1609.jpeg','company_proof_1287.jpg','U65990GJ1991PLC064603',16,'Chammany Chambers','Kadavanthara Rd','Opposite to Grand Mall','aditya','0','2022-09-30',3,'www.adityafinance.com','Aditya Birla Finance Limited, a part of the Aditya Birla Financial Services, was incorporated in 1991 and is an ISO 9001:2008 certified NBFC. ABFL is registered with RBI as a systemically important non-deposit accepting NBFC and it ranks among the top five largest private diversified NBFCs in India. It offers precise and customized solutions across a wide range, from corporate finance to commercial mortgage, and from capital markets to structured finance.','1991-02-22',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(16,'Tata Capital  Ltd','tatacapita78l@gmail.com','+915839560125','11th Floor, Tower A, Peninsula Business Park, Ganpatrao Kadam Marg, Lower Parel, Mumbai - 400013','company_logo_1119.jfif','company_proof_1710.jpg','U67100MH2010PLC210201',17,'Ganpatrao Kadam Marg','Peninsula Business Park','Tower A','tatacapital','0','2022-09-30',3,'www.tatacapital.com','Tata Capital Financial Services Limited is top of Indias leading NBFCs. Established in 2007, it is a subsidiary of Tata Sons Limited. TCFS describes itself as a one-stop financial service provider that caters to the diverse needs of retail, corporate and institutional customers across businesses. It is registered with RBI as Systemically Important Non-Deposit Accepting Non-Banking Financial Company (NBFC). Among the various products offered by TCFS to individuals, families, and businesses, are commercial finance, infrastructure finance, wealth management, consumer loans, and distribution and marketing of Tata Cards.','2007-07-23',0);
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_email", "company_contact", "company_address", "company_logo", "company_proof", "company_liscenceno", "place_id", "company_location", "company_landmark1", "company_landmark2", "company_password", "company_vstatus", "company_doj", "sector_id", "company_site", "company_about", "company_date", "isactive") VALUES
	(17,'Muthoot Finance Ltd','muthootfinanc142e@gmail.com','+916734856235','Muthoot Chambers, Opp. Sarita Theater Complex, Banerji Road, Kochi, 682018','company_logo_1305.png','company_proof_1859.jpg','U65991KL1996PLC010881',18,'Muthoot Chambers','Opp. Sarita Theater Complex','Banerji Road','muthoot','0','2022-09-30',3,'www.muthootfincorp.com','Muthoot Finance Ltd is Indias first NBFC tracing its history back to 1888 when it began as a small lender from a village in Kerala. Muthoot Finance Ltd sanctions loans only against pledge of gold ornaments. It is a leader in Indias gold loan and finance market. Besides financing gold transactions, Muthoot Finance Ltd offers foreign exchange services, money transfers, wealth management services, travel, and tourism services. Gold coins are also sold at Muthoot Finance Branches. The company has its headquarters in Kerala, India, and operates over 4,400 branches throughout the country. It is also the parent company of Muthoot Housing Finance (India) Ltd, which offers home loans.','1888-06-11',0);
/*!40000 ALTER TABLE "tbl_company" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_companytype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_companytype" (
  "companytype_id" int(11) NOT NULL AUTO_INCREMENT,
  "companytype_name" varchar(50) NOT NULL,
  PRIMARY KEY ("companytype_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_companytype'
#

LOCK TABLES "tbl_companytype" WRITE;
/*!40000 ALTER TABLE "tbl_companytype" DISABLE KEYS;*/
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(2,'Pharmaceuticals');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(3,'Software & Services');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(4,'Chemicals and Petrochemicals');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(5,'Automobiles & Auto Components');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(6,'Construction & Engineering');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(7,' Financial Services');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(8,'Food & Beverages');
REPLACE INTO "tbl_companytype" ("companytype_id", "companytype_name") VALUES
	(9,'Textiles, Apparels & Accessories');
/*!40000 ALTER TABLE "tbl_companytype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_course'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_course" (
  "course_id" int(11) NOT NULL AUTO_INCREMENT,
  "coursetype_id" int(11) DEFAULT NULL,
  "course_name" varchar(50) NOT NULL,
  "course_duration" varchar(50) NOT NULL,
  "company_id" int(11) DEFAULT NULL,
  PRIMARY KEY ("course_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_course'
#

LOCK TABLES "tbl_course" WRITE;
/*!40000 ALTER TABLE "tbl_course" DISABLE KEYS;*/
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(3,3,'Python','67 hrs',5);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(4,3,'React Js','80 Hrs',5);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(5,3,'React Js','80 Hrs',6);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(6,1,'Client Management','20 hrs',6);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(7,3,'Angular Js','2 Months',3);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(8,3,'','2 Months',3);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(9,5,'','6 Months',7);
REPLACE INTO "tbl_course" ("course_id", "coursetype_id", "course_name", "course_duration", "company_id") VALUES
	(10,3,'','5 months',6);
/*!40000 ALTER TABLE "tbl_course" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_coursetype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_coursetype" (
  "coursetype_id" int(11) NOT NULL AUTO_INCREMENT,
  "coursetype_name" varchar(50) NOT NULL,
  PRIMARY KEY ("coursetype_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_coursetype'
#

LOCK TABLES "tbl_coursetype" WRITE;
/*!40000 ALTER TABLE "tbl_coursetype" DISABLE KEYS;*/
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(1,'Marketing');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(3,'Web Development');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(4,'Media & Communications');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(5,'Data analysis');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(6,'Human Resources');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(7,'Health Care');
REPLACE INTO "tbl_coursetype" ("coursetype_id", "coursetype_name") VALUES
	(8,'IT Support');
/*!40000 ALTER TABLE "tbl_coursetype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(11) NOT NULL AUTO_INCREMENT,
  "district_name" varchar(50) NOT NULL,
  "state_id" int(10) unsigned DEFAULT NULL,
  PRIMARY KEY ("district_id")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(1,'Ernakulam','2');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(3,'Mumbai','5');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(4,'Trivandrum','2');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(5,'Hydrabad','6');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(6,'Chennai','4');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(7,'Kolkata','7');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(8,'White Field','3');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(9,'Banglore','3');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(10,'Idukki','2');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(11,'Kottayam','2');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(12,'Banglore','9');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(13,'New Delhi','8');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(14,'Muzaffarpur','11');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(11) NOT NULL AUTO_INCREMENT,
  "feedback_content" varchar(500) NOT NULL,
  "student_id" int(11) DEFAULT '0',
  "company_id" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("feedback_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(5,'This site is awesome. Smooth interface design makes the student to understand the functionality easily.',2,0);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(7,'My internship experience was amazing! I did not know what to expect going into this online internship, but it went more smoothly than I had imagined. Despite the big time difference between Toronto and India, the meetings that I could not attend in-person were recorded for me.',3,0);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(8,'In fact, one of the worst things a business can do is ignore their online reviews and social posts. As easy as it is to make a mistake when managing a business’s online reputation, it can also be easy to recover if you monitor the online reviews properly.',0,3);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(9,'While it can be easy for a company to take negative online reviews to heart, it is important to recognize that website reviews are constructive feedback. Whether they''re on your website or the best review sites, all in all, online reviews are actually valuable feedback! ',0,4);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(10,'My internship placement was provided through a non-profit organization, which works to support community development in disadvantaged neighborhoods in and around Cusco. Their principal project was an after-school program in Tankarpata. ',4,0);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(11,'Users can leave online reviews for a business easily and simply. The less friction involved in the business review process, the easier it is to get more reviews. Getting online reviews through a business’s Google Business Profile account is a great place to start.  ',0,10);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_content", "student_id", "company_id") VALUES
	(12,'For companies that do any amount of e-commerce, Amazon is a key source of information. While Amazon as a business review website is more targeted and fitting for Amazon marketplace partners, it is a worthy site to note, especially for retailers about what customers like about certain products and how the service aspect of transactions was handled. ',0,6);
/*!40000 ALTER TABLE "tbl_feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_intership'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_intership" (
  "internship_id" int(11) NOT NULL AUTO_INCREMENT,
  "position_id" int(11) DEFAULT NULL,
  "title" varchar(50) DEFAULT NULL,
  "company_id" int(11) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL,
  "internship_regfee" varchar(50) NOT NULL,
  "internship_amount" varchar(50) NOT NULL,
  "openings" varchar(50) DEFAULT NULL,
  "internship_details" varchar(500) NOT NULL,
  PRIMARY KEY ("internship_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_intership'
#

LOCK TABLES "tbl_intership" WRITE;
/*!40000 ALTER TABLE "tbl_intership" DISABLE KEYS;*/
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(7,1,'Angular Js',3,'2022-09-01','2022-11-30','1500','7500','50','Anyone with basic knowledge in Js can apply.                                                                          
                                                                            ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(8,1,'React Js',3,'2022-09-01','2022-12-30','500','15000','40','Those who are interested can apply.                                                                               
                                                                            ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(9,2,'System Analyst Intern',4,'2022-07-01','2023-01-31','500','7500','10','Any one with Bca or equavalant qualifications can apply.                                                                          
                                                                            ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(10,1,'Asp.net Intern',8,'2023-01-02','2023-06-26','500','Free','25','Apply Before Aug 30, 2022.
                                                                      
                                                                                                                                      ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(11,5,'Accountant Intern',10,'2022-09-01','2022-12-30','750','Free','5','Students with B.com or equavalent qualification can apply.                                                                                
                                                                            ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(12,3,'Project Manager Trainne',3,'2022-10-17','2022-11-30','500','3500','15','Those who are interested can apply.                                                                               
                                                                            ');
REPLACE INTO "tbl_intership" ("internship_id", "position_id", "title", "company_id", "from_date", "to_date", "internship_regfee", "internship_amount", "openings", "internship_details") VALUES
	(13,7,'Cloud System Engineer Intern',6,'2022-11-01','2023-03-31','500','1500','10','Interested candidates with qualification can apply                                                                       
                                                                            ');
/*!40000 ALTER TABLE "tbl_intership" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_makerequest'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_makerequest" (
  "makerequest_id" int(11) NOT NULL AUTO_INCREMENT,
  "company_id" int(11) NOT NULL,
  "company_request" varchar(500) DEFAULT 'Nothing',
  "admin_rply" varchar(500) DEFAULT 'Nothing',
  "company_request_date" date DEFAULT NULL,
  "admin_rply_date" varchar(50) DEFAULT '0',
  "isactive" int(11) DEFAULT '0',
  PRIMARY KEY ("makerequest_id")
) AUTO_INCREMENT=122;



#
# Dumping data for table 'tbl_makerequest'
#

LOCK TABLES "tbl_makerequest" WRITE;
/*!40000 ALTER TABLE "tbl_makerequest" DISABLE KEYS;*/
REPLACE INTO "tbl_makerequest" ("makerequest_id", "company_id", "company_request", "admin_rply", "company_request_date", "admin_rply_date", "isactive") VALUES
	(16,3,'Hi Inportal Team,
Please Place:Thodupuzha
District:Idukki
State:Kerala','done','2022-10-01','2022-10-01',1);
REPLACE INTO "tbl_makerequest" ("makerequest_id", "company_id", "company_request", "admin_rply", "company_request_date", "admin_rply_date", "isactive") VALUES
	(119,4,'Hi Inportal Team,
Please add Associate DevOps Engineer under web development','will be added','2022-10-01','2022-10-01',1);
REPLACE INTO "tbl_makerequest" ("makerequest_id", "company_id", "company_request", "admin_rply", "company_request_date", "admin_rply_date", "isactive") VALUES
	(120,4,'Hi InPortal','Nothing','2022-10-01','0',0);
REPLACE INTO "tbl_makerequest" ("makerequest_id", "company_id", "company_request", "admin_rply", "company_request_date", "admin_rply_date", "isactive") VALUES
	(121,6,'Please add Cloud system engineer under IT sector','ok','2022-10-03','2022-10-03',1);
/*!40000 ALTER TABLE "tbl_makerequest" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(11) NOT NULL AUTO_INCREMENT,
  "place_name" varchar(50) NOT NULL,
  "district_id" int(11) DEFAULT NULL,
  PRIMARY KEY ("place_id")
) AUTO_INCREMENT=19;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(1,'Muvattupuzha',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(2,'Dharavi',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(5,'Technopark',4);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(6,'InfoPark',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(7,'Thodupuzha',10);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(8,'Kothattukulam',11);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(9,'Electronic City',12);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(10,'White Field',12);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(11,'Andheri',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(12,'Naga',12);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(13,'Connaught Place',13);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(14,'Vile Parle',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(15,'Musahri',14);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(16,'Kaloor',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(17,'Lower Parel',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(18,'Kochi',1);
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_position'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_position" (
  "position_id" int(50) NOT NULL AUTO_INCREMENT,
  "position_name" varchar(50) DEFAULT NULL,
  "sector_id" int(11) NOT NULL,
  PRIMARY KEY ("position_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_position'
#

LOCK TABLES "tbl_position" WRITE;
/*!40000 ALTER TABLE "tbl_position" DISABLE KEYS;*/
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(1,'Web developer',1);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(2,'System Analyst',1);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(3,'Project manager',1);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(4,'Database Administrator',1);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(5,'Accountant',3);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(6,'Medical assistant',4);
REPLACE INTO "tbl_position" ("position_id", "position_name", "sector_id") VALUES
	(7,'Cloud system engineer',1);
/*!40000 ALTER TABLE "tbl_position" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_request'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_request" (
  "request_id" int(11) NOT NULL AUTO_INCREMENT,
  "internship_id" int(11) DEFAULT NULL,
  "student_id" int(11) DEFAULT NULL,
  "request_date" date NOT NULL,
  "request_status" varchar(50) DEFAULT '0',
  "request_reply" varchar(50) DEFAULT 'Not Yet',
  "request_replydate" date DEFAULT '0000-00-00',
  "request_active" int(11) DEFAULT '0',
  "payment_status" int(11) DEFAULT '0',
  PRIMARY KEY ("request_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_request'
#

LOCK TABLES "tbl_request" WRITE;
/*!40000 ALTER TABLE "tbl_request" DISABLE KEYS;*/
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(5,8,2,'2022-08-23','1','Verified','0000-00-00',1,1);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(6,9,2,'2022-08-23','1','Not Yet','0000-00-00',0,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(7,7,3,'2022-08-24','1','Verified','0000-00-00',0,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(8,10,2,'2022-08-25','0','Not Yet','0000-00-00',0,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(9,8,3,'2022-08-25','1','Verified','0000-00-00',1,1);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(10,12,3,'2022-08-31','1','Verified','0000-00-00',0,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(11,9,4,'2022-09-21','1','Verified','0000-00-00',1,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(14,12,4,'2022-09-26','0','Not Yet','0000-00-00',0,0);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(15,12,2,'2022-09-27','1','Verified','0000-00-00',1,1);
REPLACE INTO "tbl_request" ("request_id", "internship_id", "student_id", "request_date", "request_status", "request_reply", "request_replydate", "request_active", "payment_status") VALUES
	(16,13,5,'2022-10-03','1','Verified','0000-00-00',1,1);
/*!40000 ALTER TABLE "tbl_request" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_resume'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_resume" (
  "resume_id" int(11) NOT NULL AUTO_INCREMENT,
  "student_id" int(11) DEFAULT NULL,
  "image" varchar(50) DEFAULT NULL,
  "name" varchar(50) DEFAULT NULL,
  "title" varchar(50) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "contact" varchar(50) DEFAULT NULL,
  "website" varchar(50) DEFAULT NULL,
  "linkedin" varchar(100) DEFAULT NULL,
  "github" varchar(100) DEFAULT NULL,
  "twitter" varchar(100) DEFAULT NULL,
  "objective" varchar(750) DEFAULT NULL,
  "graduation" varchar(50) DEFAULT NULL,
  "graduation_college" varchar(75) DEFAULT NULL,
  "graduation_university" varchar(50) DEFAULT NULL,
  "graduation_year" varchar(50) DEFAULT NULL,
  "post_graduation" varchar(50) DEFAULT NULL,
  "post_graduation_college" varchar(75) DEFAULT NULL,
  "post_graduation_university" varchar(75) DEFAULT NULL,
  "post_graduation_year" varchar(50) DEFAULT NULL,
  "language1" varchar(50) DEFAULT NULL,
  "language2" varchar(50) DEFAULT NULL,
  "language3" varchar(50) DEFAULT NULL,
  "language4" varchar(50) DEFAULT NULL,
  "interest1" varchar(50) DEFAULT NULL,
  "interest2" varchar(50) DEFAULT NULL,
  "interest3" varchar(50) DEFAULT NULL,
  "interest4" varchar(50) DEFAULT NULL,
  "project_title" varchar(50) DEFAULT NULL,
  "project_des" varchar(1000) DEFAULT NULL,
  "project2_title" varchar(50) DEFAULT NULL,
  "project2_des" varchar(1000) DEFAULT NULL,
  "internship_title" varchar(50) DEFAULT NULL,
  "internship_company" varchar(75) DEFAULT NULL,
  "internship_year" varchar(50) DEFAULT NULL,
  "internship_des" varchar(1000) DEFAULT NULL,
  "internship2_title" varchar(50) DEFAULT NULL,
  "internship2_company" varchar(50) DEFAULT NULL,
  "internship2_year" varchar(50) DEFAULT NULL,
  "internship2_des" varchar(1000) DEFAULT NULL,
  "certification1" varchar(500) DEFAULT NULL,
  "certification2" varchar(500) DEFAULT NULL,
  "certification3" varchar(500) DEFAULT NULL,
  "skill1" varchar(50) DEFAULT NULL,
  "p1" varchar(50) DEFAULT NULL,
  "skill2" varchar(50) DEFAULT NULL,
  "p2" varchar(50) DEFAULT NULL,
  "skill3" varchar(50) DEFAULT NULL,
  "p3" varchar(50) DEFAULT NULL,
  "skill4" varchar(50) DEFAULT NULL,
  "p4" varchar(50) DEFAULT NULL,
  "skill5" varchar(50) DEFAULT NULL,
  "p5" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("resume_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_resume'
#

LOCK TABLES "tbl_resume" WRITE;
/*!40000 ALTER TABLE "tbl_resume" DISABLE KEYS;*/
REPLACE INTO "tbl_resume" ("resume_id", "student_id", "image", "name", "title", "email", "contact", "website", "linkedin", "github", "twitter", "objective", "graduation", "graduation_college", "graduation_university", "graduation_year", "post_graduation", "post_graduation_college", "post_graduation_university", "post_graduation_year", "language1", "language2", "language3", "language4", "interest1", "interest2", "interest3", "interest4", "project_title", "project_des", "project2_title", "project2_des", "internship_title", "internship_company", "internship_year", "internship_des", "internship2_title", "internship2_company", "internship2_year", "internship2_des", "certification1", "certification2", "certification3", "skill1", "p1", "skill2", "p2", "skill3", "p3", "skill4", "p4", "skill5", "p5") VALUES
	(16,2,'resume_photo_1383.jpg','Georgekutty CL','Mca Student','mca19_2209@santhigiri.com','8848753040','www.george.com','www.linkedin.com/in/georgekutty-cl-9ab152199','https://github.com/georgekuttycl','https://twitter.com/GeorgekuttyLora','To have a growth-oriented and challenging career at MCA, where 
I can contribute my knowledge and skills to the organization and 
improve through continuous study and teamwork.','Bsc.Mathematics','Newman College Thodupuzha','Mg university','2016-2019','MCA','Santhigiri College of Computer Sciences','Mg university','2019-2022','English','Malayalam','Tamil','Hindi','Reading','Trading','Cricket','Travel','Parish Automation','The â??Parish Automationâ?? is a client-work website for 
managing parish activities. The main objective of 
developing the Parish Automation application is to help 
Parish Vicar by providing all kinds of facilities for managing 
the families, organizations and provide parish hall booking.
Front End: Asp.net (Entity Framework), Back End: MySql
','InPortal','InPortal is a dynamic application which enables the student to find and apply for internship 
programs offered by different companies. Through this simple application the students shall be able to view theavailable positions for internship. It has three types of userâ??s admin, company and student. The 
student can log into the system and apply for internship positions. It also allows different
companies to register their internship details.
Front End:HTML5,Css3,Js & Back End:Jsp','Web developer intern','Experion Technologies','2022','Experion Technologies is a 14+ year-old IT solutions & services company. In a short span of time, our products and custom applications have served over 300 customers across 32 countries. Our customers include some of the worldâ??s largest corporations as well as some of the fastest-growing early-stage companies. We have offices/ direct presence in the United States, the United Kingdom, Germany, Switzerland, Netherlands, Middle East, India, Australia, and New Zealand.','Database Administrator Intern','Nest Digital','2020','NeST Digital is the software arm of the globally trusted NeST Group of companies. We combine our Specialized Manufacturing Services, Engineering Design and Software Services under one roof to provide transformative turnkey solutions to customers.','Successfully completed an online course in â??Big Data, 
Artificial Intelligence and Ethicsâ?? from the University of 
California.
','Effectively completed a 1-month add-on course on â??Angular 
Level 1â?? and a micro-project on it.','Successfully completed an online course in â??Google IT 
Supportâ?? from Google.','HTML','75','CSS','75','JAVA','60','C','65','PHP','52');
/*!40000 ALTER TABLE "tbl_resume" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_review'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_review" (
  "review_id" int(10) NOT NULL AUTO_INCREMENT,
  "review_datetime" datetime DEFAULT NULL,
  "user_name" varchar(500) DEFAULT '0',
  "user_rating" int(10) unsigned DEFAULT NULL,
  "user_review" varchar(150) DEFAULT NULL,
  "internship_id" int(10) DEFAULT NULL,
  PRIMARY KEY ("review_id"),
  UNIQUE KEY "review_id" ("review_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_review'
#

LOCK TABLES "tbl_review" WRITE;
/*!40000 ALTER TABLE "tbl_review" DISABLE KEYS;*/
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(3,'2022-09-02 15:22:20','Georgekutty','4','Nice',8);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(4,'2022-09-02 15:28:09','Vyshakh','5','10ML adicha set course',8);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(5,'2022-09-02 15:39:18','Kosaksipasapse','3','Kosaksipasapse',8);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(6,'2022-09-15 14:03:05','Goutham R','3','Had a wonderful experience',8);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(7,'2022-09-27 10:22:37','Georgekutty','4','kjklkj',12);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(8,'2022-10-03 13:45:55','Milan','5','Awesome Internship',13);
REPLACE INTO "tbl_review" ("review_id", "review_datetime", "user_name", "user_rating", "user_review", "internship_id") VALUES
	(9,'2022-10-03 13:46:22','George','3','Average intenship experience',13);
/*!40000 ALTER TABLE "tbl_review" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_sector'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_sector" (
  "sector_id" int(11) NOT NULL AUTO_INCREMENT,
  "sector_name" varchar(50) NOT NULL,
  PRIMARY KEY ("sector_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_sector'
#

LOCK TABLES "tbl_sector" WRITE;
/*!40000 ALTER TABLE "tbl_sector" DISABLE KEYS;*/
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(1,'Information Technology');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(3,'Financials');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(4,'Health Care');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(5,'Consumer Discretionary');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(6,'Communication Services');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(7,'Industrials');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(8,'Consumer Staples');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(9,'Energy');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(10,'Utilities');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(11,'Real Estate');
REPLACE INTO "tbl_sector" ("sector_id", "sector_name") VALUES
	(12,'Materials');
/*!40000 ALTER TABLE "tbl_sector" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_state" (
  "state_id" int(11) NOT NULL AUTO_INCREMENT,
  "state_name" varchar(50) NOT NULL,
  PRIMARY KEY ("state_id")
) AUTO_INCREMENT=12;



#
# Dumping data for table 'tbl_state'
#

LOCK TABLES "tbl_state" WRITE;
/*!40000 ALTER TABLE "tbl_state" DISABLE KEYS;*/
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(2,'Kerala');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(4,'Tamil Nadu');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(5,'Maharashtra');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(6,'Telugana');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(7,'West Bengal');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(8,'Haryana');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(9,'Karanataka');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(10,'Andhra Pradesh');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(11,'Bihar');
/*!40000 ALTER TABLE "tbl_state" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_student'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_student" (
  "student_id" int(11) NOT NULL AUTO_INCREMENT,
  "student_name" varchar(50) NOT NULL,
  "student_address" varchar(200) NOT NULL,
  "student_contact" varchar(50) NOT NULL,
  "student_email" varchar(50) NOT NULL,
  "student_gender" varchar(50) NOT NULL,
  "place_id" int(11) DEFAULT NULL,
  "student_location" varchar(50) NOT NULL,
  "student_password" varchar(50) NOT NULL,
  "student_photo" varchar(100) NOT NULL,
  "student_proof" varchar(100) DEFAULT NULL,
  "student_doj" date NOT NULL,
  "student_status" int(11) DEFAULT '0',
  "isactive" int(11) DEFAULT '0',
  PRIMARY KEY ("student_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_student'
#

LOCK TABLES "tbl_student" WRITE;
/*!40000 ALTER TABLE "tbl_student" DISABLE KEYS;*/
REPLACE INTO "tbl_student" ("student_id", "student_name", "student_address", "student_contact", "student_email", "student_gender", "place_id", "student_location", "student_password", "student_photo", "student_proof", "student_doj", "student_status", "isactive") VALUES
	(2,'Georgekutty CL','sgfhdgnvdf','43567894567','georgekuttycl@gmail.com','Male',7,'Karimannoor','12','student_photo_1821.jpg','student_proof_1415.jpg','2022-08-15',0,0);
REPLACE INTO "tbl_student" ("student_id", "student_name", "student_address", "student_contact", "student_email", "student_gender", "place_id", "student_location", "student_password", "student_photo", "student_proof", "student_doj", "student_status", "isactive") VALUES
	(3,'Vysakh P','Paruthiyamkunnel House
Kuravalagad PO
Thottuva','9074585809','vysakhp17@gmail.com','Male',8,'Kuravalagad','root','student_photo_1408.jpeg','student_proof_1809.jpeg','2022-08-16',0,0);
REPLACE INTO "tbl_student" ("student_id", "student_name", "student_address", "student_contact", "student_email", "student_gender", "place_id", "student_location", "student_password", "student_photo", "student_proof", "student_doj", "student_status", "isactive") VALUES
	(4,'ThomasKutty CL','Choorakunnel House Koduvely Po
Karimannoor 685581','8985783409','thomask882@gmail.com','Male',7,'Koduvely','thomask882','student_photo_1271.jpg','student_proof_1888.jpg','2022-08-31',0,0);
REPLACE INTO "tbl_student" ("student_id", "student_name", "student_address", "student_contact", "student_email", "student_gender", "place_id", "student_location", "student_password", "student_photo", "student_proof", "student_doj", "student_status", "isactive") VALUES
	(5,'Milan Shaju','Padinjarayil (H)
Koduvely Po
Kodikulam 585582','9074970749','milanshaju2001@gmail.com','Male',7,'Kodikulam','milan123','student_photo_1616.jpg','student_proof_1593.pdf','2022-10-03',0,0);
/*!40000 ALTER TABLE "tbl_student" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_syllabus'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_syllabus" (
  "syllabus_id" int(11) NOT NULL AUTO_INCREMENT,
  "internship_id" int(11) DEFAULT NULL,
  "syllabus_material" varchar(100) NOT NULL,
  "syllabus_tumbnail" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("syllabus_id")
) AUTO_INCREMENT=37;



#
# Dumping data for table 'tbl_syllabus'
#

LOCK TABLES "tbl_syllabus" WRITE;
/*!40000 ALTER TABLE "tbl_syllabus" DISABLE KEYS;*/
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(29,6,'syllabus_pdf_1616.pdf',NULL);
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(30,7,'syllabus_pdf_1170.pdf',NULL);
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(31,10,'syllabus_pdf_1913.docx',NULL);
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(33,8,'syllabus_pdf_1516.mp4','syllabus_pdf_Tumb2037.jpg');
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(34,9,'syllabus_pdf_1522.mp4','syllabus_pdf_Tumb1434.jpg');
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(35,12,'syllabus_pdf_1709.mp4','syllabus_pdf_Tumb1918.jpg');
REPLACE INTO "tbl_syllabus" ("syllabus_id", "internship_id", "syllabus_material", "syllabus_tumbnail") VALUES
	(36,13,'syllabus_pdf_1027.mp4','syllabus_pdf_Tumb1976.jpg');
/*!40000 ALTER TABLE "tbl_syllabus" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
