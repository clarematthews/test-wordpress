
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
DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-03-18 12:47:49','2016-03-18 12:47:49','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2016-03-18 12:47:49','2016-03-18 12:47:49','',0,'http://localhost:8888/?p=1',0,'post','',1),(2,1,'2016-03-18 12:47:49','2016-03-18 12:47:49','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2016-03-18 12:47:49','2016-03-18 12:47:49','',0,'http://localhost:8888/?page_id=2',0,'page','',0),(3,1,'2016-03-18 12:48:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-03-18 12:48:04','0000-00-00 00:00:00','',0,'http://localhost:8888/?p=3',0,'post','',0),(4,1,'2016-03-18 14:28:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-03-18 14:28:04','0000-00-00 00:00:00','',0,'http://localhost:8888/?page_id=4',0,'page','',0),(5,1,'2016-03-18 14:34:58','2016-03-18 14:34:58','','Sample Slider','','publish','closed','closed','','sample-slider','','','2016-03-18 14:34:58','2016-03-18 14:34:58','',0,'http://localhost:8888/2016/03/18/sample-slider/',0,'sa_slider','',0),(11,1,'2016-03-18 15:21:49','2016-03-18 15:21:49','a:0:{}','polylang_mo_2','','private','closed','closed','','polylang_mo_2','','','2016-03-18 15:21:49','2016-03-18 15:21:49','',0,'http://localhost:8888/?post_type=polylang_mo&p=11',0,'polylang_mo','',0),(12,1,'2016-03-18 15:22:16','2016-03-18 15:22:16','a:0:{}','polylang_mo_5','','private','closed','closed','','polylang_mo_5','','','2016-03-18 15:22:16','2016-03-18 15:22:16','',0,'http://localhost:8888/?post_type=polylang_mo&p=12',0,'polylang_mo','',0),(15,1,'2016-03-18 15:23:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2016-03-18 15:23:59','0000-00-00 00:00:00','',0,'http://localhost:8888/?page_id=15',0,'page','',0),(16,1,'2016-03-18 15:27:27','2016-03-18 15:27:27','[slide-anything id=\'5\']','home','','trash','closed','closed','','home-2','','','2016-03-18 15:47:32','2016-03-18 15:47:32','',0,'http://localhost:8888/?page_id=16',0,'page','',0),(17,1,'2016-03-18 15:25:11','2016-03-18 15:25:11','','home','','inherit','closed','closed','','16-revision-v1','','','2016-03-18 15:25:11','2016-03-18 15:25:11','',16,'http://localhost:8888/2016/03/18/16-revision-v1/',0,'revision','',0),(18,1,'2016-03-18 15:26:18','2016-03-18 15:26:18','[slide-anything id=\'5\']','home','','inherit','closed','closed','','16-revision-v1','','','2016-03-18 15:26:18','2016-03-18 15:26:18','',16,'http://localhost:8888/2016/03/18/16-revision-v1/',0,'revision','',0),(20,1,'2016-03-18 15:42:24','2016-03-18 15:42:24','','Language switcher','','publish','closed','closed','','language-switcher','','','2016-03-18 16:00:38','2016-03-18 16:00:38','',0,'http://localhost:8888/?p=20',1,'nav_menu_item','',0),(21,1,'2016-03-18 15:47:58','2016-03-18 15:47:58','Added some text....\r\n[slide-anything id=\'5\']','Home','','publish','closed','closed','','home','','','2016-03-21 10:24:59','2016-03-21 10:24:59','',0,'http://localhost:8888/?page_id=21',0,'page','',0),(22,1,'2016-03-18 15:47:56','2016-03-18 15:47:56','[slide-anything id=\'5\']','home','','inherit','closed','closed','','21-revision-v1','','','2016-03-18 15:47:56','2016-03-18 15:47:56','',21,'http://localhost:8888/2016/03/18/21-revision-v1/',0,'revision','',0),(23,1,'2016-03-18 15:49:03','2016-03-18 15:49:03','[slide-anything id=\'5\']','haus','','publish','closed','closed','','haus','','','2016-03-18 15:49:03','2016-03-18 15:49:03','',0,'http://localhost:8888/?page_id=23',0,'page','',0),(24,1,'2016-03-18 15:49:00','2016-03-18 15:49:00','[slide-anything id=\'5\']','haus','','inherit','closed','closed','','23-revision-v1','','','2016-03-18 15:49:00','2016-03-18 15:49:00','',23,'http://localhost:8888/2016/03/18/23-revision-v1/',0,'revision','',0),(25,1,'2016-03-21 10:21:13','2016-03-21 10:21:13','[slide-anything id=\'5\']','Home','','inherit','closed','closed','','21-revision-v1','','','2016-03-21 10:21:13','2016-03-21 10:21:13','',21,'http://localhost:8888/2016/03/21/21-revision-v1/',0,'revision','',0),(26,1,'2016-03-21 10:24:59','2016-03-21 10:24:59','Added some text....\r\n[slide-anything id=\'5\']','Home','','inherit','closed','closed','','21-revision-v1','','','2016-03-21 10:24:59','2016-03-21 10:24:59','',21,'http://localhost:8888/2016/03/21/21-revision-v1/',0,'revision','',0),(27,1,'2016-03-21 10:49:43','2016-03-21 10:49:43','','Additional page','','publish','closed','closed','','additional-page','','','2016-03-21 10:49:43','2016-03-21 10:49:43','',0,'http://localhost:8888/?page_id=27',0,'page','',0),(28,1,'2016-03-21 10:29:18','2016-03-21 10:29:18','','Additional page','','inherit','closed','closed','','27-revision-v1','','','2016-03-21 10:29:18','2016-03-21 10:29:18','',27,'http://localhost:8888/2016/03/21/27-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

