-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.27-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cs6354_development
--

CREATE DATABASE IF NOT EXISTS cs6354_development;
USE cs6354_development;

--
-- Definition of table `ambulances`
--

DROP TABLE IF EXISTS `ambulances`;
CREATE TABLE `ambulances` (
  `id` int(11) NOT NULL auto_increment,
  `registration_number` int(11) unsigned NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `availability_id` int(11) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `incident_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_availability` (`availability_id`),
  KEY `FK_incident` (`incident_id`),
  CONSTRAINT `FK_availability` FOREIGN KEY (`availability_id`) REFERENCES `availabilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_incident` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ambulances`
--

/*!40000 ALTER TABLE `ambulances` DISABLE KEYS */;
INSERT INTO `ambulances` (`id`,`registration_number`,`driver_name`,`location`,`availability_id`,`created_at`,`updated_at`,`incident_id`) VALUES 
 (1,1234,'John Smith','3000 Connection Dr. Irving, TX',1,'2009-07-12 23:22:46','2009-07-12 23:40:59',1),
 (2,4321,'Carl Douglass','3001 Connection Dr. Irving, TX',1,'2009-07-12 23:22:59','2009-07-12 23:49:03',NULL),
 (3,5678,'Joe Schmoe','3002 Connection Dr. Irving TX',2,'2009-07-12 23:23:24','2009-07-12 23:23:24',NULL);
/*!40000 ALTER TABLE `ambulances` ENABLE KEYS */;


--
-- Definition of table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
CREATE TABLE `availabilities` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `availabilities`
--

/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` (`id`,`description`) VALUES 
 (1,'Active'),
 (2,'Inactive, temporary'),
 (3,'Inactive, permenant');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;


--
-- Definition of table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
CREATE TABLE `incidents` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `location` varchar(255) default NULL,
  `severity` int(11) default NULL,
  `description` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `number_patients` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incidents`
--

/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` (`id`,`location`,`severity`,`description`,`created_at`,`updated_at`,`number_patients`) VALUES 
 (1,'123 Fake St. Plano, TX',7,'Serious Fire','2009-07-12 23:24:08','2009-07-12 23:40:59',3),
 (2,'555 Fake St Plano, TX',9,'Plane Crash','2009-07-12 23:43:40','2009-07-12 23:46:47',99);
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;


--
-- Definition of table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_info`
--

/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` (`version`) VALUES 
 (1);
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
