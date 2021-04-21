-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 02:15 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradisesignature.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_aios_leads`
--

CREATE TABLE `wp_aios_leads` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-14 04:43:18', '2021-04-14 04:43:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/isd-projects/paradisesignature.com', 'yes'),
(2, 'home', 'http://localhost/isd-projects/paradisesignature.com', 'yes'),
(3, 'blogname', 'paradisesignature.com', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'peter.cenir@august99.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:32:\"aios-initial-setup/asis_main.php\";i:1;s:33:\"cyclone-slider/cyclone-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'aios-starter-theme', 'yes'),
(41, 'stylesheet', 'paradisesignature.com', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '400', 'yes'),
(60, 'medium_size_h', '400', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1633927390', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"primary-sidebar\";a:0:{}s:13:\"mobile-header\";a:0:{}s:23:\"aios-inner-pages-banner\";a:0:{}s:17:\"my-custom-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:11:\"header-info\";a:1:{i:0;s:13:\"custom_html-2\";}s:12:\"hp-slideshow\";a:1:{i:0;s:23:\"cyclone-slider-widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1618926202;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618937002;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618980201;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618980258;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618980261;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619066601;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:1560:\"<!-- Header Info -->\r\n<div class=\"header-inner\">\r\n    <div class=\"burger-menu\">\r\n        <span></span>\r\n        <span></span>\r\n        <span></span>\r\n    </div>\r\n    <div class=\"header-logo\">\r\n        <a href=\"[blogurl]\" aria-label=\"logo\">\r\n            <img alt=\"logo\" class=\"img-responsive\" src=\"[stylesheet_directory]/images/header-logo.png\">\r\n        </a>\r\n    </div>\r\n    <div class=\"header-info\">\r\n        <div class=\"header-phone-mail\">\r\n            <div class=\"header-phone\">\r\n                [ai_phone href=\"+1.123.456.7890\"]<img alt=\"icon\" class=\"img-responsive\" src=\"[stylesheet_directory]/images/phone-icon.png\"> +123.456.789.0[/ai_phone]\r\n                <div class=\"header-phone-hover\">\r\n                    <img alt=\"icon\" class=\"img-responsive\" src=\"[stylesheet_directory]/images/phone-icon.png\">\r\n                    [ai_phone href=\"+1.123.456.7890\"] +123.456.789.0[/ai_phone]  \r\n                </div>\r\n            </div>\r\n            <div class=\"header-email\">\r\n               [mail_to email=\"user@thedesignpeople.com\"]<img alt=\"icon\" class=\"img-responsive\" src=\"[stylesheet_directory]/images/email-icon.png\">user@thedesignpeople.com[/mail_to]\r\n            </div>\r\n        </div>\r\n        <div class=\"header-smi\">\r\n            <a href=\"#\" aria-label=\"facebook\" target=\"_blank\">\r\n                <span class=\"ai-font-facebook\"></span>\r\n            </a>\r\n            <a href=\"#\" aria-label=\"instagram\" target=\"_blank\">\r\n                <span class=\"ai-font-instagram\"></span>\r\n            </a>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!-- End  -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1618376571;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1618893873;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618893877;s:7:\"checked\";a:5:{s:18:\"aios-starter-theme\";s:5:\"2.0.3\";s:21:\"paradisesignature.com\";s:5:\"1.6.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1618980259', 'no'),
(129, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0', '1618980260', 'no'),
(131, '_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'aios_initial_setup_modules', 'a:1:{s:14:\"classic-editor\";s:3:\"yes\";}', 'yes'),
(151, 'aios-modules-classic-editor-install', 'installed', 'yes'),
(152, 'classic-editor-replace', 'classic', 'yes'),
(153, 'classic-editor-allow-users', 'disallow', 'yes'),
(154, 'aios_leads_version', '1.0.4', 'yes'),
(155, 'widget_aios_post_information_by_category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_idx_platinum_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_idx_broker_featured_property_js', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_ihf_featured_properties', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'widget_ihf_js_featured_properties', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_aios-mobile-header', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_testimonial_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_aios_rss', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, '_transient_asis_initial_setup_advanced_setting_modules', '1', 'yes'),
(164, '_transient_timeout_jsondata_ai_detail', '1619086048', 'no'),
(165, '_transient_jsondata_ai_detail', 'a:13:{s:2:\"id\";s:10:\"agentimage\";s:9:\"sub-title\";s:26:\"Real Estate Website Design\";s:4:\"logo\";a:4:{s:5:\"large\";s:59:\"https://resources.agentimage.com/images/agentimage-logo.png\";s:6:\"medium\";s:66:\"https://resources.agentimage.com/images/agentimage-logo-medium.png\";s:5:\"small\";s:65:\"https://resources.agentimage.com/images/agentimage-logo-small.png\";s:9:\"thumbnail\";s:69:\"https://resources.agentimage.com/images/agentimage-logo-thumbnail.png\";}s:9:\"bootstrap\";a:2:{s:9:\"normalize\";s:70:\"https://resources.agentimage.com/libraries/css/bootstrap-normalize.css\";s:4:\"grid\";s:65:\"https://resources.agentimage.com/libraries/css/bootstrap-grid.css\";}s:7:\"favicon\";a:8:{s:4:\"html\";s:0:\"\";s:11:\"apple-touch\";s:68:\"https://resources.agentimage.com/images/favicon/apple-touch-icon.png\";s:10:\"favicon-32\";s:65:\"https://resources.agentimage.com/images/favicon/favicon-32x32.png\";s:10:\"favicon-16\";s:65:\"https://resources.agentimage.com/images/favicon/favicon-16x16.png\";s:8:\"manifest\";s:61:\"https://resources.agentimage.com/images/favicon/manifest.json\";s:3:\"svg\";s:69:\"https://resources.agentimage.com/images/favicon/safari-pinned-tab.svg\";s:9:\"svg-color\";s:6:\"5bbad5\";s:11:\"theme-color\";s:6:\"009bbb\";}s:7:\"address\";a:1:{s:13:\"international\";s:54:\"1700 E. Walnut Avenue, Suite 400, El Segundo, CA 90245\";}s:13:\"email-address\";a:4:{s:5:\"sales\";s:19:\"info@agentimage.com\";s:7:\"support\";s:22:\"support@agentimage.com\";s:8:\"business\";s:23:\"business@agentimage.com\";s:9:\"marketing\";s:24:\"marketing@agentimage.com\";}s:5:\"phone\";a:4:{s:5:\"sales\";s:14:\"1.800.979.5799\";s:7:\"support\";s:14:\"1.877.317.4111\";s:13:\"international\";s:14:\"1.310.595.9033\";s:3:\"fax\";s:14:\"1.310.301.4449\";}s:12:\"social-media\";a:8:{s:8:\"facebook\";s:36:\"https://www.facebook.com/AgentImage/\";s:7:\"twitter\";s:31:\"https://twitter.com/agentimage/\";s:11:\"google-plus\";s:36:\"https://plus.google.com/+agentimage/\";s:8:\"linkedin\";s:45:\"https://www.linkedin.com/company/agent-image/\";s:9:\"pinterest\";s:37:\"https://www.pinterest.com/agentimage/\";s:9:\"instagram\";s:37:\"https://www.instagram.com/agentimage/\";s:4:\"yelp\";s:47:\"https://www.yelp.com/biz/agent-image-el-segundo\";s:7:\"youtube\";s:56:\"https://www.youtube.com/channel/UCGGJsDKGIv4aMpgfXk8oetw\";}s:15:\"welcome-message\";a:1:{s:4:\"html\";s:310:\"Need help with your website?Let us do the SEO, PPC, Blogging, Content Development, and Social Media work you need to succeed! Also you can view our custom solutions our standalone products like press release creation and distribution, video SEO, online reviews management and web directory submission services.\";}s:15:\"success-journal\";a:3:{s:5:\"title\";s:40:\"Watch The Latest Video from Agent Image!\";s:9:\"sub-title\";s:44:\"3 Things To Do After You Launch Your Website\";s:8:\"video-id\";s:11:\"C_cWTNg5F_8\";}s:16:\"feed_image_regex\";s:32:\"https:\\/\\/cdn\\.agentimage\\.com\\/\";s:8:\"feed_uri\";s:37:\"https://www.agentimage.com/blog/feed/\";}', 'no'),
(166, 'current_theme', 'paradisesignature.com', 'yes'),
(167, 'theme_mods_paradisesignature.com', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(169, 'ai_starter_theme_force_sidebar_visibility', '', 'yes'),
(173, 'ai_starter_theme_agentimage_credits', 'Real Estate Website Design by <a target=\'_blank\' href=\'https://www.agentimage.com\' style=\'text-decoration:underline;font-weight:bold\'>Agent Image</a>', 'yes'),
(186, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"6\",\"critical\":\"1\"}', 'yes'),
(211, '_site_transient_timeout_browser_430c8bfe8bf1cc772d8a7ec27f27106c', '1619162689', 'no'),
(212, '_site_transient_browser_430c8bfe8bf1cc772d8a7ec27f27106c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.128\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(213, '_site_transient_timeout_php_check_70b0f2e71e10d268b0bc7f081eb76a94', '1619162690', 'no'),
(214, '_site_transient_php_check_70b0f2e71e10d268b0bc7f081eb76a94', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(224, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618893877;s:7:\"checked\";a:4:{s:32:\"aios-initial-setup/asis_main.php\";s:5:\"5.4.8\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:33:\"cyclone-slider/cyclone-slider.php\";s:5:\"3.2.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"cyclone-slider/cyclone-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/cyclone-slider\";s:4:\"slug\";s:14:\"cyclone-slider\";s:6:\"plugin\";s:33:\"cyclone-slider/cyclone-slider.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/cyclone-slider/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/cyclone-slider.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-256x256.png?rev=1635519\";s:2:\"1x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-128x128.png?rev=1635519\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/cyclone-slider/assets/banner-772x250.jpg?rev=1635519\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(225, 'widget_cyclone-slider-widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:9:\"slideshow\";s:12:\"hp-slideshow\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(231, 'aios-generate-pages', 'a:6:{s:21:\"what-is-my-home-worth\";s:21:\"what-is-my-home-worth\";s:18:\"find-my-dream-home\";s:18:\"find-my-dream-home\";s:16:\"help-me-relocate\";s:16:\"help-me-relocate\";s:10:\"contact-us\";s:7:\"contact\";s:7:\"sitemap\";s:7:\"sitemap\";s:8:\"404-page\";s:9:\"not-found\";}', 'yes'),
(235, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(254, 'aios-enqueue-cdn', 'a:3:{s:9:\"simplebar\";s:1:\"1\";s:10:\"expiration\";s:3:\"999\";s:5:\"slick\";s:1:\"1\";}', 'yes'),
(266, '_site_transient_timeout_theme_roots', '1618895676', 'no'),
(267, '_site_transient_theme_roots', 'a:5:{s:18:\"aios-starter-theme\";s:7:\"/themes\";s:21:\"paradisesignature.com\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:44:\"Seller Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1377:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">PERSONAL INFORMATION</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[city]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Approximate Date of Move:</strong></td>\n		<td>[datemove]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">PROPERTY INFORMATION</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Bedrooms:</strong></td>\n		<td>[beds]</td>\n	</tr>\n	<tr>\n		<td><strong>Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_form', '<div class=\"aidefcf-title\">\n	<span>Selling your home?</span>\n	We’re here to help you price it right – get a comparative market analysis today.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text city placeholder \"City\"] [text state placeholder \"State\"] [text zip placeholder \"Zip\"]</div>\n		[text datemove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Home specifications</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select beds \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(6, 6, '_wp_page_template', 'default'),
(7, 7, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(8, 7, '_mail', 'a:8:{s:7:\"subject\";s:43:\"Buyer Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1611:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">CONTACT INFORMATION</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[city]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">I AM LOOKING FOR THIS TYPE OF PROPERTY</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Date of Move:</strong></td>\n		<td>[datemove]</td>\n	</tr>\n	<tr>\n		<td><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">DESIRED HOME</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Min. Bedrooms:</strong></td>\n		<td>[beds]</td>\n	</tr>\n	<tr>\n		<td><strong>Min. Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(9, 7, '_form', '<div class=\"aidefcf-title\">\n	<span>Are you ready to find your dream home?</span>\n	Tell us what you’re looking for! Get the latest listings delivered straight to your inbox.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text city placeholder \"City\"] [text state placeholder \"State\"] [text  zip placeholder \"Zip\"]</div>\n		[text datemove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n		<span>Desired Home</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select beds \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(10, 8, '_wp_page_template', 'default'),
(11, 9, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(12, 9, '_mail', 'a:8:{s:7:\"subject\";s:48:\"Relocation Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1399:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">PERSONAL INFORMATION </td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[preferredcity]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Approximate Date of Move:</strong></td>\n		<td>[ApproximateDateofMove]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">DESIRED HOME</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Bedrooms:</strong></td>\n		<td>[minbedrooms]</td>\n	</tr>\n	<tr>\n		<td><strong>Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(13, 9, '_form', '<div class=\"aidefcf-title\">\n	<span>Want a smooth, stress-free move?</span>\n	Of course you do! Find out how we can help you today.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text preferredcity placeholder \"City\"] [text state placeholder \"State\"] [text zip placeholder \"Zip\"]</div>\n		[text ApproximateDateofMove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Desired Home</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select minbedrooms \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(14, 10, '_wp_page_template', 'default'),
(15, 11, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(16, 11, '_mail', 'a:8:{s:7:\"subject\";s:37:\"Inquiry from your Agent Image website\";s:6:\"sender\";s:30:\"[fname] [lname] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:512:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td width=\"200\"><strong>First Name:</strong></td>\n		<td>[fname]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Last Name:</strong></td>\n		<td>[lname]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Email Address:</strong></td>\n		<td>[your-email]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone Number:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(17, 11, '_form', '<div class=\"ai-default-cf7wrap ai-contact-wrap\">\n	Required fields are marked  *\n	[text* fname placeholder \"First Name *\"]\n	[text* lname placeholder \"Last Name *\"]\n	<div class=\"aidefcf-cl2\">[email* your-email placeholder \"Email Address *\"] [tel* Phone placeholder \"Phone Number *\"]</div>\n	[textarea comments placeholder \"Additional Comments\"]\n	[submit \"Send\"]\n</div>'),
(18, 12, '_wp_page_template', 'default'),
(19, 13, '_wp_page_template', 'default'),
(20, 14, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(21, 14, '_mail', 'a:8:{s:7:\"subject\";s:46:\"404 Page Inquiry from your Agent Image website\";s:6:\"sender\";s:42:\"[first-name] [last-name] <[email-address]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:478:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td width=\"200\"><strong>First Name:</td>\n		<td>[first-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Last Name:</td>\n		<td>[last-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Email Address:</td>\n		<td>[email-address]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone Number:</td>\n		<td>[phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Additional Comments:</td>\n		<td>[message]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:25:\"Reply-To: [email-address]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(22, 14, '_form', '<div class=\"error-form-wrapper\">\n	<h4>Need Assistance?</h4>\n	<div class=\"error-forms\">\n\n		<div class=\"error-col\">\n			<div class=\"error-row\">\n				<p>[text* first-name placeholder \"First Name *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[text* last-name placeholder \"Last Name *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[email* email-address placeholder \"Email Address *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[text phone placeholder \"Phone Number\"]</p>\n			</div>\n		</div>\n		<div class=\"error-col\">\n			<div class=\"error-row\">\n				<p>[textarea message placeholder \"Your Message\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[submit \"Send\"]</p>\n			</div>\n		</div>\n	</div>\n</div>'),
(23, 16, '_wp_attached_file', '2021/04/header-banner.jpg'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:911;s:4:\"file\";s:25:\"2021/04/header-banner.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"header-banner-400x228.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"header-banner-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"header-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"header-banner-768x437.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"header-banner-1536x875.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:875;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"header-banner-150x85.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 15, '_edit_last', '1'),
(26, 15, '_cycloneslider_metas', 'a:1:{i:0;a:28:{s:2:\"id\";i:16;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:5:\"false\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:0;}}'),
(27, 15, '_cycloneslider_settings', 'a:15:{s:8:\"template\";s:10:\"responsive\";s:2:\"fx\";s:4:\"fade\";s:7:\"timeout\";i:4000;s:5:\"speed\";i:1000;s:5:\"width\";i:1600;s:6:\"height\";i:798;s:11:\"hover_pause\";s:5:\"false\";s:14:\"show_prev_next\";i:0;s:8:\"show_nav\";i:0;s:10:\"tile_count\";i:7;s:10:\"tile_delay\";i:100;s:13:\"tile_vertical\";s:4:\"true\";s:6:\"random\";i:0;s:6:\"resize\";i:0;s:16:\"width_management\";s:4:\"full\";}'),
(28, 15, '_edit_lock', '1618571139:1'),
(29, 25, '_menu_item_type', 'post_type'),
(30, 25, '_menu_item_menu_item_parent', '0'),
(31, 25, '_menu_item_object_id', '17'),
(32, 25, '_menu_item_object', 'page'),
(33, 25, '_menu_item_target', ''),
(34, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 25, '_menu_item_xfn', ''),
(36, 25, '_menu_item_url', ''),
(38, 26, '_menu_item_type', 'post_type'),
(39, 26, '_menu_item_menu_item_parent', '0'),
(40, 26, '_menu_item_object_id', '18'),
(41, 26, '_menu_item_object', 'page'),
(42, 26, '_menu_item_target', ''),
(43, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 26, '_menu_item_xfn', ''),
(45, 26, '_menu_item_url', ''),
(47, 27, '_menu_item_type', 'post_type'),
(48, 27, '_menu_item_menu_item_parent', '0'),
(49, 27, '_menu_item_object_id', '21'),
(50, 27, '_menu_item_object', 'page'),
(51, 27, '_menu_item_target', ''),
(52, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 27, '_menu_item_xfn', ''),
(54, 27, '_menu_item_url', ''),
(56, 28, '_menu_item_type', 'post_type'),
(57, 28, '_menu_item_menu_item_parent', '0'),
(58, 28, '_menu_item_object_id', '22'),
(59, 28, '_menu_item_object', 'page'),
(60, 28, '_menu_item_target', ''),
(61, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 28, '_menu_item_xfn', ''),
(63, 28, '_menu_item_url', ''),
(65, 29, '_menu_item_type', 'post_type'),
(66, 29, '_menu_item_menu_item_parent', '26'),
(67, 29, '_menu_item_object_id', '23'),
(68, 29, '_menu_item_object', 'page'),
(69, 29, '_menu_item_target', ''),
(70, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 29, '_menu_item_xfn', ''),
(72, 29, '_menu_item_url', ''),
(74, 30, '_menu_item_type', 'post_type'),
(75, 30, '_menu_item_menu_item_parent', '0'),
(76, 30, '_menu_item_object_id', '24'),
(77, 30, '_menu_item_object', 'page'),
(78, 30, '_menu_item_target', ''),
(79, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 30, '_menu_item_xfn', ''),
(81, 30, '_menu_item_url', ''),
(83, 31, '_menu_item_type', 'post_type'),
(84, 31, '_menu_item_menu_item_parent', '0'),
(85, 31, '_menu_item_object_id', '12'),
(86, 31, '_menu_item_object', 'page'),
(87, 31, '_menu_item_target', ''),
(88, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 31, '_menu_item_xfn', ''),
(90, 31, '_menu_item_url', ''),
(92, 32, '_menu_item_type', 'post_type'),
(93, 32, '_menu_item_menu_item_parent', '26'),
(94, 32, '_menu_item_object_id', '19'),
(95, 32, '_menu_item_object', 'page'),
(96, 32, '_menu_item_target', ''),
(97, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 32, '_menu_item_xfn', ''),
(99, 32, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-14 04:43:18', '2021-04-14 04:43:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-14 04:43:18', '2021-04-14 04:43:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-14 04:43:18', '2021-04-14 04:43:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/isd-projects/paradisesignature.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-14 04:43:18', '2021-04-14 04:43:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-14 04:43:18', '2021-04-14 04:43:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/isd-projects/paradisesignature.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-14 04:43:18', '2021-04-14 04:43:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-14 04:44:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-14 04:44:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=4', 0, 'post', '', 0),
(5, 1, '2021-04-16 07:36:17', '2021-04-16 07:36:17', 'Auto Generated by Initial Setup', 'What is My Home Worth? (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'what-is-my-home-worth-auto-generated-by-aios-initial-setup', '', '', '2021-04-16 07:36:17', '2021-04-16 07:36:17', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2021-04-16 07:36:18', '2021-04-16 07:36:18', '<div class=\"aidefcf-wrapper aidefcf-wrapper-what-is-my-home-worth?-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"5\" title=\"What is My Home Worth? (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'What is My Home Worth?', '', 'publish', 'closed', 'closed', '', 'what-is-my-home-worth', '', '', '2021-04-16 07:36:18', '2021-04-16 07:36:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/what-is-my-home-worth/', 0, 'page', '', 0),
(7, 1, '2021-04-16 07:36:18', '2021-04-16 07:36:18', 'Auto Generated by Initial Setup', 'Find My Dream Home! (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'find-my-dream-home-auto-generated-by-aios-initial-setup', '', '', '2021-04-16 07:36:18', '2021-04-16 07:36:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2021-04-16 07:36:18', '2021-04-16 07:36:18', '<div class=\"aidefcf-wrapper aidefcf-wrapper-find-my-dream-home!-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"7\" title=\"Find My Dream Home! (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Find My Dream Home!', '', 'publish', 'closed', 'closed', '', 'find-my-dream-home', '', '', '2021-04-16 07:36:18', '2021-04-16 07:36:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/find-my-dream-home/', 0, 'page', '', 0),
(9, 1, '2021-04-16 07:36:18', '2021-04-16 07:36:18', 'Auto Generated by Initial Setup', 'Help Me Relocate! (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'help-me-relocate-auto-generated-by-aios-initial-setup', '', '', '2021-04-16 07:36:18', '2021-04-16 07:36:18', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=9', 0, 'wpcf7_contact_form', '', 0),
(10, 1, '2021-04-16 07:36:19', '2021-04-16 07:36:19', '<div class=\"aidefcf-wrapper aidefcf-wrapper-help-me-relocate!-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"9\" title=\"Help Me Relocate! (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Help Me Relocate!', '', 'publish', 'closed', 'closed', '', 'help-me-relocate', '', '', '2021-04-16 07:36:19', '2021-04-16 07:36:19', '', 0, 'http://localhost/isd-projects/paradisesignature.com/help-me-relocate/', 0, 'page', '', 0),
(11, 1, '2021-04-16 07:36:19', '2021-04-16 07:36:19', 'Auto Generated by Initial Setup', 'Contact Us (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'contact-us-auto-generated-by-aios-initial-setup', '', '', '2021-04-16 07:36:19', '2021-04-16 07:36:19', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=11', 0, 'wpcf7_contact_form', '', 0),
(12, 1, '2021-04-16 07:36:19', '2021-04-16 07:36:19', '<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\"><p><div class=\"ai-default-cf7wrap\">\n<div class=\"aidefcf-title\"><span>We would love to hear from you!</span>Send us a message and we’ll get right back in touch.</div>\n<div class=\"ai-contact-wrap\"><span class=\"content-title\">AgentImage</span><br><span class=\"context-mob\"><em class=\"ai-font-phone\"></em>[ai_phone href=\"877.317.4111\"]877.317.4111[/ai_phone]</span><br><span class=\"context-email\"><em class=\"ai-font-envelope\"></em>[mail_to email=\"support@agentimage.com\"]support@agentimage.com[/mail_to]</span></div>\n</div></p> [contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-04-16 07:36:19', '2021-04-16 07:36:19', '', 0, 'http://localhost/isd-projects/paradisesignature.com/contact-us/', 0, 'page', '', 0),
(13, 1, '2021-04-16 07:36:20', '2021-04-16 07:36:20', '[sitemap]', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2021-04-16 07:36:20', '2021-04-16 07:36:20', '', 0, 'http://localhost/isd-projects/paradisesignature.com/sitemap/', 0, 'page', '', 0),
(14, 1, '2021-04-16 07:36:20', '2021-04-16 07:36:20', 'Auto Generated by Initial Setup', '404 Page Form (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', '404-page-form-auto-generated-by-aios-initial-setup', '', '', '2021-04-16 07:36:20', '2021-04-16 07:36:20', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=14', 0, 'wpcf7_contact_form', '', 0),
(15, 1, '2021-04-16 07:38:38', '2021-04-16 07:38:38', '', 'Hp Slideshow', '', 'publish', 'closed', 'closed', '', 'hp-slideshow', '', '', '2021-04-16 07:38:38', '2021-04-16 07:38:38', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?post_type=cycloneslider&#038;p=15', 0, 'cycloneslider', '', 0),
(16, 1, '2021-04-16 07:38:18', '2021-04-16 07:38:18', '', 'header-banner', '', 'inherit', 'closed', 'closed', '', 'header-banner-2', '', '', '2021-04-16 07:38:18', '2021-04-16 07:38:18', '', 15, 'http://localhost/isd-projects/paradisesignature.com/wp-content/uploads/2021/04/header-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/about/', 0, 'page', '', 0),
(18, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Property Search', '', 'publish', 'closed', 'closed', '', 'property-search', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/property-search/', 0, 'page', '', 0),
(19, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Featured Listings', '', 'publish', 'closed', 'closed', '', 'featured-listings', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/featured-listings/', 0, 'page', '', 0),
(20, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Sold Properties', '', 'publish', 'closed', 'closed', '', 'sold-properties', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/sold-properties/', 0, 'page', '', 0),
(21, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Company Profile', '', 'publish', 'closed', 'closed', '', 'company-profile', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/company-profile/', 0, 'page', '', 0),
(22, 1, '2021-04-16 09:53:50', '2021-04-16 09:53:50', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Buyers', '', 'publish', 'closed', 'closed', '', 'buyers', '', '', '2021-04-16 09:53:50', '2021-04-16 09:53:50', '', 0, 'http://localhost/isd-projects/paradisesignature.com/buyers/', 0, 'page', '', 0),
(23, 1, '2021-04-16 09:53:51', '2021-04-16 09:53:51', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Sold Listings', '', 'publish', 'closed', 'closed', '', 'sold-listings', '', '', '2021-04-16 09:53:51', '2021-04-16 09:53:51', '', 0, 'http://localhost/isd-projects/paradisesignature.com/sold-listings/', 0, 'page', '', 0),
(24, 1, '2021-04-16 09:53:51', '2021-04-16 09:53:51', '<strong>Thank you for visiting paradisesignature.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\nFrom here, feel free to go back to our <a href=\"http://localhost/isd-projects/paradisesignature.com\"><strong>Homepage</strong></a>, or send us any inquiries you may have and we\\\'ll get right back in touch.\n\n<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\">[contact-form-7 id=\"11\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>\n', 'Sellers', '', 'publish', 'closed', 'closed', '', 'sellers', '', '', '2021-04-16 09:53:51', '2021-04-16 09:53:51', '', 0, 'http://localhost/isd-projects/paradisesignature.com/sellers/', 0, 'page', '', 0),
(25, 1, '2021-04-16 09:55:33', '2021-04-16 09:55:33', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-04-16 09:55:33', '2021-04-16 09:55:33', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2021-04-16 09:55:33', '2021-04-16 09:55:33', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-04-16 09:55:33', '2021-04-16 09:55:33', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2021-04-16 09:55:34', '2021-04-16 09:55:34', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-04-16 09:55:34', '2021-04-16 09:55:34', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2021-04-16 09:55:34', '2021-04-16 09:55:34', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-04-16 09:55:34', '2021-04-16 09:55:34', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2021-04-16 09:55:33', '2021-04-16 09:55:33', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-04-16 09:55:33', '2021-04-16 09:55:33', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2021-04-16 09:55:34', '2021-04-16 09:55:34', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2021-04-16 09:55:34', '2021-04-16 09:55:34', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=30', 7, 'nav_menu_item', '', 0),
(31, 1, '2021-04-16 09:55:34', '2021-04-16 09:55:34', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2021-04-16 09:55:34', '2021-04-16 09:55:34', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=31', 8, 'nav_menu_item', '', 0),
(32, 1, '2021-04-16 09:55:33', '2021-04-16 09:55:33', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2021-04-16 09:55:33', '2021-04-16 09:55:33', '', 0, 'http://localhost/isd-projects/paradisesignature.com/?p=32', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'agentimage'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b02005af760894b84e9b15525728dfc2dbdfc805112978fe55d8e17f1ea251bb\";a:4:{s:10:\"expiration\";i:1618997745;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1618824945;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1618558714'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'agentimage', '$P$B7xiPYGGGXzoEFTgR0ZS8DIMij3Bpo0', 'agentimage', 'peter.cenir@august99.com', 'http://localhost/isd-projects/paradisesignature.com', '2021-04-14 04:43:16', '', 0, 'agentimage');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aios_leads`
--
ALTER TABLE `wp_aios_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_aios_leads`
--
ALTER TABLE `wp_aios_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
