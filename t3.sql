-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2016 at 10:41 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `t3`
--

-- --------------------------------------------------------

--
-- Table structure for table `t3_assets`
--

CREATE TABLE IF NOT EXISTS `t3_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=256 ;

--
-- Dumping data for table `t3_assets`
--

INSERT INTO `t3_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 570, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 365, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 366, 367, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 368, 369, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 370, 371, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 372, 373, 1, 'com_login', 'com_login', '{}'),
(13, 1, 374, 375, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 376, 377, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 378, 379, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 380, 381, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 384, 471, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 472, 479, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 480, 481, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 482, 483, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 484, 485, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 486, 487, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 488, 491, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 492, 493, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 554, 555, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 105, 108, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 475, 476, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 109, 308, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 477, 478, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 110, 245, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 111, 224, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 112, 127, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 128, 189, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 190, 201, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 202, 203, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 204, 223, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 246, 277, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 247, 252, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 253, 274, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 278, 291, 3, 'com_content.category.29', 'Fruit Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 279, 284, 4, 'com_content.category.30', 'Growers', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 113, 114, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 130, 131, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 132, 133, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 134, 135, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 129, 144, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 145, 152, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 153, 166, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 167, 180, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 191, 192, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 193, 194, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 195, 196, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 197, 198, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 205, 206, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 275, 276, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 154, 155, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 225, 226, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 115, 116, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 117, 118, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 265, 266, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 254, 263, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 264, 273, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 156, 157, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 285, 286, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 207, 208, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 209, 210, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 158, 159, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 248, 249, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 250, 251, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 160, 161, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 287, 288, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 227, 228, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 229, 230, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 280, 281, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 214, 361, 362, 4, 'com_content.article.24', 'Joomla! Testing', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 255, 256, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 168, 169, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 136, 137, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 146, 147, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 184, 185, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 138, 139, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 140, 141, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 231, 232, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 257, 258, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 267, 268, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 233, 234, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 162, 163, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 142, 143, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 235, 236, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 119, 120, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 170, 171, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 211, 212, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 292, 293, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 259, 260, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 172, 173, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 174, 175, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 213, 214, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 237, 238, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 239, 240, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 199, 200, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 241, 242, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 215, 216, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 121, 122, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 243, 244, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 123, 124, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 164, 165, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 148, 149, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 261, 262, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 282, 283, 5, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 176, 177, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 125, 126, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 186, 187, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 217, 218, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 269, 270, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 271, 272, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 150, 151, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 183, 188, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 54, 289, 290, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 34, 106, 107, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 489, 490, 2, 'com_users.category.77', 'Uncategorised', ''),
(170, 50, 219, 220, 6, 'com_content.article.68', 'Captcha', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(171, 50, 221, 222, 6, 'com_content.article.69', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 96, 178, 179, 7, 'com_content.article.70', 'Smart Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(173, 1, 556, 557, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(174, 1, 558, 559, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(175, 39, 296, 297, 3, 'com_content.article.71', 'T3 Typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(176, 203, 310, 321, 3, 'com_content.category.78', 'Layouts', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(177, 176, 311, 312, 4, 'com_content.article.72', 'How to create the 3 columns layout?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 176, 313, 314, 4, 'com_content.article.73', '   How to create the 2 columns layout ( Sidebar + Content)?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 176, 315, 316, 4, 'com_content.article.74', 'How to create the 2 columns layout ( Content + Sidebar )', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(180, 176, 317, 318, 4, 'com_content.article.75', 'Full width layout', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 176, 319, 320, 4, 'com_content.article.76', 'Positions layout', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 184, 323, 324, 4, 'com_content.article.77', 'Page break', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 39, 298, 299, 3, 'com_content.article.78', 'Offline Page', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(184, 203, 322, 345, 3, 'com_content.category.79', 'Demo Articles', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(185, 184, 325, 326, 4, 'com_content.article.79', 'Demo Article 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(186, 39, 300, 301, 3, 'com_content.article.80', 'Demo Articles 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(187, 184, 327, 328, 4, 'com_content.article.81', 'Demo Articles 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(188, 39, 302, 303, 3, 'com_content.article.82', 'Demo Articles 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(189, 184, 329, 330, 4, 'com_content.article.83', 'Demo Article 5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(190, 184, 331, 332, 4, 'com_content.article.84', 'Demo Article 6', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(191, 184, 333, 334, 4, 'com_content.article.85', 'Demo Article 7', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(192, 184, 335, 336, 4, 'com_content.article.86', 'Demo Article 8', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(193, 184, 337, 338, 4, 'com_content.article.87', 'Demo Article 9', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(194, 184, 339, 340, 4, 'com_content.article.88', 'Demo Article 10', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(195, 196, 349, 350, 4, 'com_content.article.89', ' New Features in Joomla! 2.5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(196, 203, 346, 357, 3, 'com_content.category.80', 'T3 Bs3 Demo Content', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(197, 196, 347, 348, 4, 'com_content.article.90', 'Bootstrap from Twitter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(198, 196, 351, 352, 4, 'com_content.article.91', 'LESS  (Stylesheet Language) ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(199, 196, 353, 354, 4, 'com_content.article.92', 'Bootstrap 2.1.0 released', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(200, 196, 355, 356, 4, 'com_content.article.93', 'Joomla User eXperience', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(201, 184, 341, 342, 4, 'com_content.article.94', 'Demo Article 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(202, 184, 343, 344, 4, 'com_content.article.95', 'Demo Article 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(203, 8, 309, 364, 2, 'com_content.category.81', 'Demo content', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(204, 1, 560, 561, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(205, 1, 562, 563, 1, 'com_ajax', 'com_ajax', '{}'),
(206, 1, 564, 565, 1, 'com_postinstall', 'com_postinstall', '{}'),
(207, 18, 385, 386, 2, 'com_modules.module.114', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(208, 18, 387, 388, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(209, 18, 389, 390, 2, 'com_modules.module.115', 'Main menu sidebar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(210, 18, 391, 392, 2, 'com_modules.module.116', 'Sample Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(211, 18, 393, 394, 2, 'com_modules.module.117', 'Demo Categories', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(212, 18, 395, 396, 2, 'com_modules.module.118', 'Off-Canvas Sidebar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(213, 214, 359, 360, 4, 'com_content.article.96', 'T3 Framework Main Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(214, 203, 358, 363, 3, 'com_content.category.82', 'T3 landing page', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(215, 18, 397, 398, 2, 'com_modules.module.97', 'T3 Introduction', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(216, 18, 399, 400, 2, 'com_modules.module.96', 'T3 Masthead 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(217, 18, 401, 402, 2, 'com_modules.module.98', 'T3 Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(218, 39, 304, 305, 3, 'com_content.article.97', 'mohammad', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(219, 18, 403, 404, 2, 'com_modules.module.25', 'Site Map', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(220, 18, 405, 406, 2, 'com_modules.module.44', 'Login', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(221, 18, 407, 408, 2, 'com_modules.module.119', 'test cusstom html', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(222, 18, 409, 410, 2, 'com_modules.module.48', 'Custom HTML', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(223, 18, 411, 412, 2, 'com_modules.module.120', 'fdf', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(224, 18, 413, 414, 2, 'com_modules.module.121', 'sssssss', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(225, 18, 415, 416, 2, 'com_modules.module.122', 'top page icons menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(226, 18, 417, 418, 2, 'com_modules.module.123', 'main menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(227, 18, 419, 420, 2, 'com_modules.module.124', 'main Slider', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(228, 18, 421, 422, 2, 'com_modules.module.125', 'symbols prices', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(229, 18, 423, 424, 2, 'com_modules.module.126', 'Center title - FOREXCFDs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(230, 18, 425, 426, 2, 'com_modules.module.127', 'apply buttons', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(231, 18, 427, 428, 2, 'com_modules.module.128', 'trade image left', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(232, 18, 429, 430, 2, 'com_modules.module.129', 'MAPS INVESTMENT GROUP LTD', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(233, 18, 431, 432, 2, 'com_modules.module.130', 'trading types cfd', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(234, 18, 433, 434, 2, 'com_modules.module.131', 'trading types 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(235, 18, 435, 436, 2, 'com_modules.module.132', 'trading type 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(236, 18, 437, 438, 2, 'com_modules.module.133', 'trading platforms banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(237, 18, 439, 440, 2, 'com_modules.module.134', 'accounts types title', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(238, 18, 441, 442, 2, 'com_modules.module.135', 'trading accounts columns', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(239, 18, 443, 444, 2, 'com_modules.module.136', 'payments line images', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(240, 18, 445, 446, 2, 'com_modules.module.137', 'bottom menu list 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(241, 18, 447, 448, 2, 'com_modules.module.138', 'bottom menu list 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(242, 18, 449, 450, 2, 'com_modules.module.139', 'bottom menu list 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(243, 18, 451, 452, 2, 'com_modules.module.140', 'bottom menu list 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(244, 18, 453, 454, 2, 'com_modules.module.141', 'bottom social icons', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(245, 18, 455, 456, 2, 'com_modules.module.142', 'footer Line', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(246, 18, 457, 458, 2, 'com_modules.module.77', 'Shop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(247, 18, 459, 460, 2, 'com_modules.module.18', 'Book Store', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(248, 18, 461, 462, 2, 'com_modules.module.78', 'Contribute', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(249, 18, 463, 464, 2, 'com_modules.module.143', 'main menu maps', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(250, 18, 465, 466, 2, 'com_modules.module.144', 'maps main menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(251, 39, 306, 307, 3, 'com_content.article.98', 'about us - maps', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(252, 1, 566, 567, 1, 'com_rsform', 'RSForm!', '{}'),
(253, 18, 467, 468, 2, 'com_modules.module.145', 'Price Ticker', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(254, 18, 469, 470, 2, 'com_modules.module.146', 'Unite Revolution Slider 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(255, 1, 568, 569, 1, 'com_uniterevolution2', 'com_uniterevolution2', '{"revolution2.slidersetting":{"7":1},"revolution2.slideroperations":{"7":1},"revolution2.slideoperations":{"7":1},"revolution2.editslide":{"7":1} }');

-- --------------------------------------------------------

--
-- Table structure for table `t3_associations`
--

CREATE TABLE IF NOT EXISTS `t3_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_banners`
--

CREATE TABLE IF NOT EXISTS `t3_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t3_banners`
--

INSERT INTO `t3_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(2, 3, 0, 'Bootstrap 3', 'shop-1', 0, 37, 0, 'http://getbootstrap.com/', 1, 15, 'Sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.', '', 0, 1, '', '{"imageurl":"images\\/joomlart\\/old-thumbnail\\/demo-s1.jpg","width":"","height":"","alt":"Bootstrap 3"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 42, 'Joomla', '2013-11-23 04:43:18', 542, 2),
(3, 2, 0, 'Ultilize LESS', 'shop-2', 0, 35, 0, 'http://lesscss.org/', 1, 15, 'The dynamic stylesheet language.', '', 0, 2, '', '{"imageurl":"images\\/joomlart\\/old-thumbnail\\/demo-s2.jpg","width":"","height":"","alt":"Ultilize LESS"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 42, 'Joomla', '2013-11-23 04:45:13', 542, 3),
(4, 1, 0, 'JUX', 'support-joomla', 0, 41, 0, 'https://jux.com/', 1, 15, 'Simply the best showcase for you', '', 0, 3, '', '{"imageurl":"images\\/joomlart\\/old-thumbnail\\/demo-s4.jpg","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 42, 'Joomla', '2013-11-23 04:45:03', 542, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t3_banner_clients`
--

CREATE TABLE IF NOT EXISTS `t3_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t3_banner_clients`
--

INSERT INTO `t3_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1),
(2, 'Shop', 'Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'Bookstore', 'Bookstore Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t3_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `t3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_categories`
--

CREATE TABLE IF NOT EXISTS `t3_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `t3_categories`
--

INSERT INTO `t3_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 145, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 109, '*', 1),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 16, '*', 1),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-component.png" border="0" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-module.png" border="0" alt="Media Image" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Template_Manager_Templates">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Language_Manager_Installed">Help</a></p>\r\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 6, 'en-GB', 1),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Fruit Shop Site', 'fruit-shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Growers', 'growers', '', '<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 1, '*', 1),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=285">Home Page</a></li>\r\n<li><a href="index.php?Itemid=316">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=424">Home Page</a></li>\r\n<li><a href="index.php?Itemid=423">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez-5', 'com_content', 'Beez 5', 'beez-5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=458">Home Page</a></li>\r\n<li><a href="index.php?Itemid=457">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recipes', 'recipes', '', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(77, 169, 1, 133, 134, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(78, 176, 81, 136, 137, 2, 'demo-content/layouts', 'com_content', 'Layouts', 'layouts', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-08-23 03:51:18', 542, '2013-11-15 08:44:48', 10, '*', 1),
(79, 184, 81, 138, 139, 2, 'demo-content/demo-articles', 'com_content', 'Demo Articles', 'demo-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-11-08 04:59:28', 542, '2013-11-15 08:44:53', 54, '*', 1),
(80, 196, 81, 140, 141, 2, 'demo-content/t3-bs3-demo-content', 'com_content', 'T3 Bs3 Demo Content', 't3-bs3-demo-content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-11-15 08:24:27', 542, '2013-11-15 08:44:59', 0, '*', 1),
(81, 203, 1, 135, 144, 1, 'demo-content', 'com_content', 'Demo content', 'demo-content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-11-15 08:44:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(82, 214, 81, 142, 143, 2, 'demo-content/t3-landing-page', 'com_content', 'T3 landing page', 't3-landing-page', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2013-11-30 04:03:47', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_contact_details`
--

CREATE TABLE IF NOT EXISTS `t3_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `t3_contact_details`
--

INSERT INTO `t3_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'email@example.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/bananas_2.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'Apples', 'apples', 'Scientific Name: Malus domestica', 'Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/tamarind.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t3_content`
--

CREATE TABLE IF NOT EXISTS `t3_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `t3_content`
--

INSERT INTO `t3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Banners_Banners_Edit">Help</a></p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Redirect_Manager">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_archive,Archived Articles}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 1, 5, 'modules, content', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_categories,Articles Categories}</div>\r\n<p> </p>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 1, 6, 'modules, content', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Articles_Category">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_category,Articles Category}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 1, 7, '', 'articles,content', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n<li>LDAP <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP">Help</a></li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>', '', 1, 26, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Banners">Help</a>.</p>\r\n<div class="sample-module">{loadmodule banners,Banners}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 6, '', '', 1, 0, '', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n', '\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners'' Areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\r\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href="http://community.joomla.org/showcase/">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href="http://extensions.joomla.org/">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional in the <a href="http://resources.joomla.org/">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href="http://community.joomla.org/events.html">Joomla! Day</a> or other event or joining a local <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Can''t find one near you? Start one yourself.</p>', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 542, '2013-11-12 08:55:39', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 105, 'Contacts', 'contact', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Contacts_Contacts">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Content_Article_Manager">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '<p> </p>\r\n', '\r\n<p> </p>', 1, 73, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg","float_intro":"","image_intro_alt":"Cradle Mountain","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg","float_fulltext":"none","image_fulltext_alt":"Cradle Mountain","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\r\n<div class="sample-module">{loadmodule custom,Custom HTML}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 111, 'Directions', 'directions', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', '', 1, 29, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(14, 112, 'Editors', 'editors', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror">Help</a></li>\r\n<li>TinyMCE<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE"> Help</a></li>\r\n<li>No Editor <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Editor_-_None">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Image"> Help</a></li>\r\n<li>Editor Button: Readmore <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Readmore">Help</a></li>\r\n<li>Editor Button: Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak">Help</a></li>\r\n<li>Editor Button: Article <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Button_-_Article">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '<p>This module allows the displaying of a syndicated feed. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Feed_Display" title="Feed Display Module">Help</a></p>\r\n<div class="sample-module">{loadmodule feed,Feed Display}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 27, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 27, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\r\n<div class="sample-module">{loadmodule footer,Footer}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, '', '', 1, 0, '', 0, '*', ''),
(20, 118, 'Fruit Shop', 'fruit-shop', '<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>', '', 1, 29, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\r\n<li><a href="http://docs.joomla.org">Documentation</a></li>\r\n<li><a href="http://resources.joomla.org">Professionals</a></li>\r\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\r\n</ul>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 8, '', '', 1, 0, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "submit article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 121, 'Happy Orange Orchard', 'happy-orange-orchard', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', '', 1, 30, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(24, 122, 'Joomla! Testing', 'joomla', '', '', 1, 82, '2011-01-01 00:00:01', 42, 'Joomla', '2016-04-23 12:29:48', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 2, '', '', 1, 2169, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 123, 'Koala', 'koala', '<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n', '\r\n<p> </p>', 1, 72, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg","float_intro":"","image_intro_alt":"Koala  Thumbnail","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg","float_fulltext":"","image_fulltext_alt":"Koala Climbing Tree","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial"> the instructions in this tutorial</a>.</p>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `t3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(27, 125, 'Latest Articles Module', 'latest-articles-module', '<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_latest,Latest News}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, 'modules, content', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Login Module', 'login-module', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Login" title="Login">Help</a></p>\r\n<div class="sample-module">{loadmodule login,login}</div>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Menu">Help</a></p>\r\n<div class="sample-module">{loadmodule mod_menu,Menu Example}</div>', '', 1, 75, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 3, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_popular,Articles Most Read}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, 'modules, content', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_news,News Flash}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, 'modules, content', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Options', 'options', '<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 131, 'Phyllopteryx', 'phyllopteryx', '<p> </p>\r\n', '\r\n<p> </p>', 1, 72, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg","float_intro":"","image_intro_alt":"Phyllopteryx","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg","float_fulltext":"","image_fulltext_alt":"Phyllopteryx","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '<p> </p>\r\n', '\r\n<p> </p>', 1, 73, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg","float_intro":"","image_intro_alt":"Kings Canyon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg","float_fulltext":"","image_fulltext_alt":"Kings Canyon","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later."}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n', '\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href="http://docs.joomla.org/Joomla_3_FAQ#What_are_the_major_differences_between_Joomla.21_2.5_and_3.3F">Changes since 1.5</a></li>\r\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\r\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\r\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\r\n<li><a href="http://api.joomla.org">Joomla! API</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\r\n<li><a href="http://docs.joomla.org/J2.5:Xml-rpc_changes_in_Joomla!">Xmlrpc</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\r\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\r\n<li><a href="github.com/joomla">The Joomla! Platform Repository</a> </li>\r\n</ul>', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '<p>This module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\r\n<div class="sample-module">{loadmodule random_image,Random Image}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\r\n<div class="sample-module">{loadmodule related_items,Articles Related Items}</div>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, 'modules, content', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href="http://docs.joomla.org/Modifying_a_Joomla!_Template">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 11, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 137, 'Search', 'search-component', '<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Search">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Search" title="Search">Help</a></p>\r\n<div class="sample-module">{loadmodule search,Search}</div>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 4, '', '', 1, 0, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Content">Help</a></li>\r\n<li>Contacts <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Contacts">Help</a></li>\r\n<li>Weblinks <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Weblinks">Help</a></li>\r\n<li>News Feeds <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds">Help</a></li>\r\n<li>Categories <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Search_-_Categories">Help</a></li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 14, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 6, '', '', 1, 1, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '<p> </p>\r\n<p> </p>\r\n', '\r\n<p> </p>', 1, 72, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg","float_intro":"","image_intro_alt":"Spotted Quoll","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg","float_fulltext":"","image_fulltext_alt":"Spotted Quoll","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class="sample-module">{loadmodule mod_stats,Statistics}</div>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Syndication_Feeds" title="Synicate Module">Help</a></p>\r\n<div class="sample-module">{loadposition syndicate,Syndicate}</div>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 144, 'System', 'system', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Remember_Me">Help</a></li>\r\n<li>SEF <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_SEF">Help</a></li>\r\n<li>Debug <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Debug">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Cache">Help</a></li>\r\n<li>Log <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Log">Help</a></li>\r\n<li>Redirect <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#System_-_Redirect">Help</a></li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 147, 'Typography', 'typography', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', 1, 23, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 2, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n', '\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/J2.5:Access_Control_List_Tutorial"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(51, 149, 'User', 'user-plugins', '<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Joomla.21">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#User_-_Profile">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 150, 'Users', 'users-component', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Users_User_Manager">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Weblinks_Links">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 6, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\r\n<div class="sample-module">{loadmodule weblinks,Weblinks}</div>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 5, '', '', 1, 0, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\r\n<div class="sample-module">{loadmodule whosonline,Who''s Online}</div>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', '');
INSERT INTO `t3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(57, 155, 'Wobbegone', 'wobbegone', '<p> </p>\r\n', '\r\n<p> </p>', 1, 72, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg","float_intro":"","image_intro_alt":"Wobbegon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg","float_fulltext":"","image_fulltext_alt":"Wobbegon","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(58, 156, 'Wonderful Watermelon', 'wonderful-watermelon', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', '', 1, 30, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\r\n<div class="sample-module">{loadmodule wrapper,Wrapper}</div>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Components_Newsfeeds_Feeds">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\r\n<div class="sample-module">{loadmodule breadcrumbs,breadcrumbs}</div>', '', 1, 75, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking">Help</a></li>\r\n<li>Load Module <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules">Help</a></li>\r\n<li>Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak">Help</a></li>\r\n<li>Page Navigation<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation"> Help</a></li>\r\n<li>Vote <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit#Content_-_Vote">Help</a></li>\r\n</ul>\r\n', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 7, '', '', 1, 0, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '<p> </p>\r\n', '\r\n<p> </p>', 1, 73, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg","float_intro":"none","image_intro_alt":"Rain Forest Blue Mountains","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg","float_fulltext":"","image_fulltext_alt":"Rain Forest Blue Mountains","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '<p> </p>\r\n', '\r\n<p> </p>', 1, 73, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg","float_intro":"none","image_intro_alt":"Ormiston Pound","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg","float_fulltext":"","image_fulltext_alt":"Ormiston Pound","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help31:Extensions_Module_Manager_Latest_Users">Help</a></p>\r\n<div class="sample-module">{loadmodule users_latest,Users Latest}</div>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, '', '', 1, 0, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 9, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 170, 'Captcha', 'captcha', '<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:20:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 171, 'Quick Icons', 'quick-icons', '<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Plugin_Manager_Edit">Help</a></li>\r\n</ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:27:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 170, 'Smart Search', 'smart-search', '<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help31:Extensions_Module_Manager_Smart_Search">Help</a>.</p>\r\n<div class="sample-module">{loadmodule finder,Smart Search}</div>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:42:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 175, 'T3 Typography', 't3-typography', '        <section id="typography">\r\n          <h2 id="headings">Headings</h2>\r\n          <p>All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code> are available.</p>\r\n          <div class="bs-docs-example">\r\n            <h1>h1. Heading 1</h1>\r\n            <h2>h2. Heading 2</h2>\r\n            <h3>h3. Heading 3</h3>\r\n            <h4>h4. Heading 4</h4>\r\n            <h5>h5. Heading 5</h5>\r\n            <h6>h6. Heading 6</h6>\r\n          </div>\r\n\r\n          <h2 id="body-copy">Body copy</h2>\r\n          <p>Bootstrap''s global default <code>font-size</code> is <strong>14px</strong>, with a <code>line-height</code> of <strong>20px</strong>. This is applied to the <code>&lt;body&gt;</code> and all paragraphs. In addition, <code>&lt;p&gt;</code> (paragraphs) receive a bottom margin of half their line-height (9px by default).</p>\r\n          <div class="bs-docs-example">\r\n            <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>\r\n            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n            <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;p&gt;...&lt;/p&gt;</pre>\r\n\r\n          <h3>Lead body copy</h3>\r\n          <p>Make a paragraph stand out by adding <code>.lead</code>.</p>\r\n          <div class="bs-docs-example">\r\n            <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;p class="lead"&gt;...&lt;/p&gt;</pre>\r\n\r\n          <h3>Built with Less</h3>\r\n          <p>The typographic scale is based on two LESS variables in <strong>variables.less</strong>: <code>@baseFontSize</code> and <code>@baseLineHeight</code>. The first is the base font-size used throughout and the second is the base line-height. We use those variables and some simple math to create the margins, paddings, and line-heights of all our type and more. Customize them and Bootstrap adapts.</p>\r\n\r\n\r\n          <hr class="bs-docs-separator">\r\n\r\n\r\n          <h2 id="emphasis">Emphasis</h2>\r\n          <p>Make use of HTML''s default emphasis tags with lightweight styles.</p>\r\n\r\n          <h3><code>&lt;small&gt;</code></h3>\r\n          <p>For de-emphasizing inline or blocks of text, <small>use the small tag.</small></p>\r\n          <div class="bs-docs-example">\r\n            <p><small>This line of text is meant to be treated as fine print.</small></p>\r\n          </div>\r\n<pre class="prettyprint">\r\n&lt;p&gt;\r\n  &lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;\r\n&lt;/p&gt;\r\n</pre>\r\n\r\n          <h3><code>&lt;strong&gt;</code></h3>\r\n          <p>For emphasizing a snippet of text with <strong>important</strong></p>\r\n          <div class="bs-docs-example">\r\n            <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;strong&gt;rendered as bold text&lt;/strong&gt;</pre>\r\n\r\n          <h3><code>&lt;em&gt;</code></h3>\r\n          <p>For emphasizing a snippet of text with <em>stress</em></p>\r\n          <div class="bs-docs-example">\r\n            <p>The following snippet of text is <em>rendered as italicized text</em>.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;em&gt;rendered as italicized text&lt;/em&gt;</pre>\r\n\r\n          <p><span class="label label-info">Heads up!</span> Feel free to use <code>&lt;b&gt;</code> and <code>&lt;i&gt;</code> in HTML5. <code>&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance while <code>&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>\r\n\r\n\r\n          <hr class="bs-docs-separator">\r\n\r\n\r\n          <h2 id="abbreviations">Abbreviations</h2>\r\n          <p>Stylized implemenation of HTML''s <code>&lt;abbr&gt;</code> element for abbreviations and acronyms to show the expanded version on hover. Abbreviations with a <code>title</code> attribute have a light dotted bottom border and a help cursor on hover, providing additional context on hover.</p>\r\n\r\n          <h3><code>&lt;abbr&gt;</code></h3>\r\n          <p>For expanded text on long hover of an abbreviation, include the <code>title</code> attribute.</p>\r\n          <div class="bs-docs-example">\r\n            <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;abbr title="attribute"&gt;attr&lt;/abbr&gt;</pre>\r\n\r\n          <h3><code>&lt;abbr class="initialism"&gt;</code></h3>\r\n          <p>Add <code>.initialism</code> to an abbreviation for a slightly smaller font-size.</p>\r\n          <div class="bs-docs-example">\r\n            <p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr> is the best thing since sliced bread.</p>\r\n          </div>\r\n          <pre class="prettyprint">&lt;abbr title="attribute" class="initialism"&gt;attr&lt;/abbr&gt;</pre>\r\n\r\n\r\n          <hr class="bs-docs-separator">\r\n\r\n\r\n          <h2 id="addresses">Addresses</h2>\r\n          <p>Present contact information for the nearest ancestor or the entire body of work.</p>\r\n\r\n          <h3><code>&lt;address&gt;</code></h3>\r\n          <p>Preserve formatting by ending all lines with <code>&lt;br&gt;</code>.</p>\r\n          <div class="bs-docs-example">\r\n            <address>\r\n              <strong>Twitter, Inc.</strong><br>\r\n              795 Folsom Ave, Suite 600<br>\r\n              San Francisco, CA 94107<br>\r\n              <abbr title="Phone">P:</abbr> (123) 456-7890\r\n            </address>\r\n            <address>\r\n              <strong>Full Name</strong><br>\r\n              <a href="mailto:#">first.last@gmail.com</a>\r\n            </address>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;address&gt;\r\n  &lt;strong&gt;Twitter, Inc.&lt;/strong&gt;&lt;br&gt;\r\n  795 Folsom Ave, Suite 600&lt;br&gt;\r\n  San Francisco, CA 94107&lt;br&gt;\r\n  &lt;abbr title="Phone"&gt;P:&lt;/abbr&gt; (123) 456-7890\r\n&lt;/address&gt;\r\n\r\n&lt;address&gt;\r\n  &lt;strong&gt;Full Name&lt;/strong&gt;&lt;br&gt;\r\n  &lt;a href="mailto:#"&gt;first.last@gmail.com&lt;/a&gt;\r\n&lt;/address&gt;\r\n</pre>\r\n\r\n\r\n          <hr class="bs-docs-separator">\r\n\r\n\r\n          <h2 id="blockquotes">Blockquotes</h2>\r\n          <p>For quoting blocks of content from another source within your document.</p>\r\n\r\n          <h3>Default blockqoute</h3>\r\n          <p>Wrap <code>&lt;blockquote&gt;</code> around any <abbr title="HyperText Markup Language">HTML</abbr> as the quote. For straight quotes we recommend a <code>&lt;p&gt;</code>.</p>\r\n          <div class="bs-docs-example">\r\n            <blockquote>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n            </blockquote>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;blockquote&gt;\r\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n</pre>\r\n\r\n          <h3>Blockquote options</h3>\r\n          <p>Style and content changes for simple variations on a standard blockquote.</p>\r\n\r\n          <h4>Naming a source</h4>\r\n          <p>Add <code>&lt;small&gt;</code> tag for identifying the source. Wrap the name of the source work in <code>&lt;cite&gt;</code>.</p>\r\n          <div class="bs-docs-example">\r\n            <blockquote>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n              <small>Someone famous in <cite title="Source Title">Source Title</cite></small>\r\n            </blockquote>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;blockquote&gt;\r\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n  &lt;small&gt;Someone famous &lt;cite title="Source Title"&gt;Source Title&lt;/cite&gt;&lt;/small&gt;\r\n&lt;/blockquote&gt;\r\n</pre>\r\n\r\n          <h4>Alternate displays</h4>\r\n          <p>Use <code>.pull-right</code> for a floated, right-aligned blockquote.</p>\r\n          <div class="bs-docs-example" style="overflow: hidden;">\r\n            <blockquote class="pull-right">\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n              <small>Someone famous in <cite title="Source Title">Source Title</cite></small>\r\n            </blockquote>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;blockquote class="pull-right"&gt;\r\n  ...\r\n&lt;/blockquote&gt;\r\n</pre>\r\n\r\n\r\n          <hr class="bs-docs-separator">\r\n\r\n\r\n          <!-- Lists -->\r\n          <h2 id="lists">Lists</h2>\r\n\r\n          <h3>Unordered</h3>\r\n          <p>A list of items in which the order does <em>not</em> explicitly matter.</p>\r\n          <div class="bs-docs-example">\r\n            <ul>\r\n              <li>Lorem ipsum dolor sit amet</li>\r\n              <li>Consectetur adipiscing elit</li>\r\n              <li>Integer molestie lorem at massa</li>\r\n              <li>Facilisis in pretium nisl aliquet</li>\r\n              <li>Nulla volutpat aliquam velit\r\n                <ul>\r\n                  <li>Phasellus iaculis neque</li>\r\n                  <li>Purus sodales ultricies</li>\r\n                  <li>Vestibulum laoreet porttitor sem</li>\r\n                  <li>Ac tristique libero volutpat at</li>\r\n                </ul>\r\n              </li>\r\n              <li>Faucibus porta lacus fringilla vel</li>\r\n              <li>Aenean sit amet erat nunc</li>\r\n              <li>Eget porttitor lorem</li>\r\n            </ul>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;ul&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n\r\n          <h3>Ordered</h3>\r\n          <p>A list of items in which the order <em>does</em> explicitly matter.</p>\r\n          <div class="bs-docs-example">\r\n            <ol>\r\n              <li>Lorem ipsum dolor sit amet</li>\r\n              <li>Consectetur adipiscing elit</li>\r\n              <li>Integer molestie lorem at massa</li>\r\n              <li>Facilisis in pretium nisl aliquet</li>\r\n              <li>Nulla volutpat aliquam velit</li>\r\n              <li>Faucibus porta lacus fringilla vel</li>\r\n              <li>Aenean sit amet erat nunc</li>\r\n              <li>Eget porttitor lorem</li>\r\n            </ol>\r\n          </div>\r\n<pre class="prettyprint linenums">\r\n&lt;ol&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ol&gt;\r\n</pre>\r\n\r\n        <h3>Unstyled</h3>\r\n        <p>A list of items with no <code>list-style</code> or additional left padding.</p>\r\n        <div class="bs-docs-example">\r\n          <ul class="unstyled">\r\n            <li>Lorem ipsum dolor sit amet</li>\r\n            <li>Consectetur adipiscing elit</li>\r\n            <li>Integer molestie lorem at massa</li>\r\n            <li>Facilisis in pretium nisl aliquet</li>\r\n            <li>Nulla volutpat aliquam velit\r\n              <ul>\r\n                <li>Phasellus iaculis neque</li>\r\n                <li>Purus sodales ultricies</li>\r\n                <li>Vestibulum laoreet porttitor sem</li>\r\n                <li>Ac tristique libero volutpat at</li>\r\n              </ul>\r\n            </li>\r\n            <li>Faucibus porta lacus fringilla vel</li>\r\n            <li>Aenean sit amet erat nunc</li>\r\n            <li>Eget porttitor lorem</li>\r\n          </ul>\r\n        </div>\r\n<pre class="prettyprint linenums">\r\n&lt;ul class="unstyled"&gt;\r\n  &lt;li&gt;...&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n\r\n        <h3>Description</h3>\r\n        <p>A list of terms with their associated descriptions.</p>\r\n        <div class="bs-docs-example">\r\n          <dl>\r\n            <dt>Description lists</dt>\r\n            <dd>A description list is perfect for defining terms.</dd>\r\n            <dt>Euismod</dt>\r\n            <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\r\n            <dd>Donec id elit non mi porta gravida at eget metus.</dd>\r\n            <dt>Malesuada porta</dt>\r\n            <dd>Etiam porta sem malesuada magna mollis euismod.</dd>\r\n          </dl>\r\n        </div>\r\n<pre class="prettyprint linenums">\r\n&lt;dl&gt;\r\n  &lt;dt&gt;...&lt;/dt&gt;\r\n  &lt;dd&gt;...&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n</pre>\r\n\r\n        <h4>Horizontal description</h4>\r\n        <p>Make terms and descriptions in <code>&lt;dl&gt;</code> line up side-by-side.</p>\r\n        <div class="bs-docs-example">\r\n          <dl class="dl-horizontal">\r\n            <dt>Description lists</dt>\r\n            <dd>A description list is perfect for defining terms.</dd>\r\n            <dt>Euismod</dt>\r\n            <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\r\n            <dd>Donec id elit non mi porta gravida at eget metus.</dd>\r\n            <dt>Malesuada porta</dt>\r\n            <dd>Etiam porta sem malesuada magna mollis euismod.</dd>\r\n            <dt>Felis euismod semper eget lacinia</dt>\r\n            <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>\r\n          </dl>\r\n        </div>\r\n<pre class="prettyprint linenums">\r\n&lt;dl class="dl-horizontal"&gt;\r\n  &lt;dt&gt;...&lt;/dt&gt;\r\n  &lt;dd&gt;...&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n</pre>\r\n        <p>\r\n          <span class="label label-info">Heads up!</span>\r\n          Horizontal description lists will truncate terms that are too long to fit in the left column fix <code>text-overflow</code>. In narrower viewports, they will change to the default stacked layout.\r\n        </p>\r\n      </section>', '', 1, 14, '2013-08-23 03:24:21', 42, '', '2013-08-23 03:50:28', 542, 0, '0000-00-00 00:00:00', '2013-08-23 03:24:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 199, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 177, 'How to create the 3 columns layout?', 'how-to-create-the-3-columns-layout', '<p>Lorem ipsum dolor sit amet consectetuer Nam feugiat orci Vestibulum turpis. Eu cursus sem Curabitur dui convallis ut augue sit risus risus. Maecenas elit eget non sagittis neque libero senectus mollis quis ut. Tincidunt sem tortor turpis et Nulla eleifend tellus condimentum In lacus. Felis lacinia cursus id ut consectetuer risus condimentum Cum sapien quis. Lacus.</p>\r\n\r\n', '\r\n\r\n<p>Augue amet Nullam rutrum feugiat justo mollis mattis id tortor tortor. Consequat dolor Vestibulum ligula nunc nec convallis Mauris in condimentum pede. Consequat Vestibulum iaculis pulvinar Nulla Lorem Quisque sagittis nunc tincidunt pellentesque. Eros neque eu Nullam ligula tincidunt urna Phasellus pulvinar Ut sed. Pretium nec Vestibulum et elit ligula cursus tincidunt odio elit quis. Pellentesque Phasellus magnis Sed tristique quis.</p>\r\n\r\n<p>Felis a fringilla eros Lorem neque dui Phasellus eu Vestibulum ut. Laoreet leo habitant urna sagittis ac facilisi turpis venenatis eros justo. Eget et id vel at pede mauris condimentum eget nonummy sem. Quam eget lobortis eget dictumst vitae fames Nam hac ut feugiat. Morbi condimentum leo wisi pretium egestas Aenean Curabitur Integer Vivamus leo. Lacinia leo non Nulla nulla Lorem Suspendisse id.</p>\r\n\r\n<p>Ut In sociis metus tempus Sed Integer convallis Phasellus Sed lacinia. Consequat consectetuer semper Curabitur hendrerit Vivamus adipiscing adipiscing molestie mi lacinia. Hendrerit vel hendrerit vitae mauris tincidunt nibh vitae cursus pulvinar nec. Dui suscipit libero Aenean Vestibulum nisl morbi vitae at id pede. Nullam volutpat sed et tellus senectus.</p>\r\n\r\n<p>Ut vel lacinia congue semper congue libero tempus laoreet convallis quam. Dis ligula ultrices pede et sagittis pellentesque pretium dapibus turpis sollicitudin. Sed mus feugiat velit sapien Sed scelerisque malesuada justo laoreet tellus. Convallis tempor urna a leo accumsan ac Curabitur consectetuer ipsum diam. In risus fames In dui sagittis ipsum lorem Vivamus semper consequat. Justo tristique Aliquam pede est condimentum ac.</p>\r\n', 1, 78, '2013-08-23 03:51:45', 42, '', '2013-08-23 03:54:50', 542, 0, '0000-00-00 00:00:00', '2013-08-23 03:51:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 43, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 178, '   How to create the 2 columns layout ( Sidebar + Content)?', 'how-to-create-the-2-columns-layout-sidebar-content', '<p>Ut In sociis metus tempus Sed Integer convallis Phasellus Sed lacinia. Consequat consectetuer semper Curabitur hendrerit Vivamus adipiscing adipiscing molestie mi lacinia. Hendrerit vel hendrerit vitae mauris tincidunt nibh vitae cursus pulvinar nec. Dui suscipit libero Aenean Vestibulum nisl morbi vitae at id pede. Nullam volutpat sed et tellus senectus.</p>\r\n\r\n<p>Ut vel lacinia congue semper congue libero tempus laoreet convallis quam. Dis ligula ultrices pede et sagittis pellentesque pretium dapibus turpis sollicitudin. Sed mus feugiat velit sapien Sed scelerisque malesuada justo laoreet tellus. Convallis tempor urna a leo accumsan ac Curabitur consectetuer ipsum diam. In risus fames In dui sagittis ipsum lorem Vivamus semper consequat. Justo tristique Aliquam pede est condimentum ac.</p>\r\n\r\n<p>Elit Suspendisse Fusce suscipit enim justo tincidunt Curabitur condimentum et hendrerit. Phasellus tortor vitae quis vitae nisl ut ac gravida adipiscing elit. Ipsum dolor adipiscing in Morbi nunc ipsum vitae pharetra Nulla ac. Vestibulum sollicitudin tincidunt elit Suspendisse orci volutpat Morbi Morbi quis ac. Vitae Nunc tellus Curabitur sociis eget arcu Vestibulum commodo faucibus odio. </p>\r\n\r\n<p>Eu urna non dui laoreet eleifend ipsum mattis morbi tincidunt Nullam. Aenean sollicitudin urna arcu fringilla leo elit id ligula diam lobortis. Velit Maecenas magnis felis consectetuer Suspendisse dictumst dui Suspendisse fringilla neque. Pellentesque sed et ac odio elit lorem vitae nec Quisque Pellentesque. Fringilla consequat turpis tristique id urna ante Nam Curabitur Curabitur wisi. Nibh leo pretium Curabitur eu mollis ut leo Aliquam Fusce lobortis. </p>\r\n\r\n<p>Magna justo non Morbi vel vel euismod volutpat interdum non Integer. Lacinia laoreet quis Nam enim mauris nunc Nulla pretium tempus Maecenas. Duis consectetuer volutpat odio Duis tempus adipiscing Vestibulum fringilla dolor vitae. Penatibus eget ut a fringilla et elit arcu diam lacinia nisl. Metus condimentum sapien nibh dui elit vitae quis Sed sem at. Egestas Sed Phasellus Morbi laoreet Lorem Sed pellentesque habitant.</p>\r\n', '', 1, 78, '2013-08-23 03:55:12', 42, '', '2013-08-23 03:55:17', 542, 542, '2013-09-11 03:45:48', '2013-08-23 03:55:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 16, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 179, 'How to create the 2 columns layout ( Content + Sidebar )', 'how-to-create-the-2-columns-layout-content-sidebar', '<p>Ut vel lacinia congue semper congue libero tempus laoreet convallis quam. Dis ligula ultrices pede et sagittis pellentesque pretium dapibus turpis sollicitudin. Sed mus feugiat velit sapien Sed scelerisque malesuada justo laoreet tellus. Convallis tempor urna a leo accumsan ac Curabitur consectetuer ipsum diam. In risus fames In dui sagittis ipsum lorem Vivamus semper consequat. Justo tristique Aliquam pede est condimentum ac.</p>\r\n\r\n<p>Elit Suspendisse Fusce suscipit enim justo tincidunt Curabitur condimentum et hendrerit. Phasellus tortor vitae quis vitae nisl ut ac gravida adipiscing elit. Ipsum dolor adipiscing in Morbi nunc ipsum vitae pharetra Nulla ac. Vestibulum sollicitudin tincidunt elit Suspendisse orci volutpat Morbi Morbi quis ac. Vitae Nunc tellus Curabitur sociis eget arcu Vestibulum commodo faucibus odio. </p>\r\n\r\n<p>Eu urna non dui laoreet eleifend ipsum mattis morbi tincidunt Nullam. Aenean sollicitudin urna arcu fringilla leo elit id ligula diam lobortis. Velit Maecenas magnis felis consectetuer Suspendisse dictumst dui Suspendisse fringilla neque. Pellentesque sed et ac odio elit lorem vitae nec Quisque Pellentesque. Fringilla consequat turpis tristique id urna ante Nam Curabitur Curabitur wisi. Nibh leo pretium Curabitur eu mollis ut leo Aliquam Fusce lobortis. </p>\r\n\r\n<p>Magna justo non Morbi vel vel euismod volutpat interdum non Integer. Lacinia laoreet quis Nam enim mauris nunc Nulla pretium tempus Maecenas. Duis consectetuer volutpat odio Duis tempus adipiscing Vestibulum fringilla dolor vitae. Penatibus eget ut a fringilla et elit arcu diam lacinia nisl. Metus condimentum sapien nibh dui elit vitae quis Sed sem at. Egestas Sed Phasellus Morbi laoreet Lorem Sed pellentesque habitant.</p>\r\n\r\n<p>Magna gravida Sed Vivamus et ipsum aliquam congue congue quis ante. Hendrerit arcu tellus eu Morbi tempor vitae convallis congue ridiculus egestas. Wisi massa velit ultrices hendrerit sem wisi et mauris et eu. Ut elit velit non ut at massa hendrerit arcu non augue. At amet at adipiscing Fusce Nullam tellus Duis ac pede libero. Sed elit netus pharetra dui ultrices ligula adipiscing id.</p>\r\n', '', 1, 78, '2013-08-23 03:55:47', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-08-23 03:55:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 180, 'Full width layout', 'how-to-create-the-2-columns-layout-content-sidebar-2', '<p>Ut vel lacinia congue semper congue libero tempus laoreet convallis quam. Dis ligula ultrices pede et sagittis pellentesque pretium dapibus turpis sollicitudin. Sed mus feugiat velit sapien Sed scelerisque malesuada justo laoreet tellus. Convallis tempor urna a leo accumsan ac Curabitur consectetuer ipsum diam. In risus fames In dui sagittis ipsum lorem Vivamus semper consequat. Justo tristique Aliquam pede est condimentum ac.</p>\r\n\r\n<p>Elit Suspendisse Fusce suscipit enim justo tincidunt Curabitur condimentum et hendrerit. Phasellus tortor vitae quis vitae nisl ut ac gravida adipiscing elit. Ipsum dolor adipiscing in Morbi nunc ipsum vitae pharetra Nulla ac. Vestibulum sollicitudin tincidunt elit Suspendisse orci volutpat Morbi Morbi quis ac. Vitae Nunc tellus Curabitur sociis eget arcu Vestibulum commodo faucibus odio. </p>\r\n\r\n<p>Eu urna non dui laoreet eleifend ipsum mattis morbi tincidunt Nullam. Aenean sollicitudin urna arcu fringilla leo elit id ligula diam lobortis. Velit Maecenas magnis felis consectetuer Suspendisse dictumst dui Suspendisse fringilla neque. Pellentesque sed et ac odio elit lorem vitae nec Quisque Pellentesque. Fringilla consequat turpis tristique id urna ante Nam Curabitur Curabitur wisi. Nibh leo pretium Curabitur eu mollis ut leo Aliquam Fusce lobortis. </p>\r\n\r\n<p>Magna justo non Morbi vel vel euismod volutpat interdum non Integer. Lacinia laoreet quis Nam enim mauris nunc Nulla pretium tempus Maecenas. Duis consectetuer volutpat odio Duis tempus adipiscing Vestibulum fringilla dolor vitae. Penatibus eget ut a fringilla et elit arcu diam lacinia nisl. Metus condimentum sapien nibh dui elit vitae quis Sed sem at. Egestas Sed Phasellus Morbi laoreet Lorem Sed pellentesque habitant.</p>\r\n\r\n<p>Magna gravida Sed Vivamus et ipsum aliquam congue congue quis ante. Hendrerit arcu tellus eu Morbi tempor vitae convallis congue ridiculus egestas. Wisi massa velit ultrices hendrerit sem wisi et mauris et eu. Ut elit velit non ut at massa hendrerit arcu non augue. At amet at adipiscing Fusce Nullam tellus Duis ac pede libero. Sed elit netus pharetra dui ultrices ligula adipiscing id.</p>\r\n', '', 1, 78, '2013-08-23 03:55:47', 42, '', '2013-08-23 03:58:38', 542, 0, '0000-00-00 00:00:00', '2013-08-23 03:55:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `t3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(76, 181, 'Positions layout', 'how-to-create-the-2-columns-layout-content-sidebar-3', '<p>Lorem mollis Integer a at habitant elit malesuada laoreet et senectus. Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.</p>\r\n\r\n<p>Pellentesque enim ut massa sapien et convallis Curabitur eros Phasellus sed. Risus eros eget velit ipsum Quisque platea porttitor et Phasellus Vestibulum. Cursus Sed platea in sapien cursus mollis In lacus nulla ipsum. Sed adipiscing felis pede cursus urna quis laoreet vel pulvinar euismod. Sit ac odio quis nibh ligula Lorem dictumst nibh est leo. Cursus est semper ante in justo.</p>\r\n\r\n<p>Tincidunt at dolor eu fringilla wisi tincidunt ante sit ut Quisque. Et id est turpis lorem ut malesuada gravida in In tempor. Molestie dui dolor Vivamus metus hendrerit Proin Vestibulum lacinia ligula interdum. Id egestas sit justo quam tempor commodo turpis vitae sodales pellentesque. Ut nonummy tortor feugiat felis accumsan ipsum Pellentesque vitae at interdum. </p>\r\n', '', 1, 78, '2013-08-23 03:55:47', 42, '', '2013-08-23 03:57:51', 542, 0, '0000-00-00 00:00:00', '2013-08-23 03:55:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 28, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(77, 182, 'Page break', 'page-break', '<p>Lorem ipsum dolor sit amet consectetuer nisl urna Nulla non eu. Sed condimentum wisi odio egestas sem platea ac enim nibh quis. Leo sem porttitor Sed semper vitae lorem turpis tincidunt id enim. Et tincidunt tincidunt Pellentesque condimentum Praesent Fusce platea et et Nunc. Justo a non Nam arcu ut at amet sit aliquam ac. Tortor neque semper purus mauris.</p>\r\n', '\r\n<p>Augue scelerisque enim Aenean Vestibulum id enim Phasellus a Fusce convallis. Et Vestibulum Morbi Sed pellentesque laoreet sed Morbi urna enim nibh. Justo ligula lobortis Aliquam id velit neque dolor Nunc Sed tincidunt. Nunc sed fermentum et Nullam Curabitur consequat vel tristique ut dui. Et euismod gravida sem nibh justo nibh dui adipiscing nibh Nam. Malesuada faucibus sodales Aenean accumsan.</p>\r\n\r\n<p>Quis fermentum arcu Cum Aenean Phasellus vitae sapien volutpat cursus et. Nulla nonummy sem tempor felis congue elit facilisis pellentesque nibh dui. Maecenas Aliquam ut Pellentesque ac porttitor faucibus dui tincidunt eros facilisis. Lacinia dis pede ligula nec a feugiat consequat a sem Quisque. Habitant nec Maecenas Nunc lorem Nam ut eget.</p>\r\n\r\n<hr class="system-pagebreak" title="Page 2"  alt="page-2" />\r\n\r\n<p>Ligula wisi leo Vivamus urna consectetuer Nam semper condimentum laoreet et. At mauris eu Nam tempus turpis Vestibulum lorem congue et id. Interdum ligula ligula eu ut Sed pede ac urna Phasellus tincidunt. Vel Aliquam Phasellus dui elit Vivamus massa elit ornare pharetra odio. Velit dolor amet enim velit consequat.</p>\r\n\r\n<p>Urna fames elit Nunc semper ante fermentum orci pulvinar aliquet aliquet. Dolor elit pretium et fringilla felis dictum ligula semper ut quis. Ut Curabitur id at iaculis sed lobortis sagittis nibh pretium auctor. Id eu Nulla pellentesque condimentum ridiculus pellentesque Curabitur augue nisl accumsan. Nam sed id fringilla tempus nunc Donec turpis.</p>\r\n\r\n<p>Urna vel lorem lacinia Phasellus ut id at magna mi tempor. Accumsan at In laoreet Pellentesque ligula elit interdum sociis platea euismod. Nam urna Quisque turpis auctor cursus elit elit amet dui vitae. Elit pellentesque Nam Curabitur felis pellentesque felis Vestibulum sapien tortor Quisque. Lorem enim Praesent neque sed quis tempor orci purus malesuada pretium. Metus Phasellus.</p>\r\n\r\n\r\n<hr class="system-pagebreak" title="Page 3"  alt="page-3" />\r\n\r\n<p>Nunc libero ornare nibh Curabitur et mus hac hac consectetuer justo. Tempor nibh Quisque elit condimentum et libero nisl elit in justo. Vitae malesuada Quisque semper hac Sed enim ut lacus Curabitur adipiscing. Maecenas leo semper parturient mauris condimentum consectetuer vitae Aenean Vestibulum Morbi. At tincidunt nulla risus tempus in Curabitur enim condimentum Duis malesuada. Ut laoreet accumsan id ipsum sem tellus tortor Ut.</p>\r\n\r\n<p>Fringilla parturient vel vel parturient euismod enim quis Pellentesque ornare tincidunt. Tellus magnis turpis ut Phasellus Curabitur tellus Aliquam id dignissim ante. Semper adipiscing Integer augue fringilla quam feugiat consectetuer ipsum consequat tempus. Odio ipsum tempor Quisque ac tincidunt auctor quis dui Donec quis. Fusce risus lobortis eget ipsum id augue.</p>\r\n\r\n<p>Tempus enim wisi justo sem malesuada congue tristique a Vestibulum Donec. Semper Nulla eros volutpat nibh mauris sem feugiat scelerisque tellus Suspendisse. Vivamus congue adipiscing malesuada et Sed pretium eleifend lacinia cursus tincidunt. Nulla tellus Vestibulum at et In aliquet cursus eu id et. Orci Mauris eget at pretium adipiscing quis risus ridiculus venenatis convallis. Curabitur dui lacinia.</p>\r\n\r\n<p>Tristique hendrerit faucibus dolor leo Curabitur facilisis aliquam hac scelerisque elit. Adipiscing et convallis eu pede justo ultrices vel in Nam justo. Vel laoreet ante eros a id enim ullamcorper habitant porta lacus. Justo ac enim rhoncus Vestibulum at Nulla platea id leo Vivamus. Ut sagittis lacus Praesent pretium nunc Nunc metus pretium netus convallis. Vitae nunc nibh Aliquam tincidunt Donec quis pellentesque ac justo.</p>', 1, 79, '2013-11-08 04:21:16', 42, '', '2013-11-15 08:35:28', 542, 542, '2013-11-18 03:05:32', '2013-11-08 04:21:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 10, '', '', 1, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(78, 183, 'Offline Page', 'offline-page', '<p>Nam pulvinar, tortor sed tristique aliquet, leo dolor tincidunt ligula, sit amet malesuada urna velit id risus. Donec convallis iaculis metus vel tincidunt. In ut quam purus. Curabitur fringilla, sapien at egestas tempus, nunc neque faucibus turpis, sed vestibulum sapien ligula ut mi. Nunc in leo vitae augue accumsan faucibus. Donec luctus ipsum eros. In mi mi, rutrum a tempor at, lobortis ac tellus.</p>\r\n<p>Proin scelerisque rutrum leo, in consectetur libero condimentum id. Proin justo erat, elementum quis blandit sed, malesuada ut purus. Nullam et ornare justo. Fusce sed tellus nisi. Curabitur mattis rutrum facilisis. Nulla sollicitudin neque nec sapien convallis quis dignissim risus vulputate. Cras lacinia dignissim odio, in vulputate purus volutpat ut. Cras vestibulum, nibh et consequat aliquet, erat libero condimentum est, a tincidunt velit sem at est.</p>\r\n<p>Duis purus quam, condimentum sit amet dignissim non, bibendum sed erat. Fusce eu lectus hendrerit eros pretium viverra. Donec lacus enim, mollis id porta id, accumsan quis felis. Nullam a libero eget nulla vulputate ultricies. Mauris ut libero libero. Duis faucibus, nisi in sollicitudin blandit, nulla diam pellentesque lectus, vel rutrum augue nisi facilisis augue. Donec cursus quam id metus aliquam blandit. Pellentesque sem purus, iaculis ut laoreet nec, rutrum vitae erat. Donec luctus vulputate varius. Curabitur at dui non justo mollis bibendum. Integer convallis rutrum sem sed semper. In augue magna, fermentum in commodo ut, posuere varius nisi. In volutpat tortor non purus molestie aliquet vitae sed nibh. Mauris id auctor magna.</p>\r\n<p>Vivamus eu purus tortor, a scelerisque augue. Etiam et dolor eu elit iaculis tempus. In hac habitasse platea dictumst. Vestibulum diam ipsum, venenatis sed mollis ut, auctor in massa. Pellentesque at pulvinar ante. Curabitur convallis eleifend scelerisque. Curabitur imperdiet, risus vitae egestas accumsan, sem urna ullamcorper sapien, id placerat lorem lacus ut erat. Integer tincidunt ipsum mollis metus mollis adipiscing. In interdum venenatis ultrices. Nunc ut tempor nisi.</p>\r\n<p>Nam non lorem nibh, eu semper magna. Suspendisse semper, ante ut euismod blandit, felis leo adipiscing ante, quis sodales mauris dolor sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc eget est nisl. Curabitur a laoreet odio. Curabitur venenatis risus vitae lacus malesuada vitae volutpat magna posuere. Fusce et tincidunt dolor. Aenean vitae scelerisque nibh. Fusce tincidunt tortor eu magna bibendum commodo. Donec quis urna a leo porttitor mattis. Cras consequat neque non lacus tincidunt tincidunt. Aliquam consequat aliquam diam, at gravida enim malesuada et.</p>\r\n<p>Vestibulum pellentesque odio vel quam condimentum porta. Sed quis sapien id tortor iaculis molestie sed sed nulla. Aliquam semper ultrices quam eget suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti. Cras vel elit turpis. Nam dui diam, tincidunt at iaculis quis, pulvinar sed tellus. Sed pulvinar, leo ac commodo dapibus, tellus tortor mollis felis, ac aliquam velit ipsum consequat erat. Pellentesque vel convallis tellus. Donec sit amet mi eget lorem pretium imperdiet. Quisque condimentum velit at nibh tincidunt in bibendum ipsum ullamcorper. Quisque ac turpis lectus, nec feugiat nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec sed suscipit leo.</p>', '', 1, 14, '2013-11-08 04:25:11', 42, '', '0000-00-00 00:00:00', 0, 542, '2013-11-08 04:25:11', '2013-11-08 04:25:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(79, 185, 'Demo Article 1', 'demo-article-1', '<img src="images/joomlart/stories/s1.png" alt="Demo 1" align="left" title="Demo 1" class="caption" />\r\n\r\n<p>Proin non nibh sed lectus convallis tincidunt eget nec arcu. Suspendisse at mollis est. Donec auctor molestie urna, non ultrices elit elementum in. Curabitur tincidunt massa consectetur nisi dignissim id tempor tortor gravida.</p>\r\n \r\n', '\r\n\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis et sapien a lorem convallis hendrerit. Phasellus interdum ante a erat vehicula molestie. Donec hendrerit mattis lorem ut auctor. Phasellus fermentum, elit quis mollis suscipit, arcu risus blandit mi, a facilisis mi tortor sit amet nibh. Aenean nulla nibh, sollicitudin vitae consectetur et, auctor sed enim. Nam diam neque, tempus et semper id, pulvinar et velit.</p>\r\n\r\n<p>In sagittis ornare pretium. Morbi malesuada bibendum consequat. Quisque et sem massa. Integer posuere risus eget ipsum volutpat id fermentum erat dictum. Aliquam egestas euismod felis, sed suscipit nulla blandit non. Aliquam sagittis pellentesque purus et tempor. Duis ac odio nunc, ut molestie mi. Nulla facilisi.</p>\r\n\r\n<p>Integer mollis erat a urna luctus commodo. Maecenas lobortis faucibus ante eu vehicula. Proin aliquet pulvinar enim in commodo. Praesent tempus faucibus nisi vitae ultricies. Cras rutrum, leo nec tincidunt ullamcorper, sem augue convallis neque, consectetur auctor orci quam at turpis. Integer ac turpis nunc. In et elit orci, sit amet malesuada turpis. Maecenas iaculis vestibulum urna sit amet ultrices. Aliquam a dignissim mi.</p>\r\n\r\n<p>Pellentesque dolor risus, consectetur vitae accumsan pretium, dapibus quis turpis. Pellentesque id leo eros. Nullam vulputate quam vel sem suscipit sit amet interdum risus pellentesque. Fusce felis orci, vestibulum eget feugiat ut, consectetur eu nisi. Vestibulum nec neque ut est auctor egestas sit amet quis leo. Suspendisse potenti. Proin bibendum urna ultrices velit convallis vel tempus est tristique. Aliquam sit amet purus in ipsum faucibus bibendum. Sed neque enim, posuere nec convallis quis, suscipit vel risus. Aenean scelerisque suscipit consectetur. Sed ullamcorper suscipit est, a elementum metus hendrerit tincidunt. Maecenas a dui lacus.</p>\r\n\r\n<p>Mauris id egestas sem. Sed nec dolor sed nibh semper vehicula ut vel nunc. Mauris scelerisque posuere nibh eu ultrices. Vivamus eget orci vitae eros cursus euismod. Etiam in ipsum enim, non pretium nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pharetra scelerisque ornare. Ut dolor ipsum, bibendum non aliquet nec, dictum at lorem. Curabitur volutpat condimentum risus at imperdiet. Proin pellentesque consectetur massa, et feugiat tortor convallis at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et libero quis mi dictum tempor eget sit amet mauris. Quisque eu sem eu leo rutrum semper sed quis purus. Suspendisse a justo vitae metus dictum rutrum.</p>\r\n\r\n<p>Vivamus aliquet tortor nunc. Morbi vel sapien magna, vitae lacinia felis. Maecenas laoreet vulputate semper. Vivamus tempor, nunc eu imperdiet sodales, mi eros ornare ipsum, in laoreet mauris dolor a sem. Maecenas eu justo velit. Etiam in mauris risus, et luctus urna. Ut nunc neque, accumsan id ultricies in, mollis a sem. Duis sollicitudin luctus mauris. Fusce fermentum aliquet nibh, id laoreet nibh porta eu. Curabitur placerat venenatis arcu non egestas. Phasellus id magna non tellus viverra commodo non vel nisl. Morbi nec nisl vel justo accumsan dapibus eget eget arcu. Proin elementum nulla eget urna imperdiet eget tincidunt metus porta. Etiam massa enim, elementum eget accumsan vitae, eleifend nec purus. Fusce et velit libero, at bibendum mi. In vel ipsum adipiscing augue luctus convallis.</p>\r\n\r\n<p>Morbi ipsum leo, elementum sit amet molestie eu, vehicula at augue. Duis dignissim ultrices mauris et consectetur. Pellentesque iaculis fermentum dui, id eleifend sapien tincidunt eu. Mauris at eleifend neque. Mauris feugiat porttitor mauris sodales vestibulum. Etiam in augue faucibus elit ornare suscipit. Donec nulla libero, bibendum nec ornare ac, tincidunt bibendum odio. Proin pulvinar euismod augue, vitae gravida mi suscipit eget. Mauris porttitor iaculis metus, nec pellentesque risus ultrices id. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas rutrum iaculis lectus, et vulputate metus tincidunt sed. Quisque ut lectus orci, in feugiat dolor. Aliquam egestas velit et urna dictum eu posuere massa mollis. Integer et massa eros. Ut in libero eget quam cursus cursus id et mi. Praesent et nisi enim, sit amet pretium turpis. </p>', 1, 79, '2013-11-08 05:01:43', 42, '', '2013-11-15 08:29:09', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:01:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 9, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(80, 186, 'Demo Articles 2', 'demo-articles-2', '<p><img class="caption" src="images/joomlart/stories/s2.png" alt="Demo 2" title="Demo 2" align="left" /></p>\r\n<p>Quisque fermentum erat non justo imperdiet commodo. Curabitur quis arcu in diam molestie molestie ac vel nunc. Aliquam id orci lorem, et luctus lacus. Vivamus sed velit magna, eget tempor leo. Cras eget arcu vel odio fringilla molestie in non velit.</p>\r\n', '\r\n<p>Quisque pellentesque mauris sit amet lectus scelerisque vitae imperdiet mauris iaculis. Donec imperdiet nisi rhoncus dolor malesuada pharetra. Praesent tristique mattis dolor porta lacinia. Donec at neque scelerisque lacus lobortis imperdiet. Donec ut lorem odio, eu consectetur velit. Nulla facilisi. Ut elementum lobortis eros id condimentum.</p>\r\n<p>Etiam sed lectus arcu. In hac habitasse platea dictumst. Morbi eu lectus vel leo posuere pretium ac id nulla. Etiam eget mauris ipsum, sed rutrum elit. Nulla eu sem augue. In nec nisl vel enim auctor pretium. In a nulla quis metus aliquet volutpat.</p>\r\n<p>Quisque sit amet purus nulla. Sed vitae nibh urna. Ut sodales turpis vitae orci rutrum rhoncus. Suspendisse blandit dignissim faucibus. Proin sem leo, adipiscing non accumsan sed, suscipit vitae lectus. Donec sed mauris justo, tristique vestibulum velit. Curabitur luctus tempor nisi ut mattis. Phasellus odio dui, convallis a ullamcorper sit amet, condimentum et quam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In facilisis, dolor at sagittis volutpat, eros ligula blandit quam, et pulvinar libero massa eget lectus. Morbi quis hendrerit augue.</p>\r\n<p>Vestibulum justo erat, consectetur sed rutrum eu, rhoncus vel dui. Maecenas at felis nisi. Curabitur interdum dolor ut ipsum porttitor eget dapibus leo vulputate. Phasellus in tortor orci. Nulla sollicitudin quam et odio auctor molestie. Sed luctus, nisl sed egestas placerat, nisl nisl accumsan ligula, nec faucibus nunc est vel tortor. Donec vel justo lorem, id porta turpis. Quisque nibh justo, pellentesque ac mattis eget, adipiscing et turpis. Donec placerat velit eget libero molestie semper. Vivamus lobortis urna sagittis lectus mollis nec semper purus condimentum. Nullam scelerisque viverra elit, ut accumsan lectus porttitor ut. Quisque nunc nisl, euismod ut tincidunt in, venenatis sit amet augue. Suspendisse potenti. Etiam mollis, quam vehicula tincidunt tempor, tortor tellus commodo tellus, eget tincidunt ipsum urna nec ipsum. Nunc eu ipsum justo.</p>\r\n<p>Nulla quis ultricies erat. Quisque pretium, ipsum non commodo consectetur, velit velit fermentum urna, nec dictum libero felis eget enim. In lobortis pharetra velit et fringilla. Ut facilisis viverra tortor vel eleifend. Pellentesque ut orci a augue ornare pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt iaculis tortor sed ornare. Morbi a ante at metus mollis vestibulum. Pellentesque venenatis, odio at tempus vestibulum, dolor tortor fringilla elit, a aliquam ligula nibh vel arcu. Pellentesque sed nisi metus, sit amet egestas nulla. Nunc imperdiet scelerisque dolor, ac congue nibh ultricies id. Suspendisse convallis adipiscing diam, id tempor lectus accumsan id.</p>\r\n<p>Sed quis odio tortor, porttitor tempus mauris. Aliquam erat volutpat. Sed massa erat, eleifend et eleifend sed, fringilla id dui. Donec at diam quis ante dictum rutrum. Aliquam et tortor ut nisl condimentum fermentum. Phasellus tincidunt tristique faucibus. Nulla vulputate lorem at tellus vestibulum in posuere mi molestie. Sed ut lorem dui. Maecenas a lectus erat. Donec in turpis tellus. Curabitur pharetra venenatis urna, ac feugiat leo condimentum eget. Sed lacus massa, pharetra ut adipiscing eget, porttitor vitae enim. Proin volutpat dignissim urna sed laoreet. Maecenas quam mauris, cursus sit amet euismod a, interdum sed enim.</p>', 1, 14, '2013-11-08 05:02:17', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-08 05:02:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(81, 187, 'Demo Articles 3', 'demo-articles-3', '<img src="images/joomlart/stories/s3.png" alt="Demo 3" align="left" title="Demo 3" class="caption" />\r\n\r\n<p>Pellentesque turpis felis, dignissim sit amet sagittis ac, elementum quis augue. Aliquam vitae enim risus, at laoreet metus. In sed lectus ultrices nulla accumsan scelerisque. Nunc eu facilisis dolor. Aenean feugiat, erat ac cursus congue, mauris enim rutrum sem.\r\n\r\n ', '\r\n\r\n<p>Vitae faucibus nisi urna a augue. Phasellus faucibus tristique risus quis congue. Duis a tellus lacinia nibh vestibulum imperdiet. Integer egestas lectus sed sem rutrum cursus. In vitae mauris lacus. Sed leo est, dictum eget dignissim et, blandit eget felis. Praesent hendrerit felis dolor. Suspendisse potenti. Aenean mauris elit, sodales quis dapibus non, commodo in diam.</p>\r\n\r\n<p>Aliquam a nisl elit, vitae pharetra sem. Morbi dignissim tortor in quam consequat eu aliquam tortor mollis. Aenean ac magna magna. Etiam venenatis dictum ipsum, sit amet luctus mi tempor nec. Aenean magna enim, volutpat at tempor id, venenatis in nisi. Morbi lacinia elit in lacus ultrices porttitor. Duis magna nunc, congue ac dapibus vel, viverra venenatis augue. Integer vulputate aliquet semper. Cras id magna id ipsum commodo eleifend eu in lorem. Maecenas adipiscing aliquet quam ut posuere.</p>\r\n\r\n<p>Ut ante augue, accumsan id gravida tristique, fringilla quis turpis. Vestibulum hendrerit, mauris sed feugiat lobortis, sapien turpis adipiscing risus, gravida scelerisque augue augue nec lorem. Nulla sit amet magna risus. Integer felis ipsum, elementum a elementum eget, molestie et orci. Ut nec dui ligula. Praesent tincidunt lectus ac massa vehicula vitae egestas ipsum suscipit. Maecenas nisl lectus, euismod in hendrerit vitae, egestas a velit. Nulla et porttitor nisi. Proin aliquet nunc sed eros dictum rhoncus. Donec dolor justo, volutpat vel fringilla eget, porta et dui. Pellentesque consequat aliquam nulla at congue. Nullam faucibus aliquet dolor sed pulvinar. Suspendisse gravida luctus magna, et euismod tortor pharetra euismod.</p>\r\n\r\n<p>Fusce pharetra tincidunt vestibulum. Proin sit amet ante eget orci ultricies euismod in quis lacus. Suspendisse potenti. Mauris ornare risus ut urna placerat vulputate gravida ligula pharetra. Etiam in mi id enim rutrum sodales vitae in nunc. Nulla vel ante sed lectus iaculis aliquet nec at elit. Pellentesque sit amet urna sit amet felis ullamcorper ornare. Integer sit amet orci odio. Morbi cursus massa id diam sollicitudin malesuada. Etiam elit turpis, consectetur ut pellentesque et, euismod a est. Phasellus purus sapien, aliquet eget pretium vel, tincidunt sit amet nibh. Curabitur in erat justo. Etiam non turpis risus.</p>\r\n\r\n<p>Quisque elementum, sem a cursus porttitor, felis nibh semper mauris, non rutrum orci elit id dolor. Etiam ac turpis magna. Maecenas quam enim, fringilla quis malesuada sed, ultrices a purus. Suspendisse potenti. Pellentesque sodales, metus nec condimentum tempus, ante diam tempor purus, mattis iaculis lectus mauris quis dolor. Pellentesque ut molestie lectus. Maecenas consectetur fringilla commodo. Donec adipiscing venenatis aliquet. Etiam commodo imperdiet fringilla. Nunc dapibus velit sed metus porta vehicula. </p>', 1, 79, '2013-11-08 05:02:43', 42, '', '2013-11-15 08:34:45', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:02:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(82, 188, 'Demo Articles 4', 'demo-articles-4', '<p><img class="caption" src="images/joomlart/stories/s4.png" alt="Demo 4" title="Demo 4" align="left" /></p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin commodo leo ac lacus eleifend egestas. Curabitur gravida tortor non est volutpat eget cursus mauris semper.</p>\r\n', '\r\n<p>Praesent fringilla gravida nibh eget tempor. Suspendisse potenti. Morbi in eros nulla. Fusce molestie, turpis eget gravida gravida, massa metus sollicitudin magna, sed aliquet neque orci sed tellus. Aliquam erat volutpat. Vestibulum tincidunt tempor suscipit. In ultrices leo rhoncus leo ultrices varius. Fusce consectetur sollicitudin velit, venenatis euismod sem interdum eget. Aenean congue lacinia tristique. Ut a velit purus, et accumsan nunc. Nulla facilisi. Pellentesque quis sapien tortor, vel rhoncus justo. Nullam aliquam accumsan metus aliquam faucibus.</p>\r\n<p>Phasellus urna urna, vestibulum sit amet vehicula in, pellentesque nec nunc. Vivamus molestie lectus ac orci elementum luctus varius risus dignissim. Donec tristique est vel velit molestie euismod elementum sed lorem. Nulla viverra felis ut quam ultrices euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel urna orci, eu tristique nulla. Aenean egestas iaculis odio, ut pretium enim interdum eu. Nullam interdum lacus eget lectus cursus vitae rhoncus lorem tempus. Donec vel ipsum mauris, eu rhoncus tortor. Maecenas feugiat nisl non turpis scelerisque vitae pretium est dictum. In id bibendum ipsum. Maecenas velit est, porta a feugiat eget, posuere quis augue. Sed luctus ultricies augue a vulputate.</p>\r\n<p>Duis porta blandit nunc, vel varius tortor egestas quis. Morbi sit amet felis et nisl suscipit ultrices. Aliquam suscipit semper lectus at accumsan. Integer scelerisque ultrices lectus sit amet sollicitudin. Phasellus fermentum, eros in pulvinar consectetur, purus felis varius sapien, et euismod augue purus vel massa. Cras mollis nisi quis urna suscipit volutpat. Curabitur vel ante nec neque posuere consectetur. Phasellus cursus turpis eu nisl semper scelerisque. Mauris malesuada tristique est ut tempor. Sed euismod varius laoreet. Quisque non elementum elit. Nam lobortis ultricies velit. Praesent eget tellus lectus, et tempus lacus. In hac habitasse platea dictumst.</p>', 1, 14, '2013-11-08 05:03:07', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-08 05:03:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(83, 189, 'Demo Article 5', 'demo-article-5', '<img src="images/joomlart/stories/s6.png" alt="Demo 5" align="left" title="Demo 5" class="caption" />\r\n\r\n<p>Nullam non sem nulla, eu rutrum dui. Duis lobortis dignissim neque et venenatis. Morbi pulvinar gravida augue, ac blandit odio facilisis eu. Fusce commodo dui consequat nibh lacinia sed elementum mi aliquam.</p>\r\n\r\n ', '\r\n\r\n<p>Curabitur suscipit tortor et leo condimentum imperdiet egestas risus pharetra. Maecenas eu lorem justo. Mauris faucibus dui eu justo euismod faucibus. In varius ultrices elit, ac ultrices diam tempor eu. Nulla ultrices, sapien sed consequat dapibus, nunc purus rutrum ligula, id egestas eros urna sit amet tortor.</p>\r\n\r\n<p>Aliquam porttitor turpis eget arcu dictum nec tempor augue tempus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas quis magna quis arcu scelerisque sagittis. Integer sit amet velit sit amet metus pretium pellentesque. Fusce interdum felis in nisi tincidunt at sollicitudin nisl elementum. Quisque est diam, varius sit amet scelerisque ut, aliquet vitae ipsum. Nulla facilisi. Ut lacinia semper porta. Donec quis eros non mi scelerisque adipiscing sed quis orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Proin scelerisque tellus eget velit consequat volutpat. Proin porta orci non quam egestas ut varius leo fermentum. Integer dui velit, dignissim ac elementum nec, vestibulum eget erat. Morbi pretium quam non risus semper bibendum. Fusce faucibus, nulla eu volutpat rhoncus, enim erat eleifend purus, cursus bibendum mi nibh vitae leo. Morbi cursus aliquet turpis, nec aliquet augue tincidunt volutpat. Aenean sed dui massa.</p>\r\n\r\n<p>Fusce id metus purus. Donec eu mollis sapien. Vestibulum condimentum mauris ac nunc venenatis ut convallis mi accumsan. Nam rutrum, nunc at pellentesque vehicula, leo nunc feugiat mi, ac adipiscing enim neque ut elit. Suspendisse quis nunc et nunc tempor iaculis. Etiam erat nulla, malesuada eu rhoncus a, rutrum vitae ante. Vestibulum ac quam pulvinar arcu adipiscing semper. Donec ullamcorper tempus magna id malesuada. Nunc velit leo, ultrices non rhoncus et, scelerisque nec lacus. Proin tellus ipsum, tempor ut laoreet vel, adipiscing in sem. Integer pellentesque justo vitae nunc feugiat rutrum. Fusce ut diam nulla. </p>', 1, 79, '2013-11-08 05:03:38', 42, '', '2013-11-15 08:31:20', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:03:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(84, 190, 'Demo Article 6', 'demo-article-6', '<img src="images/joomlart/stories/s6.png" alt="Demo 6" align="left" title="Demo 6" class="caption" />\r\n\r\n<p>Aliquam pellentesque velit et augue viverra dapibus. Cras tempus ultrices iaculis. Fusce feugiat, arcu condimentum malesuada sodales, quam elit porttitor neque, quis dictum felis lectus adipiscing ante.</p>\r\n\r\n ', '\r\n\r\n<p>Suspendisse libero erat, consectetur sit amet iaculis ac, faucibus ac diam. Aliquam ut tellus leo. Proin a risus porta lectus dignissim rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse imperdiet felis semper sem congue eget luctus odio blandit. Maecenas purus nunc, convallis in dictum vitae, pulvinar sed est.</p>\r\n\r\n<p>Quisque eu odio sed elit dapibus imperdiet. Pellentesque in neque lorem, nec suscipit enim. In mattis pretium ante vel interdum. Integer sodales enim at enim faucibus porttitor. Donec placerat porttitor sollicitudin. Praesent lectus libero, pulvinar quis commodo in, mollis ac neque. Nulla ultricies volutpat neque, ut consequat mi accumsan sit amet. Vivamus elementum tempor augue sed pharetra. Aliquam sit amet libero id lectus tincidunt suscipit. Maecenas convallis orci eu mi ultricies eu facilisis metus consequat. Morbi eu lorem in dolor viverra hendrerit nec eget nisl. Proin adipiscing, diam non sagittis bibendum, diam augue rhoncus justo, non scelerisque erat massa id purus.</p>\r\n\r\n<p>Cras sed sapien ac nunc adipiscing tempus blandit id urna. Etiam congue tortor eget massa mattis venenatis. In hac habitasse platea dictumst. Duis eu nulla non tellus aliquet placerat. Nam non nisi id urna pharetra pellentesque sit amet id justo. Sed convallis volutpat vulputate. Vivamus vitae arcu et neque sollicitudin ornare. Curabitur ut purus sit amet nisi convallis consectetur ut a turpis. Praesent gravida vestibulum sapien eu rutrum. Nulla tristique metus eu felis luctus nec dictum ante porttitor. Suspendisse potenti. Duis vel elit metus, at porttitor arcu. </p>', 1, 79, '2013-11-08 05:04:03', 42, '', '2013-11-15 08:32:18', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:04:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(85, 191, 'Demo Article 7', 'demo-article-7', '<img src="images/joomlart/stories/s7.png" alt="Demo 7" align="left" title="Demo 7" class="caption" />\r\n\r\n<p>Sed id nisi et velit tincidunt placerat et eu massa. Phasellus malesuada ullamcorper gravida. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum adipiscing ornare eleifend. Aliquam erat volutpat.</p>\r\n\r\n ', '\r\n\r\n<p>Aliquam mattis, nisi id semper dictum, velit enim tempor turpis, eu placerat dolor odio ut quam. Phasellus ut dolor lectus, a ultrices tellus. Fusce semper tellus quis quam scelerisque vel egestas turpis auctor. Donec enim dui, tristique ornare dictum in, pulvinar nec lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec in tincidunt magna. Proin eu odio sed leo lacinia faucibus ut eget magna. Donec fringilla porta tortor vitae commodo. Nulla id magna vel purus dictum venenatis. Suspendisse bibendum, lorem id aliquet feugiat, dui libero sollicitudin ante, et interdum magna elit non nibh.</p>\r\n\r\n<p>Pellentesque pulvinar, odio at pretium molestie, dui ligula vehicula risus, at pretium leo ipsum eu dui. Praesent consequat, ligula et rutrum pharetra, nulla risus malesuada libero, sit amet imperdiet quam sapien ac metus. Aenean eget elementum turpis. Sed rutrum ultricies arcu, sed rutrum lorem ullamcorper ac. Sed condimentum rutrum fringilla. Nulla sed elit suscipit leo rhoncus pulvinar dignissim et nisl. Suspendisse dignissim pellentesque magna ut pellentesque. Aliquam vulputate tortor non lacus auctor at vehicula diam vestibulum. Nunc orci turpis, vulputate a porttitor sit amet, commodo vitae risus. Nunc feugiat malesuada orci et convallis. Aenean in massa ut enim volutpat eleifend nec eget neque. Curabitur consectetur erat tellus.</p>\r\n\r\n<p>Suspendisse ut lorem purus, euismod facilisis nulla. Duis in urna a nulla consequat fringilla. Proin pulvinar iaculis commodo. Vivamus hendrerit ullamcorper nibh nec elementum. Morbi dapibus elit quis arcu venenatis porta accumsan augue molestie. Pellentesque pharetra ante vitae purus fringilla pellentesque. Aliquam nunc tortor, consectetur a sollicitudin a, tristique sit amet velit. Quisque eget sapien risus. Sed venenatis, sapien iaculis ullamcorper rhoncus, quam felis facilisis libero, eu lacinia nulla velit nec tellus. Donec euismod odio ac massa cursus mollis. Nulla adipiscing, ligula nec pharetra adipiscing, quam nisi cursus sapien, quis posuere ante erat vel sem. Vivamus tristique turpis in orci dictum id dictum nisi iaculis. </p>', 1, 79, '2013-11-08 05:04:34', 42, '', '2013-11-15 08:32:10', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:04:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(86, 192, 'Demo Article 8', 'demo-article-8', '<img src="images/joomlart/stories/s8.png" alt="Demo 8" align="left" title="Demo 8" class="caption" />\r\n\r\n<p>Duis mattis bibendum tortor, in sollicitudin lorem volutpat non. Pellentesque pellentesque tortor ut orci fermentum fringilla. Proin est nisi, tristique sed consectetur eget, consequat id urna. Maecenas mi risus, porta eu semper ut, porttitor mattis mauris. </p>\r\n\r\n ', '\r\n\r\n<p>Pellentesque magna risus, hendrerit elementum suscipit quis, rutrum in enim. Vivamus quam quam, laoreet eu aliquet a, mattis at risus. Curabitur porta, odio nec pulvinar ornare, tellus nibh pharetra lectus, at lacinia libero justo nec neque. Donec placerat neque sed augue vestibulum eu consectetur dui egestas. Maecenas erat libero, vestibulum ac luctus vel, aliquet non dolor. Vivamus volutpat interdum eros, eu viverra velit elementum ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla mauris nunc, feugiat et fringilla vel, cursus in diam.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla iaculis suscipit sem nec sollicitudin. Curabitur pretium tortor sit amet nunc accumsan non sollicitudin ante sollicitudin. Nullam malesuada lectus at nunc congue ac euismod nibh commodo. Quisque vel nisi neque. Sed velit neque, bibendum et ullamcorper sed, luctus ut est. Nam a mattis arcu. Vestibulum a ligula elit. Phasellus lorem mauris, placerat a mollis id, rutrum quis nisl. Aliquam tristique magna vel tortor faucibus aliquam. Integer cursus, neque ut pharetra aliquet, eros risus mattis mauris, vel consectetur arcu orci nec ante. Praesent ullamcorper laoreet pretium. In vel lacus eu neque convallis euismod.</p>\r\n\r\n<p>Vestibulum at libero eu nisl vestibulum gravida dapibus vitae lacus. Vivamus ultricies volutpat metus a commodo. Aliquam facilisis ipsum eget velit fringilla laoreet. Curabitur commodo sagittis metus, sed laoreet urna mattis in. Phasellus adipiscing massa et purus dignissim scelerisque. Nam imperdiet egestas neque. Suspendisse sed est vel enim ultricies condimentum quis eu risus. Aliquam erat volutpat. Quisque viverra ornare mauris vitae scelerisque. Quisque orci neque, congue tempor rutrum non, sollicitudin et ligula. Sed vel augue elit. </p>', 1, 79, '2013-11-08 05:05:01', 42, '', '2013-11-15 08:34:23', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:05:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(87, 193, 'Demo Article 9', 'demo-article-9', '<img src="images/joomlart/stories/s9.png" alt="Demo 9" align="left" title="Demo 9" class="caption" />\r\n\r\n<p>Nunc tincidunt congue lectus, nec imperdiet tortor adipiscing in. Praesent est lorem, convallis ac interdum sit amet, consequat vitae nulla. Aenean hendrerit, mauris sed viverra accumsan, libero purus scelerisque orci, viverra eleifend libero sapien vitae lacus.</p>\r\n\r\n ', '\r\n\r\n<p>Integer faucibus tortor id odio eleifend in scelerisque sapien lacinia. In ut mattis nunc. Suspendisse potenti. Pellentesque dictum congue purus et molestie. Suspendisse volutpat imperdiet arcu, a ornare felis pharetra eu. Donec viverra vulputate odio eget blandit. Nulla ornare lectus ac ipsum lacinia lobortis.</p>\r\n\r\n<p>Curabitur in massa non magna interdum iaculis eu non leo. Duis in ultricies ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rutrum ornare purus, non adipiscing diam hendrerit vitae. Sed euismod tempor laoreet. Donec est ipsum, tristique non porttitor vitae, tempus at tellus. Vivamus quis felis ut ipsum vulputate interdum sit amet a lorem. Aenean id magna ut dolor fermentum convallis et ut nunc. Proin euismod metus eget mi posuere id vehicula sem tempor. Nulla sed nisi at lacus venenatis cursus quis at nisl. Quisque pretium lacinia nibh, eu varius neque rutrum sit amet. Aliquam gravida, arcu sit amet semper porta, magna metus vulputate leo, dapibus fermentum velit lacus sed nibh. Ut semper nibh quis velit tristique eu feugiat turpis malesuada. Sed vel nibh leo, at volutpat diam. Duis venenatis magna ut nisl auctor pretium. </p>', 1, 79, '2013-11-08 05:05:29', 42, '', '2013-11-15 08:34:12', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:05:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `t3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(88, 194, 'Demo Article 10', 'demo-article-10', '<img src="images/joomlart/stories/s10.png" alt="Demo 10" align="left" title="Demo 10" class="caption" />\r\n\r\n<p>Nam mi est, ultricies nec ornare in, venenatis ac risus. Duis condimentum hendrerit sollicitudin. Vestibulum condimentum, libero vitae aliquet auctor, lacus sapien hendrerit tortor, a suscipit metus sem vitae est. Mauris feugiat imperdiet tellus at vulputate.</p>\r\n\r\n ', '\r\n\r\n<p>Phasellus vel purus eros. Aenean dolor diam, eleifend ut dapibus a, gravida sit amet ipsum. Pellentesque sit amet nisl vel dolor vestibulum placerat non eu ante. Suspendisse potenti. Vivamus vel lacus nisi. Maecenas aliquam sagittis orci. Integer mattis nisl leo, sed consectetur sem. Aenean luctus, metus eget dapibus rhoncus, turpis mauris commodo arcu, sit amet lobortis magna diam in dolor. Maecenas in enim et eros accumsan hendrerit. Vivamus sed ante ante, lacinia consequat dui. Nunc lorem ipsum, porttitor sit amet dignissim a, vestibulum eu enim. Nam volutpat bibendum arcu vel facilisis.</p>\r\n\r\n<p>Vivamus nisl nunc, ultricies faucibus laoreet at, malesuada et arcu. Curabitur molestie enim ac metus sagittis eu aliquet massa consectetur. Integer ullamcorper auctor mi, eget ornare nunc ultrices in. Morbi erat nibh, mollis sed sodales quis, dapibus a tellus. Donec fringilla adipiscing dui, sit amet cursus justo elementum eget. Praesent dignissim massa at odio tempor at varius sapien vulputate. Etiam consectetur tempus ornare. Integer eleifend vulputate condimentum. Sed eu nulla turpis, at mollis justo. Vivamus id justo nisl.</p>\r\n\r\n<p>Suspendisse potenti. Quisque orci lacus, gravida eu aliquet id, placerat quis mauris. Maecenas in metus tellus. Phasellus purus erat, dapibus et iaculis sit amet, malesuada eget mi. Nunc condimentum, neque vel venenatis consequat, quam nisl molestie nibh, in molestie justo augue eu nisl. Praesent interdum pellentesque diam, id faucibus orci eleifend et. Pellentesque et massa vitae velit adipiscing congue vitae sit amet elit. Nam tempus, leo iaculis porttitor euismod, purus velit fringilla nunc, vel sagittis erat nibh sit amet libero. In vel ligula felis. </p>', 1, 79, '2013-11-08 05:05:55', 42, '', '2013-11-15 08:29:22', 542, 0, '0000-00-00 00:00:00', '2013-11-08 05:05:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(89, 195, ' New Features in Joomla! 2.5', 'new-features-in-joomla-2-5', '<img src="images/joomlart/demo/demo-s3.jpg" alt="New Features in Joomla 2.5" align="left" title="New Features in Joomla 2.5" class="caption" />\r\n\r\n<p><strong>Extra Features! Easy Updates!</strong></p>\r\n<p>With the release of Joomla! 2.5, the user community has placed a large emphasis on making the CMS installation and updates management process as simple and straightforward as possible.</p>\r\n ', '\r\n<h3>Easy Updates</h3>\r\n<p>The automated notification of Joomla! core and extension updates is a new built-in feature that simplifies site maintenance and management of updates:</p>\r\n<ul>\r\n<li>Available as a quick button on the administrative control panel of your Joomla! website, it enables administrators to update a site to the latest stable Joomla! release with just a single click.</li>\r\n<li>A second quick button handles updates for Joomla! extensions.</li>\r\n</ul>\r\n<p>A major usability enhancement, this auto-updating feature eliminates the need to manually transfer and replace files on the server, converting a time-consuming, error-prone process into a seamless, effective, and time-saving experience.</p>\r\n<h3>Smart Search</h3>\r\n<p>This new functionality offers a faster, more user-friendly search experience for your visitors. It features natural language search with auto-completion and stemming, which allows the user to find relevant content by just typing the first several letters of a word.</p>\r\n<p>Designed for versatility and speed, this native Joomla! component + plugins set gives you one-click automated indexing of all content items, categories, weblinks, contacts, newsfeeds, etc. It offers a large array of configurable options, including result description length, url length, and date filters.</p>\r\n<h3>Multi-Database Support</h3>\r\n<p>Multiple database support is a new feature that makes it possible to run the Joomla! CMS on many different databases, not just MySQL and MySQLi. This facilitates integration and update management processes. Joomla! now allows different drivers to be written that will support different versions of SQL databases. Current drivers exist for the MySQL and MS SQL databases, with PostgreSQL, Oracle, SQLite and PDO drivers close to being ready.</p>', 1, 80, '2013-11-15 08:23:16', 42, '', '2013-11-15 08:25:13', 542, 542, '2013-11-15 08:57:08', '2013-11-15 08:23:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(90, 197, 'Bootstrap from Twitter', 'bootstrap-from-twitter', '<img src="images/joomlart/demo/demo-s1.jpg" alt="Bootstrap from Twitter" align="left" title="Bootstrap from Twitter" class="caption" />\r\n\r\n<p>We are happy to announce Bootstrap, a front-end toolkit for rapidly developing web applications. It is a collection of CSS and HTML conventions. It uses some of the latest browser techniques to provide you with stylish typography, forms, buttons, tables, grids, navigation andeverything else you need  ', 'in a super tiny (only 6k with gzip) resource. Check out <a href="http://github.com/twitter/bootstrap">Bootstrap on Github.</a></p>\r\n\r\n<h3>A brief history</h3>\r\n<p>In the earlier days of Twitter, engineers used almost any library they were familiar with to meet front-end requirements. Inconsistencies among the individual applications made it difficult to scale and maintain them. Bootstrap began as an answer to these challenges and quickly accelerated during Twitter’s first Hackweek. By the end of Hackweek, we had reached a stable version that engineers could use across the company.</p>\r\n<p>With the help and feedback of many engineers, Bootstrap has grown significantly to encompass not only basic styles, but more elegant and durable front-end design patterns. This release represents our first public 1.0 release and the open sourcing of many months of hard work.</p>\r\n\r\n<h3>Why use Bootstrap</h3>\r\n<p>At its core, Bootstrap is just CSS, but it''s built with Less, a flexible pre-processor that offers much more power and flexibility than regular CSS. With Less, we gain a range of features like nested declarations, variables, mixins, operations, and color functions. Additionally, since Bootstrap is purely CSS when compiled via Less, we gain two important benefits:</p>\r\n<p>First, Bootstrap remains very easy to implement; just drop it in your code and go. Compiling Less can be accomplished via Javascript, an unofficial Mac application, or via Node.js</p>\r\n<p>Second, once complied, Bootstrap contains nothing but CSS, meaning there are no superfluous images, Flash, or Javascript. All that remains is simple and powerful CSS for your web development needs.</p>\r\n\r\n<h3>What''s inside</h3>\r\n<p>When you take a closer look at Bootstrap, you will notice we have separated the development files into seven distinct files:</p>\r\n<ul>\r\n<li>reset.less A CSS reset originally made by <a href="http://meyerweb.com/">Eric Meyer</a> and modified for our use to remove unnecessary elements</li>\r\n<li>preboot.less Color variables and mixins for things like gradients, transparencies, and transitions to simplify vendox-prefixed CSS blocks to one line of code each</li>\r\n<li>scaffolding.less Basic and global styles for generating a grid system, structural layout, and page templates</li>\r\n<li>type.less Headings, body text, lists, code, and more for a versatile and durable typography system</li>\r\n<li>patterns.less Repeatable interface elements like navigation, modals, popovers, and tooltips to take you beyond the default scaffolding styles</li>\r\n<li>forms.less Durable styles for various input types, form layouts, and control states.</li>\r\n<li>tables.less Styles for tabular data in a number of varied displays</li>\r\n</ul>\r\n<p>Since we opted to break our CSS into more manageable chunks for easy organization and iterations, compiling these files with Less means you end up with just one CSS file to include.</p>\r\n<h3>Why it works</h3>\r\n<p>Bootstrap works by providing a clean and uniform solution to the most common, everyday interface tasks developers come across. At Twitter, Bootstrap has quickly become one of our many go-to front-end tools when starting new applications and sites. This is because while it is very extensive, it’s flexible enough to work for many unique design needs.</p>\r\n<p>Today, you can use Bootstrap to throw together quick prototypes or guide the execution of more sophisticated designs and larger engineering efforts. In other words, Bootstrap is a very simple way to promote quick, clean and highly usable applications.</p>\r\n<p>We look forward to working with the open source community to evolve Bootstrap.</p>\r\n<h3>Where Bootstrap is heading</h3>\r\n<p>We want to keep working on slimming down Bootstrap’s already tiny footprint while also increasing the breadth of what it covers. As always, we’d love your feedback and hope you find it useful. If you''d like to help make Bootstrap better, feel free to fork it, file issues and watch its progress over on GitHub.</p>\r\n<p>Source: Mark Otto</p>', 1, 80, '2013-11-15 08:24:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-15 08:24:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(91, 198, 'LESS  (Stylesheet Language) ', 'less-stylesheet-language', '<img src="images/joomlart/demo/demo-s2.jpg" alt="LESS" align="left" title="LESS" class="caption" />\r\n\r\n<p>LESS is a dynamic stylesheet language designed by Alexis Sellier. It is influenced by <strong>Sass</strong> and has influenced the newer "SCSS" syntax of Sass, which adapted its CSS-like block formatting syntax.</p><p>LESS is <strong>open-source</strong>. Its first version was written in <strong>Ruby</strong>, ', ' however in the later versions,use of Ruby has been deprecated and replaced by JavaScript. \r\nThe indented syntax of Less is a nested metalanguage, as valid CSS is valid Less code with the same semantics.</p>\r\n\r\n<p>LESS provides the following mechanisms: variables, nesting, mixins, operators and functions.</p>\r\n\r\n<p>LESS can run on the client-side (<strong>Internet Explorer 6+</strong>, <strong>WebKit</strong>, <strong>Firefox</strong>) and server-side, with <strong>Node.js</strong> or <strong>Rhino (JavaScript engine)</strong>.[2]</p>\r\n\r\n<h3>Variables</h3>\r\n\r\n<p>Less allows variables to be defined. Less variables are defined with an at sign(@). Variable assignment is done with a colon (:).</p>\r\n<p>During translation, the values of the variables are inserted into the output CSS document.</p>\r\n\r\n<h3>Mixins</h3>\r\n\r\n<p>Mixins allow embedding all the properties of a class into another class by including the class name as one of its properties, thus behaving as a sort of constant or variable. They can also behave like functions, and take arguments. CSS does not support Mixins. Any repeated code must be repeated in each location. Mixins allow for more efficient and clean code repetitions, as well as easier alteration of code.</p>\r\n\r\n<p>LESS has a special type of ruleset called parametric mixins which can be mixed in like classes, but accepts parameters.</p>\r\n\r\n<h3>Nesting</h3>\r\n\r\n<p>CSS does support logical nesting, but the code blocks themselves are not nested. Less allows to nest selectors inside other selectors. This makes inheritance clear and style sheets shorter.</p>\r\n\r\n<h3>Functions and operations</h3>\r\n\r\n<p>Less allows operations and functions. Operations allows addition, subtraction, division and multiplication of property values and colors, which can be used to create complex relationships between properties. Functions map one-to-one with JavaScript code, allowing manipulation of values.</p>\r\n\r\n<h3>Comparison to Sass</h3>\r\n\r\n<p>LESS is inspired by Sass. Sass was designed to both simplify and extend CSS, so things like curly braces were removed from the syntax. LESS was designed to be as close to CSS as possible, so the syntax is identical to existing CSS code. As a result, existing CSS can be used as valid LESS code.</p>\r\n\r\n<p>The newer versions of Sass also introduced a CSS-like syntax called SCSS (Sassy CSS).</p>\r\n\r\n<h3>Use on sites</h3>\r\n\r\n<p>LESS can be applied to sites in a number of ways. One option is to include the less.js JavaScript file to convert the code on-the-fly. The browser then renders the output CSS. Another option is to render the LESS code into pure CSS and upload the CSS to a site. With this option no .less files are uploaded and the site does not need the less.js JavaScript converter.</p>\r\n\r\n<p>From Wikipedia, the free encyclopedia</p>', 1, 80, '2013-11-15 08:26:09', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-15 08:26:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(92, 199, 'Bootstrap 2.1.0 released', 'bootstrap-2-1-0-released', '<img src="images/joomlart/demo/demo-s5.jpg" alt="Bootstrap 2.1.0" align="left" title="Bootstrap 2.1.0" class="caption" />\r\n\r\n<p>After a smaller 2.0.4 release, we''ve got another huge update that resolves tons of bugs, improves the flexibility and durability of our code, and introduces a few awesome new features. It''s a big release wrapped in a brand new set of docs and we couldn''t be more stoked to launch it.</p>\r\n\r\n<p>New docs, affix plugin, submenus on dropdowns, block buttons, image styles, fluid grid offsets, new navbar, increased font-size and line-height, 120+ closed bugs, and more.</p>\r\n\r\n', '\r\n\r\n<h3>Improved documentation</h3>\r\n\r\n<p>In addition to sporting a fresh visual style, the content of our docs has been overhauled once again. Good-bye long-winded marketing copy and multiple columns, hello succinct and directive single-column documentation. We''ve got a new tagline, new layout and navigation, and (more) clearer examples.</p>\r\n\r\n<h3>Key changes and new features</h3>\r\n\r\n<p>We had higher expectations for the number of new features in 2.1, but we toned it back to get this release out the door in a manageable form. We''ve still added some great new features and fixed tones of bugs, so here''s a brief overview of what''s new.</p>\r\n<ul>\r\n<ul>\r\n<li><strong>Submenu support on dropdowns.</strong>We avoided this for some time as we thought it would unnecessarily complicate things, but we''ve backtracked on that and opted to add them in. See the docs for more info.</li>\r\n<li><strong>Affix JavaScript plugin</strong>Make anything stick to the top of the viewport as you scroll with our newest plugin, built to power our new docs navigation.</li>\r\n<li><strong>Block level buttons.</strong> Add <strong>.btn-block</strong> to a button to make it full-width.</li>\r\n<li><strong>State classes on table rows.</strong>Better convey success, warning, and error messages in tables.</li>\r\n<li><strong>Improved disabled states on navs and dropdowns.</strong>Where by "improve" we mean actually present—just add <strong>.disabled</strong>to the <strong>li.</strong></li>\r\n<li><strong>The navbar component is now white by default, with an optional class to darken it.</strong> In order to have two options for the navbar, light and dark, we needed to have better defaults. Having a lighter default navbar means fewer lines of code as we don''t need to override anything for the basic navbar functionality and the override it again to restore the default styles. Missing the black? Just add <strong>.navbar-inverse</strong> to get the dark gray navbar back.&gt;</li>\r\n<li><strong>Improved prepended and appended inputs.</strong>No need to place the <strong>input</strong> and <strong>.add-on</strong> on the same line of code (sorry about that by the way). Break them up as you like and they''ll still stick together with some crafty <strong>font-size</strong> working.</li>\r\n<li><strong>New base font-size and line-height.</strong>13px/18px is out, 14px/20px is in. This also has changed the size, line-height, and margin of our heading elements, buttons, and more.</li>\r\n<li><strong>Added variable for navbar collapse trigger point.</strong> Instead of a fixed pixel width of <strong>980px</strong> for triggering the collapsed navbar, we now use a variable so you can customize it for your projects.</li>\r\n<li><strong>Fluid grid offsets.</strong> Thanks to our contributors, the fluid grid now has offset support to match our fixed (pixel) grid.</li>\r\n<li><strong>Fluid grid system variables are no longer fixed percentages.</strong>Instead, they are calculated in LESS with <strong>percentage()</strong>based on the default, fixed-width grid variables. Math!</li>\r\n<li><strong>Removed LESS docs page.</strong>We will no longer document variables and mixins in two places—rewriting that stuff was painful and took too much time. Instead, just checkout the .less files.</li>\r\n</ul>\r\n</ul>\r\n<h3>Thanks, nerds</h3>\r\n<p>Once again, we couldn''t have done this without all you nerds out there supporting us with your contributions, bugfixes, and feature requests. You keep this project going strong and we thank you deeply for your support.</p>\r\n<p>Source: blog.getbootstrap.com</p>', 1, 80, '2013-11-15 08:26:52', 42, '', '2013-11-15 08:57:45', 542, 0, '0000-00-00 00:00:00', '2013-11-15 08:26:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(93, 200, 'Joomla User eXperience', 'joomla-user-experience', '<img src="images/joomlart/demo/demo-s4.jpg" alt="Joomla Usser eXperience" align="left" title="Joomla Usser eXperience" class="caption" />\r\n\r\n<p><strong>What is the Joomla User Experience?</strong></p>\r\n<p>The mission of the Joomla User Experience Team (JUX Team is to create a great overall user experience for Joomla site administrators, thereby giving site users the same. ', 'We approach UX with a process, including defining the <a href="http://ux.joomla.org/forum/7-interaction-design">interaction design,</a>, <a href="http://ux.joomla.org/forum/9-information-architecture">information architecture</a>, <a href="http://ux.joomla.org/forum/10-usability">usability requirements</a>, and the <a href="http://ux.joomla.org/forum/11-visual-design">visual design</a> through <a href="http://ux.joomla.org/forum/8-user-research">user research</a>. We are also focused on <a href="http://ux.joomla.org/forum/6-mobile">mobile content</a> and <a href="http://ux.joomla.org/forum/5-accessibility">accessibility.</a></p>\r\n\r\n<p>The JUX Team will get started immediately with the current version of Joomla as well as improving the user experience of the Joomla.org family of websites.</p>\r\n\r\n<p>Get involved now with the JUX Team activities in the JUX Forum and find out more about official Working Groups on the <a href="http://docs.joomla.org/Production_Working_Groups#User_Experience_Working_Group">documentation wiki.</a></p>', 1, 80, '2013-11-15 08:27:26', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-15 08:27:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(94, 201, 'Demo Article 2', 'demo-article-2', '<img src="images/joomlart/stories/s2.png" alt="Demo 2" align="left" title="Demo 2" class="caption" />\r\n\r\n<p>Quisque fermentum erat non justo imperdiet commodo. Curabitur quis arcu in diam molestie molestie ac vel nunc. Aliquam id orci lorem, et luctus lacus. Vivamus sed velit magna, eget tempor leo. Cras eget arcu vel odio fringilla molestie in non velit.</p>\r\n\r\n ', '\r\n\r\n<p>Quisque pellentesque mauris sit amet lectus scelerisque vitae imperdiet mauris iaculis. Donec imperdiet nisi rhoncus dolor malesuada pharetra. Praesent tristique mattis dolor porta lacinia. Donec at neque scelerisque lacus lobortis imperdiet. Donec ut lorem odio, eu consectetur velit. Nulla facilisi. Ut elementum lobortis eros id condimentum.</p>\r\n\r\n<p>Etiam sed lectus arcu. In hac habitasse platea dictumst. Morbi eu lectus vel leo posuere pretium ac id nulla. Etiam eget mauris ipsum, sed rutrum elit. Nulla eu sem augue. In nec nisl vel enim auctor pretium. In a nulla quis metus aliquet volutpat.</p>\r\n\r\n<p>Quisque sit amet purus nulla. Sed vitae nibh urna. Ut sodales turpis vitae orci rutrum rhoncus. Suspendisse blandit dignissim faucibus. Proin sem leo, adipiscing non accumsan sed, suscipit vitae lectus. Donec sed mauris justo, tristique vestibulum velit. Curabitur luctus tempor nisi ut mattis. Phasellus odio dui, convallis a ullamcorper sit amet, condimentum et quam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In facilisis, dolor at sagittis volutpat, eros ligula blandit quam, et pulvinar libero massa eget lectus. Morbi quis hendrerit augue.</p>\r\n\r\n<p>Vestibulum justo erat, consectetur sed rutrum eu, rhoncus vel dui. Maecenas at felis nisi. Curabitur interdum dolor ut ipsum porttitor eget dapibus leo vulputate. Phasellus in tortor orci. Nulla sollicitudin quam et odio auctor molestie. Sed luctus, nisl sed egestas placerat, nisl nisl accumsan ligula, nec faucibus nunc est vel tortor. Donec vel justo lorem, id porta turpis. Quisque nibh justo, pellentesque ac mattis eget, adipiscing et turpis. Donec placerat velit eget libero molestie semper. Vivamus lobortis urna sagittis lectus mollis nec semper purus condimentum. Nullam scelerisque viverra elit, ut accumsan lectus porttitor ut. Quisque nunc nisl, euismod ut tincidunt in, venenatis sit amet augue. Suspendisse potenti. Etiam mollis, quam vehicula tincidunt tempor, tortor tellus commodo tellus, eget tincidunt ipsum urna nec ipsum. Nunc eu ipsum justo.</p>\r\n\r\n<p>Nulla quis ultricies erat. Quisque pretium, ipsum non commodo consectetur, velit velit fermentum urna, nec dictum libero felis eget enim. In lobortis pharetra velit et fringilla. Ut facilisis viverra tortor vel eleifend. Pellentesque ut orci a augue ornare pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt iaculis tortor sed ornare. Morbi a ante at metus mollis vestibulum. Pellentesque venenatis, odio at tempus vestibulum, dolor tortor fringilla elit, a aliquam ligula nibh vel arcu. Pellentesque sed nisi metus, sit amet egestas nulla. Nunc imperdiet scelerisque dolor, ac congue nibh ultricies id. Suspendisse convallis adipiscing diam, id tempor lectus accumsan id.</p>\r\n\r\n<p>Sed quis odio tortor, porttitor tempus mauris. Aliquam erat volutpat. Sed massa erat, eleifend et eleifend sed, fringilla id dui. Donec at diam quis ante dictum rutrum. Aliquam et tortor ut nisl condimentum fermentum. Phasellus tincidunt tristique faucibus. Nulla vulputate lorem at tellus vestibulum in posuere mi molestie. Sed ut lorem dui. Maecenas a lectus erat. Donec in turpis tellus. Curabitur pharetra venenatis urna, ac feugiat leo condimentum eget. Sed lacus massa, pharetra ut adipiscing eget, porttitor vitae enim. Proin volutpat dignissim urna sed laoreet. Maecenas quam mauris, cursus sit amet euismod a, interdum sed enim. </p>', 1, 79, '2013-11-15 08:30:13', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-15 08:30:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(95, 202, 'Demo Article 4', 'demo-article-4', '<img src="images/joomlart/stories/s4.png" alt="Demo 4" align="left" title="Demo 4" class="caption" />\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin commodo leo ac lacus eleifend egestas. Curabitur gravida tortor non est volutpat eget cursus mauris semper.</p>\r\n\r\n ', '\r\n\r\n<p>Praesent fringilla gravida nibh eget tempor. Suspendisse potenti. Morbi in eros nulla. Fusce molestie, turpis eget gravida gravida, massa metus sollicitudin magna, sed aliquet neque orci sed tellus. Aliquam erat volutpat. Vestibulum tincidunt tempor suscipit. In ultrices leo rhoncus leo ultrices varius. Fusce consectetur sollicitudin velit, venenatis euismod sem interdum eget. Aenean congue lacinia tristique. Ut a velit purus, et accumsan nunc. Nulla facilisi. Pellentesque quis sapien tortor, vel rhoncus justo. Nullam aliquam accumsan metus aliquam faucibus.</p>\r\n\r\n<p>Phasellus urna urna, vestibulum sit amet vehicula in, pellentesque nec nunc. Vivamus molestie lectus ac orci elementum luctus varius risus dignissim. Donec tristique est vel velit molestie euismod elementum sed lorem. Nulla viverra felis ut quam ultrices euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel urna orci, eu tristique nulla. Aenean egestas iaculis odio, ut pretium enim interdum eu. Nullam interdum lacus eget lectus cursus vitae rhoncus lorem tempus. Donec vel ipsum mauris, eu rhoncus tortor. Maecenas feugiat nisl non turpis scelerisque vitae pretium est dictum. In id bibendum ipsum. Maecenas velit est, porta a feugiat eget, posuere quis augue. Sed luctus ultricies augue a vulputate.</p>\r\n\r\n<p>Duis porta blandit nunc, vel varius tortor egestas quis. Morbi sit amet felis et nisl suscipit ultrices. Aliquam suscipit semper lectus at accumsan. Integer scelerisque ultrices lectus sit amet sollicitudin. Phasellus fermentum, eros in pulvinar consectetur, purus felis varius sapien, et euismod augue purus vel massa. Cras mollis nisi quis urna suscipit volutpat. Curabitur vel ante nec neque posuere consectetur. Phasellus cursus turpis eu nisl semper scelerisque. Mauris malesuada tristique est ut tempor. Sed euismod varius laoreet. Quisque non elementum elit. Nam lobortis ultricies velit. Praesent eget tellus lectus, et tempus lacus. In hac habitasse platea dictumst. </p>', 1, 79, '2013-11-15 08:31:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-15 08:31:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(96, 213, 'T3 Framework Main Features', 't3-framework-main-features', '<!-- Subhead\r\n================================================== -->\r\n<header class="jumbotron subhead" id="overview">\r\n<center>\r\n\r\n<h3>Explore the best Joomla Framework</h3>\r\n\r\n<iframe width="640" height="360" src="//www.youtube.com/embed/GavP7BLhFpw" frameborder="0" allowfullscreen></iframe>\r\n\r\n</center>\r\n</header>\r\n\r\n<div class="container">\r\n\r\n<div class="btn-actions"><a href="http://demo.t3-framework.org/joomla30"><button class="btn btn-large btn-info" type="button">Access Demo</button></a> &nbsp; <a href="http://t3-framework.org/downloads.html"><button class="btn btn-large btn-primary" type="button">Download Now</button></a></div>\r\n\r\n<!-- Product Features -->\r\n<div class="features-list pd-features">\r\n\r\n    <div class="page-header page-header-primary">\r\n        <h1>10 reasons why choose T3</h1>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-1">\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Fully Responsive</h3>\r\n            <p>T3 Framework is one of the first responsive Joomla frameworks template. It supports numbers of responsive layouts including: Wide, Normal, XTablet, Tablet and Mobile. </p>\r\n        </div>\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="Fully responsive joomla framework" src="images/joomlart/landing-page/responsive.jpg">\r\n        </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-2">\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="HTML5 and Bootstrap" src="images/joomlart/landing-page/html5.jpg">\r\n        </div>\r\n        <div class="col-md-6 feature-ct pd-feature-ct">		\r\n			<h3>HTML5, Bootstrap and LESS</h3>\r\n            <p>HTML 5 ensures web experience and visualization quality that benefits from rich markup and compatibility. With Bootstrap and LESS- the Dynamic Stylesheet language, you can standardize your grid, typography, and modules with less efforts. All are built in T3 Framework at core.</p>\r\n            </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-3">\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>2 starter themes</h3>\r\n            <p>T3 Framework comes with 2 starter themes: the usual T3 Blank template (Bootstrap 2 T3 Blank template) and the new T3 B3 Blank (Bootstrap 3 T3 Blank template). Both looks amazingly stunning on any devices. </p>\r\n        </div>\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="2 starter themes" src="images/joomlart/landing-page/2-starter-theme.jpg">\r\n        </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-4">\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="Flat design" src="images/joomlart/landing-page/flat_design.jpg">\r\n        </div>\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Flat design</h3>\r\n            <p>The T3 Framework 2.0.0 is real Flat, both Front-page and back-end setting panel. It deverses a clean layout and typography.</p>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <div class="row feature-row pd-feature-row ft-5">\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Megamenu and Off-canvas</h3>\r\n            <p>Megamenu and Off-canvas are highlight features in T3 Framework. It allows you to build up a powerful menu system and you are full control.</p>\r\n       </div>\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="megamenu and off-canvas" src="images/joomlart/landing-page/megamenu_offcanvas.jpg">\r\n        </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-6">\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="Flexible layout" src="images/joomlart/landing-page/layout.jpg">\r\n        </div>\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Flexible layout system</h3>\r\n            <p>Does not only look pretty but also is an extremely customizable framework, especially when it comes to layout customization based on visual layout configuration.</p>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-5">\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Joomla 2.5 and Joomla 3 native</h3>\r\n            <p>T3 is fully compatible with both Joomla 2.5 and Joomla 3. New updates will be available in case Joomla has new update.</p>\r\n       </div>\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="Joomla 2.5 and Joomla 3 native" src="images/joomlart/landing-page/joomla_support.jpg">\r\n        </div>\r\n    </div>\r\n	\r\n	\r\n	    <div class="row feature-row pd-feature-row ft-6">\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n            <img title="Real Time Theme Customization" src="images/joomlart/landing-page/thememagic.png">\r\n        </div>\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Real Time Theme Customization</h3>\r\n            <p>ThemeMagic lets you customize your JoomlArt T3 based Joomla template without having to search for the right file or diving deeply into the code, one can easily manipulate most of the template''s CSS properties right from the ThemeMagic backend.</p>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="row feature-row pd-feature-row ft-5">\r\n        <div class="col-md-6 feature-ct pd-feature-ct">\r\n            <h3>Font Awesome 3 & 4</h3>\r\n            <p>The new version of favorite Font awesome (Font awesome 4) is now available in T3. T3 now supports both Font Awesome 4 and Font Awesome 3. </p>\r\n        </div>\r\n        <div class="col-md-6 feature-img pd-feature-img">\r\n             <img title="Font Awesome 4" src="images/joomlart/landing-page/Font-Awesome-4.jpg">\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n<!-- // Product Features -->\r\n\r\n<div class="btn-actions"><a href="http://demo.t3-framework.org/joomla30"><button class="btn btn-large btn-info" type="button">Access Demo</button></a> &nbsp; <a href="http://t3-framework.org/downloads.html"><button class="btn btn-large btn-primary" type="button">Download Now</button></a></div>\r\n</div>\r\n', '', 1, 82, '2013-11-30 04:02:46', 42, '', '2013-11-30 09:57:57', 42, 42, '2013-11-30 09:57:57', '2013-11-30 04:02:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(97, 218, 'mohammad', 'mohammad', '<p>mohammad hashim article</p>', '', 1, 14, '2016-04-19 08:16:29', 42, '', '2016-04-19 08:16:29', 0, 0, '0000-00-00 00:00:00', '2016-04-19 08:16:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(98, 251, 'about us - maps', 'about-us-maps', 'this is about us article', '', 1, 14, '2016-04-23 12:11:54', 42, '', '2016-04-23 12:11:54', 0, 0, '0000-00-00 00:00:00', '2016-04-23 12:11:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `t3_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `t3_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `t3_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_content_frontpage`
--

INSERT INTO `t3_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 7),
(24, 6),
(35, 9),
(50, 8),
(89, 5),
(90, 1),
(91, 4),
(92, 3),
(93, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t3_content_rating`
--

CREATE TABLE IF NOT EXISTS `t3_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_content_types`
--

CREATE TABLE IF NOT EXISTS `t3_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t3_content_types`
--

INSERT INTO `t3_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `t3_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `t3_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_extensions`
--

CREATE TABLE IF NOT EXISTS `t3_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10013 ;

--
-- Dumping data for table `t3_extensions`
--

INSERT INTO `t3_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"0","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"13":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"3":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"4":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"5":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"10":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"12":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"13","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"edfccd4a511d2be0e15831a3d0245b0b"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"0","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"1","invalid_elements":"empty","valid_elements":"*","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","code_sample":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `t3_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1461478436}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1461478715,"unique_id":"408086e5ed080128a017118bcb1be28a5ee12f69","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 't3_blank', 'template', 't3_blank', '', 0, 1, 1, 0, '{"name":"t3_blank","type":"template","creationDate":"30 July 2015","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.2.1","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"July 30, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.5.0","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 't3_bs3_blank', 'template', 't3_bs3_blank', '', 0, 1, 1, 0, '{"name":"t3_bs3_blank","type":"template","creationDate":"30 July 2015","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.2.1","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 1, 0, '{"name":"com_jaextmanager","type":"component","creationDate":"Feb 2015","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.6.0","description":"JA Extension Manager Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 0, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 0, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'MAPS', 'template', 'maps', '', 0, 1, 1, 0, '{"name":"MAPS","type":"template","creationDate":"19-04-2016","author":"MQPLANET.COM","copyright":"Copyright (C), MQ Planet. All Rights Reserved.","authorEmail":"taylorsuccessor@gmail.com","authorUrl":"http:\\/\\/www.mqplanet.com","version":"0.0.1","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\tforex MAPS\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'MY Template', 'template', 'mytemplate', '', 0, 1, 1, 0, '{"name":"MY Template","type":"template","creationDate":"19-04-2016","author":"MQPLANET.COM","copyright":"Copyright (C), MQ Planet. All Rights Reserved.","authorEmail":"taylorsuccessor@gmail.com","authorUrl":"http:\\/\\/www.mqplanet.com","version":"0.0.1","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\tmy template for joomla 3\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'RSForm!', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"name":"RSForm!","type":"component","creationDate":"March 2014","author":"RSJoomla!","copyright":"(C) 2007-2014 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.50.2","description":"COM_RSFORM_INSTALL_DESC","group":"","filename":"rsform"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":"","filename":"tcpdf"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Price Ticker', 'module', 'mod_price_ticker', '', 0, 1, 0, 0, '{"name":"Price Ticker","type":"module","creationDate":"April 2012","author":"MQ Planet","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"info@mqplanet.com","authorUrl":"www.mqplanet.com","version":"2.5","description":"This modules reads forex quotes from the MT-ToolsKit or directly from the MT4.","group":"","filename":"mod_price_ticker"}', '{"symbols":"EURUSD,USDJPY,USDCHF,GBPUSD,AUDUSD,NZDUSD,GBPJPY,EURGBP,","type":"","db_host":"","db_name":"","db_user":"","db_pass":"","ip":"127.0.0.1","port":"443","time_out":"15"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'com_uniterevolution2', 'component', 'com_uniterevolution2', '', 1, 1, 0, 0, '{"name":"com_uniterevolution2","type":"component","creationDate":"August 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"4.6","description":"\\n\\t\\tRevolution Slider extension and module installation success!\\n\\t","group":"","filename":"manifest"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Unite Revolution Slider 2', 'module', 'mod_unite_revolution2', '', 0, 1, 0, 0, '{"name":"Unite Revolution Slider 2","type":"module","creationDate":"October 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/unitecms.net","version":"4.6","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Revolution Slider (new edition)<\\/strong> module. Put the slider on any page. All the slider configuration located in Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/joomla-extensions\\/unite-revolution-slider-responsive\\" target=\\"_blank\\">Unite Revolution Slider Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 4.6<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":"","filename":"mod_unite_revolution2"}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_filters`
--

CREATE TABLE IF NOT EXISTS `t3_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `t3_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `t3_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `t3_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_terms`
--

CREATE TABLE IF NOT EXISTS `t3_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `t3_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `t3_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `t3_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_finder_types`
--

CREATE TABLE IF NOT EXISTS `t3_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_jaem_log`
--

CREATE TABLE IF NOT EXISTS `t3_jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_jaem_services`
--

CREATE TABLE IF NOT EXISTS `t3_jaem_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t3_jaem_services`
--

INSERT INTO `t3_jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 1, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_languages`
--

CREATE TABLE IF NOT EXISTS `t3_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t3_languages`
--

INSERT INTO `t3_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_menu`
--

CREATE TABLE IF NOT EXISTS `t3_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=586 ;

--
-- Dumping data for table `t3_menu`
--

INSERT INTO `t3_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 347, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 59, 68, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 60, 61, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 62, 63, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 64, 65, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 66, 67, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 69, 74, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 70, 71, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 72, 73, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 75, 80, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 76, 77, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 81, 86, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 82, 83, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 84, 85, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 95, 96, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 91, 92, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 87, 88, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 89, 90, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0),
(207, 'top', 'Joomla.org', 'joomlaorg', '', 'joomlaorg', 'http://joomla.org', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 143, 144, 0, '*', 0),
(227, 'frontendviews', 'Weblinks Categories', 'weblinks-categories', '', 'weblinks-categories', 'index.php?option=com_weblinks&view=categories&id=18', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 213, 214, 0, '*', 0),
(229, 'frontendviews', 'Single Contact', 'single-contact', '', 'single-contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_crumb":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 203, 204, 0, '*', 0),
(234, 'parks', 'Park Blog', 'park-blog', '', 'park-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, 'en-GB', 0),
(242, 'parks', 'Write a Blog Post', 'write-a-blog-post', '', 'write-a-blog-post', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 114, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, 'en-GB', 0),
(243, 'parks', 'Parks Home', 'parks-home', '', 'parks-home', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_noauth":"","show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 147, 148, 0, 'en-GB', 0),
(244, 'parks', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=categories&id=28', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_base_description":"1","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","drill_down_layout":"1","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 156, 0, 'en-GB', 0),
(249, 'frontendviews', 'Submit a Weblink', 'submit-a-weblink', '', 'submit-a-weblink', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 209, 210, 0, '*', 0),
(251, 'frontendviews', 'Contact Categories', 'contact-categories', '', 'contact-categories', 'index.php?option=com_contact&view=categories&id=16', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 199, 200, 0, '*', 0),
(252, 'frontendviews', 'News Feed Categories', 'new-feed-categories', '', 'new-feed-categories', 'index.php?option=com_newsfeeds&view=categories&id=0', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"Because this links to the root category the "uncategorised" category is displayed. ","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 217, 218, 0, '*', 0),
(253, 'frontendviews', 'News Feed Category', 'news-feed-category', '', 'news-feed-category', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 221, 222, 0, '*', 0),
(254, 'frontendviews', 'Single News Feed', 'single-news-feed', '', 'single-news-feed', 'index.php?option=com_newsfeeds&view=newsfeed&id=4', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 219, 220, 0, '*', 0),
(255, 'frontendviews', 'Search', 'search', '', 'search', 'index.php?option=com_search&view=search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"1","show_date":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 239, 240, 0, '*', 0),
(256, 'frontendviews', 'Archived Articles', 'archived-articles', '', 'archived-articles', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"orderby_sec":"","order_date":"","display_num":"","filter_field":"","show_category":"1","link_category":"1","show_title":"1","link_titles":"1","show_intro":"1","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 193, 194, 0, '*', 0),
(257, 'frontendviews', 'Single Article', 'single-article', '', 'single-article', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 183, 184, 0, '*', 0),
(259, 'frontendviews', 'Article Category Blog', 'article-category-blog', '', 'article-category-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 187, 188, 0, '*', 0),
(260, 'frontendviews', 'Article Category List', 'article-category-list', '', 'article-category-list', 'index.php?option=com_content&view=category&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 189, 190, 0, '*', 0),
(262, 'frontendviews', 'Featured Articles', 'featured-articles', '', 'featured-articles', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 191, 192, 0, '*', 0),
(263, 'frontendviews', 'Submit Article', 'submit-article', '', 'submit-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 195, 196, 0, '*', 0),
(265, 'frontendviews', 'Weblinks Component', 'weblinks-component', '', 'weblinks-component', 'index.php?option=com_content&view=article&id=54', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 207, 208, 0, '*', 0),
(266, 'frontendviews', 'Content Component', 'content-component', '', 'content-component', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"article-allow_ratings":"","article-allow_comments":"","show_category":"","link_category":"","show_title":"","link_titles":"","show_intro":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 181, 182, 0, '*', 0),
(267, 'frontendviews', 'News Feeds Component', 'news-feeds-component', '', 'news-feeds-component', 'index.php?option=com_content&view=article&id=60', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"Newsfeeds Categories View ","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 215, 216, 0, '*', 0),
(270, 'frontendviews', 'Contact Component', 'contact-component', '', 'contact-component', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 197, 198, 0, '*', 0),
(271, 'frontendviews', 'Users Component', 'users-component', '', 'users-component', 'index.php?option=com_content&view=article&id=52', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 223, 224, 0, '*', 0),
(272, 'frontendviews', 'Article Categories', 'article-categories', '', 'article-categories', 'index.php?option=com_content&view=categories&id=14', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 185, 186, 0, '*', 0),
(274, 'frontendviews', 'Weblinks Single Category', 'weblinks-single-category', '', 'weblinks-single-category', 'index.php?option=com_weblinks&view=category&id=32', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 211, 212, 0, '*', 0),
(275, 'frontendviews', 'Contact Single Category', 'contact-single-category', '', 'contact-single-category', 'index.php?option=com_contact&view=category&catid=26&id=36', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 201, 202, 0, '*', 0),
(276, 'frontendviews', 'Search Components', 'search-component', '', 'search-component', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 237, 238, 0, '*', 0),
(277, 'aboutjoomla', 'Using Extensions', 'extensions', '', 'using-joomla/extensions', 'index.php?option=com_content&view=categories&id=20', 'component', 1, 280, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"","maxLevelcat":"1","show_empty_categories_cat":"1","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","drill_down_layout":"0","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 98, 137, 0, '*', 0),
(280, 'aboutjoomla', 'Using Joomla!', 'using-joomla', '', 'using-joomla', 'index.php?option=com_content&view=article&id=53', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 138, 0, '*', 0),
(282, 'aboutjoomla', 'Templates', 'templates', '', 'using-joomla/extensions/templates', 'index.php?option=com_content&view=category&id=23', 'component', 1, 277, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"2","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","show_pagination":"0","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Templates","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 118, 0, '*', 0),
(283, 'aboutjoomla', 'Languages', 'languages', '', 'using-joomla/extensions/languages', 'index.php?option=com_content&view=category&layout=blog&id=24', 'component', 1, 277, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0),
(284, 'aboutjoomla', 'Plugins', 'plugins', '', 'using-joomla/extensions/plugins', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', 1, 277, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 136, 0, '*', 0),
(285, 'aboutjoomla', 'Typography Atomic', 'typography-atomic', '', 'using-joomla/extensions/templates/atomic/typography-atomic', 'index.php?option=com_content&view=article&id=49', 'component', 1, 422, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 113, 114, 0, '*', 0),
(296, 'parks', 'Park Links', 'park-links', '', 'park-links', 'index.php?option=com_weblinks&view=category&id=31', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"-1","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"","show_headings":"0","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 159, 160, 0, 'en-GB', 0),
(300, 'modules', 'Latest Users', 'latest-users', '', 'latest-users', 'index.php?option=com_content&view=article&id=66', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 267, 268, 0, '*', 0),
(301, 'modules', 'Who''s Online', 'whos-online', '', 'whos-online', 'index.php?option=com_content&view=article&id=56', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 269, 270, 0, '*', 0),
(302, 'modules', 'Most Read', 'most-read', '', 'most-read', 'index.php?option=com_content&view=article&id=30', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 249, 250, 0, '*', 0),
(303, 'modules', 'Menu', 'menu', '', 'menu', 'index.php?option=com_content&view=article&id=29', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 243, 244, 0, '*', 0),
(304, 'modules', 'Statistics', 'statistics', '', 'statistics', 'index.php?option=com_content&view=article&id=44', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 287, 288, 0, '*', 0),
(305, 'modules', 'Banner', 'banner-module', '', 'banner-module', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 275, 276, 0, '*', 0),
(306, 'modules', 'Search', 'search-module', '', 'search-module', 'index.php?option=com_content&view=article&id=40', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 289, 290, 0, '*', 0),
(307, 'modules', 'Random Image', 'random-image', '', 'random-image', 'index.php?option=com_content&view=article&id=36', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 273, 274, 0, '*', 0),
(309, 'modules', 'News Flash', 'news-flash', '', 'news-flash', 'index.php?option=com_content&view=article&id=31', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 251, 252, 0, '*', 0),
(310, 'modules', 'Latest Articles', 'latest-articles', '', 'latest-articles', 'index.php?option=com_content&view=article&id=27', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 253, 254, 0, '*', 0),
(311, 'modules', 'Syndicate', 'syndicate', '', 'syndicate', 'index.php?option=com_content&view=article&id=45', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 285, 286, 0, '*', 0),
(312, 'modules', 'Login', 'login-module', '', 'login-module', 'index.php?option=com_content&view=article&id=28', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 265, 266, 0, '*', 0),
(313, 'modules', 'Wrapper', 'wrapper-module', '', 'wrapper-module', 'index.php?option=com_content&view=article&id=59', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 293, 294, 0, '*', 0),
(316, 'aboutjoomla', 'Home Page Atomic', 'home-page-atomic', '', 'using-joomla/extensions/templates/atomic/home-page-atomic', 'index.php?option=com_content&view=featured', 'component', 1, 422, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0),
(317, 'aboutjoomla', 'System', 'system', '', 'using-joomla/extensions/plugins/system', 'index.php?option=com_content&view=article&id=46', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 134, 135, 0, '*', 0),
(318, 'aboutjoomla', 'Authentication', 'authentication', '', 'using-joomla/extensions/plugins/authentication', 'index.php?option=com_content&view=article&id=5', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 122, 123, 0, '*', 0);
INSERT INTO `t3_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(319, 'aboutjoomla', 'Content', 'content', '', 'using-joomla/extensions/plugins/content', 'index.php?option=com_content&view=article&id=62', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 124, 125, 0, '*', 0),
(320, 'aboutjoomla', 'Editors', 'editors', '', 'using-joomla/extensions/plugins/editors', 'index.php?option=com_content&view=article&id=14', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 126, 127, 0, '*', 0),
(321, 'aboutjoomla', 'Editors Extended', 'editors-extended', '', 'using-joomla/extensions/plugins/editors-extended', 'index.php?option=com_content&view=article&id=15', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 128, 129, 0, '*', 0),
(322, 'aboutjoomla', 'Search', 'search', '', 'using-joomla/extensions/plugins/search', 'index.php?option=com_content&view=article&id=41', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 130, 131, 0, '*', 0),
(323, 'aboutjoomla', 'User', 'user', '', 'using-joomla/extensions/plugins/user', 'index.php?option=com_content&view=article&id=51', 'component', 1, 284, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 132, 133, 0, '*', 0),
(324, 'modules', 'Footer', 'footer', '', 'footer', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 279, 280, 0, '*', 0),
(325, 'modules', 'Archive', 'archive', '', 'archive', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 255, 256, 0, '*', 0),
(326, 'modules', 'Related Items', 'related-items', '', 'related-items', 'index.php?option=com_content&view=article&id=37', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 257, 258, 0, '*', 0),
(399, 'parks', 'Animals', 'animals', '', 'image-gallery/animals', 'index.php?option=com_content&view=category&layout=blog&id=72', 'component', 1, 244, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 152, 153, 0, 'en-GB', 0),
(400, 'parks', 'Scenery', 'scenery', '', 'image-gallery/scenery', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 244, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 154, 155, 0, 'en-GB', 0),
(402, 'frontendviews', 'Login Form', 'login-form', '', 'login-form', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 225, 226, 0, '*', 0),
(403, 'frontendviews', 'User Profile', 'user-profile', '', 'user-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 227, 228, 0, '*', 0),
(404, 'frontendviews', 'Edit User Profile', 'edit-user-profile', '', 'edit-user-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 229, 230, 0, '*', 0),
(405, 'frontendviews', 'Registration Form', 'registration-form', '', 'registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 231, 232, 0, '*', 0),
(406, 'frontendviews', 'Username Reminder Request', 'username-reminder', '', 'username-reminder', 'index.php?option=com_users&view=remind', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 233, 234, 0, '*', 0),
(409, 'frontendviews', 'Password Reset', 'password-reset', '', 'password-reset', 'index.php?option=com_users&view=reset', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 235, 236, 0, '*', 0),
(410, 'modules', 'Feed Display', 'feed-display', '', 'feed-display', 'index.php?option=com_content&view=article&id=16', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 277, 278, 0, '*', 0),
(411, 'modules', 'Content Modules', 'content-modules', '', 'content-modules', 'index.php?option=com_content&view=category&id=64', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"1","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 247, 248, 0, '*', 0),
(412, 'modules', 'User Modules', 'user-modules', '', 'user-modules', 'index.php?option=com_content&view=category&id=65', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 263, 264, 0, '*', 0),
(416, 'modules', 'Breadcrumbs', 'breadcrumbs', '', 'breadcrumbs', 'index.php?option=com_content&view=article&id=61', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 245, 246, 0, '*', 0),
(417, 'modules', 'Weblinks', 'weblinks-module', '', 'weblinks-module', 'index.php?option=com_content&view=article&id=55', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 281, 282, 0, '*', 0),
(418, 'modules', 'Custom HTML', 'custom-html', '', 'custom-html', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 283, 284, 0, '*', 0),
(419, 'aboutjoomla', 'Beez 2', 'beez-2', '', 'using-joomla/extensions/templates/beez-2', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', 1, 282, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 100, 105, 0, '*', 0),
(422, 'aboutjoomla', 'Atomic', 'atomic', '', 'using-joomla/extensions/templates/atomic', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', 1, 282, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"2","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 112, 117, 0, '*', 0),
(423, 'aboutjoomla', 'Typography Beez 2', 'typography-beez-2', '', 'using-joomla/extensions/templates/beez-2/typography-beez-2', 'index.php?option=com_content&view=article&id=49', 'component', 1, 419, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 101, 102, 0, '*', 0),
(424, 'aboutjoomla', 'Home Page Beez 2', 'home-page-beez-2', '', 'using-joomla/extensions/templates/beez-2/home-page-beez-2', 'index.php?option=com_content&view=featured', 'component', 1, 419, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(427, 'fruitshop', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', 'fruit-encyclopedia', 'index.php?option=com_contact&view=categories&id=37', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"show_base_description":"1","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_items_cat":"","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"1","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"0","show_position_headings":"","show_email_headings":"0","show_telephone_headings":"0","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"0","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":" categories-listalphabet","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 163, 164, 0, '*', 0),
(429, 'fruitshop', 'Welcome', 'welcome', 'Fruit store front page', 'welcome', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 161, 162, 0, '*', 0),
(430, 'fruitshop', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=category&catid=47&id=36', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"0","show_position_headings":"","show_email_headings":"","show_telephone_headings":"","show_mobile_headings":"","show_fax_headings":"","show_suburb_headings":"","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","initial_sort":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 167, 168, 0, '*', 0),
(431, 'fruitshop', 'Growers', 'growers', '', 'growers', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"layout_type":"blog","show_category_title":"1","show_description":"1","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"5","num_intro_articles":"0","num_columns":"1","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 166, 0, '*', 0),
(432, 'fruitshop', 'Login ', 'shop-login', '', 'shop-login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 169, 170, 0, '*', 0),
(433, 'fruitshop', 'Directions', 'directions', '', 'directions', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 171, 172, 0, '*', 0),
(435, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=24', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 8, 1, '*', 0),
(437, 'aboutjoomla', 'Getting Started', 'getting-started', '', 'getting-started', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(443, 'modules', 'Article Categories', 'article-categories-view', '', 'article-categories-view', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 259, 260, 0, '*', 0),
(444, 'top', 'Sample Sites', 'sample-sites-2', '', 'sample-sites-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"238","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 141, 142, 0, '*', 0),
(447, 'modules', 'Language Switcher', 'language-switcher', '', 'language-switcher', 'index.php?option=com_content&view=article&id=26', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 291, 292, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 173, 174, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', -2, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 175, 176, 0, '*', 0),
(452, 'frontendviews', 'Featured Contacts', 'featured-contacts', '', 'featured-contacts', 'index.php?option=com_contact&view=featured&id=16', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 205, 206, 0, '*', 0),
(456, 'aboutjoomla', 'Beez5', 'beez5', '', 'using-joomla/extensions/templates/beez5', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', 1, 282, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 106, 111, 0, '*', 0),
(457, 'aboutjoomla', 'Typography Beez5', 'typography-beez-5', '', 'using-joomla/extensions/templates/beez5/typography-beez-5', 'index.php?option=com_content&view=article&id=49', 'component', 1, 456, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 107, 108, 0, '*', 0),
(458, 'aboutjoomla', 'Home Page Beez5', 'home-page-beez5', '', 'using-joomla/extensions/templates/beez5/home-page-beez5', 'index.php?option=com_content&view=featured', 'component', 1, 456, 5, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(459, 'modules', 'Article Category', 'article-category', '', 'article-category', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 261, 262, 0, '*', 0),
(462, 'fruitshop', 'Add a recipe', 'add-a-recipe', '', 'add-a-recipe', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 4, '', 7, '{"enable_category":"0","catid":"14","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(463, 'fruitshop', 'Recipes', 'recipes', '', 'recipes', 'index.php?option=com_content&view=category&id=76', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 7, '{"show_category_title":"1","show_description":"1","show_description_image":"","maxLevel":"0","show_empty_categories":"0","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 179, 180, 0, '*', 0),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 139, 140, 0, '*', 0),
(466, 'frontendviews', 'Smart Search', 'smart-search', '', 'smart-search', 'index.php?option=com_finder&view=search&q=&f=', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","search_order":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 241, 242, 0, '*', 0),
(467, 'modules', 'Smart Search', 'smart-search-module', '', 'smart-search-module', 'index.php?option=com_content&view=article&id=70', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 271, 272, 0, '*', 0),
(468, 'top', 'Parks ', '2012-07-19-17-38-59', '', '2012-07-19-17-38-59', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 295, 296, 0, '*', 0),
(469, 'top', 'Fruit Shop', '2012-07-19-17-39-29', '', '2012-07-19-17-39-29', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 297, 298, 0, '*', 0),
(470, 'main', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 299, 300, 0, '', 1),
(507, 'mainmenu', 'Menu', 'menu', '', 'page-all-modules/menu', 'index.php?option=com_content&view=article&id=29', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 281, 282, 0, '*', 0),
(508, 'mainmenu', 'Breadcrumbs', 'breadcrumbs', '', 'page-all-modules/breadcrumbs', 'index.php?option=com_content&view=article&id=61', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 283, 284, 0, '*', 0),
(509, 'mainmenu', 'Content Modules', 'content-modules', '', 'page-all-modules/content-modules', 'index.php?option=com_content&view=category&id=64', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"1","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 285, 286, 0, '*', 0),
(510, 'mainmenu', 'Most Read', 'most-read', '', 'page-all-modules/most-read', 'index.php?option=com_content&view=article&id=30', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 287, 288, 0, '*', 0),
(511, 'mainmenu', 'News Flash', 'news-flash', '', 'page-all-modules/news-flash', 'index.php?option=com_content&view=article&id=31', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 289, 290, 0, '*', 0),
(512, 'mainmenu', 'Latest Articles', 'latest-articles', '', 'page-all-modules/latest-articles', 'index.php?option=com_content&view=article&id=27', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 291, 292, 0, '*', 0),
(513, 'mainmenu', 'Archive', 'archive', '', 'page-all-modules/archive', 'index.php?option=com_content&view=article&id=2', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 293, 294, 0, '*', 0),
(514, 'mainmenu', 'Related Items', 'related-items', '', 'page-all-modules/related-items', 'index.php?option=com_content&view=article&id=37', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 295, 296, 0, '*', 0);
INSERT INTO `t3_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(515, 'mainmenu', 'Article Categories', 'article-categories-view', '', 'page-all-modules/article-categories-view', 'index.php?option=com_content&view=article&id=3', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 297, 310, 0, '*', 0),
(516, 'mainmenu', 'Article Category', 'article-category', '', 'page-all-modules/article-category', 'index.php?option=com_content&view=article&id=4', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 311, 348, 0, '*', 0),
(517, 'mainmenu', 'User Modules', 'user-modules', '', 'page-all-modules/user-modules', 'index.php?option=com_content&view=category&id=65', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 349, 350, 0, '*', 0),
(518, 'mainmenu', 'Login', 'login-module', '', 'page-all-modules/login-module', 'index.php?option=com_content&view=article&id=28', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 351, 352, 0, '*', 0),
(519, 'mainmenu', 'Latest Users', 'latest-users', '', 'page-all-modules/latest-users', 'index.php?option=com_content&view=article&id=66', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 353, 354, 0, '*', 0),
(520, 'mainmenu', 'Who''s Online', 'whos-online', '', 'page-all-modules/whos-online', 'index.php?option=com_content&view=article&id=56', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 355, 356, 0, '*', 0),
(521, 'mainmenu', 'Smart Search', 'smart-search-module', '', 'page-all-modules/smart-search-module', 'index.php?option=com_content&view=article&id=70', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 357, 358, 0, '*', 0),
(522, 'mainmenu', 'Random Image', 'random-image', '', 'page-all-modules/random-image', 'index.php?option=com_content&view=article&id=36', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 359, 360, 0, '*', 0),
(523, 'mainmenu', 'Banner', 'banner-module', '', 'page-all-modules/banner-module', 'index.php?option=com_content&view=article&id=7', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 361, 362, 0, '*', 0),
(524, 'mainmenu', 'Feed Display', 'feed-display', '', 'page-all-modules/feed-display', 'index.php?option=com_content&view=article&id=16', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 363, 364, 0, '*', 0),
(525, 'mainmenu', 'Footer', 'footer', '', 'page-all-modules/footer', 'index.php?option=com_content&view=article&id=19', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 365, 366, 0, '*', 0),
(526, 'mainmenu', 'Weblinks', 'weblinks-module', '', 'page-all-modules/weblinks-module', 'index.php?option=com_content&view=article&id=55', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 367, 368, 0, '*', 0),
(527, 'mainmenu', 'Custom HTML', 'custom-html', '', 'page-all-modules/custom-html', 'index.php?option=com_content&view=article&id=12', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 369, 370, 0, '*', 0),
(528, 'mainmenu', 'Syndicate', 'syndicate', '', 'page-all-modules/syndicate', 'index.php?option=com_content&view=article&id=45', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 371, 372, 0, '*', 0),
(529, 'mainmenu', 'Statistics', 'statistics', '', 'page-all-modules/statistics', 'index.php?option=com_content&view=article&id=44', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 373, 374, 0, '*', 0),
(530, 'mainmenu', 'Search', 'search-module', '', 'page-all-modules/search-module', 'index.php?option=com_content&view=article&id=40', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 375, 376, 0, '*', 0),
(531, 'mainmenu', 'Language Switcher', 'language-switcher', '', 'page-all-modules/language-switcher', 'index.php?option=com_content&view=article&id=26', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 377, 378, 0, '*', 0),
(532, 'mainmenu', 'Wrapper', 'wrapper-module', '', 'page-all-modules/wrapper-module', 'index.php?option=com_content&view=article&id=59', 'component', -2, 506, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 379, 380, 0, '*', 0),
(533, 'mainmenu', 'Layout', 'layout', '', 'layout', 'index.php?option=com_content&view=category&layout=blog&id=79', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"1","show_subcategory_content":"-1","orderby_pri":"","orderby_sec":"date","order_date":"created","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 56, 0, '*', 0),
(534, 'mainmenu', '3 Columns', '3-columns', '', 'layout/sample-layouts/3-columns', 'index.php?option=com_content&view=article&id=72', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(535, 'mainmenu', 'Full Width', 'full-width', '', 'layout/sample-layouts/full-width', 'index.php?option=com_content&view=article&id=75', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(536, 'mainmenu', 'Position Layout', 'position-layout', '', 'layout/sample-layouts/position-layout', 'index.php?option=com_content&view=article&id=76', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(537, 'mainmenu', 'Left Sidebar - Content', 'left-sidebar-content', '', 'layout/sample-layouts/left-sidebar-content', 'index.php?option=com_content&view=article&id=73', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(538, 'mainmenu', 'Content - Right Sidebar', 'content-right-sidebar', '', 'layout/sample-layouts/content-right-sidebar', 'index.php?option=com_content&view=article&id=74', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(540, 'mainmenu', 'Classic Layout', 'home-classic', '', 'homepage/home-classic', 'index.php?option=com_content&view=featured', 'component', 1, 435, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 13, '{"featured_categories":["80"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 7, 0, '*', 0),
(541, 'mainmenu', 'Bootstrap 3', 'bootstrap-3', '', 'bootstrap-3', 'index.php?option=com_content&view=category&layout=blog&id=78', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 11, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(542, 'mainmenu', 'Submenu', 'submenu', '', 'homepage/home-classic/submenu', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', 1, 540, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 4, 0, '*', 0),
(543, 'mainmenu', 'Separator In Sub', 'separator-in-sub', '', 'homepage/home-classic/separator-in-sub', '', 'separator', 1, 540, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 5, 6, 0, '*', 0),
(544, 'mainmenu', 'Support', '2013-11-08-03-59-34', '', '2013-11-08-03-59-34', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 301, 310, 0, '*', 0),
(545, 'mainmenu', 'Joomla! pages', 'joomla-pages', '', 'joomla-pages', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["80"],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"2","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"order","orderby_sec":"hits","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"1","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 38, 0, '*', 0),
(546, 'mainmenu', 'Typography', 'typography', '', 'typography', 'index.php?option=com_content&view=article&id=71', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(547, 'mainmenu', 'Sample Page 1', 'sample-page-1', '', 'joomla-pages/sample-page-1', '', 'url', 1, 545, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 14, 25, 0, '*', 0),
(548, 'mainmenu', 'Sample Page 2', 'sample-page-2', '', 'joomla-pages/sample-page-2', '', 'url', 1, 545, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 26, 37, 0, '*', 0),
(549, 'mainmenu', 'Contacts', 'contacts', '', 'joomla-pages/sample-page-1/contacts', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 547, 3, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(550, 'mainmenu', 'Smart Search', 'smart-search', '', 'joomla-pages/sample-page-1/smart-search', 'index.php?option=com_finder&view=search&q=&f=', 'component', 1, 547, 3, 27, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","sort_order":"","sort_direction":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(551, 'mainmenu', 'Advancesd Search', 'advancesd-search', '', 'joomla-pages/sample-page-1/advancesd-search', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 547, 3, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(552, 'mainmenu', 'Page break', 'page-break', '', 'joomla-pages/sample-page-1/page-break', 'index.php?option=com_content&view=article&id=77', 'component', 1, 547, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(553, 'mainmenu', 'News Feed', 'news-feed', '', 'joomla-pages/sample-page-2/news-feed', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', 1, 548, 3, 17, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","filter_field":"","show_pagination_limit":"","show_headings":"","show_articles":"","show_link":"","show_pagination":"","show_pagination_results":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","feed_display_order":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(554, 'mainmenu', 'Registration Form', 'registration-form', '', 'joomla-pages/sample-page-2/registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 548, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(555, 'mainmenu', 'Offline Page', 'offline-page', '', 'joomla-pages/sample-page-2/offline-page', 'index.php?option=com_content&view=article&id=78', 'component', 1, 548, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(556, 'mainmenu', 'Login Page', 'login-page', '', 'joomla-pages/sample-page-2/login-page', 'index.php?option=com_users&view=login', 'component', 1, 548, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(557, 'mainmenu', 'Weblinks', 'weblinks', '', 'joomla-pages/sample-page-2/weblinks', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 548, 3, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(558, 'mainmenu', 'Single Article', 'single-articles', '', 'joomla-pages/sample-page-1/single-articles', 'index.php?option=com_content&view=article&id=73', 'component', 1, 547, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(559, 'mainmenu', 'Sample Layouts', 'sample-layouts', '', 'layout/sample-layouts', '', 'url', 1, 533, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 42, 55, 0, '*', 0),
(560, 'mainmenu', 'Multiple columns layout', 'multiple-columns-layout', '', 'layout/sample-layouts/multiple-columns-layout', 'index.php?option=com_content&view=category&id=79', 'component', 1, 559, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"date","order_date":"created","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(561, 'mainmenu', 'Documentation', '2013-11-15-08-53-41', '', '2013-11-08-03-59-34/2013-11-15-08-53-41', 'http://t3-framework.org/documentation/faqs.html', 'url', 1, 544, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 302, 303, 0, '*', 0),
(562, 'mainmenu', 'Video Tutorials', '2013-11-15-08-54-36', '', '2013-11-08-03-59-34/2013-11-15-08-54-36', 'http://t3-framework.org/video-series.html', 'url', 1, 544, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 304, 305, 0, '*', 0),
(563, 'mainmenu', 'Support Forum', '2013-11-15-08-55-03', '', '2013-11-08-03-59-34/2013-11-15-08-55-03', 'http://t3-framework.org/discussions.html', 'url', 1, 544, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 306, 307, 0, '*', 0),
(564, 'mainmenu', 'FAQs', '2013-11-15-08-56-11', '', '2013-11-08-03-59-34/2013-11-15-08-56-11', 'http://t3-framework.org/documentation/faqs.html', 'url', 1, 544, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 308, 309, 0, '*', 0),
(565, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(566, 'mainmenu', 'Main Features', 'main-features', '', 'main-features', 'index.php?option=com_content&view=article&id=96', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"0","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 9, 10, 0, '*', 0),
(568, 'main', 'COM_JAEXTMANAGER', 'com-jaextmanager', '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '', 311, 312, 0, '', 1),
(569, 'aboutjoomla', 'mohammad article', 'mohammad-article', '', 'article-category/mohammad-article', 'index.php?option=com_content&view=article&id=97', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 14, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 313, 314, 0, '*', 0),
(570, 'mainmenu', 'mohammd article', 'mohammd-article', '', 'article-category/mohammd-article', 'index.php?option=com_content&view=article&id=97', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 315, 316, 0, '*', 0),
(571, 'mainmenumaps', 'home', 'home-maps', '', 'article-category/home-maps', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 317, 318, 0, '*', 0),
(572, 'mainmenumaps', 'services', 'services', '', 'article-category/services', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"orderby_sec":"alpha","order_date":"created","display_num":"5","filter_field":"","introtext_limit":"100","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","link_titles":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 319, 320, 0, '*', 0),
(573, 'mainmenumaps', 'products', 'products', '', 'article-category/products', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"orderby_sec":"alpha","order_date":"created","display_num":"5","filter_field":"","introtext_limit":"100","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","link_titles":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 321, 322, 0, '*', 0),
(574, 'mainmenumaps', 'trading platform', 'trading-platform', '', 'article-category/trading-platform', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"orderby_sec":"alpha","order_date":"created","display_num":"5","filter_field":"","introtext_limit":"100","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","link_titles":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 323, 324, 0, '*', 0),
(575, 'mainmenumaps', 'education', 'education', '', 'article-category/education', 'index.php?option=com_content&view=archive', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"orderby_sec":"alpha","order_date":"created","display_num":"5","filter_field":"","introtext_limit":"100","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","link_titles":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 325, 326, 0, '*', 0),
(576, 'mainmenumaps', 'about us', 'about-us', '', 'article-category/about-us', 'index.php?option=com_content&view=article&id=98', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 327, 328, 0, '*', 0),
(577, 'main', 'RSFormPro', 'rsformpro', '', 'article-category/rsformpro', 'index.php?option=com_rsform', 'component', 0, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '{}', 329, 344, 0, '', 1),
(578, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'article-category/rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 330, 331, 0, '', 1),
(579, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'article-category/rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 332, 333, 0, '', 1),
(580, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 'com-rsform-manage-directory-submissions', '', 'article-category/rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 334, 335, 0, '', 1),
(581, 'main', 'COM_RSFORM_CONFIGURATION', 'com-rsform-configuration', '', 'article-category/rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 336, 337, 0, '', 1),
(582, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'article-category/rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 338, 339, 0, '', 1),
(583, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'article-category/rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 340, 341, 0, '', 1),
(584, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'article-category/rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 577, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 342, 343, 0, '', 1),
(585, 'main', 'COM_UNITEREVOLUTION2', 'com-uniterevolution2', '', 'article-category/com-uniterevolution2', 'index.php?option=com_uniterevolution2', 'component', 0, 1, 1, 10011, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniterevolution2/images/icon-16-revolution.png', 0, '{}', 345, 346, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_menu_types`
--

CREATE TABLE IF NOT EXISTS `t3_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `t3_menu_types`
--

INSERT INTO `t3_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 'top', 'Top', 'Links for major types of users'),
(4, 'aboutjoomla', 'About Joomla', 'All about Joomla!'),
(5, 'parks', 'Australian Parks', 'Main menu for a site about Australian  parks'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(7, 'fruitshop', 'Fruit Shop', 'Menu for the sample shop site.'),
(8, 'frontendviews', 'All Front End  Views', ''),
(9, 'modules', 'All Modules', ''),
(10, 'mainmenumaps', 'main menu maps', 'main menu maps');

-- --------------------------------------------------------

--
-- Table structure for table `t3_messages`
--

CREATE TABLE IF NOT EXISTS `t3_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `t3_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_modules`
--

CREATE TABLE IF NOT EXISTS `t3_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `t3_modules`
--

INSERT INTO `t3_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 208, 'Main Menu', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'navhelper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(18, 247, 'Book Store', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 0, '{"target":"1","count":1,"cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Books!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(19, 0, 'User Menu', '', '', 3, 'sidebar-2', 542, '2013-11-18 04:32:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(20, 0, 'Top', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(22, 0, 'Australian Parks ', '', '', 2, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"parks","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, 'en-GB'),
(23, 0, 'A Deep Menu', '', '', 4, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(25, 219, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(26, 0, 'About Joomla', '', '', 5, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 0, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 0, 'Latest News', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":["81"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(29, 0, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 0, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 0, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 0, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 0, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 0, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 0, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 0, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 0, 'Who''s Online', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 0, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 0, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(44, 220, 'Login', '', '', 1, 'header', 42, '2016-04-21 07:57:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(45, 0, 'Menu Example', '', '', 1, 'sidebar-2', 542, '2013-11-15 09:10:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(47, 0, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 222, 'Custom HTML', '', '<p>sdffffffffffffffffdveverv</p>\r\n<p>verververv</p>', 1, 'position-1', 0, '0000-00-00 00:00:00', '2016-04-22 06:51:47', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(52, 0, 'Breadcrumbs', '', '', 1, 'navhelper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(56, 0, 'Banners', '', '', 1, '', 542, '2013-11-23 04:46:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(57, 0, 'Fruit Shop', '', '', 3, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"fruitshop","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(58, 0, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 0, 'Articles Categories', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"81","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(62, 0, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 0, 'Search', '', '', 1, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(64, 0, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 0, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 0, 'Extensions', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"6","showAllChildren":"0","tag_id":"","class_sfx":"-menu","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(68, 0, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 0, 'Articles Category', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 0, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(71, 0, 'Top Menu (Atomic Template)', '', '', 1, 'atomic-topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 0, 'Top Quote (Atomic Template)', '', '<hr />\r\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 0, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 542, '2013-11-23 08:58:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 0, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 0, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 0, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 246, 'Shop', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 0, '{"target":"1","count":1,"cid":"2","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Shop!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(78, 248, 'Contribute', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 0, '{"target":"1","count":1,"cid":"1","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Contribute! ","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 0, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'All Front End  Views', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"frontendviews","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 0, 'All Modules', '', '', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"modules","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 0, 'Fruit Shop', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"fruitshop","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 0, 'Joomla', '', '<ul>\r\n<li><a href="http://docs.joomla.org/Beginners">Beginners</a></li>\r\n<li><a href="http://docs.joomla.org/Developers">Developers</a></li>\r\n<li><a href="http://docs.joomla.org/Web_designers">Web Designers</a></li>\r\n<li><a href="http://docs.joomla.org/Administrators">Administrators</a></li>\r\n<li><a href="http://docs.joomla.org/Evaluators">Evaluators</a></li>\r\n</ul>', 1, 'footer-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 0, 'Bootstrap', '', '<ul>\r\n<li><a href="http://twitter.github.com/bootstrap/getting-started.html">Get Started</a></li>\r\n<li><a href="http://twitter.github.com/bootstrap/getting-started.html#download-bootstrap">Download</a></li>\r\n<li><a href="http://twitter.github.com/bootstrap/scaffolding.html">Scaffolding</a></li>\r\n<li><a href="http://twitter.github.com/bootstrap/base-css.html">Base CSS</a></li>\r\n<li><a href="http://twitter.github.com/bootstrap/components.html">Components</a></li>\r\n</ul>', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 0, 'LESS CSS', '', '<ul>\r\n<li><a href="http://lesscss.org/">Official LESS Website</a></li>\r\n<li><a href="http://en.wikipedia.org/wiki/LESS_(stylesheet_language">LESS Wiki</a></li>\r\n<li><a href="https://github.com/cloudhead/less.js">Source Code</a></li>\r\n<li><a href="http://lesscss.org/#synopsis">LESS Overview</a></li>\r\n<li><a href="http://lesscss.org/#docs">The Language</a></li>\r\n</ul>', 1, 'footer-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 0, 'HTML 5', '', '<ul>\r\n<li><a href="http://www.w3.org/html/logo/">HTML5 Logo</a></li>\r\n<li><a href="http://en.wikipedia.org/wiki/HTML5">What Is HTML5?</a></li>\r\n<li><a href="http://www.w3.org/TR/html5/">W3C Working Draft</a></li>\r\n<li><a href="http://www.w3schools.com/html5/">HTML5 Tutorials</a></li>\r\n<li><a href="http://html5center.sourceforge.net/">HTML5 Center</a></li>\r\n</ul>', 1, 'footer-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 0, 'T3', '', '<ul>\r\n<li><a href="http://www.joomlart.com/forums/downloads.php">Download</a></li>\r\n<li><a href="#">Release Announcement</a></li>\r\n<li><a href="#">New Features</a></li>\r\n<li><a href="#">Changelog and Details</a></li>\r\n<li><a href="#">Migration FAQs</a></li>\r\n</ul>', 1, 'footer-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 0, 'JoomlArt', '', '<ul>\r\n<li><a href="http://wiki.joomlart.com/wiki/Main_Page">JA Wiki</a></li>\r\n<li><a href="http://www.joomlart.com/joomla/templates-club">Joomla! Themes</a></li>\r\n<li><a href="http://www.joomlart.com/magento/themes-club">Magento Themes</a></li>\r\n<li><a href="http://www.joomlart.com/joomla/extensions-club">Joomla! Extension</a></li>\r\n<li><a href="http://www.joomlart.com/member/contact.php">Contact Us</a></li>\r\n</ul>', 1, 'footer-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 216, 'T3 Masthead 1', '', '<div class="jumbotron masthead">\r\n    <h1>Welcome to T3</h1>\r\n    <p>The all new, modern and flexible framework from JoomlArt.</p>\r\n    <p><a class="btn btn-primary btn-lg" href="http://www.joomlart.com/forums/downloads.php?do=cat&amp;id=460"> Download <span class="hidden-phone">T3 </span> </a></p>\r\n</div>', 1, 'home-1', 42, '2013-12-02 02:37:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 215, 'T3 Introduction', '', '<img class="img-responsive" src="images/joomlart/banners/t3-banner.png" alt="T3 Framework" />\r\n\r\n<div class="row">\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>The "All New" T3</h2>\r\n  <p>Support the latest Joomla 3, T3 hits the beat with the brand-new look, design approach and incredibly powerful customization feature.</p>\r\n </div>\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>User Centric Design</h2>\r\n  <p>Sleek look, clean coding and elegant design make T3 a sophisticated and user-friendly theme, guarantee to catch the attention right on spot. </p>\r\n</div>\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>Developer''s Freedom</h2>\r\n  <p>Customize and style your theme in a click with the built-in tool developed for T3 only, cherish the endless flexibility it gives you.</p>\r\n</div>\r\n</div>', 1, 'home-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 217, 'T3 Features', '', '<header class="jumbotron">\r\n<h1>Why choose T3?</h1>\r\n<p>6 years in Joomla! Development CAN''T be wrong!</p>\r\n</header>\r\n\r\n<div class="row">\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/responsive-icon.png" alt="Reposive"></p>\r\n  <h2>Responsive</h2>\r\n  <p>Experience the power of Responsive Design, which does not only look good on all browsers and devices but also works like a charm!</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/html5-icon.png" alt="Resposive"></p>\r\n  <h2>HTML5</h2>\r\n  <p>Stepping stone to ensure your web experience and visualization quality that benefits from rich markup and compatibility.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/bootstrap-icon.png" alt="Bootstrap"></p>\r\n  <h2>Bootstrap</h2>\r\n  <p>Integrated in full features and components from Bootstrap to standardize your grid, typography, and modules with less efforts.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/seo-icon.png" alt="SEO"></p>\r\n  <h2>SEO</h2>\r\n  <p>Great design impresses your visitors, but SEO friendly codes bring visitors, drive more <a href="http://www.google.com" target="_blank">Googlers</a> to yours while you''re sleeping.</p>\r\n</div>\r\n\r\n</div>', 1, 'home-3', 42, '2013-12-02 02:38:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 0, 'T3 Gallery', '', '<header class="jumbotron">\r\n  <h1>T3 Gallery</h1>\r\n  <p>More to come. Stay tune :) !</p>\r\n</header>\r\n\r\n<div class="row">\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_obelisk" title="JA Obelisk template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-1.png" alt="JA Obelisk template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_magz" title="JA Magz template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-2.png" alt="JA Magz Template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_muzic" title="JA Muzic Template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-3.png" alt="JA Muzic Template" target="_blank">\r\n    </a>\r\n  </div>\r\n <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_fixel" title="JA Fixel template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-4.png" alt="JA Fixel Template">\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="row">\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_beranis" title="JA beranis template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-5.png" alt="JA Beranis template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_smashboard" title="JA Smashboard Template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-6.png" alt="JA Smashboard Template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_hawkstore" title="JA Hawstore template"  target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-7.png" alt="JA Hawstore template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_fubix" title="JA Fubix Template"  target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-8.png" alt="JA Fubix Template">\r\n    </a>\r\n  </div>\r\n</div>', 1, 'home-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 0, 'T3 Masthead 2', '', '<div class="jumbotron masthead">\r\n  <span class="section-arrow-alt"></span>\r\n  <h2>Want to be the first to try our new framework...</h2>\r\n  <p>\r\n    <a class="btn btn-primary btn-lg" href="http://www.joomlart.com/forums/downloads.php?do=cat&amp;id=460"> Download <span class="hidden-phone">T3 </span> </a>\r\n  </p>\r\n</div>\r\n', 1, 'home-5', 542, '2013-11-15 08:59:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 0, 'Position-1', '', 'Tincidunt at dolor eu fringilla wisi tincidunt ante sit ut Quisque. Et id est turpis lorem ut malesuada gravida in In tempor. Molestie dui dolor Vivamus metus hendrerit Proin Vestibulum lacinia ligula interdum.', 1, 'position-1', 0, '0000-00-00 00:00:00', '2016-04-22 06:51:26', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 0, 'Position 2', '', 'Pellentesque enim ut massa sapien et convallis Curabitur eros Phasellus sed. Risus eros eget velit ipsum Quisque platea porttitor et Phasellus Vestibulum. Cursus Sed platea in sapien cursus mollis In lacus nulla ipsum.', 1, 'position-2', 542, '2013-08-23 04:42:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 0, 'Position-3', '', 'Lorem mollis Integer a at habitant elit malesuada laoreet et senectus. Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros.', 1, 'position-3', 542, '2013-08-23 04:42:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 0, 'Position-4', '', 'Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-4', 542, '2013-08-23 04:42:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 0, 'Position 5', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-5', 542, '2013-08-23 04:43:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 0, 'Position 6', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-6', 542, '2013-08-23 04:43:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 0, 'Position 7', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-7', 542, '2013-08-23 04:43:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 0, 'Position 8', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 0, 'Sidebar 2', '', '<p>Pellentesque enim ut massa sapien et convallis Curabitur eros Phasellus sed. Risus eros eget velit ipsum Quisque platea porttitor et Phasellus Vestibulum. Cursus Sed platea in sapien cursus mollis In lacus nulla ipsum. Sed adipiscing felis pede cursus urna quis laoreet vel pulvinar euismod. Sit ac odio quis nibh ligula Lorem dictumst nibh est leo. Cursus est semper ante in justo.</p>\r\n\r\n<p>Tincidunt at dolor eu fringilla wisi tincidunt ante sit ut Quisque. Et id est turpis lorem ut malesuada gravida in In tempor. Molestie dui dolor Vivamus metus hendrerit Proin Vestibulum lacinia ligula interdum. Id egestas sit justo quam tempor commodo turpis vitae sodales pellentesque. Ut nonummy tortor feugiat felis accumsan ipsum Pellentesque vitae at interdum. </p>', 1, 'sidebar-2', 542, '2013-11-15 09:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 0, 'Sidebar 1', '', '<p>Lorem mollis Integer a at habitant elit malesuada laoreet et senectus. Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.</p>\r\n\r\n<p>Pellentesque enim ut massa sapien et convallis Curabitur eros Phasellus sed. Risus eros eget velit ipsum Quisque platea porttitor et Phasellus Vestibulum. Cursus Sed platea in sapien cursus mollis In lacus nulla ipsum. Sed adipiscing felis pede cursus urna quis laoreet vel pulvinar euismod. Sit ac odio quis nibh ligula Lorem dictumst nibh est leo. Cursus est semper ante in justo.</p>', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 0, 'T3 Layout Video', '', '<iframe width="220" height="124" src="http://www.youtube.com/embed/cqfRrWV-IPY" frameborder="0" allowfullscreen></iframe>\r\n<p>T3 Responsive Layout Video</p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 0, 'Demo Content', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"dynamic","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["81"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 207, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 209, 'Main menu sidebar', '', '', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"2","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 210, 'Sample Articles', '', '', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_category', 1, 1, '{"mode":"dynamic","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["81"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `t3_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(117, 211, 'Demo Categories', '', '', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"81","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 212, 'Off-Canvas Sidebar', '', '<p><img src="images/joomlart/demo/off-canvas.png" alt="" /></p>\r\n<p>The new Off-Canvas sidebar is designed for multi-purposes. You can now display menu or modules in Off-Canvas sidebar.</p>', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 221, 'test cusstom html', '', '<p>this is cusstom html</p>\r\n<div><img src="templates/mytemplate/images/sliderFirstBanner.png" alt="test" width="1430" height="342" /></div>', 1, 'header', 42, '2016-04-21 08:25:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 223, 'fdf', '', '<p><i></i></p>\r\n<p><b></b></p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 224, 'sssssss', '', '<a></a> <b></b> <i></i>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 225, 'top page icons menu', '', '\r\n<ul class="horizontalUl">\r\n    <li>\r\n        <a href="#">\r\n            <span>english  </span>\r\n            <i class="fa fa-caret-down"></i>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href="#">\r\n            <i class="fa fa-users"></i>\r\n            <span>log in</span>\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href="#">\r\n            <i class="fa fa-users"></i>\r\n            <span>live chat</span>\r\n        </a>\r\n    </li>\r\n\r\n    <li>\r\n\r\n        <i class=""></i>\r\n        <span>US </span>\r\n\r\n    </li>\r\n\r\n</ul>\r\n    <div class="inputWithIcon" id="headerSearchInput">\r\n        <i class="fa fa-search"></i>\r\n        <input name="search" type="text">\r\n       </div>', 1, 'position-1', 42, '2016-04-22 06:45:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 226, 'main menu', '', '<ul class="horizontalUl mainMenu">\r\n                    <li>\r\n                        <a href="#">\r\n                            <i class=""></i>\r\n                            <span>Home </span>\r\n                        </a>\r\n\r\n                    </li>\r\n\r\n\r\n                    <li>\r\n                        <a href="#">\r\n                            <i class=""></i>\r\n                            <span>services</span>\r\n                        </a>\r\n\r\n                    </li>\r\n\r\n\r\n                    <li>\r\n                        <a href="#">\r\n                            <i class=""></i>\r\n                            <span> products </span>\r\n                        </a>\r\n\r\n                    </li>\r\n\r\n\r\n                    <li>\r\n                        <a href="#">\r\n                            <i class=""></i>\r\n                            <span> trading platform</span>\r\n                        </a>\r\n\r\n                    </li>\r\n\r\n\r\n\r\n\r\n                    <li>\r\n                        <a href="#">\r\n                            <i class=""></i>\r\n                            <span>  about us</span>\r\n                        </a>\r\n\r\n                    </li>\r\n\r\n\r\n                </ul>', 1, 'mainMenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 227, 'main Slider', '', '       <div class="sliderAllContainer">\r\n            <div class="oneSlide">\r\n\r\n                <div class="oneSlideContent">\r\n                   <h3>\r\n                     Forex Trading is our Business\r\n                  </h3>\r\n                  <div class="listContanir">\r\n                    <h6>\r\n                      Better Platforms. Better Pricing. Better Service\r\n                    </h6>\r\n                    <ul>\r\n                      \r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png">mt4 platform </li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png"> android </li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png">webtrader </li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png"> ipad</li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png"> iphone</li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png"> mam/pamm</li>\r\n                      <li><img src="/t3/templates/myTemplate/images/rightSign.png">  mobile Trader</li>\r\n                    </ul>\r\n                  </div>\r\n\r\n                </div>\r\n\r\n\r\n            </div>\r\n\r\n\r\n\r\n\r\n        </div>\r\n', 1, 'topSlider', 42, '2016-04-24 06:21:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 228, 'symbols prices', '', '        <div class="oneSymbolPrice">\r\n            <i class="down fa fa-arrow-down"></i>\r\n            <label >USDCHF</label>\r\n            <span>PRICE : 0.9680 / 0.9682 </span>\r\n        </div>\r\n\r\n\r\n        <div class="oneSymbolPrice">\r\n            <i class="up fa fa-arrow-up"></i>\r\n            <label >USDCHF</label>\r\n            <span>PRICE : 0.9680 / 0.9682 </span>\r\n        </div>\r\n\r\n\r\n\r\n        <div class="oneSymbolPrice">\r\n            <i class="down fa fa-arrow-down"></i>\r\n            <label >USDCHF</label>\r\n            <span>PRICE : 0.9680 / 0.9682 </span>\r\n        </div>', 1, 'underSlider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 229, 'Center title - FOREXCFDs', '', '<div class="centerTitleText">\r\n       <h3>FOREX, CFDs & Commodities</h3>\r\n       <span></span>\r\n</div>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 230, 'apply buttons', '', '<div class="container" id="openAccountButtonsContainer">\r\n    <a href="#" class=" button primaryButton longButton">APPLY FOR FREE DEMO</a>\r\n    <a href="#" class=" button primaryButton longButton"> APPLY FOR LIVE ACCOUNT</a>\r\n</div>\r\n', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(128, 231, 'trade image left', '', '            <div id="leftImgContainer">\r\n            <img src="/t3/templates/mytemplate/images/tradeImgWithLogin.png">\r\n            </div>\r\n', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 232, 'MAPS INVESTMENT GROUP LTD', '', '            <div class="col-xs-12 oneGroup mainGroup">\r\n                <span class=""><img src="/t3/templates/mytemplate/images/mapP.png"></span>\r\n                <h6>MAPS INVESTMENT GROUP LTD</h6>\r\n                <p>MAPS IG is a Leading Online Forex and Commodity Broker focusing on providing premium brokerage services via its Meta Trader 4 trading system.\r\n                </p>\r\n            </div>\r\n\r\n\r\n\r\n            <div class="col-xs-6 oneGroup mainGroup">\r\n                <span class=""><img src="/t3/templates/mytemplate/images/icons/icons_04.png"></span>\r\n                <h6>Trade Major Markets</h6>\r\n                <p>Total transparency and security of the world''s leading financial centers </p>\r\n            </div>\r\n\r\n\r\n\r\n\r\n\r\n            <div class="col-xs-6 oneGroup mainGroup">\r\n                <span class=""><img src="/t3/templates/mytemplate/images/icons/icons_05.png"></span>\r\n                <h6>Trade Major Markets</h6>\r\n                <p>Total transparency and security of the world''s leading financial centers </p>\r\n            </div>\r\n\r\n\r\n            <div class="col-xs-6 oneGroup mainGroup">\r\n                <span class=""><img src="/t3/templates/mytemplate/images/icons/icons_06.png"></span>\r\n                <h6>Trade Major Markets</h6>\r\n                <p>Total transparency and security of the world''s leading financial centers </p>\r\n            </div>\r\n\r\n\r\n            <div class="col-xs-6 oneGroup mainGroup">\r\n                <span class=""><img src="/t3/templates/mytemplate/images/icons/icons_07.png"></span>\r\n                <h6>Trade Major Markets</h6>\r\n                <p>Total transparency and security of the world''s leading financial centers </p>\r\n            </div>\r\n\r\n', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(130, 233, 'trading types cfd', '', '            <div class="oneDescriptionWithButton">\r\n                <img src="/t3/templates/mytemplate/images/icons/icons_01.png">\r\n                <h3>CFD Trading</h3>\r\n                <p>A contract for differences, or simply a CFD, is one of the world''s fastest\r\n                growing and exciting trading instruments.</p>\r\n                <a class="button primaryButton thickButton">LEARN MORE</a>\r\n            </div>', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(131, 234, 'trading types 2', '', '            <div class="oneDescriptionWithButton">\r\n                <img src="/t3/templates/mytemplate/images/icons/icons_02.png">\r\n                <h3>CFD Trading</h3>\r\n                <p>A contract for differences, or simply a CFD, is one of the world''s fastest\r\n                    growing and exciting trading instruments.</p>\r\n                <a class="button primaryButton thickButton">LEARN MORE</a>\r\n            </div>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 235, 'trading type 3', '', '            <div class="oneDescriptionWithButton">\r\n                <img src="/t3/templates/mytemplate/images/icons/icons_03.png">\r\n                <h3>CFD Trading</h3>\r\n                <p>A contract for differences, or simply a CFD, is one of the world''s fastest\r\n                    growing and exciting trading instruments.</p>\r\n                <a class="button primaryButton thickButton">LEARN MORE</a>\r\n            </div>', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 236, 'trading platforms banner', '', '\r\n<div class="row bgCover" id="softwareBanner">\r\n    <div class="container">\r\n    <div class="innerContainer">\r\n        <h4>Smartphone, Tablet & PC Trading</h4>\r\n        <p>Trade anywhere, any time at a place convenient for you.</p>\r\n\r\n        <a href="#" class="button primaryButton">\r\n            metatrader4<br> for pc\r\n        </a>\r\n\r\n        <a href="#" class="button whiteButton">\r\n            metatrader4<br> for iphone\r\n        </a>\r\n\r\n        <a href="#" class="button blueButton">\r\n            metatrader4<br> for android\r\n        </a>\r\n\r\n    </div>\r\n\r\n\r\n    </div>\r\n\r\n</div>\r\n', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(134, 237, 'accounts types title', '', '    <div class="centerTitleText">\r\n        <h3>trading account types&  conditions</h3>\r\n    </div>', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(135, 238, 'trading accounts columns', '', '            <div class="columnLabelsContainer">\r\n\r\n\r\n                <div class="columnLabel" id="leftLabel">\r\n                    <div class="labelBorder">\r\n                        <label>\r\n                            INDIVIDUAL ACCOUNTS\r\n                        </label>\r\n                    </div>\r\n                </div>\r\n\r\n\r\n                <div class="columnLabel" id="rightLabel">\r\n                    <div class="labelBorder">\r\n                        <label>\r\n                            CORPORATE ACCOUNTS\r\n                        </label>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n\r\n<div class="clearfix"></div>\r\n        <div class="accountsTypesColumns">\r\n\r\n\r\n            <div class="oneAccountTypeColumn white">\r\n                <div class="innerContainer">\r\n                    <h3>MINI</h3>\r\n                    <ul>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                    </ul>\r\n\r\n                    <a class="button primaryButton thickButton">\r\n                        OPEN ACCOUNT\r\n                    </a>\r\n                </div>\r\n            </div>\r\n\r\n\r\n            <div class="oneAccountTypeColumn white">\r\n                <div class="innerContainer">\r\n                    <h3>MINI</h3>\r\n                    <ul>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                    </ul>\r\n\r\n                    <a class="button primaryButton thickButton">\r\n                        OPEN ACCOUNT\r\n                    </a>\r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n            <div class="oneAccountTypeColumn white">\r\n                <div class="innerContainer">\r\n                    <h3>MINI</h3>\r\n                    <ul>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                    </ul>\r\n\r\n                    <a class="button primaryButton thickButton">\r\n                        OPEN ACCOUNT\r\n                    </a>\r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n            <div class="oneAccountTypeColumn dark">\r\n                <div class="innerContainer">\r\n                    <h3>MINI</h3>\r\n                    <ul>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                    </ul>\r\n\r\n                    <a class="button primaryButton thickButton">\r\n                        OPEN ACCOUNT\r\n                    </a>\r\n                </div>\r\n            </div>\r\n\r\n\r\n\r\n            <div class="oneAccountTypeColumn dark">\r\n                <div class="innerContainer">\r\n                    <h3>MINI</h3>\r\n                    <ul>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                        <li> first li</li>\r\n                    </ul>\r\n\r\n                    <a class="button primaryButton thickButton">\r\n                        OPEN ACCOUNT\r\n                    </a>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n\r\n', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 239, 'payments line images', '', '    <div class="container" id="paymentLine">\r\n\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_01.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_02.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_03.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_04.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_05.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_06.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_07.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_08.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_09.png"></div>\r\n        <div><img src="/t3/templates/mytemplate/images/payments/images/payment_10.png"></div>\r\n\r\n    </div>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(137, 240, 'bottom menu list 1', '', '\r\n        <div class="oneMenuBox ">\r\n            <h5>customer service </h5>\r\n            <ul>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n            </ul>\r\n        </div>\r\n', 1, 'position-13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 241, 'bottom menu list 2', '', '    <div class="oneMenuBox ">\r\n            <h5>customer service </h5>\r\n            <ul>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n            </ul>\r\n        </div>', 1, 'position-14', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(139, 242, 'bottom menu list 3', '', '    <div class="oneMenuBox ">\r\n            <h5>customer service </h5>\r\n            <ul>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n            </ul>\r\n        </div>', 1, 'position-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(140, 243, 'bottom menu list 4', '', '    <div class="oneMenuBox ">\r\n            <h5>customer service </h5>\r\n            <ul>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n                <li><a href="#">Contact us</a> </li>\r\n            </ul>\r\n        </div>', 1, 'position-16', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(141, 244, 'bottom social icons', '', '        <div class="oneMenuBox ">\r\n            <h5>follow us</h5>\r\n            <ol >\r\n                <li><img src="/t3/templates/mytemplate/images/social/social_01.png"> </li>\r\n                <li><img src="/t3/templates/mytemplate/images/social/social_02.png"> </li>\r\n                <li><img src="/t3/templates/mytemplate/images/social/social_03.png"> </li>\r\n                <li><img src="/t3/templates/mytemplate/images/social/social_04.png"> </li>\r\n                <li><img src="/t3/templates/mytemplate/images/social/social_05.png"> </li>\r\n            </ol>\r\n        </div>\r\n\r\n', 1, 'position-16', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 245, 'footer Line', '', '\r\n\r\n<p>\r\n    Trading foreign exchange, spot precious metals and any other product on the Forex platform involves significant risk of loss and may not be suitable for all investors. Prior to opening an account with MAPSIG, consider your level of experience, investment objectives, assets, income and risk appetite. The possibility exists that you could sustain a loss of some or all of your initial investment and therefore you should not speculate, invest or hedge with capital you cannot afford to lose, that is borrowed or urgently needed or necessary for personal or family subsistence. You should be aware of all the risks associated with foreign exchange trading, and seek advice from an independent financial advisor if you have any doubts.\r\n</p>\r\n\r\n<b>All rights reserved MAPS IG</b>', 1, 'footerLine', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 249, 'main menu maps', '', '', 1, 'mainMenu', 0, '0000-00-00 00:00:00', '2016-04-23 12:02:40', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenumaps","base":"","startLevel":"1","endLevel":"1","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(144, 250, 'maps main menu', '', '', 1, 'mainMenu', 42, '2016-04-23 12:02:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenumaps","base":"","startLevel":"1","endLevel":"1","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(145, 253, 'Price Ticker', '', '', 1, 'underSlider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_price_ticker', 1, 1, '{"symbols":"EURUSD,USDJPY,USDCHF,GBPUSD,AUDUSD,NZDUSD,GBPJPY,EURGBP,","type":"0","db_host":"","db_name":"","db_user":"","db_pass":"","ip":"192.168.15.10","port":"443","time_out":"15","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(146, 254, 'Unite Revolution Slider 2', '', '', 1, 'topSlider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_unite_revolution2', 1, 1, '{"sliderid":"1","include_jquery":"true","js_load_type":"body","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `t3_modules_menu`
--

CREATE TABLE IF NOT EXISTS `t3_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_modules_menu`
--

INSERT INTO `t3_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 435),
(1, 533),
(1, 534),
(1, 545),
(1, 546),
(1, 548),
(1, 557),
(1, 559),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 201),
(16, 207),
(16, 227),
(16, 229),
(16, 234),
(16, 242),
(16, 243),
(16, 244),
(16, 249),
(16, 251),
(16, 252),
(16, 253),
(16, 254),
(16, 255),
(16, 256),
(16, 257),
(16, 259),
(16, 260),
(16, 262),
(16, 263),
(16, 265),
(16, 266),
(16, 267),
(16, 270),
(16, 271),
(16, 272),
(16, 274),
(16, 275),
(16, 276),
(16, 277),
(16, 280),
(16, 282),
(16, 283),
(16, 284),
(16, 285),
(16, 296),
(16, 300),
(16, 301),
(16, 302),
(16, 303),
(16, 304),
(16, 305),
(16, 306),
(16, 307),
(16, 309),
(16, 310),
(16, 311),
(16, 312),
(16, 313),
(16, 316),
(16, 317),
(16, 318),
(16, 319),
(16, 320),
(16, 321),
(16, 322),
(16, 323),
(16, 324),
(16, 325),
(16, 326),
(16, 399),
(16, 400),
(16, 402),
(16, 403),
(16, 404),
(16, 405),
(16, 406),
(16, 409),
(16, 410),
(16, 411),
(16, 412),
(16, 416),
(16, 417),
(16, 418),
(16, 419),
(16, 422),
(16, 423),
(16, 424),
(16, 427),
(16, 429),
(16, 430),
(16, 431),
(16, 432),
(16, 433),
(16, 435),
(16, 437),
(16, 443),
(16, 444),
(16, 447),
(16, 449),
(16, 450),
(16, 452),
(16, 456),
(16, 457),
(16, 458),
(16, 459),
(16, 462),
(16, 463),
(16, 464),
(16, 466),
(16, 467),
(16, 468),
(16, 469),
(16, 534),
(16, 538),
(16, 540),
(16, 541),
(16, 542),
(16, 543),
(16, 544),
(16, 547),
(16, 548),
(16, 549),
(16, 550),
(16, 551),
(16, 552),
(16, 553),
(16, 554),
(16, 555),
(16, 557),
(16, 558),
(16, 559),
(16, 561),
(16, 562),
(16, 563),
(16, 564),
(17, 0),
(18, 0),
(19, 201),
(19, 207),
(19, 227),
(19, 229),
(19, 234),
(19, 242),
(19, 243),
(19, 244),
(19, 249),
(19, 251),
(19, 252),
(19, 253),
(19, 254),
(19, 255),
(19, 256),
(19, 257),
(19, 259),
(19, 260),
(19, 262),
(19, 263),
(19, 265),
(19, 266),
(19, 267),
(19, 270),
(19, 271),
(19, 272),
(19, 274),
(19, 275),
(19, 276),
(19, 277),
(19, 280),
(19, 282),
(19, 283),
(19, 284),
(19, 285),
(19, 296),
(19, 300),
(19, 301),
(19, 302),
(19, 303),
(19, 304),
(19, 305),
(19, 306),
(19, 307),
(19, 309),
(19, 310),
(19, 311),
(19, 312),
(19, 313),
(19, 316),
(19, 317),
(19, 318),
(19, 319),
(19, 320),
(19, 321),
(19, 322),
(19, 323),
(19, 324),
(19, 325),
(19, 326),
(19, 399),
(19, 400),
(19, 402),
(19, 403),
(19, 404),
(19, 405),
(19, 406),
(19, 409),
(19, 410),
(19, 411),
(19, 412),
(19, 416),
(19, 417),
(19, 418),
(19, 419),
(19, 422),
(19, 423),
(19, 424),
(19, 427),
(19, 429),
(19, 430),
(19, 431),
(19, 432),
(19, 433),
(19, 435),
(19, 437),
(19, 443),
(19, 444),
(19, 447),
(19, 449),
(19, 450),
(19, 452),
(19, 456),
(19, 457),
(19, 458),
(19, 459),
(19, 462),
(19, 463),
(19, 464),
(19, 466),
(19, 467),
(19, 468),
(19, 469),
(19, 540),
(19, 541),
(19, 542),
(19, 543),
(19, 546),
(20, 0),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(26, 533),
(26, 545),
(26, 546),
(27, 325),
(28, 310),
(28, 540),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 311),
(38, 300),
(39, 301),
(40, 313),
(41, 0),
(44, 0),
(45, 303),
(45, 540),
(45, 556),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 0),
(52, 416),
(56, 305),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(61, 540),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 0),
(79, 0),
(84, 467),
(86, 0),
(87, 534),
(87, 538),
(88, 534),
(88, 538),
(89, 238),
(89, 427),
(89, 429),
(89, 430),
(89, 431),
(89, 432),
(89, 433),
(89, 462),
(89, 463),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 536),
(102, 536),
(103, 536),
(104, 536),
(105, 536),
(106, 536),
(107, 536),
(108, 536),
(109, 534),
(109, 536),
(109, 538),
(111, 534),
(111, 536),
(111, 537),
(112, 0),
(113, 533),
(113, 545),
(113, 546),
(114, 435),
(114, 533),
(114, 534),
(114, 545),
(114, 546),
(114, 548),
(114, 557),
(114, 559),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t3_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `t3_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t3_newsfeeds`
--

INSERT INTO `t3_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 42, 'Joomla', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_overrider`
--

CREATE TABLE IF NOT EXISTS `t3_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `t3_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t3_postinstall_messages`
--

INSERT INTO `t3_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_TITLE', 'PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_TEXT', 'PLG_USER_JOOMLA_POSTINSTALL_STRONGPW_BTN', 'plg_user_joomla', 1, 'action', 'site://plugins/user/joomla/postinstall/actions.php', 'plguserjoomla_postinstall_action', 'site://plugins/user/joomla/postinstall/actions.php', 'plguserjoomla_postinstall_condition', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(5, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(6, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_redirect_links`
--

CREATE TABLE IF NOT EXISTS `t3_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) NOT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_link_modifed` (`modified_date`),
  KEY `idx_old_url` (`old_url`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_css`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_css` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `t3_revslider_css`
--

INSERT INTO `t3_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(15, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(16, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(17, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(18, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(19, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.excerpt', '{"hover":"false"}', '""', '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","height":"auto","background-color":"rgb(239, 26, 26)","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(21, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(22, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(23, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(24, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(25, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(28, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(36, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(42, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_layer_animations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t3_revslider_sliders`
--

INSERT INTO `t3_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'test slider', 'testslider', '{"title":"test slider","alias":"testslider","shortcode":"[rev_slider testslider]","source_type":"gallery","post_types":"post","post_category":"","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","min_height":"0","width":"960","height":"350","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","simplify_ie8_ios4":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"top","loop_slide":"loop","position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"2","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"round","navigaion_type":"bullet","navigation_arrows":"solo","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"0","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"<xecute settings on all slides","load_googlefont":"false","google_font":["<link href=''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700'' rel=''stylesheet'' type=''text\\/css''>"],"template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t3_revslider_slides`
--

INSERT INTO `t3_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"trans","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"","0":"Remove"}', '[{"style":"","text":"Image 1","type":"image","image_url":"images\\/headers\\/blue-flower.jpg","left":100,"top":100,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":858,"height":349,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"alt":"","scaleX":"957","scaleY":"349","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"forex web trade","type":"text","left":100,"top":100,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"excerpt","time":500,"endtime":"NaN","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":1,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":null,"timeLast":8500,"endWithSlide":false,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(2, 1, 2, '{"background_type":"trans"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `t3_revslider_static_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_calculations`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_calculations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_components`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `t3_rsform_components`
--

INSERT INTO `t3_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 10, 1, 1),
(3, 1, 1, 3, 1),
(4, 1, 3, 4, 1),
(5, 1, 5, 5, 1),
(6, 1, 4, 6, 1),
(7, 1, 6, 7, 1),
(8, 1, 13, 8, 1),
(9, 1, 10, 9, 1),
(10, 2, 1, 2, 1),
(11, 2, 10, 1, 1),
(12, 2, 1, 3, 1),
(13, 2, 3, 6, 1),
(14, 2, 5, 7, 1),
(15, 2, 4, 10, 1),
(16, 2, 6, 11, 1),
(17, 2, 13, 12, 1),
(18, 2, 10, 13, 1),
(19, 2, 41, 4, 1),
(20, 2, 41, 8, 1),
(21, 2, 10, 5, 1),
(22, 2, 10, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_component_types`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- Dumping data for table `t3_rsform_component_types`
--

INSERT INTO `t3_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(12, 'imageButton'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak'),
(211, 'birthDay'),
(212, 'gmaps');

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_component_type_fields`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_rsform_component_type_fields`
--

INSERT INTO `t3_rsform_component_type_fields` (`ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES
(1, 'NAME', 'textbox', '', 1),
(1, 'CAPTION', 'textbox', '', 2),
(1, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(1, 'SIZE', 'textbox', '20', 4),
(1, 'MAXSIZE', 'textbox', '', 5),
(1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(1, 'DEFAULTVALUE', 'textarea', '', 9),
(1, 'DESCRIPTION', 'textarea', '', 11),
(1, 'COMPONENTTYPE', 'hidden', '1', 15),
(1, 'VALIDATIONEXTRA', 'textbox', '', 6),
(2, 'NAME', 'textbox', '', 1),
(2, 'CAPTION', 'textbox', '', 2),
(2, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(2, 'COLS', 'textbox', '50', 4),
(2, 'ROWS', 'textbox', '5', 5),
(2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6),
(2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(2, 'DEFAULTVALUE', 'textarea', '', 9),
(2, 'DESCRIPTION', 'textarea', '', 10),
(2, 'COMPONENTTYPE', 'hidden', '2', 10),
(2, 'WYSIWYG', 'select', 'NO\r\nYES', 11),
(2, 'VALIDATIONEXTRA', 'textbox', '', 6),
(3, 'NAME', 'textbox', '', 1),
(3, 'CAPTION', 'textbox', '', 2),
(3, 'SIZE', 'textbox', '', 3),
(3, 'MULTIPLE', 'select', 'NO\r\nYES', 4),
(3, 'ITEMS', 'textarea', '', 5),
(3, 'REQUIRED', 'select', 'NO\r\nYES', 6),
(3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(3, 'DESCRIPTION', 'textarea', '', 8),
(3, 'COMPONENTTYPE', 'hidden', '3', 10),
(3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(4, 'NAME', 'textbox', '', 1),
(4, 'CAPTION', 'textbox', '', 2),
(4, 'ITEMS', 'textarea', '', 3),
(4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(4, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(4, 'DESCRIPTION', 'textarea', '', 6),
(4, 'COMPONENTTYPE', 'hidden', '4', 7),
(4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(5, 'NAME', 'textbox', '', 1),
(5, 'CAPTION', 'textbox', '', 2),
(5, 'ITEMS', 'textarea', '', 3),
(5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4),
(5, 'REQUIRED', 'select', 'NO\r\nYES', 5),
(5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(5, 'DESCRIPTION', 'textarea', '', 6),
(5, 'COMPONENTTYPE', 'hidden', '5', 7),
(5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'NAME', 'textbox', '', 1),
(6, 'CAPTION', 'textbox', '', 2),
(6, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars();\r\n//</code>', 4),
(6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4),
(6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5),
(6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(6, 'DESCRIPTION', 'textarea', '', 7),
(6, 'COMPONENTTYPE', 'hidden', '6', 8),
(6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(6, 'READONLY', 'select', 'NO\r\nYES', 6),
(6, 'POPUPLABEL', 'textbox', '...', 6),
(6, 'MINDATE', 'textarea', '', 5),
(6, 'MAXDATE', 'textarea', '', 5),
(6, 'DEFAULTVALUE', 'textarea', '', 2),
(7, 'NAME', 'textbox', '', 1),
(7, 'CAPTION', 'textbox', '', 2),
(7, 'LABEL', 'textbox', '', 3),
(7, 'RESET', 'select', 'NO\r\nYES', 4),
(7, 'RESETLABEL', 'textbox', '', 5),
(7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(7, 'DESCRIPTION', 'textarea', '', 7),
(7, 'COMPONENTTYPE', 'hidden', '7', 8),
(7, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 6),
(8, 'NAME', 'textbox', '', 1),
(8, 'CAPTION', 'textbox', '', 2),
(8, 'LENGTH', 'textbox', '4', 3),
(8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4),
(8, 'TEXTCOLOR', 'textbox', '#000000', 5),
(8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6),
(8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7),
(8, 'DESCRIPTION', 'textarea', '', 9),
(8, 'COMPONENTTYPE', 'hidden', '8', 9),
(8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7),
(8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8),
(8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11),
(8, 'SIZE', 'textbox', '15', 12),
(8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3),
(9, 'NAME', 'textbox', '', 1),
(9, 'CAPTION', 'textbox', '', 2),
(9, 'FILESIZE', 'textbox', '', 3),
(9, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(9, 'ACCEPTEDFILES', 'textarea', '', 5),
(9, 'DESTINATION', 'textbox', '//<code>\r\nreturn ''components/com_rsform/uploads/'';\r\n//</code>', 6),
(9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(9, 'DESCRIPTION', 'textarea', '', 8),
(9, 'COMPONENTTYPE', 'hidden', '9', 9),
(9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(9, 'PREFIX', 'textarea', '', 6),
(9, 'EMAILATTACH', 'emailattach', '', 102),
(10, 'NAME', 'textbox', '', 1),
(10, 'TEXT', 'textarea', '', 1),
(10, 'COMPONENTTYPE', 'hidden', '10', 9),
(11, 'NAME', 'textbox', '', 1),
(11, 'DEFAULTVALUE', 'textarea', '', 1),
(11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1),
(11, 'COMPONENTTYPE', 'hidden', '11', 9),
(12, 'COMPONENTTYPE', 'hidden', '12', 10),
(12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(12, 'RESETLABEL', 'textbox', '', 7),
(12, 'RESET', 'select', 'NO\r\nYES', 6),
(12, 'IMAGERESET', 'textbox', '', 5),
(12, 'IMAGEBUTTON', 'textbox', '', 4),
(12, 'LABEL', 'textbox', '', 3),
(12, 'CAPTION', 'textbox', '', 2),
(12, 'NAME', 'textbox', '', 1),
(12, 'DESCRIPTION', 'textarea', '', 10),
(13, 'NAME', 'textbox', '', 1),
(13, 'CAPTION', 'textbox', '', 3),
(13, 'LABEL', 'textbox', '', 2),
(13, 'RESET', 'select', 'NO\r\nYES', 6),
(13, 'RESETLABEL', 'textbox', '', 7),
(13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(13, 'COMPONENTTYPE', 'hidden', '13', 10),
(13, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 9),
(13, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 8),
(13, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 8),
(13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 8),
(14, 'NAME', 'textbox', '', 1),
(14, 'CAPTION', 'textbox', '', 2),
(14, 'REQUIRED', 'select', 'NO\r\nYES', 3),
(14, 'SIZE', 'textbox', '', 4),
(14, 'MAXSIZE', 'textbox', '', 5),
(14, 'DEFAULTVALUE', 'textarea', '', 6),
(14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(14, 'COMPONENTTYPE', 'hidden', '14', 8),
(14, 'DESCRIPTION', 'textarea', '', 100),
(14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9),
(14, 'VALIDATIONEXTRA', 'textbox', '', 6),
(15, 'NAME', 'textbox', '', 1),
(15, 'LENGTH', 'textbox', '8', 4),
(15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(15, 'COMPONENTTYPE', 'hidden', '15', 8),
(15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3),
(41, 'NAME', 'textbox', '', 1),
(41, 'COMPONENTTYPE', 'hidden', '41', 5),
(41, 'NEXTBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''NEXT'');\r\n//</code>', 2),
(41, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 3),
(41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4),
(41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', 5),
(41, 'DISPLAYPROGRESS', 'select', 'NO\r\nYES', 6),
(41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', 7),
(211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', 0),
(211, 'NAME', 'textbox', '', 1),
(211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', 1),
(211, 'CAPTION', 'textbox', '', 2),
(211, 'DESCRIPTION', 'textarea', '', 3),
(211, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', 6),
(211, 'DATESEPARATOR', 'textbox', ' / ', 7),
(211, 'SHOWDAY', 'select', 'YES\r\nNO', 8),
(211, 'SHOWDAYPLEASE', 'textbox', 'Day', 9),
(211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', 10),
(211, 'SHOWMONTH', 'select', 'YES\r\nNO', 11),
(211, 'SHOWMONTHPLEASE', 'textbox', 'Month', 12),
(211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', 13),
(211, 'SHOWYEAR', 'select', 'YES\r\nNO', 14),
(211, 'SHOWYEARPLEASE', 'textbox', 'Year', 15),
(211, 'STARTYEAR', 'textbox', '1960', 16),
(211, 'ENDYEAR', 'textbox', '2013', 17),
(211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', 18),
(211, 'ADDITIONALATTRIBUTES', 'textarea', '', 18),
(211, 'COMPONENTTYPE', 'hidden', '211', 19),
(212, 'NAME', 'textbox', '', 0),
(212, 'CAPTION', 'textbox', '', 1),
(212, 'DESCRIPTION', 'textarea', '', 3),
(212, 'REQUIRED', 'select', 'NO\r\nYES', 4),
(212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 5),
(212, 'DEFAULTVALUE', 'textarea', '', 2),
(212, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(212, 'MAPWIDTH', 'textbox', '450px', 7),
(212, 'MAPHEIGHT', 'textbox', '300px', 8),
(212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', 9),
(212, 'COMPONENTTYPE', 'hidden', '212', 12),
(212, 'SIZE', 'textbox', '20', 13),
(212, 'MAPZOOM', 'textbox', '10', 10),
(212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', 12),
(212, 'GEOLOCATION', 'select', 'NO\r\nYES', 11);

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_conditions`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_condition_details`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_config`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_rsform_config`
--

INSERT INTO `t3_rsform_config` (`SettingName`, `SettingValue`) VALUES
('global.register.code', ''),
('global.debug.mode', '0'),
('global.iis', '0'),
('global.editor', '1'),
('global.codemirror', '0'),
('auto_responsive', '1'),
('global.date_mask', 'Y-m-d H:i:s'),
('global.filtering', 'joomla'),
('calculations.thousands', ','),
('calculations.decimal', '.'),
('calculations.nodecimals', '2'),
('request_timeout', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_directory`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_directory` (
  `formId` int(11) NOT NULL,
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_directory_fields`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_emails`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_forms`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t3_rsform_forms`
--

INSERT INTO `t3_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `CSS`, `JS`, `FormTitle`, `ShowFormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowThankyou`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ThemeParams`, `Keepdata`, `Backendmenu`, `ConfirmSubmission`, `Access`) VALUES
(1, 'RSformPro example', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class="formHorizontal formContainer" id="rsform_1_page_0">\n	<div class="rsform-block rsform-block-header">\n		<div class="formControlLabel">{Header:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\n		<p class="formDescription">{Header:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-fullname">\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\n		<p class="formDescription">{FullName:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-email">\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\n		<p class="formDescription">{Email:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-companysize">\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\n		<p class="formDescription">{CompanySize:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-position">\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\n		<p class="formDescription">{Position:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactby">\n		<div class="formControlLabel">{ContactBy:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\n		<p class="formDescription">{ContactBy:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-contactwhen">\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formControls">\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\n		<p class="formDescription">{ContactWhen:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-submit">\n		<div class="formControlLabel">{Submit:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\n		<p class="formDescription">{Submit:description}</p>\n		</div>\n	</div>\n	<div class="rsform-block rsform-block-footer">\n		<div class="formControlLabel">{Footer:caption}</div>\n		<div class="formControls">\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\n		<p class="formDescription">{Footer:description}</p>\n		</div>\n	</div>\n</fieldset>\n', 'responsive', 1, '', '', 'RSForm! Pro example', 1, 1, 'en-GB', '', 1, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, ''),
(2, 'RSformPro Multipage example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n		<div class="formControlLabel">{Header:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\r\n		<p class="formDescription">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n		<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page1">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_1">\r\n	<div class="rsform-block rsform-block-companyheader">\r\n		<div class="formControlLabel">{CompanyHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanyHeader:body}<span class="formValidation">{CompanyHeader:validation}</span></div>\r\n		<p class="formDescription">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-companysize">\r\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\r\n		<p class="formDescription">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n		<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page2">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_2">\r\n	<div class="rsform-block rsform-block-contactheader">\r\n		<div class="formControlLabel">{ContactHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactHeader:body}<span class="formValidation">{ContactHeader:validation}</span></div>\r\n		<p class="formDescription">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactby">\r\n		<div class="formControlLabel">{ContactBy:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\r\n		<p class="formDescription">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactwhen">\r\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\r\n		<p class="formDescription">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n		<div class="formControlLabel">{Footer:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\r\n		<p class="formDescription">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, '', '', 'RSForm! Pro Multipage example', 1, 0, '', '', 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_mappings`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_posts`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_rsform_posts`
--

INSERT INTO `t3_rsform_posts` (`form_id`, `enabled`, `method`, `silent`, `url`) VALUES
(1, 0, 1, 1, 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_properties`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `t3_rsform_properties`
--

INSERT INTO `t3_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(1, 1, 'NAME', 'FullName'),
(2, 1, 'CAPTION', 'Full Name'),
(3, 1, 'REQUIRED', 'YES'),
(4, 1, 'SIZE', '20'),
(5, 1, 'MAXSIZE', ''),
(6, 1, 'VALIDATIONRULE', 'none'),
(7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(8, 1, 'ADDITIONALATTRIBUTES', ''),
(9, 1, 'DEFAULTVALUE', ''),
(10, 1, 'DESCRIPTION', ''),
(11, 2, 'NAME', 'Header'),
(12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(13, 3, 'NAME', 'Email'),
(14, 3, 'CAPTION', 'E-mail'),
(15, 3, 'REQUIRED', 'YES'),
(16, 3, 'SIZE', '20'),
(17, 3, 'MAXSIZE', ''),
(18, 3, 'VALIDATIONRULE', 'email'),
(19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(20, 3, 'ADDITIONALATTRIBUTES', ''),
(21, 3, 'DEFAULTVALUE', ''),
(22, 3, 'DESCRIPTION', ''),
(23, 4, 'NAME', 'CompanySize'),
(24, 4, 'CAPTION', 'Number of Employees'),
(25, 4, 'SIZE', ''),
(26, 4, 'MULTIPLE', 'NO'),
(27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(28, 4, 'REQUIRED', 'YES'),
(29, 4, 'ADDITIONALATTRIBUTES', ''),
(30, 4, 'DESCRIPTION', ''),
(31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(32, 5, 'NAME', 'Position'),
(33, 5, 'CAPTION', 'Position'),
(34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(35, 5, 'FLOW', 'HORIZONTAL'),
(36, 5, 'REQUIRED', 'YES'),
(37, 5, 'ADDITIONALATTRIBUTES', ''),
(38, 5, 'DESCRIPTION', ''),
(39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(40, 6, 'NAME', 'ContactBy'),
(41, 6, 'CAPTION', 'How should we contact you?'),
(42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(43, 6, 'FLOW', 'HORIZONTAL'),
(44, 6, 'REQUIRED', 'NO'),
(45, 6, 'ADDITIONALATTRIBUTES', ''),
(46, 6, 'DESCRIPTION', ''),
(47, 6, 'VALIDATIONMESSAGE', ''),
(48, 7, 'NAME', 'ContactWhen'),
(49, 7, 'CAPTION', 'When would you like to be contacted?'),
(50, 7, 'REQUIRED', 'YES'),
(51, 7, 'DATEFORMAT', 'dd.mm.yyyy'),
(52, 7, 'CALENDARLAYOUT', 'POPUP'),
(53, 7, 'ADDITIONALATTRIBUTES', ''),
(54, 7, 'READONLY', 'YES'),
(55, 7, 'POPUPLABEL', '...'),
(56, 7, 'DESCRIPTION', ''),
(57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(58, 8, 'NAME', 'Submit'),
(59, 8, 'LABEL', 'Submit'),
(60, 8, 'CAPTION', ''),
(61, 8, 'RESET', 'YES'),
(62, 8, 'RESETLABEL', 'Reset'),
(63, 8, 'ADDITIONALATTRIBUTES', ''),
(64, 9, 'NAME', 'Footer'),
(65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(66, 10, 'NAME', 'FullName'),
(67, 10, 'CAPTION', 'Full Name'),
(68, 10, 'REQUIRED', 'YES'),
(69, 10, 'SIZE', '20'),
(70, 10, 'MAXSIZE', ''),
(71, 10, 'VALIDATIONRULE', 'none'),
(72, 10, 'VALIDATIONMESSAGE', 'Please type your full name.'),
(73, 10, 'ADDITIONALATTRIBUTES', ''),
(74, 10, 'DEFAULTVALUE', ''),
(75, 10, 'DESCRIPTION', ''),
(76, 10, 'VALIDATIONEXTRA', ''),
(77, 11, 'NAME', 'Header'),
(78, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),
(79, 12, 'NAME', 'Email'),
(80, 12, 'CAPTION', 'E-mail'),
(81, 12, 'REQUIRED', 'YES'),
(82, 12, 'SIZE', '20'),
(83, 12, 'MAXSIZE', ''),
(84, 12, 'VALIDATIONRULE', 'email'),
(85, 12, 'VALIDATIONMESSAGE', 'Invalid email address.'),
(86, 12, 'ADDITIONALATTRIBUTES', ''),
(87, 12, 'DEFAULTVALUE', ''),
(88, 12, 'DESCRIPTION', ''),
(89, 12, 'VALIDATIONEXTRA', ''),
(90, 13, 'NAME', 'CompanySize'),
(91, 13, 'CAPTION', 'Number of Employees'),
(92, 13, 'SIZE', ''),
(93, 13, 'MULTIPLE', 'NO'),
(94, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),
(95, 13, 'REQUIRED', 'YES'),
(96, 13, 'ADDITIONALATTRIBUTES', ''),
(97, 13, 'DESCRIPTION', ''),
(98, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.'),
(99, 14, 'NAME', 'Position'),
(100, 14, 'CAPTION', 'Position'),
(101, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]'),
(102, 14, 'FLOW', 'HORIZONTAL'),
(103, 14, 'REQUIRED', 'YES'),
(104, 14, 'ADDITIONALATTRIBUTES', ''),
(105, 14, 'DESCRIPTION', ''),
(106, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company'),
(107, 15, 'NAME', 'ContactBy'),
(108, 15, 'CAPTION', 'How should we contact you?'),
(109, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail'),
(110, 15, 'FLOW', 'HORIZONTAL'),
(111, 15, 'REQUIRED', 'NO'),
(112, 15, 'ADDITIONALATTRIBUTES', ''),
(113, 15, 'DESCRIPTION', ''),
(114, 15, 'VALIDATIONMESSAGE', ''),
(115, 16, 'NAME', 'ContactWhen'),
(116, 16, 'CAPTION', 'When would you like to be contacted?'),
(117, 16, 'REQUIRED', 'YES'),
(118, 16, 'DATEFORMAT', 'dd.mm.yyyy'),
(119, 16, 'CALENDARLAYOUT', 'POPUP'),
(120, 16, 'ADDITIONALATTRIBUTES', ''),
(121, 16, 'READONLY', 'YES'),
(122, 16, 'POPUPLABEL', '...'),
(123, 16, 'DESCRIPTION', ''),
(124, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.'),
(125, 17, 'NAME', 'Submit'),
(126, 17, 'LABEL', 'Submit'),
(127, 17, 'CAPTION', ''),
(128, 17, 'RESET', 'YES'),
(129, 17, 'RESETLABEL', 'Reset'),
(130, 17, 'ADDITIONALATTRIBUTES', ''),
(131, 18, 'NAME', 'Footer'),
(132, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>'),
(133, 19, 'NAME', 'Page1'),
(134, 19, 'NEXTBUTTON', 'Next >'),
(135, 19, 'PREVBUTTON', 'Prev'),
(136, 19, 'ADDITIONALATTRIBUTES', ''),
(137, 20, 'NAME', 'Page2'),
(138, 20, 'NEXTBUTTON', 'Next >'),
(139, 20, 'PREVBUTTON', 'Prev'),
(140, 20, 'ADDITIONALATTRIBUTES', ''),
(141, 21, 'NAME', 'CompanyHeader'),
(142, 21, 'TEXT', 'Please tell us a little about your company.'),
(143, 22, 'NAME', 'ContactHeader'),
(144, 22, 'TEXT', 'Please let us know how and when to contact you.');

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_submissions`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_submission_columns`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_submission_values`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_rsform_translations`
--

CREATE TABLE IF NOT EXISTS `t3_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_schemas`
--

CREATE TABLE IF NOT EXISTS `t3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_schemas`
--

INSERT INTO `t3_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.5.1-2016-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `t3_session`
--

CREATE TABLE IF NOT EXISTS `t3_session` (
  `session_id` varchar(191) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_session`
--

INSERT INTO `t3_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('iomrjqoalf197gduun04diujs1', 1, 0, '1461486724', 'joomla|s:3616:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo2OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNjg7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDYxNDgyNTYyO3M6NDoibGFzdCI7aToxNDYxNDg1ODg0O3M6Mzoibm93IjtpOjE0NjE0ODY3MjQ7fXM6NToidG9rZW4iO3M6MzI6InZvT1A2TnhIaWY0Uk8wMTdKV3lYd21KMVNSVGFwazV3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX1zOjc6Im1vZHVsZXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6NjoiZmlsdGVyIjthOjY6e3M6Njoic2VhcmNoIjtzOjI6InJzIjtzOjU6InN0YXRlIjtzOjA6IiI7czo4OiJwb3NpdGlvbiI7czowOiIiO3M6NjoibW9kdWxlIjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjtzOjg6Imxhbmd1YWdlIjtzOjA6IiI7fXM6OToiY2xpZW50X2lkIjtzOjE6IjAiO3M6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTI6InBvc2l0aW9uIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJ0eXBlIjtzOjk6ImNvbXBvbmVudCI7czo0OiJsaW5rIjtzOjQ4OiJpbmRleC5waHA/b3B0aW9uPWNvbV9yc2Zvcm0mdmlldz1yc2Zvcm0mZm9ybUlkPTEiO3M6NDoiZGF0YSI7YTozOntzOjEyOiJjb21wb25lbnRfaWQiO3M6NToiMTAwMDgiO3M6NDoidHlwZSI7czo5OiJjb21wb25lbnQiO3M6NjoiZm9ybUlkIjtpOjE7fX19fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyODp7czo5OiIAKgBpc1Jvb3QiO2I6MTtzOjI6ImlkIjtzOjI6IjQyIjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6NToiZW1haWwiO3M6MjU6InRheWxvcnN1Y2Nlc3NvckBnbWFpbC5jb20iO3M6ODoicGFzc3dvcmQiO3M6NjA6IiQyeSQxMCRpZGt6UlZHM3VtTUpHUE5LS2w2dlFlcmV3bTA2Lm5iUDNWL2FxaTBMek1HYmJjd05YQ242VyI7czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtzOjE6IjAiO3M6OToic2VuZEVtYWlsIjtzOjE6IjEiO3M6MTI6InJlZ2lzdGVyRGF0ZSI7czoxOToiMjAxNi0wNC0xOSAwNjoyOTo0NCI7czoxMzoibGFzdHZpc2l0RGF0ZSI7czoxOToiMjAxNi0wNC0yNCAwNjoxODozNCI7czoxMDoiYWN0aXZhdGlvbiI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo0OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7czo2OiJvdHBLZXkiO3M6MDoiIjtzOjQ6Im90ZXAiO3M6MDoiIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fXM6OToiY29tX21lZGlhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJyZXR1cm5fdXJsIjtzOjExMDoiaW5kZXgucGhwP29wdGlvbj1jb21fbWVkaWEmdmlldz1pbWFnZXMmdG1wbD1jb21wb25lbnQmZmllbGRpZD1maWVsZF9pbWFnZV9kaWFsb2dfY2hvb3NlJmVfbmFtZT0mYXNzZXQ9JmF1dGhvcj0iO31zOjEwOiJjb21fcnNmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjE6e3M6MToiMSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6ImVuLUdCIjt9fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 42, 'admin'),
('vbh8fegudr11d34rl7ecpet9e3', 0, 1, '1461487142', 'joomla|s:1484:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2MTQ4NzEzNTtzOjQ6Imxhc3QiO2k6MTQ2MTQ4NzE0MTtzOjM6Im5vdyI7aToxNDYxNDg3MTQyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MjoiMTMiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjEzO31zOjE0OiIAKgBfYXV0aExldmVscyI7YTozOntpOjA7aToxO2k6MTtpOjE7aToyO2k6NTt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_tags`
--

CREATE TABLE IF NOT EXISTS `t3_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t3_tags`
--

INSERT INTO `t3_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t3_template_styles`
--

CREATE TABLE IF NOT EXISTS `t3_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t3_template_styles`
--

INSERT INTO `t3_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 't3_blank', 0, '0', 't3_blank - Default', '{"t3_template":"1","devmode":"0","themermode":"1","responsive":"1","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-content-left","sublayout":"","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"hidesub\\":1},\\"item-540\\":{\\"hidesub\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":800,\\"rows\\":[[{\\"position\\":93,\\"width\\":4},{\\"position\\":92,\\"width\\":4},{\\"position\\":33,\\"width\\":4}],[{\\"position\\":104,\\"width\\":12}]]},\\"alignsub\\":\\"left\\"},\\"item-544\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":561,\\"width\\":12}]]}},\\"item-545\\":{\\"sub\\":{\\"width\\":800,\\"rows\\":[[{\\"item\\":547,\\"width\\":4},{\\"item\\":548,\\"width\\":4},{\\"position\\":112,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-547\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":549,\\"width\\":12}]]},\\"group\\":1},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-533\\":{\\"sub\\":{\\"width\\":500,\\"rows\\":[[{\\"item\\":559,\\"width\\":6},{\\"position\\":16,\\"width\\":6}]]}},\\"item-559\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":534,\\"width\\":12}]]},\\"group\\":1}}}","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":1}'),
(12, 't3_bs3_blank', 0, '0', 't3_bs3_blank - Home', '{"t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"home-1","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"400","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"hidesub\\":1},\\"item-540\\":{\\"hidesub\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":800,\\"rows\\":[[{\\"position\\":93,\\"width\\":4},{\\"position\\":92,\\"width\\":4},{\\"position\\":33,\\"width\\":4}],[{\\"position\\":104,\\"width\\":12}]]},\\"alignsub\\":\\"left\\"},\\"item-544\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":561,\\"width\\":12}]]}},\\"item-545\\":{\\"sub\\":{\\"width\\":800,\\"rows\\":[[{\\"item\\":547,\\"width\\":4},{\\"item\\":548,\\"width\\":4},{\\"position\\":112,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-547\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":549,\\"width\\":12}]]},\\"group\\":1},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-533\\":{\\"sub\\":{\\"width\\":500,\\"rows\\":[[{\\"item\\":559,\\"width\\":6},{\\"position\\":16,\\"width\\":6}]]}},\\"item-559\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":534,\\"width\\":12}]]},\\"group\\":1}}}","navigation_collapse_enable":"0","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-9","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":1}'),
(14, 'maps', 0, '0', 'MAPS - Default', '{"t3_template":"1","devmode":"1","themermode":"1","responsive":"1","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"MAPS","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-joomla-3.x","sublayout":"","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"joomla","navigation_animation":"","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}'),
(15, 'mytemplate', 0, '1', 'MY Template - Default', '{"templateVar":"","t3_template":"1","devmode":"0","themermode":"1","responsive":"1","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default","sublayout":"","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"megamenu","navigation_animation":"zoom","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":540,\\"width\\":12}]]},\\"class\\":\\"horizontalUl mainMenu\\"},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":542,\\"width\\":12}]]}},\\"item-545\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":547,\\"width\\":12}]]}},\\"item-547\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":549,\\"width\\":12}]]}},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]}},\\"item-533\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":559,\\"width\\":12}]]}},\\"item-559\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":534,\\"width\\":12}]]}},\\"item-544\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":561,\\"width\\":12}]]}}}}","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `t3_ucm_base`
--

CREATE TABLE IF NOT EXISTS `t3_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t3_ucm_content`
--

CREATE TABLE IF NOT EXISTS `t3_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_ucm_history`
--

CREATE TABLE IF NOT EXISTS `t3_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_updates`
--

CREATE TABLE IF NOT EXISTS `t3_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=352 ;

--
-- Dumping data for table `t3_updates`
--

INSERT INTO `t3_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.5.0.6', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(46, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(47, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(48, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(49, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(50, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(51, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(52, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(53, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(54, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(55, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(56, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(57, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(58, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(59, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(60, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(61, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(62, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(63, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(64, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(65, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(66, 4, 0, '', '', '', 'module', '', 0, '', '', 'http://update.joomlart.com/service/tracking/j16/.xml', '', ''),
(67, 4, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(68, 4, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(69, 4, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(70, 4, 0, 'JA Comment Package for Joomla 2.5 & 3.3', '', 'com_jacomment', 'component', '', 1, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(71, 4, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(72, 4, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(73, 4, 0, 'JA K2 Filter Package for J25 & J3.4', '', 'com_jak2filter', 'component', '', 1, '1.2.2', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(74, 4, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(75, 4, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(76, 4, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(77, 4, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(78, 4, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(79, 4, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(80, 4, 0, 'Theme Community Plus for Easyblog J25 & J30', '', 'easyblog_theme_community_plus', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_community_plus.xml', '', ''),
(81, 4, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(82, 4, 0, 'Theme Fixel for Easyblog J25 & J34', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(83, 4, 0, 'Theme Magz for Easyblog J25 & J34', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(84, 4, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(85, 4, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(86, 4, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', ''),
(87, 4, 0, 'JA Anion template for Joomla 3.x', '', 'ja_anion', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(88, 4, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(89, 4, 0, 'JA Argo Template for J3x', '', 'ja_argo', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(90, 4, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(91, 4, 0, 'JA Bistro Template for Joomla 3.x', '', 'ja_bistro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(92, 4, 0, 'JA Blazes Template for J25 & J3x', '', 'ja_blazes', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(93, 4, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(94, 4, 0, 'JA Brisk Template for J25 & J3x', '', 'ja_brisk', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(95, 4, 0, 'JA Business Template for Joomla 3.x', '', 'ja_business', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(96, 4, 0, 'JA Cloris Template for Joomla 3.x', '', 'ja_cloris', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(97, 4, 0, 'JA Community PLus Template for Joomla 3.x', '', 'ja_community_plus', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(98, 4, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(99, 4, 0, 'JA Droid Template for Joomla 3.x', '', 'ja_droid', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(100, 4, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(101, 4, 0, 'JA Elastica Template for J25 & J3x', '', 'ja_elastica', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(102, 4, 0, 'JA Erio Template for Joomla 2.5 & 3.x', '', 'ja_erio', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(103, 4, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(104, 4, 0, 'JA Fubix Template for J25 & J3x', '', 'ja_fubix', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(105, 4, 0, 'JA Graphite Template for Joomla 3x', '', 'ja_graphite', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(106, 4, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(107, 4, 0, 'JA Ironis Template for Joomla 2.5 & 3.x', '', 'ja_ironis', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(108, 4, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', '', ''),
(109, 4, 0, 'JA Kranos Template for J2.5 & J3.x', '', 'ja_kranos', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(110, 4, 0, 'JA Lens Template for Joomla 2.5 & 3.x', '', 'ja_lens', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(111, 4, 0, 'Ja Lime Template for Joomla 3x', '', 'ja_lime', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(112, 4, 0, 'JA Magz Template for J25 & J34', '', 'ja_magz', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(113, 4, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', '', ''),
(114, 4, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(115, 4, 0, 'JA Mero Template for J25 & J3x', '', 'ja_mero', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(116, 4, 0, 'JA Mers Template for J25 & J3x', '', 'ja_mers', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(117, 4, 0, 'JA Methys Template for Joomla 3x', '', 'ja_methys', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(118, 4, 0, 'Ja Minisite Template for Joomla 3.4', '', 'ja_minisite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(119, 4, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(120, 4, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(121, 4, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(122, 4, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(123, 4, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(124, 4, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', '', ''),
(125, 4, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(126, 4, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(127, 4, 0, 'JA ores template for Joomla 3.x', '', 'ja_ores', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(128, 4, 0, 'JA Orisite Template  for J25 & J3x', '', 'ja_orisite', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(129, 4, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', '', ''),
(130, 4, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(131, 4, 0, 'JA Portfolio Template for Joomla 3.x', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(132, 4, 0, 'JA Puresite Template for J25 & J3x', '', 'ja_puresite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(133, 4, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(134, 4, 0, 'JA Pyro Template for Joomla 3.x', '', 'ja_pyro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(135, 4, 0, 'JA Rasite Template for J34', '', 'ja_rasite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(136, 4, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(137, 4, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(138, 4, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(139, 4, 0, 'JA Social T3 Template for J25 & J3x', '', 'ja_social_t3', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_t3.xml', '', ''),
(140, 4, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', '', ''),
(141, 4, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(142, 4, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(143, 4, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(144, 4, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(145, 4, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(146, 4, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(147, 4, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(148, 4, 0, 'JA Tiris Template for J25 & J3x', '', 'ja_tiris', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(149, 4, 0, 'JA Travel Template for Joomla 3x', '', 'ja_travel', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(150, 4, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(151, 4, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', ''),
(152, 4, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(153, 4, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(154, 4, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(155, 4, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(156, 4, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(157, 4, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(158, 4, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(159, 4, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(160, 4, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(161, 4, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(162, 4, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(163, 4, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(164, 4, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(165, 4, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(166, 4, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(167, 4, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(168, 4, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(169, 4, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(170, 4, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(171, 4, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(172, 4, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(173, 4, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '4.1.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(174, 4, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(175, 4, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(176, 4, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(177, 4, 0, 'JA Tiris Jshopping theme for J25 & J3x', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(178, 4, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(179, 4, 0, 'JA Kranos kunena theme for Joomla 3.x', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(180, 4, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(181, 4, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(182, 4, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(183, 4, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(184, 4, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(185, 4, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', '', ''),
(186, 4, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(187, 4, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(188, 4, 0, 'Kunena theme for ja Techzone', '', 'kunena_theme_techzone', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_techzone.xml', '', ''),
(189, 4, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(190, 4, 0, 'JA Bookshop Theme for Mijoshop V2', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(191, 4, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(192, 4, 0, 'JA Decor Theme for Mijoshop V3', '', 'mijoshop_theme_decor_v3', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml', '', ''),
(193, 4, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', '', ''),
(194, 4, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(195, 4, 0, 'JA Accordion Module for J25 & J34', '', 'mod_jaaccordion', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(196, 4, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(197, 4, 0, 'JA Bulletin Module for J3.x', '', 'mod_jabulletin', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(198, 4, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(199, 4, 0, 'JA Content Popup Module for J25 & J34', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(200, 4, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(201, 4, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(202, 4, 0, 'JA Content Slider Module for J25 & J34', '', 'mod_jacontentslider', 'module', '', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(203, 4, 0, 'JA CountDown Module for Joomla 2.5 & 3.4', '', 'mod_jacountdown', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(204, 4, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(205, 4, 0, 'JA Facebook Like Box Module for Joonla 25 & 34', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(206, 4, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(207, 4, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(208, 4, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(209, 4, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(210, 4, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.4', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(211, 4, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(212, 4, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(213, 4, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(214, 4, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(215, 4, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(216, 4, 0, 'JA K2 Filter Module for J25 & J3.4', '', 'mod_jak2filter', 'module', '', 0, '1.2.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(217, 4, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(218, 4, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(219, 4, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(220, 4, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(221, 4, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(222, 4, 0, 'JA Login module for J25 & J3x', '', 'mod_jalogin', 'module', '', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(223, 4, 0, 'JA Masshead Module for J25 & J34', '', 'mod_jamasshead', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(224, 4, 0, 'JA News Featured Module for J25 & J34', '', 'mod_janews_featured', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(225, 4, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(226, 4, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(227, 4, 0, 'JA News Pro Module for J25 & J3x', '', 'mod_janewspro', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(228, 4, 0, 'JA Newsticker Module for J3x', '', 'mod_janewsticker', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(229, 4, 0, 'JA Quick Contact Module for J3.x', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(230, 4, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(231, 4, 0, 'JA SideNews Module for J25 & J34', '', 'mod_jasidenews', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(232, 4, 0, 'JA Slideshow Module for Joomla 2.5 & 3.x', '', 'mod_jaslideshow', 'module', '', 0, '2.7.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(233, 4, 0, 'JA Slideshow Lite Module for J25 & J3.4', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(234, 4, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(235, 4, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(236, 4, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(237, 4, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.4', '', 'mod_jatoppanel', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(238, 4, 0, 'JA Twitter Module for J25 & J3.4', '', 'mod_jatwitter', 'module', '', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(239, 4, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(240, 4, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(241, 4, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(242, 4, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.x', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(243, 4, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(244, 4, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(245, 4, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(246, 4, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.x', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(247, 4, 0, 'JA AVTracklist plugin for J2.5 & J3.x', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(248, 4, 0, 'JA Bookmark plugin for J3.x', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(249, 4, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(250, 4, 0, 'JA Disqus Debate Echo plugin for J3x', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(251, 4, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(252, 4, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(253, 4, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(254, 4, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(255, 4, 0, 'JA Typo Button Plugin for J25 & J3x', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(256, 4, 0, 'JA K2 Filter Plg for J25 & J3.4', '', 'jak2filter', 'plugin', 'k2', 0, '1.2.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(257, 4, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(258, 4, 0, 'Multi Capcha Engine Plugin for J3.x', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(259, 4, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(260, 4, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(261, 4, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(262, 4, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(263, 4, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(264, 4, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(265, 4, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(266, 4, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(267, 4, 0, 'JA System Google Map plugin for Joomla 2.5 & J3.4', '', 'jagooglemap', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(268, 4, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(269, 4, 0, 'JA System Lazyload Plugin for J25 & J3x', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(270, 4, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(271, 4, 0, 'JA Popup Plugin for Joomla 25 & 34', '', 'japopup', 'plugin', 'system', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(272, 4, 0, 'JA System Social Plugin for Joomla 3.x', '', 'jasocial', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(273, 4, 0, 'JA System Social Feed Plugin for Joomla 2.5 & 3.4', '', 'jasocial_feed', 'plugin', 'system', 0, '1.2.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(274, 4, 0, 'JA T3v2 System Plugin for J3.x', '', 'jat3', 'plugin', 'system', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(275, 4, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(276, 4, 0, 'JA Tabs Plugin for J3.x', '', 'jatabs', 'plugin', 'system', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(277, 4, 0, 'JA Typo Plugin for Joomla 2.5 & J34', '', 'jatypo', 'plugin', 'system', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(278, 4, 10001, 'T3 System Plugin', '', 't3', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', '', ''),
(279, 4, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(280, 4, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(281, 4, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', '', ''),
(282, 4, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', ''),
(283, 4, 0, 'JA Multilingual Component for Joomla 2.5 & 3.4', '', 'com_jalang', 'component', '', 1, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', '', ''),
(284, 4, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', '', ''),
(285, 4, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', '', ''),
(286, 4, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', ''),
(287, 4, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', '', ''),
(288, 4, 0, 'JA Charity template', '', 'ja_charity', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_charity.xml', '', '');
INSERT INTO `t3_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(289, 4, 0, 'JA Directory Template', '', 'ja_directory', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_directory.xml', '', ''),
(290, 4, 0, 'JA Elicyon Template', '', 'ja_elicyon', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_elicyon.xml', '', ''),
(291, 4, 0, 'JA Events II template', '', 'ja_events_ii', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_events_ii.xml', '', ''),
(292, 4, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', '', ''),
(293, 4, 0, 'JA Healthcare Template', '', 'ja_healthcare', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_healthcare.xml', '', ''),
(294, 4, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', '', ''),
(295, 4, 0, 'JA Magz II Template', '', 'ja_magz_ii', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_magz_ii.xml', '', ''),
(296, 4, 0, 'JA Mono Template', '', 'ja_mono', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_mono.xml', '', ''),
(297, 4, 0, 'JA Moviemax Template', '', 'ja_moviemax', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_moviemax.xml', '', ''),
(298, 4, 0, 'JA Muzic Template', '', 'ja_muzic', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', '', ''),
(299, 4, 0, 'JA Platon Template', '', 'ja_platon', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_platon.xml', '', ''),
(300, 4, 0, 'JA Playstore Template', '', 'ja_playstore', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_playstore.xml', '', ''),
(301, 4, 0, 'JA Rent template', '', 'ja_rent', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_rent.xml', '', ''),
(302, 4, 0, 'JA Social II template', '', 'ja_social_ii', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_social_ii.xml', '', ''),
(303, 4, 0, 'JA Techzone Template', '', 'ja_techzone', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_techzone.xml', '', ''),
(304, 4, 0, 'JA Teline V Template', '', 'ja_teline_v', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml', '', ''),
(305, 4, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_university_t3.xml', '', ''),
(306, 4, 0, 'JA Vintas Template for J25 & J3x', '', 'ja_vintas', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_vintas.xml', '', ''),
(307, 4, 0, 'Jomsocial theme for Platon', '', 'jomsocial_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/jomsocial_theme_platon.xml', '', ''),
(308, 4, 0, 'Theme Fixel for JShopping J25 & J34', '', 'jshopping_theme_fixel', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml', '', ''),
(309, 4, 0, 'JA Tiris Jshopping theme for J3x', '', 'jshopping_theme_tiris_j3x', 'custom', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_tiris_j3x.xml', '', ''),
(310, 4, 0, 'JA Mitius Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius.xml', '', ''),
(311, 4, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius_j31', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius_j31.xml', '', ''),
(312, 4, 0, 'Kunena Theme MovieMax', '', 'kunena_theme_moviemax', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_moviemax.xml', '', ''),
(313, 4, 0, 'Kunena Theme Platon', '', 'kunena_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_platon.xml', '', ''),
(314, 4, 0, 'Kunena Theme Playstore', '', 'kunena_theme_playstore', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_playstore.xml', '', ''),
(315, 4, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_tiris_j3x', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_tiris_j3x.xml', '', ''),
(316, 4, 0, 'Mijoshop Modules Accordion', '', 'mijoshop_mod_accordion', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion.xml', '', ''),
(317, 4, 0, 'Mijoshop V3 Modules Accordion', '', 'mijoshop_mod_accordion_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion_v3.xml', '', ''),
(318, 4, 0, 'Mijoshop Modules Slider', '', 'mijoshop_mod_slider', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider.xml', '', ''),
(319, 4, 0, 'Mijoshop V3 Modules Slider', '', 'mijoshop_mod_slider_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider_v3.xml', '', ''),
(320, 4, 0, 'JA Bookshop Theme for Mijoshop V3', '', 'mijoshop_theme_bookshop_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_theme_bookshop_v3.xml', '', ''),
(321, 4, 0, 'JA Google Chart Module', '', 'mod_jagooglechart', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml', '', ''),
(322, 4, 0, 'JA Halloween Game for Joomla 3.x', '', 'mod_jahalloweengame', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jahalloweengame.xml', '', ''),
(323, 4, 0, 'JA K2 v3 Filter Module for J33', '', 'mod_jak2v3filter', 'module', '', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml', '', ''),
(324, 4, 0, 'JA Masthead Module ', '', 'mod_jamasthead', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jamasthead.xml', '', ''),
(325, 4, 0, 'JA Promo Bar module', '', 'mod_japromobar', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml', '', ''),
(326, 4, 0, 'Ja Yahoo Finance', '', 'mod_jayahoo_finance', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml', '', ''),
(327, 4, 0, 'Ja Yahoo Weather', '', 'mod_jayahoo_weather', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml', '', ''),
(328, 4, 0, 'Plugin Ajax JA Content Type', '', 'jacontenttype', 'plugin', 'ajax', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml', '', ''),
(329, 4, 0, 'JA K2 Data Migration plugin', '', 'plg_jak2tocomcontentmigration', 'plugin', 'plg_jak2tocomcontent', 0, '1.0.1 beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocomcontentmigration.xml', '', ''),
(330, 4, 0, 'Plgin JA K2 import to Joomla Content', '', 'plg_jak2tocontent', 'plugin', 'plg_jak2tocontent', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocontent.xml', '', ''),
(331, 4, 0, 'JA K2 Extrafields', '', 'jak2extrafields', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2extrafields.xml', '', ''),
(332, 4, 0, 'JA K2 v3 Filter Plugin for J33', '', 'jak2v3filter', 'plugin', 'k2', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml', '', ''),
(333, 4, 0, 'Plugin JA Content Type', '', 'jacontenttype', 'plugin', 'system', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml', '', ''),
(334, 4, 0, 'Purity III Template', '', 'purity_iii', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', '', ''),
(335, 4, 0, 'Sample package for Uber App', '', 'uber_app', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_app.xml', '', ''),
(336, 4, 0, 'Sample package for Bookstore', '', 'uber_bookstore', 'sample_package', '', 0, '2.1.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_bookstore.xml', '', ''),
(337, 4, 0, 'Sample package for Uber Business', '', 'uber_business', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_business.xml', '', ''),
(338, 4, 0, 'Sample package for Uber Charity', '', 'uber_charity', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_charity.xml', '', ''),
(339, 4, 0, 'Sample package for Uber Church', '', 'uber_church', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_church.xml', '', ''),
(340, 4, 0, 'Sample package for Uber Construction', '', 'uber_construction', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_construction.xml', '', ''),
(341, 4, 0, 'Sample package for Uber Corporate', '', 'uber_corporate', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_corporate.xml', '', ''),
(342, 4, 0, 'Sample package for Uber Gym', '', 'uber_gym', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_gym.xml', '', ''),
(343, 4, 0, 'Sample package for Uber Home', '', 'uber_home', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_home.xml', '', ''),
(344, 4, 0, 'Sample package for Landing page', '', 'uber_landing', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_landing.xml', '', ''),
(345, 4, 0, 'Sample package for Uber Lawyer', '', 'uber_lawyer', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml', '', ''),
(346, 4, 0, 'Sample package for Uber Medicare', '', 'uber_medicare', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_medicare.xml', '', ''),
(347, 4, 0, 'Sample package for Uber Music', '', 'uber_music', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_music.xml', '', ''),
(348, 4, 0, 'Sample package for Uber Restaurant', '', 'uber_restaurant', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml', '', ''),
(349, 4, 0, 'Sample package for Uber Spa', '', 'uber_spa', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_spa.xml', '', ''),
(350, 4, 0, 'Sample package for Uber University', '', 'uber_university', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_university.xml', '', ''),
(351, 4, 0, 'Sample package for Uber Wedding', '', 'uber_wedding', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_wedding.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_update_sites`
--

CREATE TABLE IF NOT EXISTS `t3_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t3_update_sites`
--

INSERT INTO `t3_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1461478716, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1461478717, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1461478716, ''),
(4, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1461478716, '');

-- --------------------------------------------------------

--
-- Table structure for table `t3_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `t3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `t3_update_sites_extensions`
--

INSERT INTO `t3_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10006),
(4, 10007);

-- --------------------------------------------------------

--
-- Table structure for table `t3_usergroups`
--

CREATE TABLE IF NOT EXISTS `t3_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `t3_usergroups`
--

INSERT INTO `t3_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 22, 'Public'),
(2, 1, 8, 19, 'Registered'),
(3, 2, 9, 16, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 20, 21, 'Super Users'),
(10, 3, 14, 15, 'Shop Suppliers (Example)'),
(12, 2, 17, 18, 'Customer Group (Example)'),
(13, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `t3_users`
--

CREATE TABLE IF NOT EXISTS `t3_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `idx_name` (`name`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=545 ;

--
-- Dumping data for table `t3_users`
--

INSERT INTO `t3_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(42, 'Super User', 'admin', 'taylorsuccessor@gmail.com', '$2y$10$idkzRVG3umMJGPNKKl6vQerewm06.nbP3V/aqi0LzMGbbcwNXCn6W', 0, 1, '2016-04-19 06:29:44', '2016-04-24 07:22:44', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(544, 'Demo', 'demo', 'demo@joomlart.com', 'c213ba38b80b3e7ac4ba5ddf5927fcd2', 0, 0, '2013-11-30 04:57:33', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t3_user_keys`
--

CREATE TABLE IF NOT EXISTS `t3_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_user_notes`
--

CREATE TABLE IF NOT EXISTS `t3_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t3_user_profiles`
--

CREATE TABLE IF NOT EXISTS `t3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `t3_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `t3_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_user_usergroup_map`
--

INSERT INTO `t3_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(544, 2),
(544, 7);

-- --------------------------------------------------------

--
-- Table structure for table `t3_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `t3_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t3_utf8_conversion`
--

INSERT INTO `t3_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `t3_viewlevels`
--

CREATE TABLE IF NOT EXISTS `t3_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t3_viewlevels`
--

INSERT INTO `t3_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]'),
(5, 'Guest', 0, '[13]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
