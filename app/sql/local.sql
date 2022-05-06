-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-10-20 17:45:04','2020-10-20 17:45:04','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dhananjaysingh9870ds@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=36&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:31:\"wp-migrate-db/wp-migrate-db.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','38','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','36','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1618767903','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:96:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:14:\"delete_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:14:\"campus_manager\";a:2:{s:4:\"name\";s:14:\"Campus Manager\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:14:\"delete_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1651823106;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1651859105;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651859106;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1651859138;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651859141;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652291105;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','ZX;54xsAjH;>(mKUEMB90@8@Iy8%8H91m_z/]y_Gg^{Ety{_mIa5%,1%tgGrH{9C','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','s%Zx`YJr>$IRxN+H@R=Lg_dDD)8B6zi8[5CY],gA~]cqR]IIg<HJdp*uE5#l?3TT','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651821828;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1603216862;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (146,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (147,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"headerMenuLocation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (148,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (187,'_transient_health-check-site-status-result','{\"good\":9,\"recommended\":9,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (203,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (217,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (239,'recovery_mode_email_last_sent','1604339301','yes');
INSERT INTO `wp_options` VALUES (294,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (295,'acf_version','5.9.1','yes');
INSERT INTO `wp_options` VALUES (369,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (404,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"dhananjaysingh9870ds@gmail.com\";s:7:\"version\";s:5:\"5.5.9\";s:9:\"timestamp\";i:1651821843;}','no');
INSERT INTO `wp_options` VALUES (464,'members_addons_migrated','1','yes');
INSERT INTO `wp_options` VALUES (465,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (466,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (470,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (471,'new_admin_email','dhananjaysingh9870ds@gmail.com','yes');
INSERT INTO `wp_options` VALUES (525,'wpmdb_settings','a:13:{s:3:\"key\";s:40:\"Y4KLXJoxlxfCd3rpJnBmQnuS1Wb9bUFKtD8Y++0i\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}','no');
INSERT INTO `wp_options` VALUES (526,'wpmdb_schema_version','2','no');
INSERT INTO `wp_options` VALUES (545,'_site_transient_timeout_theme_roots','1651823607','no');
INSERT INTO `wp_options` VALUES (546,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (547,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1652426608','no');
INSERT INTO `wp_options` VALUES (548,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (551,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.4-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.4\";s:7:\"version\";s:5:\"5.8.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.6\";s:7:\"version\";s:5:\"5.7.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.8\";s:7:\"version\";s:5:\"5.6.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1651821842;s:15:\"version_checked\";s:5:\"5.5.9\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (552,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651821843;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:19:\"members/members.php\";s:5:\"3.1.3\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:6:\"1.0.16\";}s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2503334\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2503334\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.7.6\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-migrate-db.2.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1603259833:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1603564830:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1603231932:1');
INSERT INTO `wp_postmeta` VALUES (14,14,'_edit_lock','1603886446:1');
INSERT INTO `wp_postmeta` VALUES (15,3,'_edit_lock','1603309869:1');
INSERT INTO `wp_postmeta` VALUES (16,18,'_edit_lock','1603340084:1');
INSERT INTO `wp_postmeta` VALUES (17,20,'_edit_lock','1603311199:1');
INSERT INTO `wp_postmeta` VALUES (18,23,'_edit_lock','1603311177:1');
INSERT INTO `wp_postmeta` VALUES (19,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (20,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (21,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (22,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (23,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (24,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (25,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (26,28,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (27,28,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (28,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (29,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,29,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (31,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (32,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,30,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (40,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,30,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (46,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,31,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (49,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,32,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (58,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (63,32,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (64,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,33,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (67,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (72,33,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (73,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (76,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,34,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (82,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (83,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (84,35,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (85,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (86,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (87,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (88,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (89,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,35,'_menu_item_orphaned','1603346425');
INSERT INTO `wp_postmeta` VALUES (91,36,'_edit_lock','1603545172:1');
INSERT INTO `wp_postmeta` VALUES (92,38,'_edit_lock','1603361903:1');
INSERT INTO `wp_postmeta` VALUES (93,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (94,42,'_edit_lock','1603718931:1');
INSERT INTO `wp_postmeta` VALUES (95,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (96,43,'_edit_lock','1603708753:1');
INSERT INTO `wp_postmeta` VALUES (97,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (98,44,'_edit_lock','1603708527:1');
INSERT INTO `wp_postmeta` VALUES (103,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (104,86,'_edit_lock','1604174906:1');
INSERT INTO `wp_postmeta` VALUES (106,44,'event_date','20201017');
INSERT INTO `wp_postmeta` VALUES (107,44,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (108,43,'event_date','20201013');
INSERT INTO `wp_postmeta` VALUES (109,43,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (110,42,'event_date','20201030');
INSERT INTO `wp_postmeta` VALUES (111,42,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (112,89,'_edit_lock','1603718897:1');
INSERT INTO `wp_postmeta` VALUES (113,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (114,89,'event_date','20201230');
INSERT INTO `wp_postmeta` VALUES (115,89,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (117,91,'_edit_lock','1603887184:1');
INSERT INTO `wp_postmeta` VALUES (118,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (119,91,'event_date','20201031');
INSERT INTO `wp_postmeta` VALUES (120,91,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (122,93,'_edit_lock','1603719123:1');
INSERT INTO `wp_postmeta` VALUES (124,96,'_edit_lock','1604243557:1');
INSERT INTO `wp_postmeta` VALUES (125,97,'_edit_lock','1604239392:1');
INSERT INTO `wp_postmeta` VALUES (126,98,'_edit_lock','1604217320:1');
INSERT INTO `wp_postmeta` VALUES (127,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (128,100,'_edit_lock','1604175017:1');
INSERT INTO `wp_postmeta` VALUES (129,91,'related_programs','a:2:{i:0;s:2:\"96\";i:1;s:2:\"98\";}');
INSERT INTO `wp_postmeta` VALUES (130,91,'_related_programs','field_5f9705ee6bba4');
INSERT INTO `wp_postmeta` VALUES (133,105,'_edit_lock','1604336605:1');
INSERT INTO `wp_postmeta` VALUES (134,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (135,105,'related_programs','a:2:{i:0;s:2:\"96\";i:1;s:2:\"97\";}');
INSERT INTO `wp_postmeta` VALUES (136,105,'_related_programs','field_5f9705ee6bba4');
INSERT INTO `wp_postmeta` VALUES (137,109,'_wp_attached_file','2020/10/idiscuss1.jpg');
INSERT INTO `wp_postmeta` VALUES (138,109,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2020/10/idiscuss1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"idiscuss1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"idiscuss1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"idiscuss1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"idiscuss1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"idiscuss1-1536x384.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"idiscuss1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"professorPotrait\";a:4:{s:4:\"file\";s:21:\"idiscuss1-480x250.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (139,105,'_thumbnail_id','109');
INSERT INTO `wp_postmeta` VALUES (140,110,'_edit_lock','1604336106:1');
INSERT INTO `wp_postmeta` VALUES (141,111,'_wp_attached_file','2020/10/idiscuss2.jpg');
INSERT INTO `wp_postmeta` VALUES (142,111,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2020/10/idiscuss2.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"idiscuss2-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"idiscuss2-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"idiscuss2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"idiscuss2-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"idiscuss2-1536x384.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"idiscuss2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"professorPotrait\";a:4:{s:4:\"file\";s:21:\"idiscuss2-480x250.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (143,110,'_thumbnail_id','111');
INSERT INTO `wp_postmeta` VALUES (144,110,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,110,'related_programs','a:1:{i:0;s:2:\"98\";}');
INSERT INTO `wp_postmeta` VALUES (146,110,'_related_programs','field_5f9705ee6bba4');
INSERT INTO `wp_postmeta` VALUES (147,112,'_edit_lock','1604335239:1');
INSERT INTO `wp_postmeta` VALUES (149,112,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (150,112,'related_programs','a:1:{i:0;s:2:\"96\";}');
INSERT INTO `wp_postmeta` VALUES (151,112,'_related_programs','field_5f9705ee6bba4');
INSERT INTO `wp_postmeta` VALUES (152,113,'_wp_attached_file','2020/10/pythonlogo.png');
INSERT INTO `wp_postmeta` VALUES (153,113,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2020/10/pythonlogo.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"pythonlogo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"pythonlogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"pythonlogo-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"professorPotrait\";a:4:{s:4:\"file\";s:22:\"pythonlogo-480x250.png\";s:5:\"width\";i:480;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:22:\"pythonlogo-768x350.png\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"126\";s:1:\"w\";s:3:\"350\";s:1:\"h\";s:16:\"81.6666666666664\";s:5:\"scale\";s:15:\"4.2857142857143\";}}}');
INSERT INTO `wp_postmeta` VALUES (154,112,'_thumbnail_id','111');
INSERT INTO `wp_postmeta` VALUES (155,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,114,'_edit_lock','1603876414:1');
INSERT INTO `wp_postmeta` VALUES (157,117,'_wp_attached_file','2020/10/idiscuss2-1.jpg');
INSERT INTO `wp_postmeta` VALUES (158,117,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2020/10/idiscuss2-1.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"idiscuss2-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"idiscuss2-1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"idiscuss2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"idiscuss2-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"idiscuss2-1-1536x384.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:23:\"idiscuss2-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"professorPotrait\";a:4:{s:4:\"file\";s:23:\"idiscuss2-1-480x250.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:24:\"idiscuss2-1-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (159,112,'page_banner_subtitle','The Master of Maths');
INSERT INTO `wp_postmeta` VALUES (160,112,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (161,112,'page_banner_background_image','117');
INSERT INTO `wp_postmeta` VALUES (162,112,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (163,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (164,14,'page_banner_subtitle','This is the Subtitle of About us');
INSERT INTO `wp_postmeta` VALUES (165,14,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (166,14,'page_banner_background_image','113');
INSERT INTO `wp_postmeta` VALUES (167,14,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (168,118,'page_banner_subtitle','This is the Subtitle of About us');
INSERT INTO `wp_postmeta` VALUES (169,118,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (170,118,'page_banner_background_image','113');
INSERT INTO `wp_postmeta` VALUES (171,118,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (172,119,'page_banner_subtitle','This is the Subtitle of About us');
INSERT INTO `wp_postmeta` VALUES (173,119,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (174,119,'page_banner_background_image','113');
INSERT INTO `wp_postmeta` VALUES (175,119,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (176,91,'page_banner_subtitle','python 2');
INSERT INTO `wp_postmeta` VALUES (177,91,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (178,91,'page_banner_background_image','113');
INSERT INTO `wp_postmeta` VALUES (179,91,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (180,120,'_edit_lock','1603897360:1');
INSERT INTO `wp_postmeta` VALUES (181,120,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (182,120,'page_banner_subtitle','The DOWNTOWN WWEST campus');
INSERT INTO `wp_postmeta` VALUES (183,120,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (184,120,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (185,120,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (186,121,'_edit_lock','1604239332:1');
INSERT INTO `wp_postmeta` VALUES (187,121,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (188,121,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (189,121,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (190,121,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (191,121,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (192,122,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,122,'_edit_lock','1603897381:1');
INSERT INTO `wp_postmeta` VALUES (194,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,124,'_edit_lock','1604217036:1');
INSERT INTO `wp_postmeta` VALUES (196,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (197,97,'main_body_content','biology 22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.');
INSERT INTO `wp_postmeta` VALUES (198,97,'_main_body_content','field_5f9e69022fbaa');
INSERT INTO `wp_postmeta` VALUES (199,97,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (200,97,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (201,97,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (202,97,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (203,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,98,'main_body_content','english 22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.');
INSERT INTO `wp_postmeta` VALUES (205,98,'_main_body_content','field_5f9e69022fbaa');
INSERT INTO `wp_postmeta` VALUES (206,98,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (207,98,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (208,98,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (209,98,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (210,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (211,96,'main_body_content','maths 22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.');
INSERT INTO `wp_postmeta` VALUES (212,96,'_main_body_content','field_5f9e69022fbaa');
INSERT INTO `wp_postmeta` VALUES (213,96,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (214,96,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (215,96,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (216,96,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (217,105,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (218,105,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (219,105,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (220,105,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (221,126,'_edit_lock','1604240700:1');
INSERT INTO `wp_postmeta` VALUES (222,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (223,126,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (224,126,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (225,126,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (226,126,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (227,127,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (228,127,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (229,127,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (230,127,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (231,129,'_edit_lock','1604248716:2');
INSERT INTO `wp_postmeta` VALUES (232,129,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (233,129,'event_date','20201130');
INSERT INTO `wp_postmeta` VALUES (234,129,'_event_date','field_5f96a4ce77f3e');
INSERT INTO `wp_postmeta` VALUES (235,129,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (236,129,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (237,129,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (238,129,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (239,129,'related_programs','a:1:{i:0;s:2:\"97\";}');
INSERT INTO `wp_postmeta` VALUES (240,129,'_related_programs','field_5f9705ee6bba4');
INSERT INTO `wp_postmeta` VALUES (242,131,'_edit_lock','1604298517:1');
INSERT INTO `wp_postmeta` VALUES (243,131,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,131,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (245,131,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (246,131,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (247,131,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (248,132,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (249,132,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (250,132,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (251,132,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (252,133,'_edit_lock','1604299763:1');
INSERT INTO `wp_postmeta` VALUES (253,133,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (254,133,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (255,133,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (256,133,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (257,133,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (258,134,'_edit_lock','1604299800:1');
INSERT INTO `wp_postmeta` VALUES (259,134,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (260,134,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (261,134,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (262,134,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (263,134,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (270,134,'_wp_old_slug','maths-notes__trashed');
INSERT INTO `wp_postmeta` VALUES (271,133,'_wp_old_slug','biology-notes__trashed');
INSERT INTO `wp_postmeta` VALUES (275,135,'_edit_lock','1604325139:1');
INSERT INTO `wp_postmeta` VALUES (279,137,'_edit_lock','1604326414:1');
INSERT INTO `wp_postmeta` VALUES (280,137,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (281,137,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (282,137,'_page_banner_subtitle','field_5f99365f6eacd');
INSERT INTO `wp_postmeta` VALUES (283,137,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (284,137,'_page_banner_background_image','field_5f99367b6eace');
INSERT INTO `wp_postmeta` VALUES (312,153,'_edit_lock','1604335167:1');
INSERT INTO `wp_postmeta` VALUES (313,153,'_edit_last','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-10-20 17:45:04','2020-10-20 17:45:04','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-10-20 17:45:04','2020-10-20 17:45:04','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-10-20 17:45:04','2020-10-20 17:45:04','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-10-20 17:45:04','2020-10-20 17:45:04','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-10-20 17:45:04','2020-10-20 17:45:04','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-10-21 06:00:09','2020-10-21 06:00:09','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-10-20 18:29:14','2020-10-20 18:29:14','<!-- wp:paragraph -->\n<p>The relationship between  and  was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced , a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on , providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2020-10-21 04:59:40','2020-10-21 04:59:40','',0,'http://fictional-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-10-20 18:29:14','2020-10-20 18:29:14','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor impedit aut sint magni eaque voluptates optio perferendis temporibus omnis. Totam inventore magni ipsam nulla sit ipsa suscipit, quibusdam eius sed. Lorem ipsum dolor sit amet consectetur adipisicing elit. Est veritatis sit eius asperiores aliquid, nemo iste dolorum neque molestiae laboriosam magnam aut a quaerat praesentium minus velit nisi, blanditiis rerum.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-10-20 18:29:14','2020-10-20 18:29:14','',5,'http://fictional-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-10-20 18:29:49','2020-10-20 18:29:49','<!-- wp:paragraph -->\n<p>THIS IS SECOND TEST POST    The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Second test post','this is all about the second test post you can get more info by clicking down','publish','open','open','','second-test-post','','','2020-10-24 18:40:21','2020-10-24 18:40:21','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-10-20 18:29:49','2020-10-20 18:29:49','<!-- wp:paragraph -->\n<p>THIS IS SECOND TEST POST    Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor impedit aut sint magni eaque voluptates optio perferendis temporibus omnis. Totam inventore magni ipsam nulla sit ipsa suscipit, quibusdam eius sed. Lorem ipsum dolor sit amet consectetur adipisicing elit. Est veritatis sit eius asperiores aliquid, nemo iste dolorum neque molestiae laboriosam magnam aut a quaerat praesentium minus velit nisi, blanditiis rerum.</p>\n<!-- /wp:paragraph -->','Second test post','','inherit','closed','closed','','7-revision-v1','','','2020-10-20 18:29:49','2020-10-20 18:29:49','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-10-20 18:53:27','2020-10-20 18:53:27','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi sed mollitia molestiae quas est corrupti aliquam a praesentium, sapiente, error iste. Beatae itaque totam labore consequuntur debitis distinctio! Atque, sit ipsa iste eaque deserunt culpa quo quas consequuntur rerum reprehenderit consequatur, ex earum. Aut laboriosam modi optio temporibus, mollitia consequatur. Recusandae quam itaque saepe quo.Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi sed mollitia molestiae quas est corrupti aliquam a praesentium, sapiente, error iste. Beatae itaque totam labore consequuntur debitis distinctio! Atque, sit ipsa iste eaque deserunt culpa quo quas consequuntur rerum reprehenderit consequatur, ex earum. Aut laboriosam modi optio temporibus, mollitia consequatur. Recusandae quam itaque saepe quo.</p>\n<!-- /wp:paragraph -->','Test page','','publish','closed','closed','','test-page','','','2020-10-20 18:53:27','2020-10-20 18:53:27','',0,'http://fictional-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-10-20 18:53:27','2020-10-20 18:53:27','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi sed mollitia molestiae quas est corrupti aliquam a praesentium, sapiente, error iste. Beatae itaque totam labore consequuntur debitis distinctio! Atque, sit ipsa iste eaque deserunt culpa quo quas consequuntur rerum reprehenderit consequatur, ex earum. Aut laboriosam modi optio temporibus, mollitia consequatur. Recusandae quam itaque saepe quo.Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi sed mollitia molestiae quas est corrupti aliquam a praesentium, sapiente, error iste. Beatae itaque totam labore consequuntur debitis distinctio! Atque, sit ipsa iste eaque deserunt culpa quo quas consequuntur rerum reprehenderit consequatur, ex earum. Aut laboriosam modi optio temporibus, mollitia consequatur. Recusandae quam itaque saepe quo.</p>\n<!-- /wp:paragraph -->','Test page','','inherit','closed','closed','','9-revision-v1','','','2020-10-20 18:53:27','2020-10-20 18:53:27','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-10-20 18:58:02','2020-10-20 18:58:02','<!-- wp:paragraph -->\n<p>Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Eligendi&nbsp;sed&nbsp;mollitia&nbsp;molestiae&nbsp;quas&nbsp;est&nbsp;corrupti&nbsp;aliquam&nbsp;a&nbsp;praesentium,&nbsp;sapiente,&nbsp;error&nbsp;iste.&nbsp;Beatae&nbsp;itaque&nbsp;totam&nbsp;labore&nbsp;consequuntur&nbsp;debitis&nbsp;distinctio!&nbsp;Atque,&nbsp;sit&nbsp;ipsa&nbsp;iste&nbsp;eaque&nbsp;deserunt&nbsp;culpa&nbsp;quo&nbsp;quas&nbsp;consequuntur&nbsp;rerum&nbsp;reprehenderit&nbsp;consequatur,&nbsp;ex&nbsp;earum.&nbsp;Aut&nbsp;laboriosam&nbsp;modi&nbsp;optio&nbsp;temporibus,&nbsp;mollitia&nbsp;consequatur.&nbsp;Recusandae&nbsp;quam&nbsp;itaque&nbsp;saepe&nbsp;quo.Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Eligendi&nbsp;sed&nbsp;mollitia&nbsp;molestiae&nbsp;quas&nbsp;est&nbsp;corrupti&nbsp;aliquam&nbsp;a&nbsp;praesentium,&nbsp;sapiente,&nbsp;error&nbsp;iste.&nbsp;Beatae&nbsp;itaque&nbsp;totam&nbsp;labore&nbsp;consequuntur&nbsp;debitis&nbsp;distinctio!&nbsp;Atque,&nbsp;sit&nbsp;ipsa&nbsp;iste&nbsp;eaque&nbsp;deserunt&nbsp;culpa&nbsp;quo&nbsp;quas&nbsp;consequuntur&nbsp;rerum&nbsp;reprehenderit&nbsp;consequatur,&nbsp;ex&nbsp;earum.&nbsp;Aut&nbsp;laboriosam&nbsp;modi&nbsp;optio&nbsp;temporibus,&nbsp;mollitia&nbsp;consequatur.&nbsp;Recusandae&nbsp;quam&nbsp;itaque&nbsp;saepe&nbsp;quo.</p>\n<!-- /wp:paragraph -->','Test page','','inherit','closed','closed','','9-autosave-v1','','','2020-10-20 18:58:02','2020-10-20 18:58:02','',9,'http://fictional-university.local/9-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-10-21 04:59:23','2020-10-21 04:59:23','<!-- wp:paragraph -->\n<p>THIS IS SECOND TEST POST    The relationship between  and  was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced , a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on , providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Second test post','','inherit','closed','closed','','7-revision-v1','','','2020-10-21 04:59:23','2020-10-21 04:59:23','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-10-21 04:59:40','2020-10-21 04:59:40','<!-- wp:paragraph -->\n<p>The relationship between  and  was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced , a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on , providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-10-21 04:59:40','2020-10-21 04:59:40','',5,'http://fictional-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-10-21 05:59:59','2020-10-21 05:59:59','<!-- wp:paragraph -->\n<p>The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','aboutus','','','2020-10-28 11:29:44','2020-10-28 11:29:44','',0,'http://fictional-university.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-10-21 05:59:59','2020-10-21 05:59:59','<!-- wp:paragraph -->\n<p>The relationship between  and  was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced , a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on , providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','AboutUs','','inherit','closed','closed','','14-revision-v1','','','2020-10-21 05:59:59','2020-10-21 05:59:59','',14,'http://fictional-university.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-10-21 06:00:09','2020-10-21 06:00:09','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-10-21 06:00:09','2020-10-21 06:00:09','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-10-21 06:24:51','2020-10-21 06:24:51','<!-- wp:paragraph -->\n<p>The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','14-revision-v1','','','2020-10-21 06:24:51','2020-10-21 06:24:51','',14,'http://fictional-university.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-10-21 07:19:23','2020-10-21 07:19:23','<!-- wp:paragraph -->\n<p>A&nbsp;<strong>paragraph</strong>&nbsp;is a series of related sentences developing a central idea, called the topic. Try to think about&nbsp;<strong>paragraphs</strong>&nbsp;in terms of thematic unity: a&nbsp;<strong>paragraph</strong>&nbsp;is a sentence or a group of sentences that supports one central, unified idea.&nbsp;<strong>Paragraphs</strong>&nbsp;add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-10-21 20:16:03','2020-10-21 20:16:03','',14,'http://fictional-university.local/?page_id=18',1,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-10-21 07:19:23','2020-10-21 07:19:23','<!-- wp:paragraph -->\n<p>A <strong>paragraph</strong> is a series of related sentences developing a central idea, called the topic. Try to think about <strong>paragraphs</strong> in terms of thematic unity: a <strong>paragraph</strong> is a sentence or a group of sentences that supports one central, unified idea. <strong>Paragraphs</strong> add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','18-revision-v1','','','2020-10-21 07:19:23','2020-10-21 07:19:23','',18,'http://fictional-university.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-10-21 07:19:57','2020-10-21 07:19:57','<!-- wp:paragraph -->\n<p>our goals A&nbsp;<strong>paragraph</strong>&nbsp;is a series of related sentences developing a central idea, called the topic. Try to think about&nbsp;<strong>paragraphs</strong>&nbsp;in terms of thematic unity: a&nbsp;<strong>paragraph</strong>&nbsp;is a sentence or a group of sentences that supports one central, unified idea.&nbsp;<strong>Paragraphs</strong>&nbsp;add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-10-21 20:15:42','2020-10-21 20:15:42','',14,'http://fictional-university.local/?page_id=20',2,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-10-21 07:19:57','2020-10-21 07:19:57','<!-- wp:paragraph -->\n<p>our goals A <strong>paragraph</strong> is a series of related sentences developing a central idea, called the topic. Try to think about <strong>paragraphs</strong> in terms of thematic unity: a <strong>paragraph</strong> is a sentence or a group of sentences that supports one central, unified idea. <strong>Paragraphs</strong> add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','20-revision-v1','','','2020-10-21 07:19:57','2020-10-21 07:19:57','',20,'http://fictional-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-10-21 07:20:44','2020-10-21 07:20:44','<!-- wp:paragraph -->\n<p>our goals A&nbsp;<strong>paragraph</strong>&nbsp;is a series of related sentences developing a central idea, called the topic. Try to think about&nbsp;<strong>paragraphs</strong>&nbsp;in terms of thematic unity: a&nbsp;<strong>paragraph</strong>&nbsp;is a sentence or a group of sentences that supports one central, unified idea.&nbsp;<strong>Paragraphs</strong>&nbsp;add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','20-autosave-v1','','','2020-10-21 07:20:44','2020-10-21 07:20:44','',20,'http://fictional-university.local/20-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-10-21 07:40:20','2020-10-21 07:40:20','<!-- wp:paragraph -->\n<p>this is the cookies page.the child page of the privacy policy</p>\n<!-- /wp:paragraph -->','Cookies','','publish','closed','closed','','cookies','','','2020-10-21 07:40:20','2020-10-21 07:40:20','',3,'http://fictional-university.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-10-21 07:40:20','2020-10-21 07:40:20','<!-- wp:paragraph -->\n<p>this is the cookies page.the child page of the privacy policy</p>\n<!-- /wp:paragraph -->','Cookies','','inherit','closed','closed','','23-revision-v1','','','2020-10-21 07:40:20','2020-10-21 07:40:20','',23,'http://fictional-university.local/23-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-10-21 07:44:16','2020-10-21 07:44:16','<!-- wp:paragraph -->\n<p>this is the cookies page.the child page of the privacy policy</p>\n<!-- /wp:paragraph -->','Cookies','','inherit','closed','closed','','23-autosave-v1','','','2020-10-21 07:44:16','2020-10-21 07:44:16','',23,'http://fictional-university.local/23-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-10-21 20:15:42','2020-10-21 20:15:42','<!-- wp:paragraph -->\n<p>our goals A&nbsp;<strong>paragraph</strong>&nbsp;is a series of related sentences developing a central idea, called the topic. Try to think about&nbsp;<strong>paragraphs</strong>&nbsp;in terms of thematic unity: a&nbsp;<strong>paragraph</strong>&nbsp;is a sentence or a group of sentences that supports one central, unified idea.&nbsp;<strong>Paragraphs</strong>&nbsp;add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','20-revision-v1','','','2020-10-21 20:15:42','2020-10-21 20:15:42','',20,'http://fictional-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-10-21 20:16:03','2020-10-21 20:16:03','<!-- wp:paragraph -->\n<p>A&nbsp;<strong>paragraph</strong>&nbsp;is a series of related sentences developing a central idea, called the topic. Try to think about&nbsp;<strong>paragraphs</strong>&nbsp;in terms of thematic unity: a&nbsp;<strong>paragraph</strong>&nbsp;is a sentence or a group of sentences that supports one central, unified idea.&nbsp;<strong>Paragraphs</strong>&nbsp;add one idea at a time to your broader argument.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','18-revision-v1','','','2020-10-21 20:16:03','2020-10-21 20:16:03','',18,'http://fictional-university.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-10-22 06:00:25','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-10-22 06:02:07','2020-10-22 06:02:07',' ','','','publish','closed','closed','','29','','','2020-10-22 06:02:12','2020-10-22 06:02:12','',0,'http://fictional-university.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-10-22 06:00:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-10-22 06:02:07','2020-10-22 06:02:07',' ','','','publish','closed','closed','','31','','','2020-10-22 06:02:12','2020-10-22 06:02:12','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-10-22 06:00:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',14,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-10-22 06:00:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',14,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-10-22 06:00:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-10-22 06:00:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-22 06:00:25','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-10-22 10:20:30','2020-10-22 10:20:30','','Home','','publish','closed','closed','','home','','','2020-10-22 10:20:30','2020-10-22 10:20:30','',0,'http://fictional-university.local/?page_id=36',0,'page','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-10-22 10:20:30','2020-10-22 10:20:30','','Home','','inherit','closed','closed','','36-revision-v1','','','2020-10-22 10:20:30','2020-10-22 10:20:30','',36,'http://fictional-university.local/36-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-10-22 10:20:44','2020-10-22 10:20:44','','Blog','','publish','closed','closed','','blog','','','2020-10-22 10:20:44','2020-10-22 10:20:44','',0,'http://fictional-university.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-10-22 10:20:44','2020-10-22 10:20:44','','Blog','','inherit','closed','closed','','38-revision-v1','','','2020-10-22 10:20:44','2020-10-22 10:20:44','',38,'http://fictional-university.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-10-24 12:33:21','2020-10-24 12:33:21','Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.','python','','publish','closed','closed','','python','','','2020-10-26 10:44:35','2020-10-26 10:44:35','',0,'http://fictional-university.local/?post_type=event&#038;p=42',0,'event','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-10-24 12:33:44','2020-10-24 12:33:44','2Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.','python1','','publish','closed','closed','','python1','','','2020-10-26 10:38:09','2020-10-26 10:38:09','',0,'http://fictional-university.local/?post_type=event&#038;p=43',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-10-24 12:33:57','2020-10-24 12:33:57','3Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.','python3','this is the excerpt of python3','publish','closed','closed','','python3','','','2020-10-26 10:31:09','2020-10-26 10:31:09','',0,'http://fictional-university.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-10-24 18:33:01','2020-10-24 18:33:01','<!-- wp:paragraph -->\n<p>THIS IS SECOND TEST POST    The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Second test post','this is all about the second test post','inherit','closed','closed','','7-revision-v1','','','2020-10-24 18:33:01','2020-10-24 18:33:01','',7,'http://fictional-university.local/2020/10/24/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-10-24 18:40:21','2020-10-24 18:40:21','<!-- wp:paragraph -->\n<p>THIS IS SECOND TEST POST    The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','Second test post','this is all about the second test post you can get more info by clicking down','inherit','closed','closed','','7-revision-v1','','','2020-10-24 18:40:21','2020-10-24 18:40:21','',7,'http://fictional-university.local/2020/10/24/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-10-26 10:30:18','2020-10-26 10:30:18','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5f96a4c15b72a','','','2020-10-26 10:30:18','2020-10-26 10:30:18','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-10-26 10:30:18','2020-10-26 10:30:18','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5f96a4ce77f3e','','','2020-10-26 10:30:18','2020-10-26 10:30:18','',86,'http://fictional-university.local/?post_type=acf-field&p=87',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-10-26 13:24:59','2020-10-26 13:24:59','<!-- wp:paragraph -->\n<p>44 Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','PYTHON4','PYTHON 4 EXCERPT','publish','closed','closed','','python4','','','2020-10-26 13:25:00','2020-10-26 13:25:00','',0,'http://fictional-university.local/?post_type=event&#038;p=89',0,'event','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-10-26 13:31:40','2020-10-26 13:31:40','<!-- wp:paragraph -->\n<p>Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','python2','','publish','closed','closed','','python2','','','2020-10-28 12:13:04','2020-10-28 12:13:04','',0,'http://fictional-university.local/?post_type=event&#038;p=91',0,'event','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-10-26 13:34:13','2020-10-26 13:34:13','','Past Events','','publish','closed','closed','','past-events','','','2020-10-26 13:34:13','2020-10-26 13:34:13','',0,'http://fictional-university.local/?page_id=93',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-10-26 13:34:13','2020-10-26 13:34:13','','Past Events','','inherit','closed','closed','','93-revision-v1','','','2020-10-26 13:34:13','2020-10-26 13:34:13','',93,'http://fictional-university.local/2020/10/26/93-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-10-26 14:29:31','2020-10-26 14:29:31','<!-- wp:paragraph -->\n<p>mathsss  22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2020-11-01 07:57:59','2020-11-01 07:57:59','',0,'http://fictional-university.local/?post_type=program&#038;p=96',0,'program','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-10-26 14:29:56','2020-10-26 14:29:56','','Biology','','publish','closed','closed','','biology','','','2020-11-01 07:53:39','2020-11-01 07:53:39','',0,'http://fictional-university.local/?post_type=program&#038;p=97',0,'program','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-10-26 14:30:18','2020-10-26 14:30:18','<!-- wp:paragraph -->\n<p>english   22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2020-11-01 07:57:42','2020-11-01 07:57:42','',0,'http://fictional-university.local/?post_type=program&#038;p=98',0,'program','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-10-26 17:25:00','2020-10-26 17:25:00','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5f9705daecbed','','','2020-10-27 14:56:34','2020-10-27 14:56:34','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=100',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-10-26 17:25:00','2020-10-26 17:25:00','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Programs','related_programs','publish','closed','closed','','field_5f9705ee6bba4','','','2020-10-26 17:25:00','2020-10-26 17:25:00','',100,'http://fictional-university.local/?post_type=acf-field&p=101',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-10-27 14:53:33','2020-10-27 14:53:33','<!-- wp:paragraph -->\n<p>Easy to follow so far explain really well and the author know the subject well and the author keep remind me of some important concept, u know, some of us may learn lot of things in such a short span of time, and we properly dont remember all the important concept. and the author remind us of than when those important concept comes into use again. i like the experience of learning with his tutorial and looking forward to his new javascript tutorial</p>\n<!-- /wp:paragraph -->','Dr.Manmohan','','publish','closed','closed','','dr-manmohan','','','2020-11-01 07:58:26','2020-11-01 07:58:26','',0,'http://fictional-university.local/?post_type=professor&#038;p=105',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-10-28 08:10:30','2020-10-28 08:10:30','','idiscuss1','','inherit','open','closed','','idiscuss1','','','2020-10-28 08:10:30','2020-10-28 08:10:30','',105,'http://fictional-university.local/wp-content/uploads/2020/10/idiscuss1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-10-28 08:11:41','2020-10-28 08:11:41','<!-- wp:paragraph -->\n<p>Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python’s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','Dr.Bhagwat','','publish','closed','closed','','dr-bhagwat','','','2020-10-28 08:11:41','2020-10-28 08:11:41','',0,'http://fictional-university.local/?post_type=professor&#038;p=110',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-10-28 08:11:30','2020-10-28 08:11:30','','idiscuss2','','inherit','open','closed','','idiscuss2','','','2020-10-28 08:11:30','2020-10-28 08:11:30','',110,'http://fictional-university.local/wp-content/uploads/2020/10/idiscuss2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-10-28 08:18:51','2020-10-28 08:18:51','<!-- wp:paragraph -->\n<p>mathsss 22222Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python’s design philosophy emphasizes code readability with its notable use of significant whitespace.</p>\n<!-- /wp:paragraph -->','Dr.Ram','','publish','closed','closed','','dr-ram','','','2020-10-28 09:18:22','2020-10-28 09:18:22','',0,'http://fictional-university.local/?post_type=professor&#038;p=112',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2020-10-28 08:41:30','2020-10-28 08:41:30','','pythonlogo','','inherit','open','closed','','pythonlogo','','','2020-10-28 08:41:30','2020-10-28 08:41:30','',112,'http://fictional-university.local/wp-content/uploads/2020/10/pythonlogo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (114,1,'2020-10-28 09:15:48','2020-10-28 09:15:48','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5f993651b56b4','','','2020-10-28 09:15:48','2020-10-28 09:15:48','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=114',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2020-10-28 09:15:48','2020-10-28 09:15:48','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5f99365f6eacd','','','2020-10-28 09:15:48','2020-10-28 09:15:48','',114,'http://fictional-university.local/?post_type=acf-field&p=115',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2020-10-28 09:15:48','2020-10-28 09:15:48','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5f99367b6eace','','','2020-10-28 09:15:48','2020-10-28 09:15:48','',114,'http://fictional-university.local/?post_type=acf-field&p=116',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2020-10-28 09:17:56','2020-10-28 09:17:56','','idiscuss2','','inherit','open','closed','','idiscuss2-2','','','2020-10-28 09:17:56','2020-10-28 09:17:56','',112,'http://fictional-university.local/wp-content/uploads/2020/10/idiscuss2-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (118,1,'2020-10-28 11:28:32','2020-10-28 11:28:32','<!-- wp:paragraph -->\n<p>The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','14-revision-v1','','','2020-10-28 11:28:32','2020-10-28 11:28:32','',14,'http://fictional-university.local/2020/10/28/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2020-10-28 11:29:44','2020-10-28 11:29:44','<!-- wp:paragraph -->\n<p>The relationship between&nbsp;&nbsp;and&nbsp;&nbsp;was originally collaborative in Wikipedia\'s early days, when Google helped reduce the pagerank of widespread uneditable Wikipedia clones that were simply ad farms. In 2007, Google introduced&nbsp;, a direct competitor for community-driven encyclopedia creation. Later it supported Wikimedia with grants and came to rely on Wikipedia to address the spread of misinformation on&nbsp;, providing verifiable and well-sourced information to those seeking it.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','14-revision-v1','','','2020-10-28 11:29:44','2020-10-28 11:29:44','',14,'http://fictional-university.local/2020/10/28/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2020-10-28 15:02:03','2020-10-28 15:02:03','<!-- wp:paragraph -->\n<p>the Downtown West campus</p>\n<!-- /wp:paragraph -->','Downtown West','','publish','closed','closed','','downtown-west','','','2020-10-28 15:02:39','2020-10-28 15:02:39','',0,'http://fictional-university.local/?post_type=campus&#038;p=120',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2020-10-28 15:03:16','2020-10-28 15:03:16','<!-- wp:paragraph -->\n<p>the Downtown East campus</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2020-10-28 15:03:17','2020-10-28 15:03:17','',0,'http://fictional-university.local/?post_type=campus&#038;p=121',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2020-10-28 15:05:16','2020-10-28 15:05:16','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','publish','closed','closed','','group_5f998868901ad','','','2020-10-28 15:05:16','2020-10-28 15:05:16','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=122',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2020-10-28 15:05:16','2020-10-28 15:05:16','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_5f998870df376','','','2020-10-28 15:05:16','2020-10-28 15:05:16','',122,'http://fictional-university.local/?post_type=acf-field&p=123',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2020-11-01 07:52:56','2020-11-01 07:52:56','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Main Body Content','main-body-content','publish','closed','closed','','group_5f9e68f3bdc06','','','2020-11-01 07:52:56','2020-11-01 07:52:56','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=124',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2020-11-01 07:52:56','2020-11-01 07:52:56','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_5f9e69022fbaa','','','2020-11-01 07:52:56','2020-11-01 07:52:56','',124,'http://fictional-university.local/?post_type=acf-field&p=125',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2020-11-01 14:24:59','2020-11-01 14:24:59','','Search','','publish','closed','closed','','search','','','2020-11-01 14:24:59','2020-11-01 14:24:59','',0,'http://fictional-university.local/?page_id=126',0,'page','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2020-11-01 14:24:59','2020-11-01 14:24:59','','Search','','inherit','closed','closed','','126-revision-v1','','','2020-11-01 14:24:59','2020-11-01 14:24:59','',126,'http://fictional-university.local/2020/11/01/126-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (129,2,'2020-11-01 16:31:24','2020-11-01 16:31:24','<!-- wp:paragraph -->\n<p>the best ever event of human bio</p>\n<!-- /wp:paragraph -->','human bio','','publish','closed','closed','','human-bio','','','2020-11-01 16:31:24','2020-11-01 16:31:24','',0,'http://fictional-university.local/?post_type=event&#038;p=129',0,'event','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2020-11-02 06:28:36','2020-11-02 06:28:36','','My Notes','','publish','closed','closed','','my-notes','','','2020-11-02 06:28:37','2020-11-02 06:28:37','',0,'http://fictional-university.local/?page_id=131',0,'page','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2020-11-02 06:28:36','2020-11-02 06:28:36','','My Notes','','inherit','closed','closed','','131-revision-v1','','','2020-11-02 06:28:36','2020-11-02 06:28:36','',131,'http://fictional-university.local/2020/11/02/131-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2020-11-02 06:49:22','2020-11-02 06:49:22','<!-- wp:paragraph -->\n<p>the great notes of biology</p>\n<!-- /wp:paragraph -->','Biology Notes','','private','closed','closed','','biology-notes','','','2020-11-02 14:14:27','2020-11-02 14:14:27','',0,'http://fictional-university.local/?post_type=note&#038;p=133',0,'note','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-11-02 06:49:59','2020-11-02 06:49:59','this is the great leccture of notes today safacaa','Maths Notes 1','','private','closed','closed','','maths-notes','','','2020-11-02 14:14:27','2020-11-02 14:14:27','',0,'http://fictional-university.local/?post_type=note&#038;p=134',0,'note','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2020-11-02 08:56:31','2020-11-02 08:56:31','this are the best english notes1','Engish Notes','','private','closed','closed','','engish-notes','','','2020-11-02 14:14:27','2020-11-02 14:14:27','',0,'http://fictional-university.local/note/engish-notes/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2020-11-02 14:12:03','2020-11-02 14:12:03','this is a test note here','test note','','private','closed','closed','','test-note','','','2020-11-02 14:13:34','2020-11-02 14:13:34','',0,'http://fictional-university.local/note/test-note/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (138,3,'2020-11-02 14:15:46','2020-11-02 14:15:46','this is test note 2','test note 2','','private','closed','closed','','test-note-2','','','2020-11-02 14:23:53','2020-11-02 14:23:53','',0,'http://fictional-university.local/note/test-note-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (139,3,'2020-11-02 14:23:29','2020-11-02 14:23:29','this is a note','new test note','','private','closed','closed','','new-test-note','','','2020-11-02 14:45:06','2020-11-02 14:45:06','',0,'http://fictional-university.local/note/new-test-note/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2020-11-02 15:31:47','2020-11-02 15:31:47','hello world1\nhello world2\nhello world3','hello world','','private','closed','closed','','hello-world','','','2020-11-02 15:31:47','2020-11-02 15:31:47','',0,'http://fictional-university.local/note/hello-world/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (148,3,'2020-11-02 15:57:26','2020-11-02 15:57:26','new one','new one','','private','closed','closed','','new-one','','','2020-11-02 15:57:26','2020-11-02 15:57:26','',0,'http://fictional-university.local/note/new-one/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (149,3,'2020-11-02 15:57:41','2020-11-02 15:57:41','aganin newaa','again new','','private','closed','closed','','again-new','','','2020-11-02 15:57:41','2020-11-02 15:57:41','',0,'http://fictional-university.local/note/again-new/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (152,3,'2020-11-02 16:01:41','2020-11-02 16:01:41','cacacacaca','axaccx','','private','closed','closed','','axaccx','','','2020-11-02 16:01:41','2020-11-02 16:01:41','',0,'http://fictional-university.local/note/axaccx/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2020-11-02 16:41:42','2020-11-02 16:41:42','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"like\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Liked Professor ID','liked-professor-id','publish','closed','closed','','group_5fa0366f48195','','','2020-11-02 16:41:42','2020-11-02 16:41:42','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=153',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2020-11-02 16:41:42','2020-11-02 16:41:42','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Liked Professor ID','liked_professor_id','publish','closed','closed','','field_5fa03696e2758','','','2020-11-02 16:41:42','2020-11-02 16:41:42','',153,'http://fictional-university.local/?post_type=acf-field&p=154',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Header Menu','my-header-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Dhananjay');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','hello this is from Dhananjay');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','107');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','mfold=o&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1603872635');
INSERT INTO `wp_usermeta` VALUES (22,1,'session_tokens','a:5:{s:64:\"5dcf2a65eb67e048c0e35233209991eab6ca3bc06a2913412d6d81ab93ccae2c\";a:4:{s:10:\"expiration\";i:1604389859;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604217059;}s:64:\"9acfd3fab2283b209136cabb3cfd2d40213a22330ecfc4c2e060b1ebffccbb6b\";a:4:{s:10:\"expiration\";i:1604412330;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604239530;}s:64:\"54b02c3beea72862a040b5a81cc6de56cdd07d2f23d6a673433b2027a6f5a9d0\";a:4:{s:10:\"expiration\";i:1604471255;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604298455;}s:64:\"c739d6f83b622d74df1b1a3de98a16b4f8296defa96b9db93d479cbaf32da7f9\";a:4:{s:10:\"expiration\";i:1604471292;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604298492;}s:64:\"0330b01ce77240e10f508f8a04be70af7bb1327c4730327afcc52683d4d5e251\";a:4:{s:10:\"expiration\";i:1604517493;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604344693;}}');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_program','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_program','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,2,'nickname','chotu');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (31,2,'description','');
INSERT INTO `wp_usermeta` VALUES (32,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_capabilities','a:2:{s:13:\"event_planner\";b:1;s:14:\"campus_manager\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (43,2,'wp_dashboard_quick_press_last_post_id','128');
INSERT INTO `wp_usermeta` VALUES (45,3,'nickname','Rahul');
INSERT INTO `wp_usermeta` VALUES (46,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (47,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (48,3,'description','');
INSERT INTO `wp_usermeta` VALUES (49,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (50,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (51,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (52,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (53,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (54,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (55,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (56,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (57,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (58,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (64,3,'session_tokens','a:2:{s:64:\"6a3d3d38d8387ce4204def58176e4dbe1b4b5e016983a824ff004c78977cf4a3\";a:4:{s:10:\"expiration\";i:1604498479;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604325679;}s:64:\"33a17fd73c425e8976ec2ee827bb3a86865b4cb1091f54fcca1fa86df1a4fdba\";a:4:{s:10:\"expiration\";i:1604506525;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604333725;}}');
INSERT INTO `wp_usermeta` VALUES (65,4,'nickname','abhi');
INSERT INTO `wp_usermeta` VALUES (66,4,'first_name','');
INSERT INTO `wp_usermeta` VALUES (67,4,'last_name','');
INSERT INTO `wp_usermeta` VALUES (68,4,'description','');
INSERT INTO `wp_usermeta` VALUES (69,4,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (70,4,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (71,4,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (72,4,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (73,4,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (74,4,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (75,4,'locale','');
INSERT INTO `wp_usermeta` VALUES (76,4,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (77,4,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (78,4,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (80,5,'nickname','Dhananjay S');
INSERT INTO `wp_usermeta` VALUES (81,5,'first_name','');
INSERT INTO `wp_usermeta` VALUES (82,5,'last_name','');
INSERT INTO `wp_usermeta` VALUES (83,5,'description','');
INSERT INTO `wp_usermeta` VALUES (84,5,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (85,5,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (86,5,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (87,5,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (88,5,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (89,5,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (90,5,'locale','');
INSERT INTO `wp_usermeta` VALUES (91,5,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (92,5,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (93,5,'default_password_nag','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Dhananjay','$P$BY.vYG4T7fr2RMi.C12KR3w.2Is/Qm0','dhananjay','dhananjaysingh9870ds@gmail.com','http://fictional-university.local','2020-10-20 17:45:04','',0,'Dhananjay');
INSERT INTO `wp_users` VALUES (2,'chotu','$P$B7fxiWW.T0UoDitQkVyRAvY11cwbxR.','chotu','chotu@gmail.com','','2020-11-01 16:09:07','',0,'chotu');
INSERT INTO `wp_users` VALUES (3,'Rahul','$P$Br6BRuNhOkXN1pX03c6R9Pfp3RLcOS/','rahul','rahul@gmail.com','','2020-11-02 05:34:13','',0,'Rahul');
INSERT INTO `wp_users` VALUES (4,'abhi','$P$BNNb3UWQ21gtanv7Wg0h2tJMIwer/J/','abhi','abhi@gmail.com','','2020-11-02 19:16:07','',0,'abhi');
INSERT INTO `wp_users` VALUES (5,'Dhananjay S','$P$BBjLxGhKunl6P7y54EW79vsFCqdG9S0','dhananjay-s','dhananjay30@gmail.com','','2021-06-09 16:53:36','1623257616:$P$B5PFtQ/V9.UqxAgvMYNcZ2hhlEY.mZ1',0,'Dhananjay S');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 12:54:45
