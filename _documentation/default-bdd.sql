
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `dnsbl_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnsbl_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(41) NOT NULL,
  `flag` tinyint(3) DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blacklist` (`ip`,`flag`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=210248 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `yourls_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yourls_log` (
  `click_id` int(11) NOT NULL AUTO_INCREMENT,
  `click_time` datetime NOT NULL,
  `shorturl` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `referrer` varchar(200) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(41) NOT NULL,
  `country_code` char(2) NOT NULL,
  PRIMARY KEY (`click_id`),
  KEY `shorturl` (`shorturl`)
) ENGINE=InnoDB AUTO_INCREMENT=27502335 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `yourls_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yourls_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`option_id`,`option_name`),
  KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `yourls_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yourls_url` (
  `keyword` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `title` text CHARACTER SET utf8,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(41) NOT NULL,
  `clicks` int(10) unsigned NOT NULL,
  PRIMARY KEY (`keyword`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*!40000 ALTER TABLE `yourls_options` DISABLE KEYS */;
INSERT INTO `yourls_options` VALUES (1,'version','1.5'),(2,'db_version','482'),(3,'next_id','652814'),(4,'active_plugins','a:1:{i:0;s:26:\"hyphens-in-urls/plugin.php\";}'),(5,'dnsbl_init','1412243868'),(6,'ludo_blacklist_ip_liste','s:585:\"a:15:{i:0;s:27:\"88.119.139.72-88.119.139.72\";i:1;s:27:\"76.164.214.37-76.164.214.37\";i:2;s:27:\"91.236.75.102-91.236.75.102\";i:3;s:27:\"142.91.81.171-142.91.81.171\";i:4;s:23:\"69.12.0.0-69.12.255.255\";i:5;s:25:\"93.118.76.55-93.118.76.55\";i:6;s:27:\"77.97.229.111-77.97.229.111\";i:7;s:25:\"155.94.0.0-155.94.255.255\";i:8;s:25:\"69.12.72.123-69.12.72.123\";i:9;s:29:\"91.108.180.161-91.108.180.161\";i:10;s:25:\"91.207.5.186-91.207.5.186\";i:11;s:27:\"23.226.230.64-23.226.230.64\";i:12;s:29:\"78.232.115.206-78.232.115.206\";i:13;s:23:\"1.23.105.32-1.23.105.32\";i:14;s:27:\"192.77.254.26-192.77.254.26\";}\";')
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

