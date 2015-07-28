/*
Navicat MySQL Data Transfer

Source Server         : Mysql127.0.0.1
Source Server Version : 50612
Source Host           : 127.0.0.1:3306
Source Database       : db_onlinesubidha

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-07-07 06:54:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wp_onlinesubidha_cf7dbplugin_st
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_cf7dbplugin_st`;
CREATE TABLE `wp_onlinesubidha_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL,
  PRIMARY KEY (`submit_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wp_onlinesubidha_cf7dbplugin_st
-- ----------------------------
INSERT INTO `wp_onlinesubidha_cf7dbplugin_st` VALUES ('1436196655.2729');
INSERT INTO `wp_onlinesubidha_cf7dbplugin_st` VALUES ('1436205350.1377');

-- ----------------------------
-- Table structure for wp_onlinesubidha_cf7dbplugin_submits
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_cf7dbplugin_submits`;
CREATE TABLE `wp_onlinesubidha_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob,
  KEY `submit_time_idx` (`submit_time`),
  KEY `form_name_idx` (`form_name`),
  KEY `field_name_idx` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wp_onlinesubidha_cf7dbplugin_submits
-- ----------------------------
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'your-name', 'Mahendra Rajdhami', '0', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'your-email', 'mahendra@miracleinterface.com', '1', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'your-subject', '[test]', '2', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'your-message', 'This is for testing purpose.', '3', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'Submitted Login', 'admin', '9999', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436196655.2729', 'Contact form 1', 'Submitted From', '::1', '10000', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'your-name', 'mahen', '0', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'your-email', 'mahendra@miracleinterface.com', '1', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'your-subject', 'fdfd', '2', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'your-message', 'fdfdf', '3', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'Submitted Login', 'admin', '9999', null);
INSERT INTO `wp_onlinesubidha_cf7dbplugin_submits` VALUES ('1436205350.1377', 'Contact form 1', 'Submitted From', '::1', '10000', null);

-- ----------------------------
-- Table structure for wp_onlinesubidha_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_commentmeta`;
CREATE TABLE `wp_onlinesubidha_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for wp_onlinesubidha_comments
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_comments`;
CREATE TABLE `wp_onlinesubidha_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_comments
-- ----------------------------
INSERT INTO `wp_onlinesubidha_comments` VALUES ('1', '1', 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-07-04 02:58:42', '2015-07-04 02:58:42', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for wp_onlinesubidha_links
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_links`;
CREATE TABLE `wp_onlinesubidha_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_links
-- ----------------------------

-- ----------------------------
-- Table structure for wp_onlinesubidha_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_options`;
CREATE TABLE `wp_onlinesubidha_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_options
-- ----------------------------
INSERT INTO `wp_onlinesubidha_options` VALUES ('1', 'siteurl', 'http://localhost/mahen.dev/onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('2', 'home', 'http://localhost/mahen.dev/onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('3', 'blogname', 'onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('4', 'blogdescription', 'Online Directory For Nepal. Here you can search all kind of stuffs and also register add in newspaper.', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('6', 'admin_email', 'mahendrarajdhami@gmail.com', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('7', 'start_of_week', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('23', 'date_format', 'Y-m-d', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('28', 'permalink_structure', '/%post_id%/', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('29', 'gzipcompression', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('33', 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:45:\"simple-local-avatars/simple-local-avatars.php\";}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('36', 'advanced_edit', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('37', 'comment_max_links', '2', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('38', 'gmt_offset', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('39', 'default_email_category', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('40', 'recently_edited', '', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('41', 'template', 'onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('42', 'stylesheet', 'onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('43', 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('44', 'blacklist_keys', '', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('45', 'comment_registration', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('46', 'html_type', 'text/html', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('47', 'use_trackback', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('48', 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('49', 'db_version', '31535', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('50', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('51', 'upload_path', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('52', 'blog_public', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('53', 'default_link_category', '2', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('54', 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('55', 'tag_base', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('56', 'show_avatars', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('57', 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('58', 'upload_url_path', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('59', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('60', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('61', 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('62', 'medium_size_w', '300', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('63', 'medium_size_h', '300', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('64', 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('65', 'large_size_w', '1024', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('66', 'large_size_h', '1024', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('67', 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('68', 'image_default_size', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('69', 'image_default_align', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('70', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('71', 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('72', 'thread_comments', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('73', 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('74', 'page_comments', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('75', 'comments_per_page', '50', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('76', 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('77', 'comment_order', 'asc', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('78', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('79', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('80', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('81', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('82', 'uninstall_plugins', 'a:1:{s:45:\"simple-local-avatars/simple-local-avatars.php\";s:30:\"simple_local_avatars_uninstall\";}', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('83', 'timezone_string', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('84', 'page_for_posts', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('85', 'page_on_front', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('86', 'default_post_format', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('87', 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('88', 'initial_db_version', '31535', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('89', 'wp_onlinesubidha_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('90', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('91', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('92', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('93', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('94', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('95', 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('97', 'cron', 'a:5:{i:1436235304;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1436237923;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1436237940;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1436254920;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('101', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.2\";s:7:\"version\";s:5:\"4.2.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1436225434;s:15:\"version_checked\";s:5:\"4.2.2\";s:12:\"translations\";a:0:{}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('105', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1436228013;s:7:\"checked\";a:1:{s:13:\"onlinesubidha\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('106', '_transient_random_seed', 'fecdf07cf18cd27a64d973e1bc0e1e6e', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('110', 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('115', 'current_theme', 'onlinesubidha', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('116', 'theme_mods_onlinesubidha', 'a:1:{i:0;b:0;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('117', 'theme_switched', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('118', 'optionsframework', 'a:1:{s:2:\"id\";s:13:\"onlinesubidha\";}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('119', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('130', 'onlinesubidha', 'a:18:{s:10:\"footer_fax\";s:0:\"\";s:10:\"footer_tel\";s:10:\"9808350855\";s:11:\"footer_mail\";s:24:\"info@kintechnepal.com.np\";s:10:\"footer_url\";s:0:\"\";s:14:\"footer_address\";s:76:\"Your Company LTD Street nr 100, 4536534, Kathmandu Nepal Open in Google Maps\";s:27:\"footer_social_link_facebook\";s:47:\"https://www.facebook.com/pages/miracleinterface\";s:26:\"footer_social_link_twitter\";s:0:\"\";s:25:\"footer_social_link_google\";s:0:\"\";s:27:\"footer_social_link_linkedin\";s:0:\"\";s:27:\"onlinesubidha_banner_image1\";s:79:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider1.jpg\";s:26:\"onlinesubidha_banner_link1\";s:0:\"\";s:29:\"onlinesubidha_banner_caption1\";s:0:\"\";s:27:\"onlinesubidha_banner_image2\";s:79:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider2.jpg\";s:26:\"onlinesubidha_banner_link2\";s:0:\"\";s:29:\"onlinesubidha_banner_caption2\";s:0:\"\";s:27:\"onlinesubidha_banner_image3\";s:79:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider3.jpg\";s:26:\"onlinesubidha_banner_link3\";s:0:\"\";s:29:\"onlinesubidha_banner_caption3\";s:0:\"\";}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('156', 'WPLANG', '', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('165', 'acf_version', '4.4.2', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('166', 'cptui_post_types', 'a:5:{s:4:\"news\";a:23:{s:4:\"name\";s:4:\"news\";s:5:\"label\";s:4:\"News\";s:14:\"singular_label\";s:4:\"News\";s:11:\"description\";s:29:\"This is news custom post type\";s:6:\"public\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"list_cat\";}s:6:\"labels\";a:13:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"list\";a:23:{s:4:\"name\";s:4:\"list\";s:5:\"label\";s:4:\"List\";s:14:\"singular_label\";s:5:\"Lists\";s:11:\"description\";s:29:\"This is list custom post type\";s:6:\"public\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"list_cat\";}s:6:\"labels\";a:13:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:9:\"newspaper\";a:23:{s:4:\"name\";s:9:\"newspaper\";s:5:\"label\";s:11:\"News Papers\";s:14:\"singular_label\";s:10:\"News Paper\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:1:{i:0;s:13:\"newspaper_cat\";}s:6:\"labels\";a:13:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"download\";a:23:{s:4:\"name\";s:8:\"download\";s:5:\"label\";s:9:\"Downloads\";s:14:\"singular_label\";s:8:\"Download\";s:11:\"description\";s:33:\"This is download Custom Post Type\";s:6:\"public\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:1:{i:0;s:12:\"download_cat\";}s:6:\"labels\";a:13:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"links\";a:23:{s:4:\"name\";s:5:\"links\";s:5:\"label\";s:5:\"Links\";s:14:\"singular_label\";s:4:\"Link\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:13:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:4:\"edit\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:4:\"view\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:6:\"parent\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('179', '_site_transient_timeout_browser_8dc803ca5dfb7ff109b4a28fc1e0b039', '1436680294', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('180', '_site_transient_browser_8dc803ca5dfb7ff109b4a28fc1e0b039', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"43.0.2357.130\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('200', 'cptui_taxonomies', 'a:3:{s:8:\"list_cat\";a:14:{s:4:\"name\";s:8:\"list_cat\";s:5:\"label\";s:9:\"List Cats\";s:14:\"singular_label\";s:8:\"List Cat\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:6:\"labels\";a:15:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:4:\"list\";}}s:13:\"newspaper_cat\";a:14:{s:4:\"name\";s:13:\"newspaper_cat\";s:5:\"label\";s:15:\"News Paper Cats\";s:14:\"singular_label\";s:14:\"News Paper Cat\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:6:\"labels\";a:15:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:10:\"news_paper\";}}s:12:\"download_cat\";a:14:{s:4:\"name\";s:12:\"download_cat\";s:5:\"label\";s:13:\"Download Cats\";s:14:\"singular_label\";s:12:\"Download Cat\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:6:\"labels\";a:15:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:8:\"download\";}}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('203', 'list_cat_2_cat_header_image', '21', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('204', '_list_cat_2_cat_header_image', 'field_5598d51a98149', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('205', 'list_cat_2_cat_feature_image', '22', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('206', '_list_cat_2_cat_feature_image', 'field_5598d6117b97d', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('209', 'list_cat_3_cat_header_image', '26', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('210', '_list_cat_3_cat_header_image', 'field_5598d51a98149', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('211', 'list_cat_3_cat_feature_image', '27', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('212', '_list_cat_3_cat_feature_image', 'field_5598d6117b97d', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('226', 'list_cat_4_cat_header_image', '28', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('227', '_list_cat_4_cat_header_image', 'field_5598d51a98149', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('228', 'list_cat_4_cat_feature_image', '29', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('229', '_list_cat_4_cat_feature_image', 'field_5598d6117b97d', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('230', 'list_cat_5_cat_header_image', '31', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('231', '_list_cat_5_cat_header_image', 'field_5598d51a98149', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('232', 'list_cat_5_cat_feature_image', '32', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('233', '_list_cat_5_cat_feature_image', 'field_5598d6117b97d', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('243', 'wpcf7', 'a:1:{s:7:\"version\";s:5:\"4.2.1\";}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('244', 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('245', 'CF7DBPlugin__version', '2.9.4', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('246', 'CF7DBPlugin__installed', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('249', '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1436225434;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21367\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.2.1.zip\";}s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"16507\";s:4:\"slug\";s:36:\"contact-form-7-to-database-extension\";s:6:\"plugin\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:11:\"new_version\";s:5:\"2.9.4\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/contact-form-7-to-database-extension/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.9.4.zip\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"13183\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.1.zip\";s:14:\"upgrade_notice\";s:79:\"Re-add post type and taxonomy select buttons and only display for non-js users.\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:29:\"memberfindme/memberfindme.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"35995\";s:4:\"slug\";s:12:\"memberfindme\";s:6:\"plugin\";s:29:\"memberfindme/memberfindme.php\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/memberfindme/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/memberfindme.3.7.zip\";}s:45:\"simple-local-avatars/simple-local-avatars.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"20007\";s:4:\"slug\";s:20:\"simple-local-avatars\";s:6:\"plugin\";s:45:\"simple-local-avatars/simple-local-avatars.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/simple-local-avatars/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/simple-local-avatars.2.0.zip\";s:14:\"upgrade_notice\";s:273:\"Upgraded to take advantage of WordPress 3.5 and newer. Does not support older versions! This has also not been tested with front end profile plug-ins - feedback welcome. Note that several language strings have been added or modified - revised translations would be welcome!\";}}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('268', '_transient_timeout_plugin_slugs', '1436282500', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('269', '_transient_plugin_slugs', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:9:\"hello.php\";i:6;s:29:\"memberfindme/memberfindme.php\";i:7;s:45:\"simple-local-avatars/simple-local-avatars.php\";}', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('270', '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1436239300', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('271', '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Resolving timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Resolving timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no');
INSERT INTO `wp_onlinesubidha_options` VALUES ('272', 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('286', '_site_transient_timeout_theme_roots', '1436229705', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('287', '_site_transient_theme_roots', 'a:2:{s:13:\"onlinesubidha\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('289', '_transient_twentyfifteen_categories', '1', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('290', 'theme_mods_twentyfifteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1436228012;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes');
INSERT INTO `wp_onlinesubidha_options` VALUES ('295', 'rewrite_rules', 'a:149:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"list_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?list_cat=$matches[1]&feed=$matches[2]\";s:44:\"list_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?list_cat=$matches[1]&feed=$matches[2]\";s:37:\"list_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?list_cat=$matches[1]&paged=$matches[2]\";s:19:\"list_cat/([^/]+)/?$\";s:30:\"index.php?list_cat=$matches[1]\";s:54:\"newspaper_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?newspaper_cat=$matches[1]&feed=$matches[2]\";s:49:\"newspaper_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?newspaper_cat=$matches[1]&feed=$matches[2]\";s:42:\"newspaper_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?newspaper_cat=$matches[1]&paged=$matches[2]\";s:24:\"newspaper_cat/([^/]+)/?$\";s:35:\"index.php?newspaper_cat=$matches[1]\";s:53:\"download_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?download_cat=$matches[1]&feed=$matches[2]\";s:48:\"download_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?download_cat=$matches[1]&feed=$matches[2]\";s:41:\"download_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?download_cat=$matches[1]&paged=$matches[2]\";s:23:\"download_cat/([^/]+)/?$\";s:34:\"index.php?download_cat=$matches[1]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:25:\"news/([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"list/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"list/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"list/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"list/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"list/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"list/([^/]+)/trackback/?$\";s:31:\"index.php?list=$matches[1]&tb=1\";s:33:\"list/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?list=$matches[1]&paged=$matches[2]\";s:40:\"list/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?list=$matches[1]&cpage=$matches[2]\";s:25:\"list/([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?list=$matches[1]&page=$matches[2]\";s:21:\"list/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"list/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"list/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"list/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"list/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"newspaper/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"newspaper/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"newspaper/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"newspaper/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"newspaper/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"newspaper/([^/]+)/trackback/?$\";s:36:\"index.php?newspaper=$matches[1]&tb=1\";s:38:\"newspaper/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?newspaper=$matches[1]&paged=$matches[2]\";s:45:\"newspaper/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?newspaper=$matches[1]&cpage=$matches[2]\";s:30:\"newspaper/([^/]+)(/[0-9]+)?/?$\";s:48:\"index.php?newspaper=$matches[1]&page=$matches[2]\";s:26:\"newspaper/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"newspaper/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"newspaper/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"newspaper/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"newspaper/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"download/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"download/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"download/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"download/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"download/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"download/([^/]+)/trackback/?$\";s:35:\"index.php?download=$matches[1]&tb=1\";s:37:\"download/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?download=$matches[1]&paged=$matches[2]\";s:44:\"download/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?download=$matches[1]&cpage=$matches[2]\";s:29:\"download/([^/]+)(/[0-9]+)?/?$\";s:47:\"index.php?download=$matches[1]&page=$matches[2]\";s:25:\"download/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"download/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"download/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"download/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"download/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"links/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"links/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"links/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"links/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"links/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"links/([^/]+)/trackback/?$\";s:32:\"index.php?links=$matches[1]&tb=1\";s:34:\"links/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?links=$matches[1]&paged=$matches[2]\";s:41:\"links/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?links=$matches[1]&cpage=$matches[2]\";s:26:\"links/([^/]+)(/[0-9]+)?/?$\";s:44:\"index.php?links=$matches[1]&page=$matches[2]\";s:22:\"links/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"links/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"links/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"links/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"links/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:28:\"[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:21:\"([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:41:\"([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:36:\"([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:29:\"([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:36:\"([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:21:\"([0-9]+)(/[0-9]+)?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:17:\"[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:27:\"[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:47:\"[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');

-- ----------------------------
-- Table structure for wp_onlinesubidha_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_postmeta`;
CREATE TABLE `wp_onlinesubidha_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_postmeta
-- ----------------------------
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('2', '4', '_menu_item_type', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('3', '4', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('4', '4', '_menu_item_object_id', '4');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('5', '4', '_menu_item_object', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('6', '4', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('7', '4', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('8', '4', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('9', '4', '_menu_item_url', 'http://localhost/mahen.dev/onlinesubidha/');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('10', '4', '_menu_item_orphaned', '1435979089');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('32', '12', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('33', '12', '_edit_lock', '1436063927:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('34', '13', '_wp_attached_file', '2015/07/edu.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('35', '13', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:196;s:6:\"height\";i:154;s:4:\"file\";s:15:\"2015/07/edu.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"edu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:13:\"edu-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('36', '12', '_thumbnail_id', '13');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('37', '14', '_wp_attached_file', '2015/07/slider1.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('38', '14', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:327;s:4:\"file\";s:19:\"2015/07/slider1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x239.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:17:\"slider1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('39', '15', '_wp_attached_file', '2015/07/slider2.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('40', '15', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:327;s:4:\"file\";s:19:\"2015/07/slider2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider2-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x239.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:17:\"slider2-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('41', '16', '_wp_attached_file', '2015/07/slider3.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('42', '16', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:327;s:4:\"file\";s:19:\"2015/07/slider3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider3-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x239.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:17:\"slider3-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('43', '17', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('44', '17', '_edit_lock', '1436070701:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('45', '19', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('46', '19', 'field_5598d51a98149', 'a:11:{s:3:\"key\";s:19:\"field_5598d51a98149\";s:5:\"label\";s:16:\"Cat Header Image\";s:4:\"name\";s:16:\"cat_header_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:29:\"Choose News Cat Header Image.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('48', '19', 'position', 'normal');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('49', '19', 'layout', 'no_box');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('50', '19', 'hide_on_screen', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('51', '19', '_edit_lock', '1436079525:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('52', '19', 'field_5598d6117b97d', 'a:11:{s:3:\"key\";s:19:\"field_5598d6117b97d\";s:5:\"label\";s:17:\"Cat Feature Image\";s:4:\"name\";s:17:\"cat_feature_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:24:\"Choose Cat Feature Image\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('53', '19', 'rule', 'a:5:{s:5:\"param\";s:11:\"ef_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"list_cat\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('54', '21', '_wp_attached_file', '2015/07/hotelicon.png');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('55', '21', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:21;s:6:\"height\";i:23;s:4:\"file\";s:21:\"2015/07/hotelicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('56', '22', '_wp_attached_file', '2015/07/hotel.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('57', '22', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:154;s:4:\"file\";s:17:\"2015/07/hotel.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hotel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:15:\"hotel-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"feature-news-date-archive\";a:4:{s:4:\"file\";s:16:\"hotel-170x90.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('58', '23', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('59', '23', '_edit_lock', '1436082373:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('60', '25', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('61', '25', '_edit_lock', '1436082808:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('62', '26', '_wp_attached_file', '2015/07/eduicon.png');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('63', '26', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:34;s:6:\"height\";i:28;s:4:\"file\";s:19:\"2015/07/eduicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('64', '27', '_wp_attached_file', '2015/07/edu1.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('65', '27', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:196;s:6:\"height\";i:154;s:4:\"file\";s:16:\"2015/07/edu1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"edu1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:14:\"edu1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"feature-news-date-archive\";a:4:{s:4:\"file\";s:15:\"edu1-170x90.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('66', '28', '_wp_attached_file', '2015/07/automobileicon.png');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('67', '28', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:34;s:6:\"height\";i:24;s:4:\"file\";s:26:\"2015/07/automobileicon.png\";s:5:\"sizes\";a:1:{s:16:\"cat_header_image\";a:4:{s:4:\"file\";s:24:\"automobileicon-21x23.png\";s:5:\"width\";i:21;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('68', '29', '_wp_attached_file', '2015/07/car.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('69', '29', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:198;s:6:\"height\";i:154;s:4:\"file\";s:15:\"2015/07/car.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"car-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:13:\"car-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"feature-news-date-archive\";a:4:{s:4:\"file\";s:14:\"car-170x90.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"cat_header_image\";a:4:{s:4:\"file\";s:13:\"car-21x23.jpg\";s:5:\"width\";i:21;s:6:\"height\";i:23;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"cat_feature_image\";a:4:{s:4:\"file\";s:15:\"car-198x154.jpg\";s:5:\"width\";i:198;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('70', '30', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('71', '30', '_edit_lock', '1436083502:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('72', '31', '_wp_attached_file', '2015/07/realestateicon.png');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('73', '31', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:26;s:6:\"height\";i:25;s:4:\"file\";s:26:\"2015/07/realestateicon.png\";s:5:\"sizes\";a:1:{s:16:\"cat_header_image\";a:4:{s:4:\"file\";s:24:\"realestateicon-21x23.png\";s:5:\"width\";i:21;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('74', '32', '_wp_attached_file', '2015/07/home.jpg');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('75', '32', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:198;s:6:\"height\";i:154;s:4:\"file\";s:16:\"2015/07/home.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"home-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"feature-news-footer\";a:4:{s:4:\"file\";s:14:\"home-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"feature-news-date-archive\";a:4:{s:4:\"file\";s:15:\"home-170x90.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"cat_header_image\";a:4:{s:4:\"file\";s:14:\"home-21x23.jpg\";s:5:\"width\";i:21;s:6:\"height\";i:23;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"cat_feature_image\";a:4:{s:4:\"file\";s:16:\"home-198x154.jpg\";s:5:\"width\";i:198;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('76', '33', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('77', '33', '_edit_lock', '1436083904:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('78', '34', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('79', '34', '_edit_lock', '1436090014:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('82', '36', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('83', '36', '_edit_lock', '1436084851:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('84', '38', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('85', '38', '_edit_lock', '1436091941:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('86', '1', '_edit_lock', '1436095707:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('87', '1', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('90', '40', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('91', '40', 'field_55991d68fedfe', 'a:14:{s:3:\"key\";s:19:\"field_55991d68fedfe\";s:5:\"label\";s:4:\"Link\";s:4:\"name\";s:4:\"link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:9:\"Ener link\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('94', '40', 'position', 'normal');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('95', '40', 'layout', 'no_box');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('96', '40', 'hide_on_screen', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('97', '40', '_edit_lock', '1436226690:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('98', '41', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('99', '41', '_edit_lock', '1436098027:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('100', '41', 'link', 'http://www.ekantipur.com');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('101', '41', '_link', 'field_55991d68fedfe');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('102', '42', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('103', '42', '_edit_lock', '1436098733:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('104', '42', 'link', 'http://www.enayapatrika.com/');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('105', '42', '_link', 'field_55991d68fedfe');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('106', '43', '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Send\"]</p>');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('107', '43', '_mail', 'a:8:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:40:\"[your-name] <mahendrarajdhami@gmail.com>\";s:4:\"body\";s:191:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on onlinesubidha (http://localhost/mahen.dev/onlinesubidha)\";s:9:\"recipient\";s:26:\"mahendrarajdhami@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('108', '43', '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:42:\"onlinesubidha <mahendrarajdhami@gmail.com>\";s:4:\"body\";s:133:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on onlinesubidha (http://localhost/mahen.dev/onlinesubidha)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: mahendrarajdhami@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('109', '43', '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:16:\"invalid_too_long\";s:23:\"This input is too long.\";s:17:\"invalid_too_short\";s:24:\"This input is too short.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('110', '43', '_additional_settings', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('111', '43', '_locale', 'en_US');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('112', '44', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('113', '44', '_edit_lock', '1436225376:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('116', '40', 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"newspaper\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('117', '49', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('118', '49', 'field_559b157b0ff49', 'a:14:{s:3:\"key\";s:19:\"field_559b157b0ff49\";s:5:\"label\";s:6:\"Office\";s:4:\"name\";s:6:\"office\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:22:\"Enter the office name.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:38:\"eg. नेपाल टेलिकम\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('119', '49', 'field_559b15fd0ff4a', 'a:14:{s:3:\"key\";s:19:\"field_559b15fd0ff4a\";s:5:\"label\";s:7:\"Website\";s:4:\"name\";s:7:\"website\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:32:\"Enter the web address for office\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"eg. www.ntc.net.np\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('121', '49', 'position', 'normal');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('122', '49', 'layout', 'no_box');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('123', '49', 'hide_on_screen', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('124', '49', '_edit_lock', '1436230988:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('127', '53', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('128', '53', 'office', 'नेपाल टेलिकम');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('129', '53', '_office', 'field_559b157b0ff49');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('130', '53', 'website', 'www.ntc.net.np');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('131', '53', '_website', 'field_559b15fd0ff4a');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('132', '53', '_edit_lock', '1436230781:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('133', '54', '_menu_item_type', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('134', '54', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('135', '54', '_menu_item_object_id', '54');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('136', '54', '_menu_item_object', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('137', '54', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('138', '54', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('139', '54', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('140', '54', '_menu_item_url', 'http://localhost/mahen.dev/onlinesubidha/');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('141', '54', '_menu_item_orphaned', '1436227728');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('142', '55', '_menu_item_type', 'post_type');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('143', '55', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('144', '55', '_menu_item_object_id', '44');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('145', '55', '_menu_item_object', 'page');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('146', '55', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('147', '55', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('148', '55', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('149', '55', '_menu_item_url', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('150', '55', '_menu_item_orphaned', '1436227729');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('151', '56', '_menu_item_type', 'post_type');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('152', '56', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('153', '56', '_menu_item_object_id', '36');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('154', '56', '_menu_item_object', 'page');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('155', '56', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('156', '56', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('157', '56', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('158', '56', '_menu_item_url', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('159', '56', '_menu_item_orphaned', '1436227729');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('160', '57', '_menu_item_type', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('161', '57', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('162', '57', '_menu_item_object_id', '57');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('163', '57', '_menu_item_object', 'custom');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('164', '57', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('165', '57', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('166', '57', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('167', '57', '_menu_item_url', 'http://localhost/mahen.dev/onlinesubidha/');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('168', '57', '_menu_item_orphaned', '1436228028');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('169', '58', '_menu_item_type', 'post_type');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('170', '58', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('171', '58', '_menu_item_object_id', '44');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('172', '58', '_menu_item_object', 'page');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('173', '58', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('174', '58', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('175', '58', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('176', '58', '_menu_item_url', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('177', '58', '_menu_item_orphaned', '1436228028');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('178', '59', '_menu_item_type', 'post_type');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('179', '59', '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('180', '59', '_menu_item_object_id', '36');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('181', '59', '_menu_item_object', 'page');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('182', '59', '_menu_item_target', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('183', '59', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('184', '59', '_menu_item_xfn', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('185', '59', '_menu_item_url', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('186', '59', '_menu_item_orphaned', '1436228028');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('187', '61', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('188', '61', 'field_559b1a6887319', 'a:10:{s:3:\"key\";s:19:\"field_559b1a6887319\";s:5:\"label\";s:13:\"Download File\";s:4:\"name\";s:13:\"download_file\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:15:\"Enter the file.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('190', '61', 'position', 'normal');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('191', '61', 'layout', 'no_box');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('192', '61', 'hide_on_screen', '');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('193', '61', '_edit_lock', '1436228195:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('194', '61', 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"download\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('195', '63', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('196', '63', '_edit_lock', '1436228601:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('197', '64', '_wp_attached_file', '2015/07/internet_adsl_form.pdf');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('198', '63', 'download_file', '64');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('199', '63', '_download_file', 'field_559b1a6887319');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('200', '65', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('201', '65', '_edit_lock', '1436228906:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('202', '67', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('203', '67', '_edit_lock', '1436230157:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('204', '49', 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"links\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('205', '70', '_edit_last', '1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('206', '70', '_edit_lock', '1436231168:1');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('207', '70', 'office', 'नेपाल तेलिकोम');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('208', '70', '_office', 'field_559b157b0ff49');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('209', '70', 'website', 'www.ntc.net.np');
INSERT INTO `wp_onlinesubidha_postmeta` VALUES ('210', '70', '_website', 'field_559b15fd0ff4a');

-- ----------------------------
-- Table structure for wp_onlinesubidha_posts
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_posts`;
CREATE TABLE `wp_onlinesubidha_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_posts
-- ----------------------------
INSERT INTO `wp_onlinesubidha_posts` VALUES ('1', '1', '2015-07-04 02:58:42', '2015-07-04 02:58:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello!!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-07-05 11:12:44', '2015-07-05 11:12:44', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=1', '0', 'post', '', '1');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('3', '1', '2015-07-04 02:59:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-04 02:59:03', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=3', '0', 'post', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('4', '1', '2015-07-04 03:04:48', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-04 03:04:48', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=4', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('12', '1', '2015-07-05 02:40:58', '2015-07-05 02:40:58', 'This is recent news for testing.This is recent news for testing.This is recent news for testing.\r\n\r\nThis is recent news for testing.This is recent news for testing.This is recent news for testing.\r\n\r\nThis is recent news for testing.This is recent news for testing.This is recent news for testing.\r\n\r\nThis is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.This is recent news for testing.', 'This is recent news', '', 'publish', 'closed', 'closed', '', 'this-is-recent-news', '', '', '2015-07-05 02:40:58', '2015-07-05 02:40:58', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=news&#038;p=12', '0', 'news', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('13', '1', '2015-07-05 02:40:51', '2015-07-05 02:40:51', '', 'edu', '', 'inherit', 'open', 'open', '', 'edu', '', '', '2015-07-05 02:40:51', '2015-07-05 02:40:51', '', '12', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/edu.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('14', '1', '2015-07-05 02:41:42', '2015-07-05 02:41:42', '', 'slider1', '', 'inherit', 'open', 'open', '', 'slider1', '', '', '2015-07-05 02:41:42', '2015-07-05 02:41:42', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider1.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('15', '1', '2015-07-05 02:42:11', '2015-07-05 02:42:11', '', 'slider2', '', 'inherit', 'open', 'open', '', 'slider2', '', '', '2015-07-05 02:42:11', '2015-07-05 02:42:11', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider2.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('16', '1', '2015-07-05 02:42:29', '2015-07-05 02:42:29', '', 'slider3', '', 'inherit', 'open', 'open', '', 'slider3', '', '', '2015-07-05 02:42:29', '2015-07-05 02:42:29', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/slider3.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('17', '1', '2015-07-05 03:41:45', '2015-07-05 03:41:45', 'This is another latest news for testing no image.This is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no imageThis is another latest news for testing no image', 'This is another latest news for testing no image and testing for long title.If there is long title it should be trimed', '', 'publish', 'closed', 'closed', '', 'this-is-another-latest-news-for-testing-no-image', '', '', '2015-07-05 03:49:27', '2015-07-05 03:49:27', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=news&#038;p=17', '0', 'news', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('18', '1', '2015-07-05 06:55:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-05 06:55:04', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=acf&p=18', '0', 'acf', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('19', '1', '2015-07-05 06:58:22', '2015-07-05 06:58:22', '', 'NewsCatCustomFields', '', 'publish', 'closed', 'closed', '', 'acf_newscatcustomfields', '', '', '2015-07-05 07:01:06', '2015-07-05 07:01:06', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=acf&#038;p=19', '0', 'acf', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('20', '1', '2015-07-05 06:58:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-05 06:58:35', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&p=20', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('21', '1', '2015-07-05 07:04:21', '2015-07-05 07:04:21', '', 'hotelicon', '', 'inherit', 'open', 'open', '', 'hotelicon', '', '', '2015-07-05 07:04:21', '2015-07-05 07:04:21', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/hotelicon.png', '0', 'attachment', 'image/png', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('22', '1', '2015-07-05 07:04:42', '2015-07-05 07:04:42', '', 'hotel', '', 'inherit', 'open', 'open', '', 'hotel', '', '', '2015-07-05 07:04:42', '2015-07-05 07:04:42', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/hotel.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('23', '1', '2015-07-05 07:28:20', '2015-07-05 07:28:20', 'This is hoel mall content.', 'This is Hotel Malla', '', 'publish', 'closed', 'closed', '', 'this-is-hotel-malla', '', '', '2015-07-05 07:48:30', '2015-07-05 07:48:30', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&#038;p=23', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('24', '1', '2015-07-05 07:36:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-05 07:36:22', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&p=24', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('25', '1', '2015-07-05 07:55:12', '2015-07-05 07:55:12', '', 'Kantipur Engineering College', '', 'publish', 'closed', 'closed', '', 'kantipur-engineering-college', '', '', '2015-07-05 07:55:12', '2015-07-05 07:55:12', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&#038;p=25', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('26', '1', '2015-07-05 07:56:41', '2015-07-05 07:56:41', '', 'eduicon', '', 'inherit', 'open', 'open', '', 'eduicon', '', '', '2015-07-05 07:56:41', '2015-07-05 07:56:41', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/eduicon.png', '0', 'attachment', 'image/png', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('27', '1', '2015-07-05 07:57:13', '2015-07-05 07:57:13', '', 'edu', '', 'inherit', 'open', 'open', '', 'edu-2', '', '', '2015-07-05 07:57:13', '2015-07-05 07:57:13', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/edu1.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('28', '1', '2015-07-05 08:04:25', '2015-07-05 08:04:25', '', 'automobileicon', '', 'inherit', 'open', 'open', '', 'automobileicon', '', '', '2015-07-05 08:04:25', '2015-07-05 08:04:25', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/automobileicon.png', '0', 'attachment', 'image/png', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('29', '1', '2015-07-05 08:04:40', '2015-07-05 08:04:40', '', 'car', '', 'inherit', 'open', 'open', '', 'car', '', '', '2015-07-05 08:04:40', '2015-07-05 08:04:40', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/car.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('30', '1', '2015-07-05 08:05:19', '2015-07-05 08:05:19', '', 'This is new car model', '', 'publish', 'closed', 'closed', '', 'this-is-new-car-model', '', '', '2015-07-05 08:05:19', '2015-07-05 08:05:19', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&#038;p=30', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('31', '1', '2015-07-05 08:08:51', '2015-07-05 08:08:51', '', 'realestateicon', '', 'inherit', 'open', 'open', '', 'realestateicon', '', '', '2015-07-05 08:08:51', '2015-07-05 08:08:51', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/realestateicon.png', '0', 'attachment', 'image/png', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('32', '1', '2015-07-05 08:09:48', '2015-07-05 08:09:48', '', 'home', '', 'inherit', 'open', 'open', '', 'home', '', '', '2015-07-05 08:09:48', '2015-07-05 08:09:48', '', '0', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/home.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('33', '1', '2015-07-05 08:10:17', '2015-07-05 08:10:17', '', 'Chhaimale Resort', '', 'publish', 'closed', 'closed', '', 'chhaimale-resort', '', '', '2015-07-05 08:10:17', '2015-07-05 08:10:17', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=list&#038;p=33', '0', 'list', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('34', '1', '2015-07-05 08:21:28', '2015-07-05 08:21:28', '', 'कान्तिपुर', '', 'publish', 'closed', 'closed', '', '%e0%a4%95%e0%a4%be%e0%a4%a8%e0%a5%8d%e0%a4%a4%e0%a4%bf%e0%a4%aa%e0%a5%81%e0%a4%b0', '', '', '2015-07-05 09:55:55', '2015-07-05 09:55:55', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=news_paper&#038;p=34', '0', 'news_paper', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('36', '1', '2015-07-05 08:29:50', '2015-07-05 08:29:50', '', 'News Papers', '', 'publish', 'open', 'open', '', 'newspapers', '', '', '2015-07-05 08:29:50', '2015-07-05 08:29:50', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?page_id=36', '0', 'page', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('37', '1', '2015-07-05 08:29:50', '2015-07-05 08:29:50', '', 'News Papers', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-07-05 08:29:50', '2015-07-05 08:29:50', '', '36', 'http://localhost/mahen.dev/onlinesubidha/37/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('38', '1', '2015-07-05 10:28:02', '2015-07-05 10:28:02', '', 'दिशा निर्देशन', '', 'publish', 'closed', 'closed', '', '%e0%a4%a6%e0%a4%bf%e0%a4%b6%e0%a4%be-%e0%a4%a8%e0%a4%bf%e0%a4%b0%e0%a5%8d%e0%a4%a6%e0%a5%87%e0%a4%b6%e0%a4%a8', '', '', '2015-07-05 10:28:02', '2015-07-05 10:28:02', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=news_paper&#038;p=38', '0', 'news_paper', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('39', '1', '2015-07-05 11:12:44', '2015-07-05 11:12:44', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello!!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-05 11:12:44', '2015-07-05 11:12:44', '', '1', 'http://localhost/mahen.dev/onlinesubidha/39/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('40', '1', '2015-07-05 12:06:15', '2015-07-05 12:06:15', '', 'Url Link', '', 'publish', 'closed', 'closed', '', 'acf_url-link', '', '', '2015-07-06 23:53:20', '2015-07-06 23:53:20', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=acf&#038;p=40', '0', 'acf', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('41', '1', '2015-07-05 12:09:29', '2015-07-05 12:09:29', '', 'कान्तिपुर समाचार', '', 'publish', 'closed', 'closed', '', '%e0%a4%95%e0%a4%be%e0%a4%a8%e0%a5%8d%e0%a4%a4%e0%a4%bf%e0%a4%aa%e0%a5%81%e0%a4%b0-%e0%a4%b8%e0%a4%ae%e0%a4%be%e0%a4%9a%e0%a4%be%e0%a4%b0', '', '', '2015-07-05 12:09:29', '2015-07-05 12:09:29', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=newspaper&#038;p=41', '0', 'newspaper', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('42', '1', '2015-07-05 12:14:03', '2015-07-05 12:14:03', '', 'नया पत्रिका', '', 'publish', 'closed', 'closed', '', '%e0%a4%a8%e0%a4%af%e0%a4%be-%e0%a4%aa%e0%a4%a4%e0%a5%8d%e0%a4%b0%e0%a4%bf%e0%a4%95%e0%a4%be', '', '', '2015-07-05 12:18:52', '2015-07-05 12:18:52', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=newspaper&#038;p=42', '0', 'newspaper', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('43', '1', '2015-07-05 14:48:22', '2015-07-05 14:48:22', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit \"Send\"]</p>\n[your-subject]\n[your-name] <mahendrarajdhami@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on onlinesubidha (http://localhost/mahen.dev/onlinesubidha)\nmahendrarajdhami@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nonlinesubidha <mahendrarajdhami@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on onlinesubidha (http://localhost/mahen.dev/onlinesubidha)\n[your-email]\nReply-To: mahendrarajdhami@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-07-06 15:35:14', '2015-07-06 15:35:14', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=wpcf7_contact_form&#038;p=43', '0', 'wpcf7_contact_form', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('44', '1', '2015-07-06 02:11:32', '2015-07-06 02:11:32', '[contact-form-7 id=\"43\" title=\"Contact form 1\"]', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-07-06 15:23:21', '2015-07-06 15:23:21', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?page_id=44', '0', 'page', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('45', '1', '2015-07-06 02:11:32', '2015-07-06 02:11:32', '', 'Contact', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-07-06 02:11:32', '2015-07-06 02:11:32', '', '44', 'http://localhost/mahen.dev/onlinesubidha/45/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('46', '1', '2015-07-06 02:11:46', '2015-07-06 02:11:46', 'This is contact page.', 'Contact', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-07-06 02:11:46', '2015-07-06 02:11:46', '', '44', 'http://localhost/mahen.dev/onlinesubidha/46/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('47', '1', '2015-07-06 15:23:21', '2015-07-06 15:23:21', '[contact-form-7 id=\"43\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-07-06 15:23:21', '2015-07-06 15:23:21', '', '44', 'http://localhost/mahen.dev/onlinesubidha/47/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('48', '1', '2015-07-06 23:51:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-06 23:51:13', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=download&p=48', '0', 'download', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('49', '1', '2015-07-06 23:59:04', '2015-07-06 23:59:04', '', 'LinkFields', '', 'publish', 'closed', 'closed', '', 'acf_linkfields', '', '', '2015-07-07 01:05:29', '2015-07-07 01:05:29', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=acf&#038;p=49', '0', 'acf', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('50', '1', '2015-07-06 23:59:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-06 23:59:32', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=link&p=50', '0', 'link', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('51', '1', '2015-07-07 00:00:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 00:00:29', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=link&p=51', '0', 'link', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('52', '1', '2015-07-07 00:02:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 00:02:28', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=link&p=52', '0', 'link', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('53', '1', '2015-07-07 00:03:56', '2015-07-07 00:03:56', '', 'Nepal Telecom', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2015-07-07 00:15:49', '2015-07-07 00:15:49', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=link&#038;p=53', '0', 'link', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('54', '1', '2015-07-07 00:08:48', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:08:48', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=54', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('55', '1', '2015-07-07 00:08:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:08:48', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=55', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('56', '1', '2015-07-07 00:08:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:08:49', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=56', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('57', '1', '2015-07-07 00:13:47', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:13:47', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=57', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('58', '1', '2015-07-07 00:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:13:48', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=58', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('59', '1', '2015-07-07 00:13:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-07 00:13:48', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?p=59', '1', 'nav_menu_item', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('60', '1', '2015-07-07 00:16:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 00:16:00', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=download&p=60', '0', 'download', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('61', '1', '2015-07-07 00:17:43', '2015-07-07 00:17:43', '', 'DownloadFields', '', 'publish', 'closed', 'closed', '', 'acf_downloadfields', '', '', '2015-07-07 00:18:51', '2015-07-07 00:18:51', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=acf&#038;p=61', '0', 'acf', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('62', '1', '2015-07-07 00:17:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 00:17:49', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=download&p=62', '0', 'download', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('63', '1', '2015-07-07 00:20:20', '2015-07-07 00:20:20', '', 'Adsl form', '', 'publish', 'closed', 'closed', '', 'adsl-form', '', '', '2015-07-07 00:20:20', '2015-07-07 00:20:20', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=download&#038;p=63', '0', 'download', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('64', '1', '2015-07-07 00:20:03', '2015-07-07 00:20:03', '', 'internet_adsl_form', '', 'inherit', 'open', 'open', '', 'internet_adsl_form', '', '', '2015-07-07 00:20:03', '2015-07-07 00:20:03', '', '63', 'http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/internet_adsl_form.pdf', '0', 'attachment', 'application/pdf', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('65', '1', '2015-07-07 00:29:26', '2015-07-07 00:29:26', '', 'Downloads', '', 'publish', 'open', 'open', '', 'downloads', '', '', '2015-07-07 00:29:26', '2015-07-07 00:29:26', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?page_id=65', '0', 'page', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('66', '1', '2015-07-07 00:29:26', '2015-07-07 00:29:26', '', 'Downloads', '', 'inherit', 'open', 'open', '', '65-revision-v1', '', '', '2015-07-07 00:29:26', '2015-07-07 00:29:26', '', '65', 'http://localhost/mahen.dev/onlinesubidha/66/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('67', '1', '2015-07-07 00:31:01', '2015-07-07 00:31:01', '', 'links', '', 'publish', 'open', 'open', '', 'links', '', '', '2015-07-07 00:31:01', '2015-07-07 00:31:01', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?page_id=67', '0', 'page', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('68', '1', '2015-07-07 00:31:01', '2015-07-07 00:31:01', '', 'links', '', 'inherit', 'open', 'open', '', '67-revision-v1', '', '', '2015-07-07 00:31:01', '2015-07-07 00:31:01', '', '67', 'http://localhost/mahen.dev/onlinesubidha/68/', '0', 'revision', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('69', '1', '2015-07-07 01:05:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-07 01:05:00', '0000-00-00 00:00:00', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=links&p=69', '0', 'links', '', '0');
INSERT INTO `wp_onlinesubidha_posts` VALUES ('70', '1', '2015-07-07 01:06:07', '2015-07-07 01:06:07', '', 'Nepal Telecom', '', 'publish', 'closed', 'closed', '', 'nepal-telecom', '', '', '2015-07-07 01:06:07', '2015-07-07 01:06:07', '', '0', 'http://localhost/mahen.dev/onlinesubidha/?post_type=links&#038;p=70', '0', 'links', '', '0');

-- ----------------------------
-- Table structure for wp_onlinesubidha_terms
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_terms`;
CREATE TABLE `wp_onlinesubidha_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_terms
-- ----------------------------
INSERT INTO `wp_onlinesubidha_terms` VALUES ('1', 'Uncategorized', 'uncategorized', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('2', 'Hotel', 'hotel', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('3', 'Education', 'education', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('4', 'Automobile', 'automobile', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('5', 'Real Estate', 'real-estate', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('6', 'दैनिक पत्रिका', 'daily', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('7', 'साप्ताहिक पत्रिका', 'weekly', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('8', 'दैनिक पत्रिका', 'daily', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('9', 'साप्ताहिक पत्रिका', 'weekly', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('10', 'मासिक पत्रिका', 'monthly', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('11', 'अनलाइन समाचार', 'onlinenews', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('12', 'वेब टेलिभिजन', 'webtelevision', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('13', 'अन्तराष्ट्रिय समाचार', 'onlinenews-2', '0');
INSERT INTO `wp_onlinesubidha_terms` VALUES ('14', 'Antiviruses', 'antiviruses', '0');

-- ----------------------------
-- Table structure for wp_onlinesubidha_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_term_relationships`;
CREATE TABLE `wp_onlinesubidha_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_term_relationships
-- ----------------------------
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('1', '1', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('23', '2', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('25', '3', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('30', '4', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('33', '5', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('34', '6', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('34', '8', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('38', '9', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('41', '8', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('42', '8', '0');
INSERT INTO `wp_onlinesubidha_term_relationships` VALUES ('63', '14', '0');

-- ----------------------------
-- Table structure for wp_onlinesubidha_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_term_taxonomy`;
CREATE TABLE `wp_onlinesubidha_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_term_taxonomy
-- ----------------------------
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('2', '2', 'list_cat', 'Famous Hotels in Nepal.', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('3', '3', 'list_cat', 'Education sectors in Nepal', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('4', '4', 'list_cat', 'Different models of Automobile', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('5', '5', 'list_cat', 'Listing of Real Estate', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('6', '6', 'news_paper_cat', '', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('7', '7', 'news_paper_cat', '', '0', '0');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('8', '8', 'newspaper_cat', '', '0', '3');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('9', '9', 'newspaper_cat', '', '0', '1');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('10', '10', 'newspaper_cat', '', '0', '0');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('11', '11', 'newspaper_cat', '', '0', '0');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('12', '12', 'newspaper_cat', '', '0', '0');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('13', '13', 'newspaper_cat', '', '0', '0');
INSERT INTO `wp_onlinesubidha_term_taxonomy` VALUES ('14', '14', 'download_cat', '', '0', '1');

-- ----------------------------
-- Table structure for wp_onlinesubidha_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_usermeta`;
CREATE TABLE `wp_onlinesubidha_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_usermeta
-- ----------------------------
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('1', '1', 'nickname', 'admin');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('6', '1', 'comment_shortcuts', 'false');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('7', '1', 'admin_color', 'fresh');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('8', '1', 'use_ssl', '0');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('9', '1', 'show_admin_bar_front', 'true');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('10', '1', 'wp_onlinesubidha_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('11', '1', 'wp_onlinesubidha_user_level', '10');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('12', '1', 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('13', '1', 'show_welcome_panel', '1');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('15', '1', 'wp_onlinesubidha_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('16', '1', 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('17', '1', 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('18', '1', 'wp_onlinesubidha_user-settings', 'libraryContent=browse');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('19', '1', 'wp_onlinesubidha_user-settings-time', '1436029808');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('20', '1', 'simple_local_avatar', 'a:5:{s:4:\"full\";s:95:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/admin_avatar_1436010923.jpg\";i:64;s:101:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/admin_avatar_1436010923-64x64.jpg\";i:26;s:101:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/admin_avatar_1436010923-26x26.jpg\";i:96;s:101:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/admin_avatar_1436010923-96x96.jpg\";i:24;s:101:\"http://localhost/mahen.dev/onlinesubidha/wp-content/uploads/2015/07/admin_avatar_1436010923-24x24.jpg\";}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('21', '1', 'simple_local_avatar_rating', 'G');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('22', '1', 'session_tokens', 'a:2:{s:64:\"5516ef5586ef1a57a64dd98e18c2bfc63a0ec108b952cc0213415dc245c45454\";a:4:{s:10:\"expiration\";i:1436206467;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\";s:5:\"login\";i:1436033667;}s:64:\"ef4bc0bf713f753915dee56e70e3ce778dc1b91f81c2e1bffcc41662421278fc\";a:4:{s:10:\"expiration\";i:1436368824;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\";s:5:\"login\";i:1436196024;}}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('23', '1', 'closedpostboxes_list', 'a:0:{}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('24', '1', 'metaboxhidden_list', 'a:2:{i:0;s:6:\"acf_19\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('25', '1', 'closedpostboxes_newspaper', 'a:0:{}');
INSERT INTO `wp_onlinesubidha_usermeta` VALUES ('26', '1', 'metaboxhidden_newspaper', 'a:2:{i:0;s:6:\"acf_19\";i:1;s:7:\"slugdiv\";}');

-- ----------------------------
-- Table structure for wp_onlinesubidha_users
-- ----------------------------
DROP TABLE IF EXISTS `wp_onlinesubidha_users`;
CREATE TABLE `wp_onlinesubidha_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wp_onlinesubidha_users
-- ----------------------------
INSERT INTO `wp_onlinesubidha_users` VALUES ('1', 'admin', '$P$B7.m6yUAj7DUomEwA.pfn/s.bq3mOC.', 'admin', 'mahendrarajdhami@gmail.com', '', '2015-07-04 02:58:41', '', '0', 'admin');
