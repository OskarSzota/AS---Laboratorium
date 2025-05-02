-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 02, 2025 at 07:06 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_additional_users`
--

CREATE TABLE `cms_additional_users` (
  `additional_users_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_additional_users_seq`
--

CREATE TABLE `cms_additional_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_additional_users_seq`
--

INSERT INTO `cms_additional_users_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_adminlog`
--

CREATE TABLE `cms_adminlog` (
  `timestamp` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_adminlog`
--

INSERT INTO `cms_adminlog` (`timestamp`, `user_id`, `username`, `item_id`, `item_name`, `action`, `ip_addr`) VALUES
(1746200915, 0, NULL, 1, 'CMSMS', 'Design Default created', NULL),
(1746200915, 0, NULL, 1, 'CMSMS', 'Template Type page Created', NULL),
(1746200915, 0, NULL, 2, 'CMSMS', 'Template Type generic Created', NULL),
(1746200915, 0, NULL, 1, 'CMSMS', 'Template Default Created', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed AdminSearch version 1.0.5', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed CMSContentManager version 1.1.9', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed CmsJobManager version 0.1.3', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed DesignManager version 1.1.8', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed FileManager version 1.6.11', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed FilePicker version 1.0.4.1', NULL),
(1746200922, 0, NULL, 3, 'CMSMS', 'Template Type navigation Created', NULL),
(1746200922, 0, NULL, 2, 'CMSMS', 'Template Simple Navigation Menu Created', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed MenuManager version 1.50.3', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed MicroTiny version 2.2.4', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed ModuleManager version 2.1.7', NULL),
(1746200922, 0, NULL, 4, 'CMSMS', 'Template Type navigation Created', NULL),
(1746200922, 0, NULL, 5, 'CMSMS', 'Template Type breadcrumbs Created', NULL),
(1746200922, 0, NULL, 3, 'CMSMS', 'Template Simple Navigation Created', NULL),
(1746200922, 0, NULL, 4, 'CMSMS', 'Template Breadcrumbs Created', NULL),
(1746200922, 0, NULL, 5, 'CMSMS', 'Template cssmenu Created', NULL),
(1746200922, 0, NULL, 6, 'CMSMS', 'Template cssmenu_ulshadow Created', NULL),
(1746200922, 0, NULL, 7, 'CMSMS', 'Template minimal_menu Created', NULL),
(1746200922, 0, NULL, -1, 'Navigator', 'Installation Error: Could not find design row identified by Simplex', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed Navigator version 1.0.9', NULL),
(1746200922, 0, NULL, 6, 'CMSMS', 'Template Type summary Created', NULL),
(1746200922, 0, NULL, 8, 'CMSMS', 'Template News Summary Sample Created', NULL),
(1746200922, 0, NULL, -1, 'News', 'Installation Error: Could not find design row identified by Simplex', NULL),
(1746200922, 0, NULL, 7, 'CMSMS', 'Template Type detail Created', NULL),
(1746200922, 0, NULL, 9, 'CMSMS', 'Template News Detail Sample Created', NULL),
(1746200922, 0, NULL, -1, 'News', 'Installation Error: Could not find design row identified by Simplex', NULL),
(1746200922, 0, NULL, 8, 'CMSMS', 'Template Type form Created', NULL),
(1746200922, 0, NULL, 10, 'CMSMS', 'Template News Fesubmit Form Sample Created', NULL),
(1746200922, 0, NULL, 9, 'CMSMS', 'Template Type browsecat Created', NULL),
(1746200922, 0, NULL, 11, 'CMSMS', 'Template News Browse Category Sample Created', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed News version 2.51.9', NULL),
(1746200922, 0, NULL, 10, 'CMSMS', 'Template Type searchform Created', NULL),
(1746200922, 0, NULL, 12, 'CMSMS', 'Template Search Form Sample Created', NULL),
(1746200922, 0, NULL, -1, 'Search', 'Installation Error: Could not find design row identified by Simplex', NULL),
(1746200922, 0, NULL, 11, 'CMSMS', 'Template Type searchresults Created', NULL),
(1746200922, 0, NULL, 13, 'CMSMS', 'Template Search Results Sample Created', NULL),
(1746200922, 0, NULL, -1, 'Module', 'Installed Search version 1.51.8', NULL),
(1746200932, 0, NULL, -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', NULL),
(1746200949, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '::1'),
(1746201051, 1, 'admin', -1, 'Global Settings', 'Edited', '::1'),
(1746201131, 1, 'admin', -1, 'Global Settings', 'Edited', '::1'),
(1746201131, 0, NULL, -1, 'Core', 'CMSMS version 2.2.21 is available', NULL),
(1746201354, 1, 'admin', -1, 'ModuleManager', 'Request to module repository resulted in status 400', '::1'),
(1746201356, 1, 'admin', -1, 'ModuleManager', 'Request to module repository resulted in status 400', '::1'),
(1746201614, 1, 'admin', -1, 'Module', 'Expanded module: TinyMCE version 3.3.1', '::1'),
(1746201614, 1, 'admin', -1, 'ModuleManager', 'Imported Module TinyMCE-3.3.1.xml', '::1'),
(1746201615, 1, 'admin', -1, 'ModuleManager', 'Request to module repository resulted in status 400', '::1'),
(1746201619, 1, 'admin', 12, 'CMSMS', 'Template Type js Created', '::1'),
(1746201619, 1, 'admin', 13, 'CMSMS', 'Template Type usertemplate Created', '::1'),
(1746201619, 1, 'admin', -1, 'Module', 'Installed TinyMCE version 3.3.1', '::1'),
(1746201623, 1, 'admin', -1, 'ModuleManager', 'Request to module repository resulted in status 400', '::1'),
(1746201695, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '::1'),
(1746201700, 1, 'admin', -1, 'ModuleManager', 'Request to module repository resulted in status 400', '::1'),
(1746201820, 1, 'admin', -1, 'Module', 'Expanded module: Gallery version 2.4.2', '::1'),
(1746201820, 1, 'admin', -1, 'ModuleManager', 'Imported Module Gallery-2.4.2.xml', '::1'),
(1746201826, 1, 'admin', -1, 'Module', 'Expanded module: AceSyntax version 1.0.1', '::1'),
(1746201826, 1, 'admin', -1, 'ModuleManager', 'Imported Module AceSyntax-1.0.1.xml', '::1'),
(1746201830, 1, 'admin', -1, 'Module', 'Installed AceSyntax version 1.0.1', '::1'),
(1746201839, 1, 'admin', -1, 'Module', 'Installed Gallery version 2.4.2', '::1'),
(1746201954, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746202346, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '::1'),
(1746202891, 1, 'admin', 1, 'Content Item: Strona główna', ' Edited', '::1'),
(1746202941, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746203162, 1, 'admin', 1, 'Content Item: Strona główna', ' Edited', '::1'),
(1746203341, 1, 'admin', 1, 'Content Item: Strona główna', ' Edited', '::1'),
(1746203398, 1, 'admin', 1, 'Content Item: Strona główna', ' Edited', '::1'),
(1746203687, 1, 'admin', -1, 'FilePicker', 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6-m1zJgaGigIGBgZGoDhTtNOaz-I_2DhCHsCEtzEwF-SlMwJZKUycmbmJ6an6QD4_I3taTmV-aUkxO0grT6ny74PdpWc17rRt5j9o2ndecZdvJQMrUBejFpBgLgQSfG-ABKcSA5gEmVcAIhJAfCYnZgYG1gogI5IBBPj4SotyChKLEnP1y.png uploaded to C:\\xampp\\htdocs\\cms\\uploa', '::1'),
(1746203696, 1, 'admin', -1, 'FilePicker', 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6-m1zJgaGigIGBgZGoDhTtNOaz-I_2DhCHsCEtzEwF-SlMwJZKUycmbmJ6an6QD4_I3taTmV-aUkxO0grT6ny74PdpWc17rRt5j9o2ndecZdvJQMrUBejFpBgLgQSfG-ABKcSA5gEmVcAIhJAfCYnZgYG1gogI5IBBPj4SotyChKLEnP1y.png uploaded to C:\\xampp\\htdocs\\cms\\uploa', '::1'),
(1746203699, 1, 'admin', -1, 'FilePicker', '8268c44459f050c3ed72b9a606763dac.png uploaded to C:\\xampp\\htdocs\\cms\\uploads and a thumbnail was generated', '::1'),
(1746203703, 1, 'admin', -1, 'FilePicker', 'bmw_x3.png uploaded to C:\\xampp\\htdocs\\cms\\uploads and a thumbnail was generated', '::1'),
(1746203801, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746203815, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204170, 1, 'admin', 3, 'Content Item: Kontakt', ' Edited', '::1'),
(1746204207, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746204218, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204224, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204225, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204226, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204227, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204229, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204229, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204230, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204231, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204232, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204234, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204235, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204305, 1, 'admin', 3, 'Content Item: Kontakt', ' Edited', '::1'),
(1746204307, 1, 'admin', 3, 'Content Item: Kontakt', ' Edited', '::1'),
(1746204309, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204311, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204318, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746204319, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746205262, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746205272, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '::1'),
(1746205334, 1, 'admin', -1, 'FilePicker', 'Audi.png uploaded to C:\\xampp\\htdocs\\cms\\uploads and a thumbnail was generated', '::1'),
(1746205351, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746205353, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746205362, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746205390, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1'),
(1746205398, 0, NULL, -1, '(IP: ::1) Admin Username: admin', 'Login Failed', NULL),
(1746205404, 1, 'admin', 1, 'Admin Username: admin', 'Logged In', '::1'),
(1746205435, 1, 'admin', -1, 'FilePicker', 'Mercedes.png uploaded to C:\\xampp\\htdocs\\cms\\uploads and a thumbnail was generated', '::1'),
(1746205440, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746205441, 1, 'admin', 2, 'Content Item: Galeria pojazdów samochodowych', ' Edited', '::1'),
(1746205445, 1, 'admin', -1, 'cms_stylesheet', 'No stylesheets matched the criteria specified', '::1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_admin_bookmarks`
--

CREATE TABLE `cms_admin_bookmarks` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_admin_bookmarks_seq`
--

CREATE TABLE `cms_admin_bookmarks_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_admin_bookmarks_seq`
--

INSERT INTO `cms_admin_bookmarks_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_content`
--

CREATE TABLE `cms_content` (
  `content_id` int(11) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `default_content` tinyint(4) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `content_alias` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL,
  `id_hierarchy` varchar(255) DEFAULT NULL,
  `hierarchy_path` text DEFAULT NULL,
  `prop_names` text DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `titleattribute` varchar(255) DEFAULT NULL,
  `tabindex` varchar(10) DEFAULT NULL,
  `accesskey` varchar(5) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`content_id`, `content_name`, `type`, `owner_id`, `parent_id`, `template_id`, `item_order`, `hierarchy`, `default_content`, `menu_text`, `content_alias`, `show_in_menu`, `active`, `cachable`, `id_hierarchy`, `hierarchy_path`, `prop_names`, `metadata`, `titleattribute`, `tabindex`, `accesskey`, `last_modified_by`, `create_date`, `modified_date`, `secure`, `page_url`) VALUES
(1, 'Strona główna', 'content', 1, -1, 1, 1, '00001', 1, 'Strona główna', 'home', 1, 1, 1, '1', 'home', NULL, '', '', '', '', 1, '2025-05-02 17:48:35', '2025-05-02 18:29:58', 0, ''),
(2, 'Galeria pojazdów samochodowych', 'content', 1, 1, 1, 1, '00001.00001', 0, 'Galeria pojazdów samochodowych', 'galeria-pojazdów-samochodowych', 1, 1, 1, '1.2', 'home/galeria-pojazdów-samochodowych', NULL, '', '', '', '', 1, '2025-05-02 18:36:41', '2025-05-02 19:04:01', 0, ''),
(3, 'Kontakt', 'content', 1, -1, 1, 3, '00003', 0, 'Kontakt', 'kontakt', 1, 1, 1, '3', 'kontakt', NULL, '', '', '', '', 1, '2025-05-02 18:42:50', '2025-05-02 18:45:07', 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_content_props`
--

CREATE TABLE `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_content_props`
--

INSERT INTO `cms_content_props` (`content_id`, `type`, `prop_name`, `param1`, `param2`, `param3`, `content`, `create_date`, `modified_date`) VALUES
(1, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'design_id', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'content_en', NULL, NULL, NULL, '<p>To jest strona gł&oacute;wna mojej nowej aplikacji internetowej opartej na rozwiązaniu CMS Made Simple.</p>\r\n<p>&nbsp;</p>', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'wantschildren', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'image', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'thumbnail', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(1, 'string', 'target', NULL, NULL, NULL, '', NULL, '2025-05-02 18:29:58'),
(2, 'string', 'design_id', NULL, NULL, NULL, '1', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'content_en', NULL, NULL, NULL, '<h3 style=\"text-align: center;\">Prosta strona zawierająca galerie pojazd&oacute;w samochodowych, aktualnie wykorzystująca tylko i wyłącznie edytor TinyMCE bez wykorzystania modułu Gallery.</h3>\r\n<p>&nbsp;</p>\r\n<h3 style=\"text-align: center;\">AUDI</h3>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"uploads/\\images\\Audi.png\" alt=\"\\images\\Audi\" width=\"916\" height=\"393\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3 style=\"text-align: center;\">MERCEDES</h3>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"uploads/\\images\\Mercedes.png\" alt=\"\\images\\Mercedes\" width=\"640\" height=\"480\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3 style=\"text-align: center;\">BMW</h3>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"uploads/\\images\\bmw_x3.png\" alt=\"\\images\\bmw_x3\" width=\"585\" height=\"329\" /></p>', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'wantschildren', NULL, NULL, NULL, '1', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'image', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'thumbnail', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(2, 'string', 'target', NULL, NULL, NULL, '', NULL, '2025-05-02 19:04:01'),
(3, 'string', 'design_id', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'content_en', NULL, NULL, NULL, '<h2 style=\"text-align: center;\">Kontakt i Google Maps</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2548.7044824024842!2d19.13240897752988!3d50.297443998367385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4716da83f8fdbcb9%3A0x78c8585c9819bcb0!2sB%C4%99dzi%C5%84ska%2039%2C%2041-200%20Sosnowiec!5e0!3m2!1spl!2spl!4v1746204097040!5m2!1spl!2spl\" width=\"100%\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe></p>', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'extra1', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'extra2', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'extra3', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'pagedata', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'disable_wysiwyg', NULL, NULL, NULL, '0', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'wantschildren', NULL, NULL, NULL, '1', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'image', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'thumbnail', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07'),
(3, 'string', 'target', NULL, NULL, NULL, '', NULL, '2025-05-02 18:45:07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_content_props_seq`
--

CREATE TABLE `cms_content_props_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_content_props_seq`
--

INSERT INTO `cms_content_props_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_content_seq`
--

CREATE TABLE `cms_content_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_content_seq`
--

INSERT INTO `cms_content_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_events`
--

CREATE TABLE `cms_events` (
  `originator` varchar(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_events`
--

INSERT INTO `cms_events` (`originator`, `event_name`, `event_id`) VALUES
('Core', 'LoginPost', 1),
('Core', 'LogoutPost', 2),
('Core', 'LoginFailed', 3),
('Core', 'LostPassword', 4),
('Core', 'LostPasswordReset', 5),
('Core', 'AddUserPre', 6),
('Core', 'AddUserPost', 7),
('Core', 'EditUserPre', 8),
('Core', 'EditUserPost', 9),
('Core', 'DeleteUserPre', 10),
('Core', 'DeleteUserPost', 11),
('Core', 'AddGroupPre', 12),
('Core', 'AddGroupPost', 13),
('Core', 'EditGroupPre', 14),
('Core', 'EditGroupPost', 15),
('Core', 'DeleteGroupPre', 16),
('Core', 'DeleteGroupPost', 17),
('Core', 'AddStylesheetPre', 18),
('Core', 'AddStylesheetPost', 19),
('Core', 'EditStylesheetPre', 20),
('Core', 'EditStylesheetPost', 21),
('Core', 'DeleteStylesheetPre', 22),
('Core', 'DeleteStylesheetPost', 23),
('Core', 'AddTemplatePre', 24),
('Core', 'AddTemplatePost', 25),
('Core', 'EditTemplatePre', 26),
('Core', 'EditTemplatePost', 27),
('Core', 'DeleteTemplatePre', 28),
('Core', 'DeleteTemplatePost', 29),
('Core', 'AddTemplateTypePre', 30),
('Core', 'AddTemplateTypePost', 31),
('Core', 'EditTemplateTypePre', 32),
('Core', 'EditTemplateTypePost', 33),
('Core', 'DeleteTemplateTypePre', 34),
('Core', 'DeleteTemplateTypePost', 35),
('Core', 'AddDesignPre', 36),
('Core', 'AddDesignPost', 37),
('Core', 'EditDesignPre', 38),
('Core', 'EditDesignPost', 39),
('Core', 'DeleteDesignPre', 40),
('Core', 'DeleteDesignPost', 41),
('Core', 'TemplatePreCompile', 42),
('Core', 'TemplatePreFetch', 43),
('Core', 'TemplatePostCompile', 44),
('Core', 'ContentEditPre', 45),
('Core', 'ContentEditPost', 46),
('Core', 'ContentDeletePre', 47),
('Core', 'ContentDeletePost', 48),
('Core', 'AddUserDefinedTagPre', 49),
('Core', 'AddUserDefinedTagPost', 50),
('Core', 'EditUserDefinedTagPre', 51),
('Core', 'EditUserDefinedTagPost', 52),
('Core', 'DeleteUserDefinedTagPre', 53),
('Core', 'DeleteUserDefinedTagPost', 54),
('Core', 'ModuleInstalled', 55),
('Core', 'ModuleUninstalled', 56),
('Core', 'ModuleUpgraded', 57),
('Core', 'ContentPreCompile', 58),
('Core', 'ContentPostCompile', 59),
('Core', 'ContentPreRender', 60),
('Core', 'ContentPostRender', 61),
('Core', 'SmartyPreCompile', 62),
('Core', 'SmartyPostCompile', 63),
('Core', 'ChangeGroupAssignPre', 64),
('Core', 'ChangeGroupAssignPost', 65),
('Core', 'StylesheetPreCompile', 66),
('Core', 'StylesheetPostCompile', 67),
('Core', 'StylesheetPostRender', 68),
('CmsJobManager', 'CmsJobManager::OnJobFailed', 69),
('FileManager', 'OnFileUploaded', 70),
('FileManager', 'OnFileDeleted', 71),
('News', 'NewsArticleAdded', 72),
('News', 'NewsArticleEdited', 73),
('News', 'NewsArticleDeleted', 74),
('News', 'NewsCategoryAdded', 75),
('News', 'NewsCategoryEdited', 76),
('News', 'NewsCategoryDeleted', 77),
('Search', 'SearchInitiated', 78),
('Search', 'SearchCompleted', 79),
('Search', 'SearchItemAdded', 80),
('Search', 'SearchItemDeleted', 81),
('Search', 'SearchAllItemsDeleted', 82);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_events_seq`
--

CREATE TABLE `cms_events_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_events_seq`
--

INSERT INTO `cms_events_seq` (`id`) VALUES
(82);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_event_handlers`
--

CREATE TABLE `cms_event_handlers` (
  `event_id` int(11) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(160) DEFAULT NULL,
  `removable` int(11) DEFAULT NULL,
  `handler_order` int(11) DEFAULT NULL,
  `handler_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_event_handlers`
--

INSERT INTO `cms_event_handlers` (`event_id`, `tag_name`, `module_name`, `removable`, `handler_order`, `handler_id`) VALUES
(56, NULL, 'CmsJobManager', 0, 1, 1),
(46, NULL, 'Search', 0, 1, 2),
(48, NULL, 'Search', 0, 1, 3),
(25, NULL, 'Search', 0, 1, 4),
(27, NULL, 'Search', 0, 1, 5),
(29, NULL, 'Search', 0, 1, 6),
(56, NULL, 'Search', 0, 2, 7),
(61, NULL, 'Gallery', 0, 1, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_event_handler_seq`
--

CREATE TABLE `cms_event_handler_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_event_handler_seq`
--

INSERT INTO `cms_event_handler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_groups`
--

CREATE TABLE `cms_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(25) DEFAULT NULL,
  `group_desc` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_groups`
--

INSERT INTO `cms_groups` (`group_id`, `group_name`, `group_desc`, `active`, `create_date`, `modified_date`) VALUES
(1, 'Admin', 'Members of this group can manage the entire site.', 1, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(2, 'Editor', 'Members of this group can manage content', 1, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(3, 'Designer', 'Members of this group can manage stylesheets, templates, and content', 1, '2025-05-02 17:48:35', '2025-05-02 17:48:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_groups_seq`
--

CREATE TABLE `cms_groups_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_groups_seq`
--

INSERT INTO `cms_groups_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_group_perms`
--

CREATE TABLE `cms_group_perms` (
  `group_perm_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_group_perms`
--

INSERT INTO `cms_group_perms` (`group_perm_id`, `group_id`, `permission_id`, `create_date`, `modified_date`) VALUES
(1, 2, 18, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(2, 2, 21, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(3, 2, 20, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(4, 2, 22, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(5, 3, 3, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(6, 3, 13, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(7, 3, 7, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(8, 3, 12, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(9, 3, 18, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(10, 3, 21, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(11, 3, 20, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(12, 3, 22, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(13, 3, 10, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(14, 3, 14, '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(15, 2, 23, '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(16, 3, 23, '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(17, 1, 26, '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(18, 2, 26, '2025-05-02 17:48:42', '2025-05-02 17:48:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_group_perms_seq`
--

CREATE TABLE `cms_group_perms_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_group_perms_seq`
--

INSERT INTO `cms_group_perms_seq` (`id`) VALUES
(18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_designs`
--

CREATE TABLE `cms_layout_designs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `dflt` tinyint(4) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_layout_designs`
--

INSERT INTO `cms_layout_designs` (`id`, `name`, `description`, `dflt`, `created`, `modified`) VALUES
(1, 'Default', 'Default design with just the default template.', 1, 1746200915, 1746200915);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_design_cssassoc`
--

CREATE TABLE `cms_layout_design_cssassoc` (
  `design_id` int(11) NOT NULL,
  `css_id` int(11) NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_design_tplassoc`
--

CREATE TABLE `cms_layout_design_tplassoc` (
  `design_id` int(11) NOT NULL,
  `tpl_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_layout_design_tplassoc`
--

INSERT INTO `cms_layout_design_tplassoc` (`design_id`, `tpl_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_stylesheets`
--

CREATE TABLE `cms_layout_stylesheets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_templates`
--

CREATE TABLE `cms_layout_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `type_dflt` tinyint(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `listable` tinyint(4) DEFAULT 1,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_layout_templates`
--

INSERT INTO `cms_layout_templates` (`id`, `name`, `content`, `description`, `type_id`, `type_dflt`, `category_id`, `owner_id`, `listable`, `created`, `modified`) VALUES
(1, 'Default', '{strip}\n	{process_pagedata}\n{/strip}<!doctype html>\n<html lang=\"{cms_get_language}\">\n\n<head>\n	<title>{title} - {sitename}</title>\n	{metadata}\n	{cms_stylesheet}\n</head>\n\n<body>\n	<header id=\"header\">\n		<h1>{sitename}</h1>\n	</header>\n\n	<nav id=\"menu\">\n		{Navigator}\n	</nav>\n\n	<section id=\"content\">\n		<h1>{title}</h1>\n		{content}\n	</section>\n</body>\n\n</html>', 'This is the default minimal template. A simple starting point to build templates from.', 1, 1, NULL, 1, 1, 1746200915, 1746200915),
(2, 'Simple Navigation Menu', '{* CSS classes used in this template:\r\n.activeparent - The top level parent when a child is the active/current page\r\nli.active0n h3 - n is the depth/level of the node. To style the active page for each level separately. The active page is not clickable.\r\n.clearfix - Used for the unclickable h3 to use the entire width of the li, just like the anchors. See the Tools stylesheet in the default CMSMS installation.\r\nli.sectionheader h3 - To style section header\r\nli.separator - To style the ruler for the separator *} \r\n\r\n{assign var=\'number_of_levels\' value=10000}\r\n{if isset($menuparams.number_of_levels)}\r\n  {assign var=\'number_of_levels\' value=$menuparams.number_of_levels}\r\n{/if}\r\n\r\n{if $count > 0}\r\n<ul>\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string=\"<ul>\" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string=\"</li></ul>\" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->parent == true or $node->current == true}\r\n  {assign var=\'classes\' value=\'menuactive\'}\r\n  {if $node->parent == true}\r\n    {assign var=\'classes\' value=\'menuactive menuparent\'}\r\n  {/if}\r\n  {if $node->children_exist == true and $node->depth < $number_of_levels}\r\n    {assign var=\'classes\' value=$classes|cat:\' parent\'}\r\n  {/if}\r\n  <li class=\"{$classes}\"><a class=\"{$classes}\" href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->children_exist == true and $node->depth < $number_of_levels and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class=\"parent\"><a class=\"parent\" href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->current == true}\r\n<li class=\"currentpage\"><h3><span>{$node->menutext}</span></h3>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class=\"sectionheader\"><span>{$node->menutext}</span>\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li class=\"separator\" style=\"list-style-type: none;\"> <hr />\r\n\r\n{else}\r\n<li><a href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n{repeat string=\"</li></ul>\" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}', NULL, 3, 1, NULL, 1, 1, 1746200922, 1746200922),
(3, 'Simple Navigation', '{* simple navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=Nav_menu depth=1}{strip}\n<ul>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'menudepth\'|cat:$depth}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class *}\n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n\n    {* the last child gets a special class *}\n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {/if}\n\n    {if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive menuparent\'}\n    {/if}\n\n    {if $node->children}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class=\"{$liclass}\">\n        <a class=\"{$aclass}\" href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/function}\n\n{if isset($nodes)}\n{Nav_menu data=$nodes depth=0}\n{/if}', NULL, 4, 0, NULL, 1, 1, 1746200922, 1746200922),
(4, 'Breadcrumbs', '{* default breadcrumbs template *}\n{strip}\n<div class=\"breadcrumb\">\n  {if isset($starttext)}{$starttext}:&nbsp;{/if}\n  {foreach $nodelist as $node}\n    {$spanclass=\'breadcrumb\'}\n    {if $node->current}\n      {$spanclass=$spanclass|cat:\' current\'}\n    {/if}\n\n    <span class=\"{$spanclass}\">\n      {if $node@last}\n        {$node->menutext}\n      {elseif $node->type == \'sectionheader\'}\n        {$node->menutext}&nbsp;\n      {else}\n        <a href=\"{$node->url}\" title=\"{$node->menutext}\">{$node->menutext}</a>\n      {/if}\n    </span>\n\n    {if !$node@last}&raquo;&nbsp;{/if}\n  {/foreach}\n</div>\n{/strip}', NULL, 5, 1, NULL, 1, 1, 1746200922, 1746200922),
(5, 'cssmenu', '{* cssmenu *}\n{* this template uses recursion, but not a smarty function. *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n{if !isset($depth)}{$depth=0}{/if}\n{strip}\n\n{if $depth == 0}\n<div id=\"menuwrapper\">\n<ul id=\"primary-nav\">\n{else}\n<ul class=\"unli\">\n{/if}\n\n{$depth=$depth+1}\n{foreach $nodes as $node}\n  {* setup classes for the anchor and list item *}\n  {$liclass=[]}\n  {$aclass=[]}\n\n  {* the first child gets a special class *}\n  {if $node@first && $node@total > 1}{$liclass[]=\'first_child\'}{/if}\n\n  {* the last child gets a special class *}\n  {if $node@last && $node@total > 1}{$liclass[]=\'last_child\'}{/if}\n\n  {if $node->current}\n    {* this is the current page *}\n    {$liclass[]=\'menuactive\'}\n    {$aclass[]=\'menuactive\'}\n  {/if}\n  {if $node->has_children}\n    {* this is a parent page *}\n    {$liclass[]=\'menuparent\'}\n    {$aclass[]=\'menuparent\'}\n  {/if}\n  {if $node->parent}\n    {* this is a parent of the current page *}\n    {$liclass[]=\'menuactive\'}\n    {$aclass[]=\'menuactive\'}\n  {/if}\n\n  {* build the menu item from the node *}\n  {if $node->type == \'sectionheader\'}\n    <li class=\'{implode(\' \',$liclass)}\'><a{if count($aclass) > 0} class=\"{implode(\' \',$aclass)}\"{/if}><span class=\"sectionheader\">{$node->menutext}</span></a>\n      {if isset($node->children)}\n        {include file=$smarty.template nodes=$node->children}\n      {/if}\n    </li>\n  {else if $node->type == \'separator\'}\n    <li style=\"list-style-type: none;\"><hr class=\"menu_separator\"/></li>\n  {else}\n    {* regular item *}\n    <li class=\"{implode(\' \',$liclass)}\">\n      <a{if count($aclass) > 0} class=\"{implode(\' \',$aclass)}\"{/if} href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}><span>{$node->menutext}</span></a>\n      {if isset($node->children)}\n        {include file=$smarty.template nodes=$node->children}\n      {/if}\n    </li>\n  {/if}\n{/foreach}\n{$depth=$depth-1}\n</ul>\n\n{if $depth == 0}\n<div class=\"clearb\"></div>\n</div>{* menuwrapper *}\n{/if}\n{/strip}', NULL, 4, 0, NULL, 1, 1, 1746200922, 1746200922),
(6, 'cssmenu_ulshadow', '{* cssmenu_ulshadow navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=cssmenu_ulshadow depth=1}\n<ul{if $depth ==0} id=\"primary-nav\"{else} class=\"unli\"{/if}>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'\'}\n    {*{assign var=\'liclass\' value=\' depth\'|cat:$depth}*}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class \n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n    *}\n\n    {* the last child gets a special class \n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n    *}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {else if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n    {if isset($node->children)}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuparent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {cssmenu_ulshadow data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class=\"{$liclass}\">\n        <a class=\"{$aclass}\" href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {cssmenu_ulshadow data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n  {if $depth > 0}\n    <li class=\"separator once\" style=\"list-style-type: none;\">&nbsp;</li>\n  {/if}\n</ul>\n{/function}\n\n{if isset($nodes)}\n<div id=\"menuwrapper\">\n  {cssmenu_ulshadow data=$nodes depth=0}\n  <div class=\"clearb\"></div>\n</div>\n{/if}', NULL, 4, 0, NULL, 1, 1, 1746200922, 1746200922),
(7, 'minimal_menu', '{* minimal navigation *}\n{*\n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n{* CSS classes used in this template:\n.currentpage - The active/current page\n.bullet_sectionheader - To style section header\nhr.separator - To style the ruler for the separator *}\n\n{if !isset($depth)}{$depth=0}{/if}\n\n{if isset($nodes)}{strip}\n<ul>\n  {foreach $nodes as $node}\n    {if $node->type == \'sectionheader\'}\n      {* section header *}\n      <li class=\"sectionheader{if $node->parent} activeparent{/if}\">\n        {$node->menutext}\n        {if isset($node->children)}\n          {include file=$smarty.template nodes=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li style=\"list-style-type: none;\"><hr class=\"separator\"/></li>\n    {else}\n      {* regular item *}\n      {$liclass=\'\'}\n      {$aclass=\'\'}\n      {if $node->current}\n        {$liclass=\'currentpage\'}\n        {$aclass=\'currentpage\'}\n      {elseif $node->parent}\n        {$liclass=\'activeparent\'}\n        {$aclass=\'activeparent\'}\n      {/if}\n      <li{if $liclass != \'\'} class=\"{$liclass}\"{/if}>\n        <a{if $aclass !=\'\'} class=\"{$aclass}\"{/if} href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}>{$node->menutext}</a>\n        {if isset($node->children)}\n          {include file=$smarty.template nodes=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/if}', NULL, 4, 1, NULL, 1, 1, 1746200922, 1746200922),
(8, 'News Summary Sample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class=\"firstnewscat\"{/if}>\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n	<div class=\"NewsSummaryPostdate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class=\"NewsSummaryAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n        {* note, for security purposes, incase News articles can come from untrused sources, we do not pass the summary or content through smarty in the default templates *}\n	<div class=\"NewsSummarySummary\">\n		{$entry->summary}\n	</div>\n\n	<div class=\"NewsSummaryMorelink\">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n        {* note, for security purposes, incase News articles can come from untrused sources, we do not pass the summary or content through smarty in the default templates *}\n	<div class=\"NewsSummaryContent\">\n		{$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == \'file\'}\n          {if isset($field->value) && $field->value}\n            <img src=\"{$entry->file_location}/{$field->value}\"/>\n          {/if}\n        {elseif $field->type == \'linkedfile\'}\n          {* also assume it\'s an image... *}\n          {if !empty($field->value)}\n            <img src=\"{file_url file=$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->', NULL, 6, 1, NULL, 1, 1, 1746200922, 1746200922),
(9, 'News Detail Sample', '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {* note this syntax ensures that the canonical variable is set into global scope *}\n  {assign var=\'canonical\' value=$entry->canonical scope=global}\n{/if}\n\n{if $entry->postdate}\n	<div id=\"NewsPostDetailDate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n	<div id=\"NewsPostDetailSummary\">\n		<strong>\n			{$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id=\"NewsPostDetailCategory\">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id=\"NewsPostDetailAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n        {* note, for security purposes we do not pass the content through smarty before displaying it.  This is incase your articles can come from untrusted sources. *}\n	{$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id=\"NewsPostDetailExtra\">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach $entry->fields as $fieldname => $field}\n     <div class=\"NewsDetailField\">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          {if isset($field->value) && $field->value}\n            <img src=\"{$entry->file_location}/{$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {elseif $field->type == \'linkedfile\'}\n          {* also assume it\'s an image... *}\n          {if !empty($field->value)}\n            <img src=\"{file_url file=$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}', NULL, 7, 1, NULL, 1, 1, 1746200922, 1746200922),
(10, 'News Fesubmit Form Sample', '{* original form template *}\n<h3>{$mod->Lang(\'title_fesubmit_form\')}</h3>\n\n{if isset($error)}\n  <div class=\"error>{$error}</div>\n{elseif isset($message)}\n  <div class=\"message>{$message}</div>\n{/if}\n\n{form_start category_id=$category_id}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_title\">*{$mod->Lang(\'title\')}:</label></p>\n		<p class=\"col8\">\n			<input id=\"news_title\" type=\"text\" name=\"{$actionid}title\" value=\"{$title}\" size=\"30\" required/>\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_category\">{$mod->Lang(\'category\')}:</label></p>\n		<p class=\"col8\">\n			<select id=\"news_category\" name=\"{$actionid}input_category\">\n                        {html_options options=$categorylist selected=$category_id}\n			</select>\n                </p>\n	</div>\n\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_summary\">{$mod->Lang(\'summary\')}:</label></p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'summary\'}\n			{cms_textarea enablewysiwyg=true id=news_summary name=$tmp value=$summary required=true}\n		</p>\n	</div>\n{/if}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_content\">*{$mod->Lang(\'content\')}:</label></p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'content\'}\n			{cms_textarea enablewysiwyg=true id=news_content name=$tmp value=$content required=true}\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_extra\">{$mod->Lang(\'extra\')}:</label></p>\n		<p class=\"col8\">\n			<input id=\"news_extra\" type=\"text\" name=\"{$actionid}extra\" value=\"{$extra}\" size=\"30\"/>\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\">{$mod->Lang(\'startdate\')}:</p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'startdate_\'}\n			{html_select_date prefix=$tmp time=$startdate end_year=\"+15\"}\n			{html_select_time prefix=$tmp time=$startdate}\n		</p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\">{$mod->Lang(\'enddate\')}:</p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'enddate_\'}\n			{html_select_date prefix=$tmp time=$enddate end_year=\"+15\"}\n			{html_select_time prefix=$tmp time=$enddate}\n		</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'field\'}\n	      <div class=\"row\">\n		<p class=\"col4\"><label for=\"news_fld_{$field->id}\">{$field->name}:</label></p>\n		<p class=\"col8\">\n		{if $field->type == \'file\'}\n			<input id=\"news_fld_{$field->id}\" type=\"file\" name=\"{$actionid}news_customfield_{$field->id}\"/>\n		{elseif $field->type == \'checkbox\'}\n			<input id=\"news_fld_{$field->id}\" type=\"checkbox\" name=\"{$actionid}news_customfield_{$field->id}\" value=\"1\"/>\n		{elseif $field->type == \'textarea\'}\n			{$tmp1=\'news_fld_\'|cat:$field->id}\n			{capture assign=\'tmp2\'}{$actionid}news_customfield_{$field->id}{/capture}\n			{cms_textarea id=$tmp1 name=$tmp2 enablewysiwyg=true}\n		{elseif $field->type == \'textbox\'}\n			<input id=\"news_fld_{$field->id}\" type=\"text\"\" name=\"{$actionid}news_customfield_{$field->id}\" maxlength=\"{$field->max_length}\"/>\n                {/if}\n		</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class=\"row\">\n		<p class=\"col4\">&nbsp;</p>\n		<p class=\"col8\">\n			<input type=\"submit\" name=\"{$actionid}submit\" value=\"{$mod->Lang(\'submit\')}\"/>\n			<a href=\"{cms_selflink href=$page_alias}\">{$mod->Lang(\'prompt_redirecttocontent\')}</a>\n		</p>\n	</div>\n{form_end}', NULL, 8, 1, NULL, 1, 1, 1746200922, 1746200922),
(11, 'News Browse Category Sample', '{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, 9, 1, NULL, 1, 1, 1746200922, 1746200922),
(12, 'Search Form Sample', '{$startform}\n<label for=\"{$search_actionid}searchinput\">{$searchprompt}:&nbsp;</label><input type=\"text\" class=\"search-input\" id=\"{$search_actionid}searchinput\" name=\"{$search_actionid}searchinput\" size=\"20\" maxlength=\"50\" placeholder=\"{$searchtext}\"/>\n{*\n<br/>\n<input type=\"checkbox\" name=\"{$search_actionid}use_or\" value=\"1\"/>\n*}\n<input class=\"search-button\" name=\"submit\" value=\"{$submittext}\" type=\"submit\" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', NULL, 10, 1, NULL, 1, 1, 1746200922, 1746200922),
(13, 'Search Results Sample', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href=\"{$entry->url}\">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {*\n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry\n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'}\n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', NULL, 11, 1, NULL, 1, 1, 1746200922, 1746200922);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_tpl_addusers`
--

CREATE TABLE `cms_layout_tpl_addusers` (
  `tpl_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_tpl_categories`
--

CREATE TABLE `cms_layout_tpl_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `item_order` text DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_layout_tpl_type`
--

CREATE TABLE `cms_layout_tpl_type` (
  `id` int(11) NOT NULL,
  `originator` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `has_dflt` tinyint(4) DEFAULT NULL,
  `dflt_contents` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lang_cb` varchar(255) DEFAULT NULL,
  `dflt_content_cb` varchar(255) DEFAULT NULL,
  `requires_contentblocks` tinyint(4) DEFAULT NULL,
  `help_content_cb` varchar(255) DEFAULT NULL,
  `one_only` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_layout_tpl_type`
--

INSERT INTO `cms_layout_tpl_type` (`id`, `originator`, `name`, `has_dflt`, `dflt_contents`, `description`, `lang_cb`, `dflt_content_cb`, `requires_contentblocks`, `help_content_cb`, `one_only`, `owner`, `created`, `modified`) VALUES
(1, '__CORE__', 'page', 1, '{strip}\n	{process_pagedata}\n{/strip}<!doctype html>\n<html lang=\"{cms_get_language}\">\n\n<head>\n	<title>{title} - {sitename}</title>\n	{metadata}\n	{cms_stylesheet}\n</head>\n\n<body>\n	<header id=\"header\">\n		<h1>{sitename}</h1>\n	</header>\n\n	<nav id=\"menu\">\n		{Navigator}\n	</nav>\n\n	<section id=\"content\">\n		<h1>{title}</h1>\n		{content}\n	</section>\n</body>\n\n</html>', NULL, 's:44:\"CmsTemplateResource::page_type_lang_callback\";', 's:45:\"CmsTemplateResource::reset_page_type_defaults\";', 1, 's:43:\"CmsTemplateResource::template_help_callback\";', NULL, NULL, 1746200915, 1746200915),
(2, '__CORE__', 'generic', NULL, NULL, NULL, 's:47:\"CmsTemplateResource::generic_type_lang_callback\";', 'N;', 0, 's:43:\"CmsTemplateResource::template_help_callback\";', NULL, NULL, 1746200915, 1746200915),
(3, 'MenuManager', 'navigation', 1, '{* CSS classes used in this template:\r\n.activeparent - The top level parent when a child is the active/current page\r\nli.active0n h3 - n is the depth/level of the node. To style the active page for each level separately. The active page is not clickable.\r\n.clearfix - Used for the unclickable h3 to use the entire width of the li, just like the anchors. See the Tools stylesheet in the default CMSMS installation.\r\nli.sectionheader h3 - To style section header\r\nli.separator - To style the ruler for the separator *} \r\n\r\n{assign var=\'number_of_levels\' value=10000}\r\n{if isset($menuparams.number_of_levels)}\r\n  {assign var=\'number_of_levels\' value=$menuparams.number_of_levels}\r\n{/if}\r\n\r\n{if $count > 0}\r\n<ul>\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string=\"<ul>\" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string=\"</li></ul>\" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->parent == true or $node->current == true}\r\n  {assign var=\'classes\' value=\'menuactive\'}\r\n  {if $node->parent == true}\r\n    {assign var=\'classes\' value=\'menuactive menuparent\'}\r\n  {/if}\r\n  {if $node->children_exist == true and $node->depth < $number_of_levels}\r\n    {assign var=\'classes\' value=$classes|cat:\' parent\'}\r\n  {/if}\r\n  <li class=\"{$classes}\"><a class=\"{$classes}\" href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->children_exist == true and $node->depth < $number_of_levels and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class=\"parent\"><a class=\"parent\" href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->current == true}\r\n<li class=\"currentpage\"><h3><span>{$node->menutext}</span></h3>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class=\"sectionheader\"><span>{$node->menutext}</span>\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li class=\"separator\" style=\"list-style-type: none;\"> <hr />\r\n\r\n{else}\r\n<li><a href=\"{$node->url}\"><span>{$node->menutext}</span></a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n{repeat string=\"</li></ul>\" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}\r\n', NULL, 's:36:\"MenuManager::page_type_lang_callback\";', 's:37:\"MenuManager::reset_page_type_defaults\";', 0, 'N;', NULL, NULL, 1746200922, 1746200922),
(4, 'Navigator', 'navigation', 1, '{* simple navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=Nav_menu depth=1}{strip}\n<ul>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'menudepth\'|cat:$depth}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class *}\n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n\n    {* the last child gets a special class *}\n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {/if}\n\n    {if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive menuparent\'}\n    {/if}\n\n    {if $node->children}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class=\"{$liclass}\">\n        <a class=\"{$aclass}\" href=\"{$node->url}\"{if $node->target ne \"\"} target=\"{$node->target}\"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/function}\n\n{if isset($nodes)}\n{Nav_menu data=$nodes depth=0}\n{/if}\n', NULL, 's:34:\"Navigator::page_type_lang_callback\";', 's:35:\"Navigator::reset_page_type_defaults\";', 0, 's:33:\"Navigator::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(5, 'Navigator', 'breadcrumbs', 1, '{* default breadcrumbs template *}\n{strip}\n<div class=\"breadcrumb\">\n  {if isset($starttext)}{$starttext}:&nbsp;{/if}\n  {foreach $nodelist as $node}\n    {$spanclass=\'breadcrumb\'}\n    {if $node->current}\n      {$spanclass=$spanclass|cat:\' current\'}\n    {/if}\n\n    <span class=\"{$spanclass}\">\n      {if $node@last}\n        {$node->menutext}\n      {elseif $node->type == \'sectionheader\'}\n        {$node->menutext}&nbsp;\n      {else}\n        <a href=\"{$node->url}\" title=\"{$node->menutext}\">{$node->menutext}</a>\n      {/if}\n    </span>\n\n    {if !$node@last}&raquo;&nbsp;{/if}\n  {/foreach}\n</div>\n{/strip}', NULL, 's:34:\"Navigator::page_type_lang_callback\";', 's:35:\"Navigator::reset_page_type_defaults\";', 0, 's:33:\"Navigator::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(6, 'News', 'summary', 1, '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class=\"firstnewscat\"{/if}>\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class=\"NewsSummary\">\n\n{if $entry->postdate}\n	<div class=\"NewsSummaryPostdate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class=\"NewsSummaryLink\">\n<a href=\"{$entry->moreurl}\" title=\"{$entry->title|cms_escape:htmlall}\">{$entry->title|cms_escape}</a>\n</div>\n\n<div class=\"NewsSummaryCategory\">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class=\"NewsSummaryAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n        {* note, for security purposes, incase News articles can come from untrused sources, we do not pass the summary or content through smarty in the default templates *}\n	<div class=\"NewsSummarySummary\">\n		{$entry->summary}\n	</div>\n\n	<div class=\"NewsSummaryMorelink\">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n        {* note, for security purposes, incase News articles can come from untrused sources, we do not pass the summary or content through smarty in the default templates *}\n	<div class=\"NewsSummaryContent\">\n		{$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class=\"NewsSummaryExtra\">\n        {$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class=\"NewsSummaryField\">\n        {if $field->type == \'file\'}\n          {if isset($field->value) && $field->value}\n            <img src=\"{$entry->file_location}/{$field->value}\"/>\n          {/if}\n        {elseif $field->type == \'linkedfile\'}\n          {* also assume it\'s an image... *}\n          {if !empty($field->value)}\n            <img src=\"{file_url file=$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, 's:29:\"News::page_type_lang_callback\";', 's:30:\"News::reset_page_type_defaults\";', 0, 's:28:\"News::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(7, 'News', 'detail', 1, '{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {* note this syntax ensures that the canonical variable is set into global scope *}\n  {assign var=\'canonical\' value=$entry->canonical scope=global}\n{/if}\n\n{if $entry->postdate}\n	<div id=\"NewsPostDetailDate\">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id=\"NewsPostDetailTitle\">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id=\"NewsPostDetailHorizRule\" />\n\n{if $entry->summary}\n	<div id=\"NewsPostDetailSummary\">\n		<strong>\n			{$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id=\"NewsPostDetailCategory\">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id=\"NewsPostDetailAuthor\">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id=\"NewsPostDetailContent\">\n        {* note, for security purposes we do not pass the content through smarty before displaying it.  This is incase your articles can come from untrusted sources. *}\n	{$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id=\"NewsPostDetailExtra\">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != \"\"}\n<div id=\"NewsPostDetailReturnLink\">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach $entry->fields as $fieldname => $field}\n     <div class=\"NewsDetailField\">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          {if isset($field->value) && $field->value}\n            <img src=\"{$entry->file_location}/{$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {elseif $field->type == \'linkedfile\'}\n          {* also assume it\'s an image... *}\n          {if !empty($field->value)}\n            <img src=\"{file_url file=$field->value}\" alt=\"{$field->value}\"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, 's:29:\"News::page_type_lang_callback\";', 's:30:\"News::reset_page_type_defaults\";', 0, 's:28:\"News::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(8, 'News', 'form', 1, '{* original form template *}\n<h3>{$mod->Lang(\'title_fesubmit_form\')}</h3>\n\n{if isset($error)}\n  <div class=\"error>{$error}</div>\n{elseif isset($message)}\n  <div class=\"message>{$message}</div>\n{/if}\n\n{form_start category_id=$category_id}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_title\">*{$mod->Lang(\'title\')}:</label></p>\n		<p class=\"col8\">\n			<input id=\"news_title\" type=\"text\" name=\"{$actionid}title\" value=\"{$title}\" size=\"30\" required/>\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_category\">{$mod->Lang(\'category\')}:</label></p>\n		<p class=\"col8\">\n			<select id=\"news_category\" name=\"{$actionid}input_category\">\n                        {html_options options=$categorylist selected=$category_id}\n			</select>\n                </p>\n	</div>\n\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_summary\">{$mod->Lang(\'summary\')}:</label></p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'summary\'}\n			{cms_textarea enablewysiwyg=true id=news_summary name=$tmp value=$summary required=true}\n		</p>\n	</div>\n{/if}\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_content\">*{$mod->Lang(\'content\')}:</label></p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'content\'}\n			{cms_textarea enablewysiwyg=true id=news_content name=$tmp value=$content required=true}\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\"><label for=\"news_extra\">{$mod->Lang(\'extra\')}:</label></p>\n		<p class=\"col8\">\n			<input id=\"news_extra\" type=\"text\" name=\"{$actionid}extra\" value=\"{$extra}\" size=\"30\"/>\n                </p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\">{$mod->Lang(\'startdate\')}:</p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'startdate_\'}\n			{html_select_date prefix=$tmp time=$startdate end_year=\"+15\"}\n			{html_select_time prefix=$tmp time=$startdate}\n		</p>\n	</div>\n	<div class=\"row\">\n		<p class=\"col4\">{$mod->Lang(\'enddate\')}:</p>\n		<p class=\"col8\">\n			{$tmp=$actionid|cat:\'enddate_\'}\n			{html_select_date prefix=$tmp time=$enddate end_year=\"+15\"}\n			{html_select_time prefix=$tmp time=$enddate}\n		</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'field\'}\n	      <div class=\"row\">\n		<p class=\"col4\"><label for=\"news_fld_{$field->id}\">{$field->name}:</label></p>\n		<p class=\"col8\">\n		{if $field->type == \'file\'}\n			<input id=\"news_fld_{$field->id}\" type=\"file\" name=\"{$actionid}news_customfield_{$field->id}\"/>\n		{elseif $field->type == \'checkbox\'}\n			<input id=\"news_fld_{$field->id}\" type=\"checkbox\" name=\"{$actionid}news_customfield_{$field->id}\" value=\"1\"/>\n		{elseif $field->type == \'textarea\'}\n			{$tmp1=\'news_fld_\'|cat:$field->id}\n			{capture assign=\'tmp2\'}{$actionid}news_customfield_{$field->id}{/capture}\n			{cms_textarea id=$tmp1 name=$tmp2 enablewysiwyg=true}\n		{elseif $field->type == \'textbox\'}\n			<input id=\"news_fld_{$field->id}\" type=\"text\"\" name=\"{$actionid}news_customfield_{$field->id}\" maxlength=\"{$field->max_length}\"/>\n                {/if}\n		</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class=\"row\">\n		<p class=\"col4\">&nbsp;</p>\n		<p class=\"col8\">\n			<input type=\"submit\" name=\"{$actionid}submit\" value=\"{$mod->Lang(\'submit\')}\"/>\n			<a href=\"{cms_selflink href=$page_alias}\">{$mod->Lang(\'prompt_redirecttocontent\')}</a>\n		</p>\n	</div>\n{form_end}\n', NULL, 's:29:\"News::page_type_lang_callback\";', 's:30:\"News::reset_page_type_defaults\";', 0, 's:28:\"News::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(9, 'News', 'browsecat', 1, '{if $count > 0}\n<ul class=\"list1\">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string=\"<ul>\" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string=\"</li></ul>\" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class=\"newscategory\">\n{if $node.count > 0}\n	<a href=\"{$node.url}\">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string=\"</li></ul>\" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, 's:29:\"News::page_type_lang_callback\";', 's:30:\"News::reset_page_type_defaults\";', 0, 's:28:\"News::template_help_callback\";', NULL, NULL, 1746200922, 1746200922),
(10, 'Search', 'searchform', 1, '\n{$startform}\n<label for=\"{$search_actionid}searchinput\">{$searchprompt}:&nbsp;</label><input type=\"text\" class=\"search-input\" id=\"{$search_actionid}searchinput\" name=\"{$search_actionid}searchinput\" size=\"20\" maxlength=\"50\" placeholder=\"{$searchtext}\"/>\n{*\n<br/>\n<input type=\"checkbox\" name=\"{$search_actionid}use_or\" value=\"1\"/>\n*}\n<input class=\"search-button\" name=\"submit\" value=\"{$submittext}\" type=\"submit\" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', NULL, 's:31:\"Search::page_type_lang_callback\";', 's:32:\"Search::reset_page_type_defaults\";', 0, 'N;', NULL, NULL, 1746200922, 1746200922),
(11, 'Search', 'searchresults', 1, '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href=\"{$entry->url}\">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {*\n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry\n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'}\n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', NULL, 's:31:\"Search::page_type_lang_callback\";', 's:32:\"Search::reset_page_type_defaults\";', 0, 'N;', NULL, NULL, 1746200922, 1746200922),
(12, 'TinyMCE', 'js', 1, '{* Orig JS Template *}\n\ntinymce.init({\n	selector: \'{if isset($selector) && $selector != \'\'}{$selector}{else}textarea.TinyMCE{/if}\',\n	language: \'{$language}\',\n	cmsms_tiny: cmsms_tiny = {\n		{if $enable_linker}\n			linker_text : \'{$TinyMCE->Lang(\'cmsms_linker\')|escape:\'quotes\'}\',\n			linker_title : \'{$TinyMCE->Lang(\'title_cmsms_linker\')|escape:\'quotes\'}\',\n			linker_image : \'{$TinyMCE->GetModuleURLPath()}/lib/images/cmsmslink.gif\',\n			linker_url : \'{$linker_url}\',\n			linker_autocomplete_url : \'{$getpages_url}\',\n			linker_href : \'{$TinyMCE->Lang(\'prompt_href\')|escape:\'quotes\'}\',\n			prompt_page : \'{$TinyMCE->Lang(\'prompt_linker\')|escape:\'quotes\'}\',\n			prompt_page_info : \'{$TinyMCE->Lang(\'info_linker_autocomplete\')|escape:\'quotes\'}\',\n			prompt_alias : \'{$TinyMCE->Lang(\'prompt_selectedalias\')|escape:\'quotes\'}\',\n			prompt_alias_info : \'{$TinyMCE->Lang(\'tooltip_selectedalias\')|escape:\'quotes\'}\',\n			prompt_text : \'{$TinyMCE->Lang(\'prompt_texttodisplay\')|escape:\'quotes\'}\',\n			prompt_class : \'{$TinyMCE->Lang(\'prompt_class\')|escape:\'quotes\'}\',\n			prompt_rel : \'{$TinyMCE->Lang(\'prompt_rel\')|escape:\'quotes\'}\',\n			prompt_target : \'{$TinyMCE->Lang(\'prompt_target\')|escape:\'quotes\'}\',\n			tab_general : \'{$TinyMCE->Lang(\'tab_general_title\')|escape:\'quotes\'}\',\n			tab_advanced : \'{$TinyMCE->Lang(\'tab_advanced_title\')|escape:\'quotes\'}\',\n			target_none : \'{$TinyMCE->Lang(\'none\')|escape:\'quotes\'}\',\n			target_new_window : \'{$TinyMCE->Lang(\'newwindow\')|escape:\'quotes\'}\',\n			loading_info : \'{$TinyMCE->Lang(\'loading_info\')|escape:\'quotes\'}\'\n		{/if}\n	},\n	{if $profile->relative_urls}\n		relative_urls: true,\n	{else}\n		relative_urls: false,\n		remove_script_host: false,\n	{/if}\n	document_base_url: \'{root_url}/\',\n	browser_spellcheck: true,\n\n	{if $profile->forced_root_block eq 0}\n		forced_root_block: false,\n	{/if}\n\n	{* PLUGINS *}\n	plugins: \'{$profile->plugins} {if $enable_linker and $profile->plugins|strpos:\'cmsms_linker\' === false}cmsms_linker{/if } {if $profile->enable_user_templates}template{/if} {if $profile->autoresize}autoresize{/if}\',\n\n	{*PLUGINS OPTIONS*}\n	{if $profile->image_advtab}\n		image_advtab: true,\n	{/if}\n\n	contextmenu: \"{if $enable_linker and $profile->contextmenu|strpos:\'cmsms_linker\' === false}cmsms_linker{/if} {$profile->contextmenu}\",\n\n	{* MENU BAR *}\n	{if !$profile->show_menubar}\n		menubar: false,\n	{else}\n		{if $profile->use_advanced_menu && !empty($profile->advanced_menu)}\n			menu: {$profile->advanced_menu},\n		{else}\n			menubar: \'{$profile->menubar}\',\n		{/if}\n	{/if}\n\n	{* TOOLBAR *}\n	{if !$profile->show_toolbar}\n		toolbar: false,\n	{else}\n		toolbar1: \'{$profile->toolbar1}\',\n		{if !empty($profile->toolbar2)}\n			toolbar2: \'{$profile->toolbar2}\',\n		{/if}\n	{/if}\n\n	{* STATUSBAR *}\n	{if !$profile->show_statusbar && $profile->resize == false}\n		statusbar: false,\n	{/if}\n\n	{* RESIZE *}\n	{if $profile->resize == false}\n		resize: false,\n	{elseif $profile->resize == \'both\'}\n		resize: \'both\',\n	{else}\n		resize: true,\n	{/if}\n\n	height: 20,\n	autoresize_min_height: 10,\n	autoresize_max_height: 600,\n	autoresize_bottom_margin: 10,\n\n	{* CSS *}\n	{if isset($content_css) && $content_css != \'\'}\n		content_css: \'{$content_css}\',\n	{/if}\n\n\n	{* GENERAL CSS CLASSES *}\n	{if isset($style_formats) and !empty($style_formats)}\n		style_formats: [\n			{foreach $style_formats as $style_format}\n				{ldelim}{$style_format}{rdelim},\n			{/foreach}\n		],\n	{/if}\n\n	{* LINK CSS CLASSES *}\n	{if isset($link_classes)}\n		link_class_list: [\n			{foreach $link_classes as $name => $classes}\n				{ldelim}title: \'{$name}\', value: \'{$classes|escape:javascript}\'{rdelim},\n			{/foreach}\n		],\n	{/if}\n\n	{* IMAGES CSS CLASSES *}\n	{if isset($image_classes)}\n		image_class_list: [\n			{foreach $image_classes as $name => $classes}\n				{ldelim}title: \'{$name}\', value: \'{$classes|escape:javascript}\'{rdelim},\n			{/foreach}\n		],\n	{/if}\n\n	{* FORMAT FOR DROPDOWN IN TOOLBAR (button formatselect) *}\n	{if $profile->use_custom_block_formats and $profile->block_formats neq \'\'}\n		block_formats: \"{$profile->block_formats}\",\n	{/if}\n\n	{* FILEMANAGER *}\n	{if isset($can_use_filemanager) and $can_use_filemanager and $profile->filemanager_use}\n		external_filemanager_path:\"{$TinyMCE->getModuleURLPath()}/responsive_filemanager/filemanager/\",\n	  	filemanager_title: \"{$TinyMCE->Lang(\'filemanager\')}\",\n		filemanager_access_key: \"{$access_key}\",\n	{/if}\n\n	{* USER TEMPLATES *}\n	{if $profile->enable_user_templates}\n		templates : [\n			{if isset($user_templates)}\n				{foreach $user_templates as $user_template}\n					{ldelim}\"title\": \"{$user_template->get_name()|escape:\'quotes\'}\", \"description\": \"{$user_template->get_description()|escape:\'quotes\'}\", \"content\": \"{$user_template->get_content()|strip|replace:\'\"\':\'\\\"\'}\"{rdelim},\n				{/foreach}\n			{/if}\n			{if isset($user_templates_files)}\n				{foreach $user_templates_files as $title => $content}\n					{ldelim}\"title\": \"{$title|escape:\'quotes\'}\", \"description\": \"\", \"content\": \"{$content|strip|replace:\'\"\':\'\\\"\'}\"{rdelim},\n				{/foreach}\n			{/if}\n		],\n	{/if}\n\n\n	{* EXTERNAL PLUGINS *}\n	external_plugins: {\n		{if $enable_linker}\n			\"cmsms_linker\" : \"{$TinyMCE->getModuleURLPath()}/lib/js/tinymce_external_plugins/cmsms_linker/plugin.js\",\n		{/if}\n		{if isset($can_use_filemanager) and $can_use_filemanager and $profile->filemanager_use}\n			\"filemanager\" : \"{$TinyMCE->getModuleURLPath()}/responsive_filemanager/filemanager/plugin.min.js\",\n			\"responsivefilemanager\" : \"{$TinyMCE->getModuleURLPath()}/responsive_filemanager/tinymce_plugin/responsivefilemanager/plugin.min.js\",\n		{/if}\n	},\n\n\n	{* callback functions *}\n	urlconverter_callback: function(url, elm, onsave, name) {\n		var self = this;\n		var settings = self.settings;\n\n		if (!settings.convert_urls || ( elm && elm.nodeName == \'LINK\' ) || url.indexOf(\'file:\') === 0 || url.length === 0) {\n			return url;\n		}\n\n		// fix entities in cms_selflink urls.\n		if (url.indexOf(\'cms_selflink\') != -1) {\n			decodeURI(url);\n			url = url.replace(\'%20\', \' \');\n			return url;\n		}\n		// Convert to relative\n		if (settings.relative_urls) {\n			return self.documentBaseURI.toRelative(url);\n		}\n\n		// Convert to absolute\n		url = self.documentBaseURI.toAbsolute(url, settings.remove_script_host);\n		return url;\n	},\n\n\n	setup: function(editor) {\n		editor.on(\'change\', function(e) {\n			$(document).trigger(\'cmsms_formchange\');\n		});\n\n		{* CUSTOM DROPDOWN *}\n		{if isset($custom_dropdown)}\n			editor.ui.registry.addMenuButton(\'customdropdown\',\n				{\n					{if !empty($profile->custom_dropdown_title)}\n						text: \' {$profile->custom_dropdown_title}\',\n					{/if}\n					tooltip: \'{$profile->custom_dropdown_title}\',\n					icon: \'code-sample\',\n					fetch: function(callback) {\n						var items = [\n							{foreach $custom_dropdown as $entry}\n								{\n									type: \'menuitem\',\n									text: \'{$entry.title}\',\n									onAction: function(){\n										{if !isset($entry.value2)}\n											editor.insertContent(\'{$entry.value1|strip}\');\n										{else}\n											sel = editor.selection.getContent();\n											editor.insertContent(\'{$entry.value1|strip}\'+sel+\'{$entry.value2|strip}\');\n										{/if}\n									}\n								},\n							{/foreach}\n						];\n						callback(items);\n					}\n				}\n			);\n			editor.ui.registry.addMenuItem(\'customdropdown\', {\n				context: \'insert\',\n				{if !empty($profile->custom_dropdown_title)}\n					text: \' {$profile->custom_dropdown_title}\',\n				{/if}\n				icon: \'code-sample\',\n				getSubmenuItems: () => {\n					return [\n						{foreach $custom_dropdown as $entry}\n							{\n								type: \'menuitem\',\n								text: \'{$entry.title}\',\n								onAction: function(){\n									{if !isset($entry.value2)}\n										editor.insertContent(\'{$entry.value1|strip}\');\n									{else}\n										sel = editor.selection.getContent();\n										editor.insertContent(\'{$entry.value1|strip}\'+sel+\'{$entry.value2|strip}\');\n									{/if}\n								}\n							},\n						{/foreach}\n					];\n				}\n			});\n		{/if}\n\n\n		{* EXTERNAL MODULES OR DROPDOWNS *************** *}\n		{function name=\'dropdown_menu\'}\n			{* The parent link (as in Tiny5 we cannot click on the parent anymore, better for touch devices) *}\n			{if isset($parent) and isset($parent.content) and $parent.content neq \'\'}\n				{\n					type: \'menuitem\',\n					text: \'{$parent.menu_text|escape:quotes}\',\n					icon: \'chevron-left\',\n					onAction: function() {\n						editor.insertContent(\'{$parent.content|escape:quotes|strip}\');\n					},\n				},\n			{/if}\n			{if !empty($menu)}\n				{foreach $menu as $entry}\n					{\n						type: \'{if $entry.children}nestedmenuitem{else}menuitem{/if}\',\n						text: \'{$entry.menu_text|escape:quotes}\',\n						{if !$entry.children}\n							onAction: function() {\n								editor.insertContent(\'{$entry.content|escape:quotes|strip}\');\n							},\n						{else}{strip}\n							getSubmenuItems: function() {\n								return [\n									{dropdown_menu menu=$entry.children parent=$entry}\n								];\n							}\n						{/strip}{/if}\n					},\n				{/foreach}\n			{/if}\n		{/function}\n\n		{if $external_modules}\n			{foreach $external_modules as $external_module}{strip}\n				{if !empty($external_module->menu_entries)}\n					editor.ui.registry.addMenuButton(\'{$external_module->button_name}\',\n						{\n							{if $profile->external_modules_show_menutext}\n								text: \'{if !empty($external_module->image)} {/if}{$external_module->title|escape:quotes}\',\n							{/if}\n							{if $external_module->tooltip neq \'\'}\n								tooltip: \'{$external_module->tooltip|escape:quotes}\',\n							{/if}\n							icon: \'{$external_module->icon}\',\n							fetch: function(callback) {\n								var items = [\n									{dropdown_menu|strip menu=$external_module->menu_entries}\n								];\n								callback(items);\n							}\n						}\n					);\n\n					editor.ui.registry.addNestedMenuItem(\'{$external_module->button_name}\',	{\n							icon: \'{$external_module->icon}\',\n							text: \'{$external_module->title|escape:quotes}\',\n							getSubmenuItems: function() {\n								return [\n									{dropdown_menu menu=$external_module->menu_entries}\n								];\n							}\n						}\n					);\n				{/if}\n			{/strip}{/foreach}\n		{/if}\n		{* END EXTERNAL MODULES *}\n\n	},\n\n	{* Extra JS *}\n	{if !empty($profile->extra_js)}\n		{$profile->extra_js}\n	{/if}\n\n\n});\n', 'JavaScript script that runs TinyMCE - Using a template gives you full control to completely customize TinyMCE for each profile. Please take a look at the TinyMCE documentation (https://www.tinymce.com/docs/) to see how to edit that script.', 's:32:\"TinyMCE::page_type_lang_callback\";', 's:33:\"TinyMCE::reset_page_type_defaults\";', 0, 'N;', NULL, NULL, 1746201619, 1746201619),
(13, 'TinyMCE', 'usertemplate', 1, '0', 'You can use that type of template to create many HTML blocks the TinyMCE users can include in their content through the <em>templates</em> TinyMCE plugin', 's:32:\"TinyMCE::page_type_lang_callback\";', 's:33:\"TinyMCE::reset_page_type_defaults\";', 0, 'N;', NULL, NULL, 1746201619, 1746201619);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_locks`
--

CREATE TABLE `cms_locks` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `expires` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_modules`
--

CREATE TABLE `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT 0,
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_modules`
--

INSERT INTO `cms_modules` (`module_name`, `status`, `version`, `admin_only`, `active`, `allow_fe_lazyload`, `allow_admin_lazyload`) VALUES
('AdminSearch', 'installed', '1.0.5', 0, 1, 1, 1),
('CMSContentManager', 'installed', '1.1.9', 0, 1, 1, 1),
('CmsJobManager', 'installed', '0.1.3', 0, 1, 0, 0),
('DesignManager', 'installed', '1.1.8', 0, 1, 1, 1),
('FileManager', 'installed', '1.6.11', 0, 1, 1, 0),
('FilePicker', 'installed', '1.0.4.1', 0, 1, 0, 0),
('MenuManager', 'installed', '1.50.3', 0, 1, 1, 1),
('MicroTiny', 'installed', '2.2.4', 0, 1, 1, 1),
('ModuleManager', 'installed', '2.1.7', 1, 1, 0, 1),
('Navigator', 'installed', '1.0.9', 0, 1, 1, 1),
('News', 'installed', '2.51.9', 0, 1, 1, 1),
('Search', 'installed', '1.51.8', 0, 1, 1, 1),
('TinyMCE', 'installed', '3.3.1', 0, 1, 1, 1),
('AceSyntax', 'installed', '1.0.1', 0, 1, 0, 1),
('Gallery', 'installed', '2.4.2', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_deps`
--

CREATE TABLE `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_deps`
--

INSERT INTO `cms_module_deps` (`parent_module`, `child_module`, `minimum_version`, `create_date`, `modified_date`) VALUES
('FileManager', 'MicroTiny', '1.6.4', '2025-05-02 17:48:42', '2025-05-02 17:48:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_gallery`
--

CREATE TABLE `cms_module_gallery` (
  `fileid` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `filedate` datetime DEFAULT NULL,
  `fileorder` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `defaultfile` int(11) DEFAULT NULL,
  `galleryid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_gallery`
--

INSERT INTO `cms_module_gallery` (`fileid`, `filename`, `filepath`, `filedate`, `fileorder`, `active`, `defaultfile`, `galleryid`, `title`, `comment`) VALUES
(1, '', '', '2025-05-02 18:03:58', -1, 1, 0, 0, 'Gallery', 'Thank you for installing the Gallery module. If you have uploaded some images to the \'uploads/images/Gallery\' folder, you will see them below. You can edit titles, descriptions and thumbnail sizes in the admin section. Check out all the other features this module offers in the Module Help.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_gallery_fielddefs`
--

CREATE TABLE `cms_module_gallery_fielddefs` (
  `fieldid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `properties` varchar(255) DEFAULT NULL,
  `dirfield` tinyint(4) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `public` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_gallery_fieldvals`
--

CREATE TABLE `cms_module_gallery_fieldvals` (
  `fileid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_gallery_props`
--

CREATE TABLE `cms_module_gallery_props` (
  `fileid` int(11) NOT NULL,
  `templateid` int(11) DEFAULT NULL,
  `hideparentlink` int(11) DEFAULT NULL,
  `feugroups` varchar(255) DEFAULT NULL,
  `editors` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_gallery_props`
--

INSERT INTO `cms_module_gallery_props` (`fileid`, `templateid`, `hideparentlink`, `feugroups`, `editors`) VALUES
(1, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_gallery_templateprops`
--

CREATE TABLE `cms_module_gallery_templateprops` (
  `templateid` int(11) NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `thumbwidth` int(11) DEFAULT NULL,
  `thumbheight` int(11) DEFAULT NULL,
  `resizemethod` varchar(10) DEFAULT NULL,
  `maxnumber` int(11) DEFAULT NULL,
  `sortitems` varchar(255) DEFAULT NULL,
  `jsposition` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_gallery_templateprops`
--

INSERT INTO `cms_module_gallery_templateprops` (`templateid`, `template`, `version`, `about`, `thumbwidth`, `thumbheight`, `resizemethod`, `maxnumber`, `sortitems`, `jsposition`, `visible`) VALUES
(1, 'AE-Gallery', '1.2.7-2', '<p>This Gallerytemplate uses the AD-Gallery jQuery plugin version 1.2.7 by Anders Ekdahl.</p>\r\n<p>For the CMSms Gallery Module, the name is changed to AE-Gallery, to prevent the script being blocked by Ad-block browser plugins. All occurences of \'ad\' have been replaced by \'ae\' (the initials of the author).</p>\r\n<p>A demo (download) and documentation for extra options can be found at <a href=\"https://adgallery.codeplex.com/\" target=\"_blank\" rel=\"noopener\">adgallery.codeplex.com</a></p>\r\n<p>Files that come with AE-Gallery are stored in <em>assets/modules/Gallery/templates/ae-gallery/</em></p>\r\n<p>The AD-Gallery plugin is dual licensed under the MIT (<a href=\"http://www.opensource.org/licenses/mit-license.php\" target=\"_blank\" rel=\"noopener\">www.opensource.org/licenses/mit-license.php</a>) and GPL (<a href=\"http://www.opensource.org/licenses/gpl-license.php\" target=\"_blank\" rel=\"noopener\">www.opensource.org/licenses/gpl-license.php</a>) licenses.</p>', NULL, NULL, NULL, NULL, 's+file', 1, 1),
(2, 'Cycle', '1.7-2', '<p>This Gallerytemplate uses the&nbsp;jQuery Cycle Lite&nbsp;plugin&nbsp;version 1.7</p>\r\n<p>Documentation for extra options can be found at <a href=\"http://jquery.malsup.com/cycle/lite/\" target=\"_blank\" rel=\"noopener\">jquery.malsup.com/cycle/lite</a></p>\r\n<p>Files that come with Cycle are stored in <em>assets/modules/Gallery/templates/cycle/</em></p>\r\n<p>Cycle was built using the <a href=\"http://jquery.com/\">jQuery library</a>. Licensed under both <a href=\"http://docs.jquery.com/Licensing\">MIT and GPL licenses</a></p>', 300, 120, 'cr', NULL, '0', 1, 1),
(3, 'Fancybox', '1.3.4-4', '<p>This Gallerytemplate uses the Fancybox system version 1.3.4</p>\r\n<p>Documentation for extra options can be found at <a href=\"http://www.fancybox.net/\" target=\"_blank\" rel=\"noopener\">www.fancybox.net</a></p>\r\n<p>Files that come with Fancybox are stored in <em>assets/modules/Gallery/templates/fancybox/</em></p>\r\n<p>Fancybox was built using the <a href=\"http://jquery.com/\">jQuery library</a>. Licensed under both <a href=\"http://docs.jquery.com/Licensing\">MIT and GPL licenses</a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1, 1),
(4, 'gallerytree', '1.0', '<p>This template is ment for the {Gallery action=\'gallerytree\' template=\'gallerytree\'} call.</p>\r\n<p>The generated tree respects the sortorder settings for each (sub)gallery. Setting a sortorder for this template won\'t make any difference.</p>', NULL, NULL, NULL, NULL, '0', 0, 0),
(5, 'Lightbox', '2.8.2-3', '<p>This Gallerytemplate uses the Lightbox2 system version 2.8.2 by Lokesh Dhakar</p>\r\n<p>Documentation can be found at <a href=\"http://lokeshdhakar.com/projects/lightbox2/\" target=\"_blank\" rel=\"noopener\">www.lokeshdhakar.com/projects/lightbox2</a></p>\r\n<p>Files that come with Lightbox are stored in <em>assets/modules/Gallery/templates/lightbox/</em></p>\r\n<p>Lightbox was built using the <a href=\"http://jquery.com/\">jQuery library</a>. Licensed under the <a href=\"https://raw.githubusercontent.com/lokesh/lightbox2/master/LICENSE\">MIT License</a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1, 1),
(6, 'prettyPhoto', '3.1.6-2', '<p>This Gallerytemplate uses the prettyPhoto system version 3.1.6</p>\r\n<p>Documentation for extra options can be found at <a href=\"http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/\" target=\"_blank\" rel=\"noopener\">www.no-margin-for-errors.com</a></p>\r\n<p>Files that come with prettyPhoto are stored in <em>assets/modules/Gallery/templates/prettyphoto/</em></p>\r\n<p>prettyPhoto was built using the <a href=\"http://jquery.com/\">jQuery library</a>. It is released under the <a href=\"http://www.gnu.org/licenses/gpl-2.0.html\">GPLv2</a> or <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons 2.5</a> license.</p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1, 1),
(7, 'Slimbox', '2.05-2', '<p>This Gallerytemplate uses the Slimbox system version 2.05, a lightweight Lightbox clone using the jQuery javascript library, by Christophe Beyls.</p>\r\n<p>Documentation can be found at <a href=\"http://www.digitalia.be/software/slimbox2\">www.digitalia.be/software/slimbox2</a></p>\r\n<p>Files that come with Slimbox are stored in <em>assets/modules/Gallery/templates/slimbox/</em></p>\r\n<p>Licensed under <a href=\"http://www.opensource.org/licenses/mit-license.php\">MIT License</a></p>', NULL, NULL, NULL, NULL, 'n-isdir/s+file', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news`
--

CREATE TABLE `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text DEFAULT NULL,
  `news_date` datetime DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  `searchable` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_news`
--

INSERT INTO `cms_module_news` (`news_id`, `news_category_id`, `news_title`, `news_data`, `news_date`, `summary`, `start_time`, `end_time`, `status`, `icon`, `create_date`, `modified_date`, `author_id`, `news_extra`, `news_url`, `searchable`) VALUES
(1, 1, 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2025-05-02 17:48:42', NULL, NULL, NULL, 'published', NULL, '2025-05-02 17:48:42', '2025-05-02 17:48:42', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news_categories`
--

CREATE TABLE `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `long_name` text DEFAULT NULL,
  `create_date` time DEFAULT NULL,
  `modified_date` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_news_categories`
--

INSERT INTO `cms_module_news_categories` (`news_category_id`, `news_category_name`, `parent_id`, `hierarchy`, `item_order`, `long_name`, `create_date`, `modified_date`) VALUES
(1, 'General', -1, '00000', NULL, 'General', '17:48:42', '17:48:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news_categories_seq`
--

CREATE TABLE `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_module_news_categories_seq`
--

INSERT INTO `cms_module_news_categories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news_fielddefs`
--

CREATE TABLE `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `extra` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news_fieldvals`
--

CREATE TABLE `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_news_seq`
--

CREATE TABLE `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_module_news_seq`
--

INSERT INTO `cms_module_news_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_search_index`
--

CREATE TABLE `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_search_index`
--

INSERT INTO `cms_module_search_index` (`item_id`, `word`, `count`) VALUES
(10, 'maps', 1),
(10, 'google', 1),
(10, 'kontakt', 5),
(14, 'bmw', 1),
(14, 'mercedes', 1),
(14, 'audi', 1),
(14, 'gallery', 1),
(14, 'modułu', 1),
(14, 'wykorzystania', 1),
(14, 'bez', 1),
(14, 'tinymce', 1),
(14, 'edytor', 1),
(14, 'wyłącznie', 1),
(14, 'tylko', 1),
(14, 'wykorzystująca', 1),
(14, 'aktualnie', 1),
(14, 'galerie', 1),
(14, 'zawierająca', 1),
(14, 'strona', 1),
(14, 'prosta', 1),
(14, 'samochodowych', 5),
(14, 'pojazdów', 5),
(14, 'galeria', 4),
(5, 'simple', 1),
(5, 'made', 1),
(5, 'cms', 1),
(5, 'rozwiązaniu', 1),
(5, 'opartej', 1),
(5, 'internetowej', 1),
(5, 'aplikacji', 1),
(5, 'nowej', 1),
(5, 'mojej', 1),
(5, 'jest', 1),
(5, 'główna', 5),
(5, 'strona', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_search_items`
--

CREATE TABLE `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_search_items`
--

INSERT INTO `cms_module_search_items` (`id`, `module_name`, `content_id`, `extra_attr`, `expires`) VALUES
(5, 'Search', 1, 'content', NULL),
(14, 'Search', 2, 'content', NULL),
(10, 'Search', 3, 'content', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_search_items_seq`
--

CREATE TABLE `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_module_search_items_seq`
--

INSERT INTO `cms_module_search_items_seq` (`id`) VALUES
(14);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_search_words`
--

CREATE TABLE `cms_module_search_words` (
  `word` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_smarty_plugins`
--

CREATE TABLE `cms_module_smarty_plugins` (
  `sig` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `module` varchar(160) NOT NULL,
  `type` varchar(40) NOT NULL,
  `callback` varchar(255) NOT NULL,
  `available` int(11) DEFAULT NULL,
  `cachable` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_smarty_plugins`
--

INSERT INTO `cms_module_smarty_plugins` (`sig`, `name`, `module`, `type`, `callback`, `available`, `cachable`) VALUES
('1067553f16c8b101d638109a3192c66b', 'FileManager', 'FileManager', 'function', 's:15:\"function_plugin\";', 1, 0),
('29b6be99c1766d29c3aa133f3bfb74dd', 'MenuManager', 'MenuManager', 'function', 's:15:\"function_plugin\";', 1, 0),
('3a56cf7e025a641d45d9e226203be1f4', 'menu', 'MenuManager', 'function', 's:15:\"function_plugin\";', 1, 1),
('d84423f78fd018b58479f49bfcfd7dff', 'cms_breadcrumbs', 'MenuManager', 'function', 's:22:\"smarty_cms_breadcrumbs\";', 1, 1),
('89db15907b095c8b667635db366ce281', 'Navigator', 'Navigator', 'function', 's:15:\"function_plugin\";', 1, 0),
('6e48542c3a68893ddba764b6f7b87f4b', 'nav_breadcrumbs', 'Navigator', 'function', 's:15:\"nav_breadcrumbs\";', 1, 1),
('b9a594680999f1eba29c9090badd6687', 'News', 'News', 'function', 's:15:\"function_plugin\";', 1, 0),
('0a85af65a1365dea78ed7cd5e5bec265', 'news', 'News', 'function', 's:15:\"function_plugin\";', 1, 1),
('10cf00fc6ca5b59a961044ef0ea9c061', 'Search', 'Search', 'function', 's:15:\"function_plugin\";', 1, 0),
('ef6c9a9d4dab6989b5da62e2f9a68cf6', 'search', 'Search', 'function', 's:15:\"function_plugin\";', 1, 1),
('23f19aaecf16b15341cd2800b6cd9a43', 'AceSyntax', 'AceSyntax', 'function', 's:15:\"function_plugin\";', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_templates`
--

CREATE TABLE `cms_module_templates` (
  `module_name` varchar(160) DEFAULT NULL,
  `template_name` varchar(160) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_templates`
--

INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('News', 'email_template', 'A new news article has been posted to your website.  The details are as follows:\nTitle:      {$title}\nIP Address: {$ipaddress}\nSummary:    {$summary|strip_tags}\nStart Date: {$startdate|date_format}\nEnd Date:   {$enddate|date_format}\n', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
('Gallery', 'AE-Gallery', '<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{assign var=\'dirs\' value=\'\'}\r\n{assign var=\'imgs\' value=\'\'}\r\n{foreach from=$images item=image}\r\n{if $image->isdir}\r\n{assign var=\'dirs\' value=\"$dirs\r\n	<div class=\\\"img\\\">\r\n		<a href=\\\"`$image->file`\\\" title=\\\"`$image->title`\\\"><img src=\\\"`$image->thumb`\\\" alt=\\\"`$image->titlename`\\\" /></a><br />\r\n		`$image->titlename`\r\n	</div>\r\n\"}\r\n{else}\r\n{capture name=images assign=imgs}\r\n{$imgs}\r\n        <li>\r\n          <a href=\"{$image->file}\">\r\n            <img src=\"{$image->thumb}\" title=\"{$image->title}\" alt=\"{if empty($image->comment)}{$image->titlename}{else}{$image->comment}{/if}\" longdesc=\"{* you can put a url here using a custom field. This wil generate a link in the middle of the big image *}\" class=\"image{$image->fileid}\">\r\n          </a>\r\n        </li>\r\n{/capture}\r\n{/if}\r\n{/foreach}\r\n\r\n\r\n{if !empty($imgs)}\r\n<div class=\"ae-gallery\">\r\n  <div class=\"ae-image-wrapper\">\r\n  </div>\r\n  <div class=\"ae-controls\">\r\n  </div>\r\n  <div class=\"ae-nav\">\r\n    <div class=\"ae-thumbs\">\r\n      <ul class=\"ae-thumb-list\">\r\n{$imgs}\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n{/if}\r\n\r\n{$dirs}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n/* AE-GALLERY */\r\n\r\n.ae-gallery {\r\n  width: 533px;  /* set the width of the thumbrow */\r\n  margin-bottom: 30px;\r\n}\r\n.ae-gallery, .ae-gallery * {\r\n  margin: 0;\r\n  padding: 0;\r\n}\r\n  .ae-gallery .ae-image-wrapper {\r\n    width: 100%; /* set the maximum width and height of the big image. Bigger images will be scaled down automatically by the script */\r\n    height: 400px;\r\n    margin-bottom: 10px;\r\n    position: relative;\r\n    overflow: hidden;\r\n    border: 2px solid #ddd;\r\n  }\r\n    .ae-gallery .ae-image-wrapper .ae-loader {\r\n      position: absolute;\r\n      z-index: 10;\r\n      top: 48%;\r\n      left: 48%;\r\n      border: 1px solid #CCC;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-next {\r\n      position: absolute;\r\n      right: 0;\r\n      top: 0;\r\n      width: 25%;\r\n      height: 100%;\r\n      cursor: pointer;\r\n      display: block;\r\n      z-index: 200;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-prev {\r\n      position: absolute;\r\n      left: 0;\r\n      top: 0;\r\n      width: 25%;\r\n      height: 100%;\r\n      cursor: pointer;\r\n      display: block;\r\n      z-index: 200;\r\n    }\r\n    .ae-gallery .ae-image-wrapper .ae-prev, .ae-gallery .ae-image-wrapper .ae-next {\r\n      /* Or else IE will hide it */\r\n      background: url(../ae-gallery/trans.gif);\r\n    }\r\n      .ae-gallery .ae-image-wrapper .ae-prev .ae-prev-image, .ae-gallery .ae-image-wrapper .ae-next .ae-next-image {\r\n        background: url(../ae-gallery/ae_prev.png);\r\n        width: 30px;\r\n        height: 30px;\r\n        display: none;\r\n        position: absolute;\r\n        top: 47%;\r\n        left: 0;\r\n        z-index: 101;\r\n      }\r\n      .ae-gallery .ae-image-wrapper .ae-next .ae-next-image {\r\n        background: url(../ae-gallery/ae_next.png);\r\n        width: 30px;\r\n        height: 30px;\r\n        right: 0;\r\n        left: auto;\r\n      }\r\n    .ae-gallery .ae-image-wrapper .ae-image {\r\n      position: absolute;\r\n      overflow: hidden;\r\n      top: 0;\r\n      left: 0;\r\n      z-index: 9;\r\n    }\r\n      .ae-gallery .ae-image-wrapper .ae-image a img {\r\n        border: 0;\r\n      }\r\n      .ae-gallery .ae-image-wrapper .ae-image .ae-image-description {\r\n        position: absolute;\r\n        bottom: 0px;\r\n        left: 0px;\r\n        padding: 7px;\r\n        text-align: left;\r\n        width: 100%;\r\n        z-index: 2;\r\n        background: url(../ae-gallery/opa75.png);\r\n        color: #000;\r\n      }\r\n      * html .ae-gallery .ae-image-wrapper .ae-image .ae-image-description {\r\n        background: none;\r\n        filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (enabled=true, sizingMethod=scale, src=\'modules/Gallery/templates/ae-gallery/opa75.png\');\r\n      }\r\n        .ae-gallery .ae-image-wrapper .ae-image .ae-image-description .ae-description-title {\r\n          display: block;\r\n        }\r\n  .ae-gallery .ae-controls {\r\n    height: 20px;\r\n  }\r\n    .ae-gallery .ae-info {\r\n      float: left;\r\n    }\r\n    .ae-gallery .ae-slideshow-controls {\r\n      float: right;\r\n    }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-start, .ae-gallery .ae-slideshow-controls .ae-slideshow-stop {\r\n        padding-left: 5px;\r\n        cursor: pointer;\r\n         display: inline-block;\r\n        text-indent: -500px;\r\n        overflow:hidden;\r\n        width: 14px;\r\n        background: url(../ae-gallery/ae_scroll_forward.png) 0px -3px no-repeat;\r\n      }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-stop {\r\n        background: url(../ae-gallery/ae_stop.png) 0px -3px no-repeat;\r\n     }\r\n      .ae-gallery .ae-slideshow-controls .ae-slideshow-countdown {\r\n        padding-left: 5px;\r\n        font-size: 0.9em;\r\n      }\r\n    .ae-gallery .ae-slideshow-running .ae-slideshow-start {\r\n      cursor: default;\r\n      font-style: italic;\r\n    }\r\n  .ae-gallery .ae-nav {\r\n    width: 100%;\r\n    position: relative;\r\n  }\r\n    .ae-gallery .ae-forward, .ae-gallery .ae-back {\r\n      position: absolute;\r\n      top: 0;\r\n      height: 100%;\r\n      z-index: 10;\r\n    }\r\n    /* IE 6 doesn\'t like height: 100% */\r\n    * html .ae-gallery .ae-forward, .ae-gallery .ae-back {\r\n      height: 100px;\r\n    }\r\n    .ae-gallery .ae-back {\r\n      cursor: pointer;\r\n      left: -20px;\r\n      width: 13px;\r\n      display: block;\r\n      background: url(../ae-gallery/ae_scroll_back.png) 0px 22px no-repeat;\r\n    }\r\n    .ae-gallery .ae-forward {\r\n      cursor: pointer;\r\n      display: block;\r\n      right: -20px;\r\n      width: 13px;\r\n      background: url(../ae-gallery/ae_scroll_forward.png) 0px 22px no-repeat;\r\n    }\r\n    .ae-gallery .ae-nav .ae-thumbs {\r\n      overflow: hidden;\r\n      width: 100%;\r\n/*padding: 3px 1px;\r\nborder: 1px solid #ddd;\r\nbackground-color: #fff;*/\r\n    }\r\n      .ae-gallery .ae-thumbs .ae-thumb-list {\r\n        float: left;\r\n        width: 9000px;\r\n        list-style: none;\r\n      }\r\n        .ae-gallery .ae-thumbs li {\r\n          float: left;\r\n          padding:0 5px 0 0 !important;\r\n          margin:0 0 0 0 !important;\r\n          list-style: none;\r\n        }\r\n          .ae-gallery .ae-thumbs li a {\r\n            display: block;\r\n          }\r\n            .ae-gallery .ae-thumbs li a img {\r\n              border: 3px solid #CCC;\r\n              display: block;\r\n            }\r\n            .ae-gallery .ae-thumbs li a.ae-active img {\r\n              border: 3px solid #616161;\r\n            }\r\n/* Can\'t do display none, since Opera won\'t load the images then */\r\n.ae-preloads {\r\n  position: absolute;\r\n  left: -9000px;\r\n  top: -9000px;\r\n}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/ae-gallery/jquery.ae-gallery.min.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n  $(function() {\r\n    var galleries = $(\'.ae-gallery\').aeGallery({\r\n      loader_image: \'{$gallery_module_root}/templates/ae-gallery/loader.gif\',\r\n      slideshow: {\r\n        autostart: false,\r\n        speed: 4000,\r\n        start_label: \'Start\',\r\n        stop_label: \'Stop\',\r\n        stop_on_scroll: false\r\n      }\r\n    });\r\n  });\r\n</script>*}', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
('Gallery', 'Cycle', '{* note that the thumbs are shown in stead of the original images, just to make sure all images are of the same size due to the crop image-resize option *}\r\n<div id=\"slides\">\r\n{foreach from=$images item=image}\r\n	{if !$image->isdir}\r\n		<img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" />\r\n	{/if}\r\n{/foreach}\r\n</div>\r\n<div id=\"caption\">&nbsp;</div>{*----------/* height and width should be the same as the thumbnail sizes */\r\n#slides {\r\n  width: 300px;\r\n  height: 120px;\r\n}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/cycle/jquery.cycle.lite.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n	$(\'#slides\').cycle({ \r\n		delay:  2000, \r\n		speed: 500,\r\n		before: onBefore\r\n	});\r\n\r\n	function onBefore() {\r\n		$(\'#caption\').html(this.alt);\r\n	};\r\n});\r\n</script>*}', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
('Gallery', 'Fancybox', '<div class=\"gallery\">\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class=\"img\">\r\n	{if $image->isdir}\r\n		<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a class=\"group\" href=\"{$image->file}\" title=\"{$image->titlename}\" rel=\"gallery-{$galleryid}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* FANCYBOX  -  version 1.3.4 */\r\n\r\n#fancybox-loading {\r\n	position: fixed;\r\n	top: 50%;\r\n	left: 50%;\r\n	width: 40px;\r\n	height: 40px;\r\n	margin-top: -20px;\r\n	margin-left: -20px;\r\n	cursor: pointer;\r\n	overflow: hidden;\r\n	z-index: 1104;\r\n	display: none;\r\n}\r\n\r\n#fancybox-loading div {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 40px;\r\n	height: 480px;\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n}\r\n\r\n#fancybox-overlay {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	z-index: 1100;\r\n	display: none;\r\n}\r\n\r\n#fancybox-tmp {\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	overflow: auto;\r\n	display: none;\r\n}\r\n\r\n#fancybox-wrap {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	padding: 20px;\r\n	z-index: 1101;\r\n	outline: none;\r\n	display: none;\r\n}\r\n\r\n#fancybox-outer {\r\n	position: relative;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: #000;\r\n}\r\n\r\n#fancybox-content {\r\n	width: 0;\r\n	height: 0;\r\n	padding: 0;\r\n	outline: none;\r\n	position: relative;\r\n	overflow: hidden;\r\n	z-index: 1102;\r\n	border: 0px solid #000;\r\n}\r\n\r\n#fancybox-hide-sel-frame {\r\n	position: absolute;\r\n	top: 0;\r\n	left: 0;\r\n	width: 100%;\r\n	height: 100%;\r\n	background: transparent;\r\n	z-index: 1101;\r\n}\r\n\r\n#fancybox-close {\r\n	position: absolute;\r\n	top: -15px;\r\n	right: -15px;\r\n	width: 30px;\r\n	height: 30px;\r\n	background: transparent url(\'../fancybox/fancybox.png\') -40px 0px;\r\n	cursor: pointer;\r\n	z-index: 1103;\r\n	display: none;\r\n}\r\n\r\n#fancybox-error {\r\n	color: #444;\r\n	font: normal 12px/20px Arial;\r\n	padding: 14px;\r\n	margin: 0;\r\n}\r\n\r\n#fancybox-img {\r\n	width: 100%;\r\n	height: 100%;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: none;\r\n	outline: none;\r\n	line-height: 0;\r\n	vertical-align: top;\r\n}\r\n\r\n#fancybox-frame {\r\n	width: 100%;\r\n	height: 100%;\r\n	border: none;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left, #fancybox-right {\r\n	position: absolute;\r\n	bottom: 0px;\r\n	height: 100%;\r\n	width: 35%;\r\n	cursor: pointer;\r\n	outline: none;\r\n	background: transparent url(\'../fancybox/blank.gif\');\r\n	z-index: 1102;\r\n	display: none;\r\n}\r\n\r\n#fancybox-left {\r\n	left: 0px;\r\n}\r\n\r\n#fancybox-right {\r\n	right: 0px;\r\n}\r\n\r\n#fancybox-left-ico, #fancybox-right-ico {\r\n	position: absolute;\r\n	top: 50%;\r\n	left: -9999px;\r\n	width: 30px;\r\n	height: 30px;\r\n	margin-top: -15px;\r\n	cursor: pointer;\r\n	z-index: 1102;\r\n	display: block;\r\n}\r\n\r\n#fancybox-left-ico {\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -30px;\r\n}\r\n\r\n#fancybox-right-ico {\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -60px;\r\n}\r\n\r\n#fancybox-left:hover, #fancybox-right:hover {\r\n	visibility: visible; /* IE6 */\r\n}\r\n\r\n#fancybox-left:hover span {\r\n	left: 20px;\r\n}\r\n\r\n#fancybox-right:hover span {\r\n	left: auto;\r\n	right: 20px;\r\n}\r\n\r\n.fancybox-bg {\r\n	position: absolute;\r\n	padding: 0;\r\n	margin: 0;\r\n	border: 0;\r\n	width: 20px;\r\n	height: 20px;\r\n	z-index: 1001;\r\n}\r\n\r\n#fancybox-bg-n {\r\n	top: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(\'../fancybox/fancybox-x.png\');\r\n}\r\n\r\n#fancybox-bg-ne {\r\n	top: -20px;\r\n	right: -20px;\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -162px;\r\n}\r\n\r\n#fancybox-bg-e {\r\n	top: 0;\r\n	right: -20px;\r\n	height: 100%;\r\n	background-image: url(\'../fancybox/fancybox-y.png\');\r\n	background-position: -20px 0px;\r\n}\r\n\r\n#fancybox-bg-se {\r\n	bottom: -20px;\r\n	right: -20px;\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -182px; \r\n}\r\n\r\n#fancybox-bg-s {\r\n	bottom: -20px;\r\n	left: 0;\r\n	width: 100%;\r\n	background-image: url(\'../fancybox/fancybox-x.png\');\r\n	background-position: 0px -20px;\r\n}\r\n\r\n#fancybox-bg-sw {\r\n	bottom: -20px;\r\n	left: -20px;\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -142px;\r\n}\r\n\r\n#fancybox-bg-w {\r\n	top: 0;\r\n	left: -20px;\r\n	height: 100%;\r\n	background-image: url(\'../fancybox/fancybox-y.png\');\r\n}\r\n\r\n#fancybox-bg-nw {\r\n	top: -20px;\r\n	left: -20px;\r\n	background-image: url(\'../fancybox/fancybox.png\');\r\n	background-position: -40px -122px;\r\n}\r\n\r\n#fancybox-title {\r\n	font-family: Helvetica;\r\n	font-size: 12px;\r\n	z-index: 1102;\r\n}\r\n\r\n.fancybox-title-inside {\r\n	padding-bottom: 10px;\r\n	text-align: center;\r\n	color: #333;\r\n	background: #fff;\r\n	position: relative;\r\n}\r\n\r\n.fancybox-title-outside {\r\n	padding-top: 10px;\r\n	color: #fff;\r\n}\r\n\r\n.fancybox-title-over {\r\n	position: absolute;\r\n	bottom: 0;\r\n	left: 0;\r\n	color: #FFF;\r\n	text-align: left;\r\n}\r\n\r\n#fancybox-title-over {\r\n	padding: 10px;\r\n	background-image: url(\'../fancybox/fancy_title_over.png\');\r\n	display: block;\r\n}\r\n\r\n.fancybox-title-float {\r\n	position: absolute;\r\n	left: 0;\r\n	bottom: -20px;\r\n	height: 32px;\r\n}\r\n\r\n#fancybox-title-float-wrap {\r\n	border: none;\r\n	border-collapse: collapse;\r\n	width: auto;\r\n}\r\n\r\n#fancybox-title-float-wrap td {\r\n	border: none;\r\n	white-space: nowrap;\r\n}\r\n\r\n#fancybox-title-float-left {\r\n	padding: 0 0 0 15px;\r\n	background: url(\'../fancybox/fancybox.png\') -40px -90px no-repeat;\r\n}\r\n\r\n#fancybox-title-float-main {\r\n	color: #FFF;\r\n	line-height: 29px;\r\n	font-weight: bold;\r\n	padding: 0 0 3px 0;\r\n	background: url(\'../fancybox/fancybox-x.png\') 0px -40px;\r\n}\r\n\r\n#fancybox-title-float-right {\r\n	padding: 0 0 0 15px;\r\n	background: url(\'../fancybox/fancybox.png\') -55px -90px no-repeat;\r\n}\r\n\r\n/* IE7, IE8 */\r\n.fancybox-ie .fancybox-bg { background: transparent !important; }{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/fancybox/jquery.fancybox.pack.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/lib/jquery/jquery.mousewheel.pack.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n	$(\"a.group\").fancybox({\r\n		\'speedIn\':		300,\r\n		\'speedOut\':	300,\r\n		\'overlayColor\':	\'#000\',\r\n		\'overlayOpacity\':	0.7\r\n	});\r\n});\r\n</script>*}', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
('Gallery', 'gallerytree', '<ul>\r\n{assign var=\'g_prevdepth\' value=1}\r\n{foreach from=$images item=image name=img}\r\n\r\n{if $image->depth > $g_prevdepth}\r\n{repeat string=\"<ul>\" times=$image->depth-$g_prevdepth}\r\n{elseif $image->depth < $g_prevdepth}\r\n{repeat string=\"</li></ul>\" times=$g_prevdepth-$image->depth}\r\n</li>\r\n{elseif $smarty.foreach.img.index > 0}</li>\r\n{/if}\r\n		<li><a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a> {$image->titlename}\r\n\r\n{assign var=\'g_prevdepth\' value=$image->depth}\r\n{/foreach}\r\n{repeat string=\"</li></ul>\" times=$image->depth-1}</li>\r\n	</ul>{*----------{*----------*}', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
('Gallery', 'Lightbox', '<div class=\"gallery\">\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class=\"img\">\r\n	{if $image->isdir}\r\n		{* this is a subgallery *}\r\n		<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n		{* this is an image *}\r\n		<a class=\"group\" href=\"{$image->file}\" data-title=\"{$image->titlename}{if !empty($image->comment)} &bull; &lt;em&gt;{$image->comment|strip_tags|escape:\'html\'}&lt;em&gt;{/if}\" data-lightbox=\"cmsmsgallery{$galleryid}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* LIGHTBOX  -  version 2.8.2 */\r\n\r\n/* Preload images */\r\nbody:after {\r\n  content: url(../lightbox/images/close.png) url(../lightbox/images/loading.gif) url(../lightbox/images/prev.png) url(../lightbox/images/next.png);\r\n  display: none;\r\n}\r\n\r\nbody.lb-disable-scrolling {\r\n  overflow: hidden;\r\n}\r\n\r\n.lightboxOverlay {\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: 9999;\r\n  background-color: black;\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=80);\r\n  opacity: 0.8;\r\n  display: none;\r\n}\r\n\r\n.lightbox {\r\n  position: absolute;\r\n  left: 0;\r\n  width: 100%;\r\n  z-index: 10000;\r\n  text-align: center;\r\n  line-height: 0;\r\n  font-weight: normal;\r\n}\r\n\r\n.lightbox .lb-image {\r\n  display: block;\r\n  height: auto;\r\n  max-width: inherit;\r\n  border-radius: 3px;\r\n}\r\n\r\n.lightbox a img {\r\n  border: none;\r\n}\r\n\r\n.lb-outerContainer {\r\n  position: relative;\r\n  background-color: white;\r\n  *zoom: 1;\r\n  width: 250px;\r\n  height: 250px;\r\n  margin: 0 auto;\r\n  border-radius: 4px;\r\n}\r\n\r\n.lb-outerContainer:after {\r\n  content: \"\";\r\n  display: table;\r\n  clear: both;\r\n}\r\n\r\n.lb-container {\r\n  padding: 4px;\r\n}\r\n\r\n.lb-loader {\r\n  position: absolute;\r\n  top: 43%;\r\n  left: 0;\r\n  height: 25%;\r\n  width: 100%;\r\n  text-align: center;\r\n  line-height: 0;\r\n}\r\n\r\n.lb-cancel {\r\n  display: block;\r\n  width: 32px;\r\n  height: 32px;\r\n  margin: 0 auto;\r\n  background: url(../lightbox/images/loading.gif) no-repeat;\r\n}\r\n\r\n.lb-nav {\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  height: 100%;\r\n  width: 100%;\r\n  z-index: 10;\r\n}\r\n\r\n.lb-container > .nav {\r\n  left: 0;\r\n}\r\n\r\n.lb-nav a {\r\n  outline: none;\r\n  background-image: url(\'data:image/gif;base64,R0lGODlhAQABAPAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\');\r\n}\r\n\r\n.lb-prev, .lb-next {\r\n  height: 100%;\r\n  cursor: pointer;\r\n  display: block;\r\n}\r\n\r\n.lb-nav a.lb-prev {\r\n  width: 34%;\r\n  left: 0;\r\n  float: left;\r\n  background: url(../lightbox/images/prev.png) left 48% no-repeat;\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);\r\n  opacity: 0;\r\n  -webkit-transition: opacity 0.6s;\r\n  -moz-transition: opacity 0.6s;\r\n  -o-transition: opacity 0.6s;\r\n  transition: opacity 0.6s;\r\n}\r\n\r\n.lb-nav a.lb-prev:hover {\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);\r\n  opacity: 1;\r\n}\r\n\r\n.lb-nav a.lb-next {\r\n  width: 64%;\r\n  right: 0;\r\n  float: right;\r\n  background: url(../lightbox/images/next.png) right 48% no-repeat;\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);\r\n  opacity: 0;\r\n  -webkit-transition: opacity 0.6s;\r\n  -moz-transition: opacity 0.6s;\r\n  -o-transition: opacity 0.6s;\r\n  transition: opacity 0.6s;\r\n}\r\n\r\n.lb-nav a.lb-next:hover {\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);\r\n  opacity: 1;\r\n}\r\n\r\n.lb-dataContainer {\r\n  margin: 0 auto;\r\n  padding-top: 5px;\r\n  *zoom: 1;\r\n  width: 100%;\r\n  -moz-border-radius-bottomleft: 4px;\r\n  -webkit-border-bottom-left-radius: 4px;\r\n  border-bottom-left-radius: 4px;\r\n  -moz-border-radius-bottomright: 4px;\r\n  -webkit-border-bottom-right-radius: 4px;\r\n  border-bottom-right-radius: 4px;\r\n}\r\n\r\n.lb-dataContainer:after {\r\n  content: \"\";\r\n  display: table;\r\n  clear: both;\r\n}\r\n\r\n.lb-data {\r\n  padding: 0 4px;\r\n  color: #ccc;\r\n}\r\n\r\n.lb-data .lb-details {\r\n  width: 85%;\r\n  float: left;\r\n  text-align: left;\r\n  line-height: 1.1em;\r\n}\r\n\r\n.lb-data .lb-caption {\r\n  font-size: 13px;\r\n  font-weight: bold;\r\n  line-height: 1em;\r\n}\r\n\r\n.lb-data .lb-number {\r\n  display: block;\r\n  clear: left;\r\n  padding-bottom: 1em;\r\n  font-size: 12px;\r\n  color: #999999;\r\n}\r\n\r\n.lb-data .lb-close {\r\n  display: block;\r\n  float: right;\r\n  width: 30px;\r\n  height: 30px;\r\n  background: url(../lightbox/images/close.png) top right no-repeat;\r\n  text-align: right;\r\n  outline: none;\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);\r\n  opacity: 0.7;\r\n  -webkit-transition: opacity 0.2s;\r\n  -moz-transition: opacity 0.2s;\r\n  -o-transition: opacity 0.2s;\r\n  transition: opacity 0.2s;\r\n}\r\n\r\n.lb-data .lb-close:hover {\r\n  cursor: pointer;\r\n  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);\r\n  opacity: 1;\r\n}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/lightbox/js/lightbox.min.js\"></script>*}', '2025-05-02 18:03:58', '2025-05-02 18:03:58');
INSERT INTO `cms_module_templates` (`module_name`, `template_name`, `content`, `create_date`, `modified_date`) VALUES
('Gallery', 'prettyPhoto', '<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class=\"img\">\r\n	{if $image->isdir}\r\n		<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a class=\"group\" href=\"{$image->file}\" title=\"{$image->comment}\" rel=\"prettyPhoto[{$galleryid}]\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* PRETTYPHOTO  -  version 3.1.6 */\r\n\r\ndiv.pp_default .pp_top,div.pp_default .pp_top .pp_middle,div.pp_default .pp_top .pp_left,div.pp_default .pp_top .pp_right,div.pp_default .pp_bottom,div.pp_default .pp_bottom .pp_left,div.pp_default .pp_bottom .pp_middle,div.pp_default .pp_bottom .pp_right{height:13px}\r\ndiv.pp_default .pp_top .pp_left{background:url(../prettyphoto/images/default/sprite.png) -78px -93px no-repeat}\r\ndiv.pp_default .pp_top .pp_middle{background:url(../prettyphoto/images/default/sprite_x.png) top left repeat-x}\r\ndiv.pp_default .pp_top .pp_right{background:url(../prettyphoto/images/default/sprite.png) -112px -93px no-repeat}\r\ndiv.pp_default .pp_content .ppt{color:#f8f8f8}\r\ndiv.pp_default .pp_content_container .pp_left{background:url(../prettyphoto/images/default/sprite_y.png) -7px 0 repeat-y;padding-left:13px}\r\ndiv.pp_default .pp_content_container .pp_right{background:url(../prettyphoto/images/default/sprite_y.png) top right repeat-y;padding-right:13px}\r\ndiv.pp_default .pp_next:hover{background:url(../prettyphoto/images/default/sprite_next.png) center right no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_previous:hover{background:url(../prettyphoto/images/default/sprite_prev.png) center left no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_expand{background:url(../prettyphoto/images/default/sprite.png) 0 -29px no-repeat;cursor:pointer;width:28px;height:28px}\r\ndiv.pp_default .pp_expand:hover{background:url(../prettyphoto/images/default/sprite.png) 0 -56px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_contract{background:url(../prettyphoto/images/default/sprite.png) 0 -84px no-repeat;cursor:pointer;width:28px;height:28px}\r\ndiv.pp_default .pp_contract:hover{background:url(../prettyphoto/images/default/sprite.png) 0 -113px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_close{width:30px;height:30px;background:url(../prettyphoto/images/default/sprite.png) 2px 1px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_gallery ul li a{background:url(../prettyphoto/images/default/default_thumb.png) center center #f8f8f8;border:1px solid #aaa}\r\ndiv.pp_default .pp_social{margin-top:7px}\r\ndiv.pp_default .pp_gallery a.pp_arrow_previous,div.pp_default .pp_gallery a.pp_arrow_next{position:static;left:auto}\r\ndiv.pp_default .pp_nav .pp_play,div.pp_default .pp_nav .pp_pause{background:url(../prettyphoto/images/default/sprite.png) -51px 1px no-repeat;height:30px;width:30px}\r\ndiv.pp_default .pp_nav .pp_pause{background-position:-51px -29px}\r\ndiv.pp_default a.pp_arrow_previous,div.pp_default a.pp_arrow_next{background:url(../prettyphoto/images/default/sprite.png) -31px -3px no-repeat;height:20px;width:20px;margin:4px 0 0}\r\ndiv.pp_default a.pp_arrow_next{left:52px;background-position:-82px -3px}\r\ndiv.pp_default .pp_content_container .pp_details{margin-top:5px}\r\ndiv.pp_default .pp_nav{clear:none;height:30px;width:110px;position:relative}\r\ndiv.pp_default .pp_nav .currentTextHolder{font-family:Georgia;font-style:italic;color:#999;font-size:11px;left:75px;line-height:25px;position:absolute;top:2px;margin:0;padding:0 0 0 10px}\r\ndiv.pp_default .pp_close:hover,div.pp_default .pp_nav .pp_play:hover,div.pp_default .pp_nav .pp_pause:hover,div.pp_default .pp_arrow_next:hover,div.pp_default .pp_arrow_previous:hover{opacity:0.7}\r\ndiv.pp_default .pp_description{font-size:11px;font-weight:700;line-height:14px;margin:5px 50px 5px 0}\r\ndiv.pp_default .pp_bottom .pp_left{background:url(../prettyphoto/images/default/sprite.png) -78px -127px no-repeat}\r\ndiv.pp_default .pp_bottom .pp_middle{background:url(../prettyphoto/images/default/sprite_x.png) bottom left repeat-x}\r\ndiv.pp_default .pp_bottom .pp_right{background:url(../prettyphoto/images/default/sprite.png) -112px -127px no-repeat}\r\ndiv.pp_default .pp_loaderIcon{background:url(../prettyphoto/images/default/loader.gif) center center no-repeat}\r\ndiv.light_rounded .pp_top .pp_left{background:url(../prettyphoto/images/light_rounded/sprite.png) -88px -53px no-repeat}\r\ndiv.light_rounded .pp_top .pp_right{background:url(../prettyphoto/images/light_rounded/sprite.png) -110px -53px no-repeat}\r\ndiv.light_rounded .pp_next:hover{background:url(../prettyphoto/images/light_rounded/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_previous:hover{background:url(../prettyphoto/images/light_rounded/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_expand{background:url(../prettyphoto/images/light_rounded/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_expand:hover{background:url(../prettyphoto/images/light_rounded/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_contract{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_contract:hover{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/light_rounded/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_nav .pp_play{background:url(../prettyphoto/images/light_rounded/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_rounded .pp_nav .pp_pause{background:url(../prettyphoto/images/light_rounded/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_rounded .pp_arrow_previous{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -71px no-repeat}\r\ndiv.light_rounded .pp_arrow_next{background:url(../prettyphoto/images/light_rounded/sprite.png) -22px -71px no-repeat}\r\ndiv.light_rounded .pp_bottom .pp_left{background:url(../prettyphoto/images/light_rounded/sprite.png) -88px -80px no-repeat}\r\ndiv.light_rounded .pp_bottom .pp_right{background:url(../prettyphoto/images/light_rounded/sprite.png) -110px -80px no-repeat}\r\ndiv.dark_rounded .pp_top .pp_left{background:url(../prettyphoto/images/dark_rounded/sprite.png) -88px -53px no-repeat}\r\ndiv.dark_rounded .pp_top .pp_right{background:url(../prettyphoto/images/dark_rounded/sprite.png) -110px -53px no-repeat}\r\ndiv.dark_rounded .pp_content_container .pp_left{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top left repeat-y}\r\ndiv.dark_rounded .pp_content_container .pp_right{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top right repeat-y}\r\ndiv.dark_rounded .pp_next:hover{background:url(../prettyphoto/images/dark_rounded/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_previous:hover{background:url(../prettyphoto/images/dark_rounded/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_expand{background:url(../prettyphoto/images/dark_rounded/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_expand:hover{background:url(../prettyphoto/images/dark_rounded/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_contract{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_contract:hover{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/dark_rounded/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_description{margin-right:85px;color:#fff}\r\ndiv.dark_rounded .pp_nav .pp_play{background:url(../prettyphoto/images/dark_rounded/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_rounded .pp_nav .pp_pause{background:url(../prettyphoto/images/dark_rounded/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_rounded .pp_arrow_previous{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -71px no-repeat}\r\ndiv.dark_rounded .pp_arrow_next{background:url(../prettyphoto/images/dark_rounded/sprite.png) -22px -71px no-repeat}\r\ndiv.dark_rounded .pp_bottom .pp_left{background:url(../prettyphoto/images/dark_rounded/sprite.png) -88px -80px no-repeat}\r\ndiv.dark_rounded .pp_bottom .pp_right{background:url(../prettyphoto/images/dark_rounded/sprite.png) -110px -80px no-repeat}\r\ndiv.dark_rounded .pp_loaderIcon{background:url(../prettyphoto/images/dark_rounded/loader.gif) center center no-repeat}\r\ndiv.dark_square .pp_left,div.dark_square .pp_middle,div.dark_square .pp_right,div.dark_square .pp_content{background:#000}\r\ndiv.dark_square .pp_description{color:#fff;margin:0 85px 0 0}\r\ndiv.dark_square .pp_loaderIcon{background:url(../prettyphoto/images/dark_square/loader.gif) center center no-repeat}\r\ndiv.dark_square .pp_expand{background:url(../prettyphoto/images/dark_square/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_expand:hover{background:url(../prettyphoto/images/dark_square/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_contract{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_contract:hover{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/dark_square/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_nav{clear:none}\r\ndiv.dark_square .pp_nav .pp_play{background:url(../prettyphoto/images/dark_square/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_square .pp_nav .pp_pause{background:url(../prettyphoto/images/dark_square/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_square .pp_arrow_previous{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -71px no-repeat}\r\ndiv.dark_square .pp_arrow_next{background:url(../prettyphoto/images/dark_square/sprite.png) -22px -71px no-repeat}\r\ndiv.dark_square .pp_next:hover{background:url(../prettyphoto/images/dark_square/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_previous:hover{background:url(../prettyphoto/images/dark_square/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.light_square .pp_expand{background:url(../prettyphoto/images/light_square/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_expand:hover{background:url(../prettyphoto/images/light_square/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_contract{background:url(../prettyphoto/images/light_square/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_contract:hover{background:url(../prettyphoto/images/light_square/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/light_square/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_nav .pp_play{background:url(../prettyphoto/images/light_square/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_square .pp_nav .pp_pause{background:url(../prettyphoto/images/light_square/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_square .pp_arrow_previous{background:url(../prettyphoto/images/light_square/sprite.png) 0 -71px no-repeat}\r\ndiv.light_square .pp_arrow_next{background:url(../prettyphoto/images/light_square/sprite.png) -22px -71px no-repeat}\r\ndiv.light_square .pp_next:hover{background:url(../prettyphoto/images/light_square/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.light_square .pp_previous:hover{background:url(../prettyphoto/images/light_square/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.facebook .pp_top .pp_left{background:url(../prettyphoto/images/facebook/sprite.png) -88px -53px no-repeat}\r\ndiv.facebook .pp_top .pp_middle{background:url(../prettyphoto/images/facebook/contentPatternTop.png) top left repeat-x}\r\ndiv.facebook .pp_top .pp_right{background:url(../prettyphoto/images/facebook/sprite.png) -110px -53px no-repeat}\r\ndiv.facebook .pp_content_container .pp_left{background:url(../prettyphoto/images/facebook/contentPatternLeft.png) top left repeat-y}\r\ndiv.facebook .pp_content_container .pp_right{background:url(../prettyphoto/images/facebook/contentPatternRight.png) top right repeat-y}\r\ndiv.facebook .pp_expand{background:url(../prettyphoto/images/facebook/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_expand:hover{background:url(../prettyphoto/images/facebook/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_contract{background:url(../prettyphoto/images/facebook/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_contract:hover{background:url(../prettyphoto/images/facebook/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_close{width:22px;height:22px;background:url(../prettyphoto/images/facebook/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_description{margin:0 37px 0 0}\r\ndiv.facebook .pp_loaderIcon{background:url(../prettyphoto/images/facebook/loader.gif) center center no-repeat}\r\ndiv.facebook .pp_arrow_previous{background:url(../prettyphoto/images/facebook/sprite.png) 0 -71px no-repeat;height:22px;margin-top:0;width:22px}\r\ndiv.facebook .pp_arrow_previous.disabled{background-position:0 -96px;cursor:default}\r\ndiv.facebook .pp_arrow_next{background:url(../prettyphoto/images/facebook/sprite.png) -32px -71px no-repeat;height:22px;margin-top:0;width:22px}\r\ndiv.facebook .pp_arrow_next.disabled{background-position:-32px -96px;cursor:default}\r\ndiv.facebook .pp_nav{margin-top:0}\r\ndiv.facebook .pp_nav p{font-size:15px;padding:0 3px 0 4px}\r\ndiv.facebook .pp_nav .pp_play{background:url(../prettyphoto/images/facebook/sprite.png) -1px -123px no-repeat;height:22px;width:22px}\r\ndiv.facebook .pp_nav .pp_pause{background:url(../prettyphoto/images/facebook/sprite.png) -32px -123px no-repeat;height:22px;width:22px}\r\ndiv.facebook .pp_next:hover{background:url(../prettyphoto/images/facebook/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.facebook .pp_previous:hover{background:url(../prettyphoto/images/facebook/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.facebook .pp_bottom .pp_left{background:url(../prettyphoto/images/facebook/sprite.png) -88px -80px no-repeat}\r\ndiv.facebook .pp_bottom .pp_middle{background:url(../prettyphoto/images/facebook/contentPatternBottom.png) top left repeat-x}\r\ndiv.facebook .pp_bottom .pp_right{background:url(../prettyphoto/images/facebook/sprite.png) -110px -80px no-repeat}\r\ndiv.pp_pic_holder a:focus{outline:none}\r\ndiv.pp_overlay{background:#000;display:none;left:0;position:absolute;top:0;width:100%;z-index:9500}\r\ndiv.pp_pic_holder{display:none;position:absolute;width:100px;z-index:10000}\r\n.pp_content{height:40px;min-width:40px}\r\n* html .pp_content{width:40px}\r\n.pp_content_container{position:relative;text-align:left;width:100%}\r\n.pp_content_container .pp_left{padding-left:20px}\r\n.pp_content_container .pp_right{padding-right:20px}\r\n.pp_content_container .pp_details{float:left;margin:10px 0 2px}\r\n.pp_description{display:none;margin:0}\r\n.pp_social{float:left;margin:0}\r\n.pp_social .facebook{float:left;margin-left:5px;width:55px;overflow:hidden}\r\n.pp_social .twitter{float:left}\r\n.pp_nav{clear:right;float:left;margin:3px 10px 0 0}\r\n.pp_nav p{float:left;white-space:nowrap;margin:2px 4px}\r\n.pp_nav .pp_play,.pp_nav .pp_pause{float:left;margin-right:4px;text-indent:-10000px}\r\na.pp_arrow_previous,a.pp_arrow_next{display:block;float:left;height:15px;margin-top:3px;overflow:hidden;text-indent:-10000px;width:14px}\r\n.pp_hoverContainer{position:absolute;top:0;width:100%;z-index:2000}\r\n.pp_gallery{display:none;left:50%;margin-top:-50px;position:absolute;z-index:10000}\r\n.pp_gallery div{float:left;overflow:hidden;position:relative}\r\n.pp_gallery ul{float:left;height:35px;position:relative;white-space:nowrap;margin:0 0 0 5px;padding:0}\r\n.pp_gallery ul a{border:1px rgba(0,0,0,0.5) solid;display:block;float:left;height:33px;overflow:hidden}\r\n.pp_gallery ul a img{border:0}\r\n.pp_gallery li{display:block;float:left;margin:0 5px 0 0;padding:0}\r\n.pp_gallery li.default a{background:url(../prettyphoto/images/facebook/default_thumbnail.gif) 0 0 no-repeat;display:block;height:33px;width:50px}\r\n.pp_gallery .pp_arrow_previous,.pp_gallery .pp_arrow_next{margin-top:7px!important}\r\na.pp_next{background:url(../prettyphoto/images/light_rounded/btnNext.png) 10000px 10000px no-repeat;display:block;float:right;height:100%;text-indent:-10000px;width:49%}\r\na.pp_previous{background:url(../prettyphoto/images/light_rounded/btnNext.png) 10000px 10000px no-repeat;display:block;float:left;height:100%;text-indent:-10000px;width:49%}\r\na.pp_expand,a.pp_contract{cursor:pointer;display:none;height:20px;position:absolute;right:30px;text-indent:-10000px;top:10px;width:20px;z-index:20000}\r\na.pp_close{position:absolute;right:0;top:0;display:block;line-height:22px;text-indent:-10000px}\r\n.pp_loaderIcon{display:block;height:24px;left:50%;position:absolute;top:50%;width:24px;margin:-12px 0 0 -12px}\r\n#pp_full_res{line-height:1!important}\r\n#pp_full_res .pp_inline{text-align:left}\r\n#pp_full_res .pp_inline p{margin:0 0 15px}\r\ndiv.ppt{color:#fff;display:none;font-size:17px;z-index:9999;margin:0 0 5px 15px}\r\ndiv.pp_default .pp_content,div.light_rounded .pp_content{background-color:#fff}\r\ndiv.pp_default #pp_full_res .pp_inline,div.light_rounded .pp_content .ppt,div.light_rounded #pp_full_res .pp_inline,div.light_square .pp_content .ppt,div.light_square #pp_full_res .pp_inline,div.facebook .pp_content .ppt,div.facebook #pp_full_res .pp_inline{color:#000}\r\ndiv.pp_default .pp_gallery ul li a:hover,div.pp_default .pp_gallery ul li.selected a,.pp_gallery ul a:hover,.pp_gallery li.selected a{border-color:#fff}\r\ndiv.pp_default .pp_details,div.light_rounded .pp_details,div.dark_rounded .pp_details,div.dark_square .pp_details,div.light_square .pp_details,div.facebook .pp_details{position:relative}\r\ndiv.light_rounded .pp_top .pp_middle,div.light_rounded .pp_content_container .pp_left,div.light_rounded .pp_content_container .pp_right,div.light_rounded .pp_bottom .pp_middle,div.light_square .pp_left,div.light_square .pp_middle,div.light_square .pp_right,div.light_square .pp_content,div.facebook .pp_content{background:#fff}\r\ndiv.light_rounded .pp_description,div.light_square .pp_description{margin-right:85px}\r\ndiv.light_rounded .pp_gallery a.pp_arrow_previous,div.light_rounded .pp_gallery a.pp_arrow_next,div.dark_rounded .pp_gallery a.pp_arrow_previous,div.dark_rounded .pp_gallery a.pp_arrow_next,div.dark_square .pp_gallery a.pp_arrow_previous,div.dark_square .pp_gallery a.pp_arrow_next,div.light_square .pp_gallery a.pp_arrow_previous,div.light_square .pp_gallery a.pp_arrow_next{margin-top:12px!important}\r\ndiv.light_rounded .pp_arrow_previous.disabled,div.dark_rounded .pp_arrow_previous.disabled,div.dark_square .pp_arrow_previous.disabled,div.light_square .pp_arrow_previous.disabled{background-position:0 -87px;cursor:default}\r\ndiv.light_rounded .pp_arrow_next.disabled,div.dark_rounded .pp_arrow_next.disabled,div.dark_square .pp_arrow_next.disabled,div.light_square .pp_arrow_next.disabled{background-position:-22px -87px;cursor:default}\r\ndiv.light_rounded .pp_loaderIcon,div.light_square .pp_loaderIcon{background:url(../prettyphoto/images/light_rounded/loader.gif) center center no-repeat}\r\ndiv.dark_rounded .pp_top .pp_middle,div.dark_rounded .pp_content,div.dark_rounded .pp_bottom .pp_middle{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top left repeat}\r\ndiv.dark_rounded .currentTextHolder,div.dark_square .currentTextHolder{color:#c4c4c4}\r\ndiv.dark_rounded #pp_full_res .pp_inline,div.dark_square #pp_full_res .pp_inline{color:#fff}\r\n.pp_top,.pp_bottom{height:20px;position:relative}\r\n* html .pp_top,* html .pp_bottom{padding:0 20px}\r\n.pp_top .pp_left,.pp_bottom .pp_left{height:20px;left:0;position:absolute;width:20px}\r\n.pp_top .pp_middle,.pp_bottom .pp_middle{height:20px;left:20px;position:absolute;right:20px}\r\n* html .pp_top .pp_middle,* html .pp_bottom .pp_middle{left:0;position:static}\r\n.pp_top .pp_right,.pp_bottom .pp_right{height:20px;left:auto;position:absolute;right:0;top:0;width:20px}\r\n.pp_fade,.pp_gallery li.default a img{display:none}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/prettyphoto/jquery.prettyPhoto.js\"></script>\r\n\r\n<script type=\"text/javascript\" charset=\"utf-8\">\r\n$(document).ready(function(){\r\n	$(\"a[rel^=\'prettyPhoto\']\").prettyPhoto({\r\n			animation_speed: \'fast\',\r\n			slideshow: 5000,\r\n			autoplay_slideshow: false,\r\n			show_title: true,\r\n			allow_resize: true,\r\n			counter_separator_label: \'/\',\r\n			theme: \'pp_default\', /* light_rounded / dark_rounded / light_square / dark_square / facebook */\r\n			hideflash: false, /* Hides all the flash object on a page, set to TRUE if flash appears over prettyPhoto */\r\n			overlay_gallery: true,\r\n			keyboard_shortcuts: true,\r\n			deeplinking: false\r\n	});\r\n});\r\n</script>*}', '2025-05-02 18:03:59', '2025-05-02 18:03:59'),
('Gallery', 'Slimbox', '<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class=\"img\">\r\n	{if $image->isdir}\r\n		<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a href=\"{$image->file}\" title=\"{$image->titlename}\" rel=\"lightbox[gallery]\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block; \r\n	width: 50px; \r\n	height: 39px;\r\n	float: left; \r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* SLIMBOX 2.05 */\r\n\r\n#lbOverlay {\r\n	position: fixed;\r\n	z-index: 9999;\r\n	left: 0;\r\n	top: 0;\r\n	width: 100%;\r\n	height: 100%;\r\n	background-color: #000;\r\n	cursor: pointer;\r\n}\r\n\r\n#lbCenter, #lbBottomContainer {\r\n	position: absolute;\r\n	z-index: 9999;\r\n	overflow: hidden;\r\n	background-color: #fff;\r\n}\r\n\r\n.lbLoading {\r\n	background: #fff url(../slimbox/css/loading.gif) no-repeat center;\r\n}\r\n\r\n#lbImage {\r\n	position: absolute;\r\n	left: 0;\r\n	top: 0;\r\n	border: 10px solid #fff;\r\n	background-repeat: no-repeat;\r\n}\r\n\r\n#lbPrevLink, #lbNextLink {\r\n	display: block;\r\n	position: absolute;\r\n	top: 0;\r\n	width: 50%;\r\n	outline: none;\r\n}\r\n\r\n#lbPrevLink {\r\n	left: 0;\r\n}\r\n\r\n#lbPrevLink:hover {\r\n	background: transparent url(../slimbox/css/prevlabel.gif) no-repeat 0 15%;\r\n}\r\n\r\n#lbNextLink {\r\n	right: 0;\r\n}\r\n\r\n#lbNextLink:hover {\r\n	background: transparent url(../slimbox/css/nextlabel.gif) no-repeat 100% 15%;\r\n}\r\n\r\n#lbBottom {\r\n	font-family: Verdana, Arial, Geneva, Helvetica, sans-serif;\r\n	font-size: 10px;\r\n	color: #666;\r\n	line-height: 1.4em;\r\n	text-align: left;\r\n	border: 10px solid #fff;\r\n	border-top-style: none;\r\n}\r\n\r\n#lbCloseLink {\r\n	display: block;\r\n	float: right;\r\n	width: 66px;\r\n	height: 22px;\r\n	background: transparent url(../slimbox/css/closelabel.gif) no-repeat center;\r\n	margin: 5px 0;\r\n	outline: none;\r\n}\r\n\r\n#lbCaption, #lbNumber {\r\n	margin-right: 71px;\r\n}\r\n\r\n#lbCaption {\r\n	font-weight: bold;\r\n}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/slimbox/js/slimbox2.js\"></script>*}', '2025-05-02 18:03:59', '2025-05-02 18:03:59');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_tinymce_profiles`
--

CREATE TABLE `cms_module_tinymce_profiles` (
  `id_profile` int(11) NOT NULL,
  `id_template` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `resize` varchar(20) DEFAULT NULL,
  `autoresize` int(11) DEFAULT NULL,
  `plugins` text DEFAULT NULL,
  `enable_linker` int(11) DEFAULT NULL,
  `show_menubar` int(11) DEFAULT NULL,
  `menubar` varchar(255) DEFAULT NULL,
  `use_advanced_menu` int(11) DEFAULT NULL,
  `advanced_menu` text DEFAULT NULL,
  `show_toolbar` int(11) DEFAULT NULL,
  `toolbar1` text DEFAULT NULL,
  `toolbar2` text DEFAULT NULL,
  `contextmenu` text DEFAULT NULL,
  `show_statusbar` int(11) DEFAULT NULL,
  `id_design` int(11) DEFAULT NULL,
  `link_classes` text DEFAULT NULL,
  `image_classes` text DEFAULT NULL,
  `style_formats` text DEFAULT NULL,
  `use_custom_block_formats` int(11) DEFAULT NULL,
  `block_formats` varchar(255) DEFAULT NULL,
  `enable_user_templates` int(11) DEFAULT NULL,
  `enable_custom_dropdown` int(11) DEFAULT NULL,
  `custom_dropdown_title` varchar(100) DEFAULT NULL,
  `custom_dropdown` text DEFAULT NULL,
  `extra_js` text DEFAULT NULL,
  `external_modules` text DEFAULT NULL,
  `external_modules_show_menutext` int(11) DEFAULT NULL,
  `filemanager_use` int(11) DEFAULT NULL,
  `filemanager_delete_files` int(11) DEFAULT NULL,
  `filemanager_create_folders` int(11) DEFAULT NULL,
  `filemanager_delete_folders` int(11) DEFAULT NULL,
  `filemanager_upload_files` int(11) DEFAULT NULL,
  `filemanager_rename_files` int(11) DEFAULT NULL,
  `filemanager_rename_folders` int(11) DEFAULT NULL,
  `filemanager_duplicate_files` int(11) DEFAULT NULL,
  `filemanager_copy_cut_files` int(11) DEFAULT NULL,
  `filemanager_copy_cut_dirs` int(11) DEFAULT NULL,
  `filemanager_chmod_files` int(11) DEFAULT NULL,
  `filemanager_chmod_dirs` int(11) DEFAULT NULL,
  `filemanager_preview_text_files` int(11) DEFAULT NULL,
  `filemanager_create_text_files` int(11) DEFAULT NULL,
  `filemanager_edit_text_files` int(11) DEFAULT NULL,
  `filemanager_image_resizing` int(11) DEFAULT NULL,
  `filemanager_image_resizing_width` int(11) DEFAULT NULL,
  `filemanager_image_resizing_height` int(11) DEFAULT NULL,
  `filemanager_tui_active` int(11) DEFAULT NULL,
  `forced_root_block` int(11) DEFAULT NULL,
  `relative_urls` int(11) DEFAULT NULL,
  `image_advtab` int(11) DEFAULT NULL,
  `css_files` text DEFAULT NULL,
  `user_templates_files_dir` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_module_tinymce_profiles`
--

INSERT INTO `cms_module_tinymce_profiles` (`id_profile`, `id_template`, `name`, `priority`, `resize`, `autoresize`, `plugins`, `enable_linker`, `show_menubar`, `menubar`, `use_advanced_menu`, `advanced_menu`, `show_toolbar`, `toolbar1`, `toolbar2`, `contextmenu`, `show_statusbar`, `id_design`, `link_classes`, `image_classes`, `style_formats`, `use_custom_block_formats`, `block_formats`, `enable_user_templates`, `enable_custom_dropdown`, `custom_dropdown_title`, `custom_dropdown`, `extra_js`, `external_modules`, `external_modules_show_menutext`, `filemanager_use`, `filemanager_delete_files`, `filemanager_create_folders`, `filemanager_delete_folders`, `filemanager_upload_files`, `filemanager_rename_files`, `filemanager_rename_folders`, `filemanager_duplicate_files`, `filemanager_copy_cut_files`, `filemanager_copy_cut_dirs`, `filemanager_chmod_files`, `filemanager_chmod_dirs`, `filemanager_preview_text_files`, `filemanager_create_text_files`, `filemanager_edit_text_files`, `filemanager_image_resizing`, `filemanager_image_resizing_width`, `filemanager_image_resizing_height`, `filemanager_tui_active`, `forced_root_block`, `relative_urls`, `image_advtab`, `css_files`, `user_templates_files_dir`) VALUES
(1, -1, 'Minimal', 5, '0', 1, 'autolink anchor code fullscreen image link media paste table visualblocks lists', 1, 0, 'edit insert view format table tools', 0, '{\n        edit: {title: \'Edit\', items: \'undo redo | cut copy paste pastetext | selectall\'},\n        insert: {title: \'Insert\', items: \'link media | template hr\'},\n        view: {title: \'View\', items: \'visualaid\'},\n        format: {title: \'Format\', items: \'bold italic underline strikethrough superscript subscript | formats | removeformat\'},\n        table: {title: \'Table\', items: \'inserttable tableprops deletetable | cell row column\'},\n        tools: {title: \'Tools\', items: \'code\'}\n    }', 1, 'formatselect | bold italic underline | cmsms_linker link image', '', 'cmsms_linker link image imagetools | inserttable table', 0, 0, '', '', '', 0, 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3;Header 4=h4;Header 5=h5;Header 6=h6', 0, 0, 'Extensions', 'Root url|{root_url}\nSite name|{sitename}', 'paste_as_text: true,\nimage_caption: true', '0', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, '', ''),
(2, -1, 'Advanced', 5, '1', 1, 'autolink anchor code fullscreen image link media paste table visualblocks lists', 1, 1, 'edit insert view format table tools', 0, '{\n        edit: {title: \'Edit\', items: \'undo redo | cut copy paste pastetext | selectall\'},\n        insert: {title: \'Insert\', items: \'link media | template hr\'},\n        view: {title: \'View\', items: \'visualaid\'},\n        format: {title: \'Format\', items: \'bold italic underline strikethrough superscript subscript | formats | removeformat\'},\n        table: {title: \'Table\', items: \'inserttable tableprops deletetable | cell row column\'},\n        tools: {title: \'Tools\', items: \'code\'}\n    }', 1, 'undo redo | cut copy paste | formatselect | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist | cmsms_linker link unlink responsivefilemanager image template | fullscreen code', '', 'cmsms_linker link image imagetools | inserttable table', 0, 0, '', '', '', 0, 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3;Header 4=h4;Header 5=h5;Header 6=h6', 0, 0, 'Extensions', 'Root url|{root_url}\nSite name|{sitename}', 'paste_as_text: true,\nimage_caption: true', '0', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_module_tinymce_profile_group`
--

CREATE TABLE `cms_module_tinymce_profile_group` (
  `id_profile` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_mod_cmsjobmgr`
--

CREATE TABLE `cms_mod_cmsjobmgr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `errors` int(11) NOT NULL DEFAULT 0,
  `start` int(11) NOT NULL,
  `recurs` varchar(255) DEFAULT NULL,
  `until` int(11) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_mod_filepicker_profiles`
--

CREATE TABLE `cms_mod_filepicker_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text DEFAULT NULL,
  `create_date` int(11) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_permissions`
--

CREATE TABLE `cms_permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_text` varchar(255) DEFAULT NULL,
  `permission_source` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_permissions`
--

INSERT INTO `cms_permissions` (`permission_id`, `permission_name`, `permission_text`, `permission_source`, `create_date`, `modified_date`) VALUES
(1, 'Add Pages', 'Add Pages', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(2, 'Manage Groups', 'Manage Groups', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(3, 'Add Templates', 'Add Templates', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(4, 'Manage Users', 'Manage Users', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(5, 'Modify Any Page', 'Modify Any Page', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(6, 'Modify Permissions', 'Modify Permissions', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(7, 'Modify Templates', 'Modify Templates', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(8, 'Remove Pages', 'Remove Pages', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(9, 'Modify Modules', 'Modify Modules', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(10, 'Modify Files', 'Modify Files', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(11, 'Modify Site Preferences', 'Modify Site Preferences', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(12, 'Manage Stylesheets', 'Manage Stylesheets', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(13, 'Manage Designs', 'Manage Designs', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(14, 'Modify User-defined Tags', 'Modify User-defined Tags', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(15, 'Clear Admin Log', 'Clear Admin Log', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(16, 'Modify Events', 'Modify Events', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(17, 'View Tag Help', 'View Tag Help', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(18, 'Manage All Content', 'Manage All Content', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(19, 'Reorder Content', 'Reorder Content', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(20, 'Manage My Settings', 'Manage My Settings', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(21, 'Manage My Account', 'Manage My Account', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(22, 'Manage My Bookmarks', 'Manage My Bookmarks', 'Core', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(23, 'Use Admin Search', 'Use Admin Search', 'AdminSearch', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(24, 'Manage Jobs', 'Manage Jobs', 'CmsJobManager', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(25, 'Use FileManager Advanced', 'Zaawansowane używanie modułu Menadżera Plik&oacute;w', 'FileManager', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(26, 'Modify News', 'Modify News', 'News', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(27, 'Approve News', 'Approve News For Frontend Display', 'News', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(28, 'Delete News', 'Delete News Articles', 'News', '2025-05-02 17:48:42', '2025-05-02 17:48:42'),
(29, 'Manage TinyMCE profiles', 'Manage TinyMCE profiles', 'TinyMCE', '2025-05-02 18:00:19', '2025-05-02 18:00:19'),
(30, 'AceSyntax User Preference', 'AceSyntax User Preference', 'AceSyntax', '2025-05-02 18:03:50', '2025-05-02 18:03:50'),
(31, 'Use Gallery', 'Use Gallery', 'Gallery', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
(32, 'Gallery - Add subgalleries', 'Gallery - Add subgalleries', 'Gallery', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
(33, 'Gallery - Edit all galleries', 'Gallery - Edit all galleries', 'Gallery', '2025-05-02 18:03:58', '2025-05-02 18:03:58'),
(34, 'Gallery - Delete subgalleries', 'Gallery - Delete subgalleries', 'Gallery', '2025-05-02 18:03:58', '2025-05-02 18:03:58');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_permissions_seq`
--

CREATE TABLE `cms_permissions_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_permissions_seq`
--

INSERT INTO `cms_permissions_seq` (`id`) VALUES
(34);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_routes`
--

CREATE TABLE `cms_routes` (
  `term` varchar(255) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `key2` varchar(50) DEFAULT NULL,
  `key3` varchar(50) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_routes`
--

INSERT INTO `cms_routes` (`term`, `key1`, `key2`, `key3`, `data`, `created`) VALUES
('/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/', 'News', NULL, NULL, 'O:8:\"CmsRoute\":2:{s:15:\"\0CmsRoute\0_data\";a:4:{s:4:\"term\";s:97:\"/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)\\/d,(?P<detailtemplate>.*?)$/\";s:8:\"absolute\";b:0;s:4:\"key1\";s:4:\"News\";s:4:\"key2\";N;}s:18:\"\0CmsRoute\0_results\";N;}', '2025-05-02 17:48:42'),
('/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/', 'News', NULL, NULL, 'O:8:\"CmsRoute\":2:{s:15:\"\0CmsRoute\0_data\";a:4:{s:4:\"term\";s:70:\"/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)\\/(?P<junk>.*?)$/\";s:8:\"absolute\";b:0;s:4:\"key1\";s:4:\"News\";s:4:\"key2\";N;}s:18:\"\0CmsRoute\0_results\";N;}', '2025-05-02 17:48:42'),
('/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:\"CmsRoute\":2:{s:15:\"\0CmsRoute\0_data\";a:4:{s:4:\"term\";s:55:\"/[Nn]ews\\/(?P<articleid>[0-9]+)\\/(?P<returnid>[0-9]+)$/\";s:8:\"absolute\";b:0;s:4:\"key1\";s:4:\"News\";s:4:\"key2\";N;}s:18:\"\0CmsRoute\0_results\";N;}', '2025-05-02 17:48:42'),
('/[Nn]ews\\/(?P<articleid>[0-9]+)$/', 'News', NULL, NULL, 'O:8:\"CmsRoute\":2:{s:15:\"\0CmsRoute\0_data\";a:5:{s:4:\"term\";s:33:\"/[Nn]ews\\/(?P<articleid>[0-9]+)$/\";s:8:\"absolute\";b:0;s:4:\"key1\";s:4:\"News\";s:4:\"key2\";N;s:8:\"defaults\";a:1:{s:8:\"returnid\";i:-1;}}s:18:\"\0CmsRoute\0_results\";N;}', '2025-05-02 17:48:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_siteprefs`
--

CREATE TABLE `cms_siteprefs` (
  `sitepref_name` varchar(255) NOT NULL,
  `sitepref_value` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_siteprefs`
--

INSERT INTO `cms_siteprefs` (`sitepref_name`, `sitepref_value`, `create_date`, `modified_date`) VALUES
('sitemask', 'dd345760ef6219bf', NULL, NULL),
('sitedownmessage', '<h2 style=\"text-align: center;\">&nbsp;</h2>\r\n<h2 style=\"text-align: center;\">Strona jest obecnie wyłączona z powodu konserwacji</h2>\r\n<p style=\"text-align: center;\">:(</p>', NULL, NULL),
('metadata', '<meta name=\"Generator\" content=\"CMS Made Simple - Copyright (C) 2004-2025. All rights reserved.\" />\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n', NULL, NULL),
('global_umask', '022', NULL, NULL),
('auto_clear_cache_age', '60', NULL, NULL),
('adminlog_lifetime', '2678400', NULL, NULL),
('allow_browser_cache', '1', NULL, NULL),
('browser_cache_expiry', '60', NULL, NULL),
('CMSMS\\LoginOperations', '68c33063bcfb262b1f07ebc1cc0dca20c6c3b160', NULL, NULL),
('sitename', 'Strona CMS', NULL, NULL),
('CMSContentManager_mapi_pref_locktimeout', '60', NULL, NULL),
('CMSContentManager_mapi_pref_lockrefresh', '120', NULL, NULL),
('DesignManager_mapi_pref_lock_timeout', '60', NULL, NULL),
('DesignManager_mapi_pref_lock_refresh', '120', NULL, NULL),
('FileManager_mapi_pref_advancedmode', '0', NULL, NULL),
('FileManager_mapi_pref_iconsize', '32px', NULL, NULL),
('FileManager_mapi_pref_showhiddenfiles', '0', NULL, NULL),
('FileManager_mapi_pref_showthumbnails', '1', NULL, NULL),
('FileManager_mapi_pref_create_thumbnails', '1', NULL, NULL),
('FileManager_mapi_pref_permissionstyle', 'xxx', NULL, NULL),
('MicroTiny_mapi_pref_profile___frontend__', 'a:7:{s:4:\"name\";s:12:\"__frontend__\";s:5:\"label\";s:16:\"Frontend Editors\";s:7:\"menubar\";b:0;s:11:\"allowimages\";b:0;s:13:\"showstatusbar\";b:0;s:11:\"allowresize\";b:0;s:6:\"system\";b:1;}', NULL, NULL),
('MicroTiny_mapi_pref_profile___admin__', 'a:7:{s:4:\"name\";s:9:\"__admin__\";s:5:\"label\";s:13:\"Admin Editors\";s:7:\"menubar\";b:1;s:11:\"allowimages\";b:1;s:13:\"showstatusbar\";b:1;s:11:\"allowresize\";b:1;s:6:\"system\";b:1;}', NULL, NULL),
('ModuleManager_mapi_pref_module_repository', 'https://www.cmsmadesimple.org/ModuleRepository/request/v2/', NULL, NULL),
('News_mapi_pref_email_subject', 'Nowy news został dodany', NULL, NULL),
('News_mapi_pref_allowed_upload_types', 'gif,png,jpeg,jpg', NULL, NULL),
('News_mapi_pref_auto_create_thumbnails', 'gif,png,jpeg,jpg', NULL, NULL),
('Search_mapi_pref_stopwords', 'i, me, my, myself, we, our, ours, ourselves, you, your, yours, yourself, yourselves, he, him, his, himself, she, her, hers, herself, it, its, itself, they, them, their, theirs, themselves, what, which, who, whom, this, that, these, those, am, is, are, was, were, be, been, being, have, has, had, having, do, does, did, doing, a, an, the, and, but, if, or, because, as, until, while, of, at, by, for, with, about, against, between, into, through, during, before, after, above, below, to, from, up, down, in, out, on, off, over, under, again, further, then, once, here, there, when, where, why, how, all, any, both, each, few, more, most, other, some, such, no, nor, not, only, own, same, so, than, too, very', NULL, NULL),
('Search_mapi_pref_usestemming', 'false', NULL, NULL),
('Search_mapi_pref_searchtext', 'Enter Search...', NULL, NULL),
('CmsJobManager_mapi_pref_tasks_lastcheck', '1746205445', NULL, NULL),
('ClearCache_lastexecute', '1746201130', NULL, NULL),
('CmsJobManager_mapi_pref_last_async_trigger', '1746205446', NULL, NULL),
('CmsJobManager_mapi_pref_last_badjob_run', '1746204553', NULL, NULL),
('frontendlang', 'pl_PL', NULL, NULL),
('frontendwysiwyg', '&#45;1', NULL, NULL),
('logintheme', 'OneEleven', NULL, NULL),
('backendwysiwyg', '', NULL, NULL),
('defaultdateformat', 'Y&#45;m&#45;d', NULL, NULL),
('thumbnail_width', '96', NULL, NULL),
('thumbnail_height', '96', NULL, NULL),
('searchmodule', 'Search', NULL, NULL),
('TinyMCE_mapi_pref_id_default_profile', '2', NULL, NULL),
('CmsSecurityCheckTask', '1746201130', NULL, NULL),
('enablesitedownmessage', '0', NULL, NULL),
('sitedown_use_wysiwyg', '1', NULL, NULL),
('sitedownexcludes', '', NULL, NULL),
('sitedownexcludeadmins', '0', NULL, NULL),
('CmsVersionCheckTask', '1746201130', NULL, NULL),
('PruneAdminlog_lastexecute', '1746201131', NULL, NULL),
('ReduceAdminlog_lastexecute', '1746201131', NULL, NULL),
('TinyMCE_mapi_pref_filemanager_salt', '0fe816d746', NULL, NULL),
('AceSyntax_mapi_pref_frontend_auto_height', '0', NULL, NULL),
('AceSyntax_mapi_pref_frontend_fontsize', '13px', NULL, NULL),
('AceSyntax_mapi_pref_frontend_height', '400', NULL, NULL),
('AceSyntax_mapi_pref_frontend_height_units', 'px', NULL, NULL),
('AceSyntax_mapi_pref_frontend_syntaxarea_mode', 'html', NULL, NULL),
('AceSyntax_mapi_pref_frontend_syntaxarea_theme', 'github', NULL, NULL),
('AceSyntax_mapi_pref_frontend_width', '500', NULL, NULL),
('AceSyntax_mapi_pref_frontend_width_units', 'px', NULL, NULL),
('Gallery_mapi_pref_default_template_contents', '<div class=\"gallery\">\r\n{if !empty($module_message)}<h4>{$module_message|escape}</h4>{/if}\r\n{if !empty($gallerytitle)}<h3>{$gallerytitle}</h3>{/if}\r\n{if !empty($gallerycomment)}<div class=\"gallerycomment\">{$gallerycomment}</div>{/if}\r\n<p>{$imagecount}</p>\r\n<div class=\"pagenavigation\">\r\n{if $pages > 1}\r\n<div class=\"prevpage\">{$prevpage}</div>\r\n<div class=\"nextpage\">{$nextpage}</div>\r\n{/if}\r\n{if !$hideparentlink && !empty($parentlink)}<div class=\"parentlink\">{$parentlink}</div>{/if}\r\n{if $pages > 1}<div class=\"pagelinks\">{$pagelinks}</div>{/if}\r\n</div>\r\n\r\n{foreach from=$images item=image}\r\n	<div class=\"img\">\r\n	{if $image->isdir}\r\n		<a href=\"{$image->file}\" title=\"{$image->titlename}\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a><br />\r\n		{$image->titlename}\r\n	{else}\r\n   <a class=\"group\" href=\"{$image->file}\" title=\"{$image->comment}\" rel=\"prettyPhoto[{$galleryid}]\"><img src=\"{$image->thumb}\" alt=\"{$image->titlename}\" /></a>\r\n	{/if}\r\n	</div>\r\n{/foreach}\r\n<div class=\"galleryclear\">&nbsp;</div>\r\n</div>{*----------.gallery .img {\r\n	height: 120px;\r\n	/*width: 120px;   Adjust as you see fit */\r\n	float: left;\r\n	margin: 10px;\r\n	text-align: center;\r\n}\r\n\r\n.gallery .img a {\r\n	display: inline-block;\r\n	border: 2px solid #ddd;\r\n	padding: 1px;\r\n}\r\n\r\n.gallery .img a:hover {\r\n	border-color: #999;\r\n}\r\n\r\n.gallery img {\r\n	border: none;\r\n}\r\n\r\n.gallery .pagenavigation {\r\n	height: 50px;\r\n}\r\n\r\n.gallery .prevpage a, .gallery .prevpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/previous.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .nextpage a, .gallery .nextpage em {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	margin: 0 6px 0 0;\r\n	text-indent: -1000px;\r\n	background: url(../../images/next.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .parentlink a {\r\n	display: block;\r\n	width: 50px;\r\n	height: 39px;\r\n	float: left;\r\n	text-indent: -1000px;\r\n	background: url(../../images/uppage.png) transparent no-repeat 0 0;\r\n	overflow: hidden;\r\n}\r\n\r\n.gallery .pagenavigation a:hover {\r\n	background-position: 0 -40px;\r\n}\r\n\r\n.gallery .prevpage em, .gallery .nextpage em {\r\n	background-position: 0 -80px;\r\n}\r\n\r\n.gallery .pagelinks {\r\n	float: right;\r\n	border-right: 2px solid #666;\r\n}\r\n\r\n.gallery .pagelinks a, .gallery .pagelinks em {\r\n	margin-top: 6px;\r\n	padding: 0 6px;\r\n	border-left: 2px solid #666;\r\n	text-align: center;\r\n	font: bold 11px verdana; color: #666;\r\n}\r\n\r\n.gallery .pagelinks em {\r\n	color: #000;\r\n}\r\n\r\n.galleryclear {\r\n	clear: both;\r\n}\r\n\r\n\r\n/* PRETTYPHOTO  -  version 3.1.6 */\r\n\r\ndiv.pp_default .pp_top,div.pp_default .pp_top .pp_middle,div.pp_default .pp_top .pp_left,div.pp_default .pp_top .pp_right,div.pp_default .pp_bottom,div.pp_default .pp_bottom .pp_left,div.pp_default .pp_bottom .pp_middle,div.pp_default .pp_bottom .pp_right{height:13px}\r\ndiv.pp_default .pp_top .pp_left{background:url(../prettyphoto/images/default/sprite.png) -78px -93px no-repeat}\r\ndiv.pp_default .pp_top .pp_middle{background:url(../prettyphoto/images/default/sprite_x.png) top left repeat-x}\r\ndiv.pp_default .pp_top .pp_right{background:url(../prettyphoto/images/default/sprite.png) -112px -93px no-repeat}\r\ndiv.pp_default .pp_content .ppt{color:#f8f8f8}\r\ndiv.pp_default .pp_content_container .pp_left{background:url(../prettyphoto/images/default/sprite_y.png) -7px 0 repeat-y;padding-left:13px}\r\ndiv.pp_default .pp_content_container .pp_right{background:url(../prettyphoto/images/default/sprite_y.png) top right repeat-y;padding-right:13px}\r\ndiv.pp_default .pp_next:hover{background:url(../prettyphoto/images/default/sprite_next.png) center right no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_previous:hover{background:url(../prettyphoto/images/default/sprite_prev.png) center left no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_expand{background:url(../prettyphoto/images/default/sprite.png) 0 -29px no-repeat;cursor:pointer;width:28px;height:28px}\r\ndiv.pp_default .pp_expand:hover{background:url(../prettyphoto/images/default/sprite.png) 0 -56px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_contract{background:url(../prettyphoto/images/default/sprite.png) 0 -84px no-repeat;cursor:pointer;width:28px;height:28px}\r\ndiv.pp_default .pp_contract:hover{background:url(../prettyphoto/images/default/sprite.png) 0 -113px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_close{width:30px;height:30px;background:url(../prettyphoto/images/default/sprite.png) 2px 1px no-repeat;cursor:pointer}\r\ndiv.pp_default .pp_gallery ul li a{background:url(../prettyphoto/images/default/default_thumb.png) center center #f8f8f8;border:1px solid #aaa}\r\ndiv.pp_default .pp_social{margin-top:7px}\r\ndiv.pp_default .pp_gallery a.pp_arrow_previous,div.pp_default .pp_gallery a.pp_arrow_next{position:static;left:auto}\r\ndiv.pp_default .pp_nav .pp_play,div.pp_default .pp_nav .pp_pause{background:url(../prettyphoto/images/default/sprite.png) -51px 1px no-repeat;height:30px;width:30px}\r\ndiv.pp_default .pp_nav .pp_pause{background-position:-51px -29px}\r\ndiv.pp_default a.pp_arrow_previous,div.pp_default a.pp_arrow_next{background:url(../prettyphoto/images/default/sprite.png) -31px -3px no-repeat;height:20px;width:20px;margin:4px 0 0}\r\ndiv.pp_default a.pp_arrow_next{left:52px;background-position:-82px -3px}\r\ndiv.pp_default .pp_content_container .pp_details{margin-top:5px}\r\ndiv.pp_default .pp_nav{clear:none;height:30px;width:110px;position:relative}\r\ndiv.pp_default .pp_nav .currentTextHolder{font-family:Georgia;font-style:italic;color:#999;font-size:11px;left:75px;line-height:25px;position:absolute;top:2px;margin:0;padding:0 0 0 10px}\r\ndiv.pp_default .pp_close:hover,div.pp_default .pp_nav .pp_play:hover,div.pp_default .pp_nav .pp_pause:hover,div.pp_default .pp_arrow_next:hover,div.pp_default .pp_arrow_previous:hover{opacity:0.7}\r\ndiv.pp_default .pp_description{font-size:11px;font-weight:700;line-height:14px;margin:5px 50px 5px 0}\r\ndiv.pp_default .pp_bottom .pp_left{background:url(../prettyphoto/images/default/sprite.png) -78px -127px no-repeat}\r\ndiv.pp_default .pp_bottom .pp_middle{background:url(../prettyphoto/images/default/sprite_x.png) bottom left repeat-x}\r\ndiv.pp_default .pp_bottom .pp_right{background:url(../prettyphoto/images/default/sprite.png) -112px -127px no-repeat}\r\ndiv.pp_default .pp_loaderIcon{background:url(../prettyphoto/images/default/loader.gif) center center no-repeat}\r\ndiv.light_rounded .pp_top .pp_left{background:url(../prettyphoto/images/light_rounded/sprite.png) -88px -53px no-repeat}\r\ndiv.light_rounded .pp_top .pp_right{background:url(../prettyphoto/images/light_rounded/sprite.png) -110px -53px no-repeat}\r\ndiv.light_rounded .pp_next:hover{background:url(../prettyphoto/images/light_rounded/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_previous:hover{background:url(../prettyphoto/images/light_rounded/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_expand{background:url(../prettyphoto/images/light_rounded/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_expand:hover{background:url(../prettyphoto/images/light_rounded/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_contract{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_contract:hover{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/light_rounded/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.light_rounded .pp_nav .pp_play{background:url(../prettyphoto/images/light_rounded/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_rounded .pp_nav .pp_pause{background:url(../prettyphoto/images/light_rounded/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_rounded .pp_arrow_previous{background:url(../prettyphoto/images/light_rounded/sprite.png) 0 -71px no-repeat}\r\ndiv.light_rounded .pp_arrow_next{background:url(../prettyphoto/images/light_rounded/sprite.png) -22px -71px no-repeat}\r\ndiv.light_rounded .pp_bottom .pp_left{background:url(../prettyphoto/images/light_rounded/sprite.png) -88px -80px no-repeat}\r\ndiv.light_rounded .pp_bottom .pp_right{background:url(../prettyphoto/images/light_rounded/sprite.png) -110px -80px no-repeat}\r\ndiv.dark_rounded .pp_top .pp_left{background:url(../prettyphoto/images/dark_rounded/sprite.png) -88px -53px no-repeat}\r\ndiv.dark_rounded .pp_top .pp_right{background:url(../prettyphoto/images/dark_rounded/sprite.png) -110px -53px no-repeat}\r\ndiv.dark_rounded .pp_content_container .pp_left{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top left repeat-y}\r\ndiv.dark_rounded .pp_content_container .pp_right{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top right repeat-y}\r\ndiv.dark_rounded .pp_next:hover{background:url(../prettyphoto/images/dark_rounded/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_previous:hover{background:url(../prettyphoto/images/dark_rounded/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_expand{background:url(../prettyphoto/images/dark_rounded/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_expand:hover{background:url(../prettyphoto/images/dark_rounded/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_contract{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_contract:hover{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/dark_rounded/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.dark_rounded .pp_description{margin-right:85px;color:#fff}\r\ndiv.dark_rounded .pp_nav .pp_play{background:url(../prettyphoto/images/dark_rounded/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_rounded .pp_nav .pp_pause{background:url(../prettyphoto/images/dark_rounded/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_rounded .pp_arrow_previous{background:url(../prettyphoto/images/dark_rounded/sprite.png) 0 -71px no-repeat}\r\ndiv.dark_rounded .pp_arrow_next{background:url(../prettyphoto/images/dark_rounded/sprite.png) -22px -71px no-repeat}\r\ndiv.dark_rounded .pp_bottom .pp_left{background:url(../prettyphoto/images/dark_rounded/sprite.png) -88px -80px no-repeat}\r\ndiv.dark_rounded .pp_bottom .pp_right{background:url(../prettyphoto/images/dark_rounded/sprite.png) -110px -80px no-repeat}\r\ndiv.dark_rounded .pp_loaderIcon{background:url(../prettyphoto/images/dark_rounded/loader.gif) center center no-repeat}\r\ndiv.dark_square .pp_left,div.dark_square .pp_middle,div.dark_square .pp_right,div.dark_square .pp_content{background:#000}\r\ndiv.dark_square .pp_description{color:#fff;margin:0 85px 0 0}\r\ndiv.dark_square .pp_loaderIcon{background:url(../prettyphoto/images/dark_square/loader.gif) center center no-repeat}\r\ndiv.dark_square .pp_expand{background:url(../prettyphoto/images/dark_square/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_expand:hover{background:url(../prettyphoto/images/dark_square/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_contract{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_contract:hover{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/dark_square/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_nav{clear:none}\r\ndiv.dark_square .pp_nav .pp_play{background:url(../prettyphoto/images/dark_square/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_square .pp_nav .pp_pause{background:url(../prettyphoto/images/dark_square/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.dark_square .pp_arrow_previous{background:url(../prettyphoto/images/dark_square/sprite.png) 0 -71px no-repeat}\r\ndiv.dark_square .pp_arrow_next{background:url(../prettyphoto/images/dark_square/sprite.png) -22px -71px no-repeat}\r\ndiv.dark_square .pp_next:hover{background:url(../prettyphoto/images/dark_square/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.dark_square .pp_previous:hover{background:url(../prettyphoto/images/dark_square/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.light_square .pp_expand{background:url(../prettyphoto/images/light_square/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_expand:hover{background:url(../prettyphoto/images/light_square/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_contract{background:url(../prettyphoto/images/light_square/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_contract:hover{background:url(../prettyphoto/images/light_square/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_close{width:75px;height:22px;background:url(../prettyphoto/images/light_square/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.light_square .pp_nav .pp_play{background:url(../prettyphoto/images/light_square/sprite.png) -1px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_square .pp_nav .pp_pause{background:url(../prettyphoto/images/light_square/sprite.png) -24px -100px no-repeat;height:15px;width:14px}\r\ndiv.light_square .pp_arrow_previous{background:url(../prettyphoto/images/light_square/sprite.png) 0 -71px no-repeat}\r\ndiv.light_square .pp_arrow_next{background:url(../prettyphoto/images/light_square/sprite.png) -22px -71px no-repeat}\r\ndiv.light_square .pp_next:hover{background:url(../prettyphoto/images/light_square/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.light_square .pp_previous:hover{background:url(../prettyphoto/images/light_square/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.facebook .pp_top .pp_left{background:url(../prettyphoto/images/facebook/sprite.png) -88px -53px no-repeat}\r\ndiv.facebook .pp_top .pp_middle{background:url(../prettyphoto/images/facebook/contentPatternTop.png) top left repeat-x}\r\ndiv.facebook .pp_top .pp_right{background:url(../prettyphoto/images/facebook/sprite.png) -110px -53px no-repeat}\r\ndiv.facebook .pp_content_container .pp_left{background:url(../prettyphoto/images/facebook/contentPatternLeft.png) top left repeat-y}\r\ndiv.facebook .pp_content_container .pp_right{background:url(../prettyphoto/images/facebook/contentPatternRight.png) top right repeat-y}\r\ndiv.facebook .pp_expand{background:url(../prettyphoto/images/facebook/sprite.png) -31px -26px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_expand:hover{background:url(../prettyphoto/images/facebook/sprite.png) -31px -47px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_contract{background:url(../prettyphoto/images/facebook/sprite.png) 0 -26px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_contract:hover{background:url(../prettyphoto/images/facebook/sprite.png) 0 -47px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_close{width:22px;height:22px;background:url(../prettyphoto/images/facebook/sprite.png) -1px -1px no-repeat;cursor:pointer}\r\ndiv.facebook .pp_description{margin:0 37px 0 0}\r\ndiv.facebook .pp_loaderIcon{background:url(../prettyphoto/images/facebook/loader.gif) center center no-repeat}\r\ndiv.facebook .pp_arrow_previous{background:url(../prettyphoto/images/facebook/sprite.png) 0 -71px no-repeat;height:22px;margin-top:0;width:22px}\r\ndiv.facebook .pp_arrow_previous.disabled{background-position:0 -96px;cursor:default}\r\ndiv.facebook .pp_arrow_next{background:url(../prettyphoto/images/facebook/sprite.png) -32px -71px no-repeat;height:22px;margin-top:0;width:22px}\r\ndiv.facebook .pp_arrow_next.disabled{background-position:-32px -96px;cursor:default}\r\ndiv.facebook .pp_nav{margin-top:0}\r\ndiv.facebook .pp_nav p{font-size:15px;padding:0 3px 0 4px}\r\ndiv.facebook .pp_nav .pp_play{background:url(../prettyphoto/images/facebook/sprite.png) -1px -123px no-repeat;height:22px;width:22px}\r\ndiv.facebook .pp_nav .pp_pause{background:url(../prettyphoto/images/facebook/sprite.png) -32px -123px no-repeat;height:22px;width:22px}\r\ndiv.facebook .pp_next:hover{background:url(../prettyphoto/images/facebook/btnNext.png) center right no-repeat;cursor:pointer}\r\ndiv.facebook .pp_previous:hover{background:url(../prettyphoto/images/facebook/btnPrevious.png) center left no-repeat;cursor:pointer}\r\ndiv.facebook .pp_bottom .pp_left{background:url(../prettyphoto/images/facebook/sprite.png) -88px -80px no-repeat}\r\ndiv.facebook .pp_bottom .pp_middle{background:url(../prettyphoto/images/facebook/contentPatternBottom.png) top left repeat-x}\r\ndiv.facebook .pp_bottom .pp_right{background:url(../prettyphoto/images/facebook/sprite.png) -110px -80px no-repeat}\r\ndiv.pp_pic_holder a:focus{outline:none}\r\ndiv.pp_overlay{background:#000;display:none;left:0;position:absolute;top:0;width:100%;z-index:9500}\r\ndiv.pp_pic_holder{display:none;position:absolute;width:100px;z-index:10000}\r\n.pp_content{height:40px;min-width:40px}\r\n* html .pp_content{width:40px}\r\n.pp_content_container{position:relative;text-align:left;width:100%}\r\n.pp_content_container .pp_left{padding-left:20px}\r\n.pp_content_container .pp_right{padding-right:20px}\r\n.pp_content_container .pp_details{float:left;margin:10px 0 2px}\r\n.pp_description{display:none;margin:0}\r\n.pp_social{float:left;margin:0}\r\n.pp_social .facebook{float:left;margin-left:5px;width:55px;overflow:hidden}\r\n.pp_social .twitter{float:left}\r\n.pp_nav{clear:right;float:left;margin:3px 10px 0 0}\r\n.pp_nav p{float:left;white-space:nowrap;margin:2px 4px}\r\n.pp_nav .pp_play,.pp_nav .pp_pause{float:left;margin-right:4px;text-indent:-10000px}\r\na.pp_arrow_previous,a.pp_arrow_next{display:block;float:left;height:15px;margin-top:3px;overflow:hidden;text-indent:-10000px;width:14px}\r\n.pp_hoverContainer{position:absolute;top:0;width:100%;z-index:2000}\r\n.pp_gallery{display:none;left:50%;margin-top:-50px;position:absolute;z-index:10000}\r\n.pp_gallery div{float:left;overflow:hidden;position:relative}\r\n.pp_gallery ul{float:left;height:35px;position:relative;white-space:nowrap;margin:0 0 0 5px;padding:0}\r\n.pp_gallery ul a{border:1px rgba(0,0,0,0.5) solid;display:block;float:left;height:33px;overflow:hidden}\r\n.pp_gallery ul a img{border:0}\r\n.pp_gallery li{display:block;float:left;margin:0 5px 0 0;padding:0}\r\n.pp_gallery li.default a{background:url(../prettyphoto/images/facebook/default_thumbnail.gif) 0 0 no-repeat;display:block;height:33px;width:50px}\r\n.pp_gallery .pp_arrow_previous,.pp_gallery .pp_arrow_next{margin-top:7px!important}\r\na.pp_next{background:url(../prettyphoto/images/light_rounded/btnNext.png) 10000px 10000px no-repeat;display:block;float:right;height:100%;text-indent:-10000px;width:49%}\r\na.pp_previous{background:url(../prettyphoto/images/light_rounded/btnNext.png) 10000px 10000px no-repeat;display:block;float:left;height:100%;text-indent:-10000px;width:49%}\r\na.pp_expand,a.pp_contract{cursor:pointer;display:none;height:20px;position:absolute;right:30px;text-indent:-10000px;top:10px;width:20px;z-index:20000}\r\na.pp_close{position:absolute;right:0;top:0;display:block;line-height:22px;text-indent:-10000px}\r\n.pp_loaderIcon{display:block;height:24px;left:50%;position:absolute;top:50%;width:24px;margin:-12px 0 0 -12px}\r\n#pp_full_res{line-height:1!important}\r\n#pp_full_res .pp_inline{text-align:left}\r\n#pp_full_res .pp_inline p{margin:0 0 15px}\r\ndiv.ppt{color:#fff;display:none;font-size:17px;z-index:9999;margin:0 0 5px 15px}\r\ndiv.pp_default .pp_content,div.light_rounded .pp_content{background-color:#fff}\r\ndiv.pp_default #pp_full_res .pp_inline,div.light_rounded .pp_content .ppt,div.light_rounded #pp_full_res .pp_inline,div.light_square .pp_content .ppt,div.light_square #pp_full_res .pp_inline,div.facebook .pp_content .ppt,div.facebook #pp_full_res .pp_inline{color:#000}\r\ndiv.pp_default .pp_gallery ul li a:hover,div.pp_default .pp_gallery ul li.selected a,.pp_gallery ul a:hover,.pp_gallery li.selected a{border-color:#fff}\r\ndiv.pp_default .pp_details,div.light_rounded .pp_details,div.dark_rounded .pp_details,div.dark_square .pp_details,div.light_square .pp_details,div.facebook .pp_details{position:relative}\r\ndiv.light_rounded .pp_top .pp_middle,div.light_rounded .pp_content_container .pp_left,div.light_rounded .pp_content_container .pp_right,div.light_rounded .pp_bottom .pp_middle,div.light_square .pp_left,div.light_square .pp_middle,div.light_square .pp_right,div.light_square .pp_content,div.facebook .pp_content{background:#fff}\r\ndiv.light_rounded .pp_description,div.light_square .pp_description{margin-right:85px}\r\ndiv.light_rounded .pp_gallery a.pp_arrow_previous,div.light_rounded .pp_gallery a.pp_arrow_next,div.dark_rounded .pp_gallery a.pp_arrow_previous,div.dark_rounded .pp_gallery a.pp_arrow_next,div.dark_square .pp_gallery a.pp_arrow_previous,div.dark_square .pp_gallery a.pp_arrow_next,div.light_square .pp_gallery a.pp_arrow_previous,div.light_square .pp_gallery a.pp_arrow_next{margin-top:12px!important}\r\ndiv.light_rounded .pp_arrow_previous.disabled,div.dark_rounded .pp_arrow_previous.disabled,div.dark_square .pp_arrow_previous.disabled,div.light_square .pp_arrow_previous.disabled{background-position:0 -87px;cursor:default}\r\ndiv.light_rounded .pp_arrow_next.disabled,div.dark_rounded .pp_arrow_next.disabled,div.dark_square .pp_arrow_next.disabled,div.light_square .pp_arrow_next.disabled{background-position:-22px -87px;cursor:default}\r\ndiv.light_rounded .pp_loaderIcon,div.light_square .pp_loaderIcon{background:url(../prettyphoto/images/light_rounded/loader.gif) center center no-repeat}\r\ndiv.dark_rounded .pp_top .pp_middle,div.dark_rounded .pp_content,div.dark_rounded .pp_bottom .pp_middle{background:url(../prettyphoto/images/dark_rounded/contentPattern.png) top left repeat}\r\ndiv.dark_rounded .currentTextHolder,div.dark_square .currentTextHolder{color:#c4c4c4}\r\ndiv.dark_rounded #pp_full_res .pp_inline,div.dark_square #pp_full_res .pp_inline{color:#fff}\r\n.pp_top,.pp_bottom{height:20px;position:relative}\r\n* html .pp_top,* html .pp_bottom{padding:0 20px}\r\n.pp_top .pp_left,.pp_bottom .pp_left{height:20px;left:0;position:absolute;width:20px}\r\n.pp_top .pp_middle,.pp_bottom .pp_middle{height:20px;left:20px;position:absolute;right:20px}\r\n* html .pp_top .pp_middle,* html .pp_bottom .pp_middle{left:0;position:static}\r\n.pp_top .pp_right,.pp_bottom .pp_right{height:20px;left:auto;position:absolute;right:0;top:0;width:20px}\r\n.pp_fade,.pp_gallery li.default a img{display:none}{*----------<script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"{$gallery_module_root}/templates/prettyphoto/jquery.prettyPhoto.js\"></script>\r\n\r\n<script type=\"text/javascript\" charset=\"utf-8\">\r\n$(document).ready(function(){\r\n	$(\"a[rel^=\'prettyPhoto\']\").prettyPhoto({\r\n			animation_speed: \'fast\',\r\n			slideshow: 5000,\r\n			autoplay_slideshow: false,\r\n			show_title: true,\r\n			allow_resize: true,\r\n			counter_separator_label: \'/\',\r\n			theme: \'pp_default\', /* light_rounded / dark_rounded / light_square / dark_square / facebook */\r\n			hideflash: false, /* Hides all the flash object on a page, set to TRUE if flash appears over prettyPhoto */\r\n			overlay_gallery: true,\r\n			keyboard_shortcuts: true,\r\n			deeplinking: false\r\n	});\r\n});\r\n</script>*}', NULL, NULL),
('Gallery_mapi_pref_current_template', 'prettyPhoto', NULL, NULL),
('Gallery_mapi_pref_singleimg_template', 'prettyPhoto', NULL, NULL),
('Gallery_mapi_pref_singleimg_template_html', '<a class=\"group\" href=\"{$image->file}\" title=\"{$image->title}\" rel=\"prettyPhoto\"><img src=\"{$image->thumb}\" alt=\"{$image->title}\" /></a>', NULL, NULL),
('Gallery_mapi_pref_urlprefix', 'gallery', NULL, NULL),
('Gallery_mapi_pref_allowed_extensions', 'jpg,jpeg,gif,png', NULL, NULL),
('Gallery_mapi_pref_maximagewidth', '800', NULL, NULL),
('Gallery_mapi_pref_maximageheight', '640', NULL, NULL),
('Gallery_mapi_pref_imagejpgquality', '80', NULL, NULL),
('Gallery_mapi_pref_thumbjpgquality', '80', NULL, NULL),
('Gallery_mapi_pref_searchimages', '0', NULL, NULL),
('Gallery_mapi_pref_use_permissions', '0', NULL, NULL),
('Gallery_mapi_pref_newgalleries_active', '1', NULL, NULL),
('Gallery_mapi_pref_use_comment_wysiwyg', '0', NULL, NULL),
('Gallery_mapi_pref_editdirdates', '0', NULL, NULL),
('Gallery_mapi_pref_editfiledates', '0', NULL, NULL),
('Gallery_mapi_pref_fe_folderpath', 'http://localhost/cms/modules/Gallery/images/folder.png', NULL, NULL),
('Gallery_mapi_pref_be_folderpath', 'http://localhost/cms/modules/Gallery/images/foldersmall.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_userplugins`
--

CREATE TABLE `cms_userplugins` (
  `userplugin_id` int(11) NOT NULL,
  `userplugin_name` varchar(255) DEFAULT NULL,
  `code` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_userplugins`
--

INSERT INTO `cms_userplugins` (`userplugin_id`, `userplugin_name`, `code`, `description`, `create_date`, `modified_date`) VALUES
(1, 'user_agent', '//Code to show the users user agent information.\necho $_SERVER[\'HTTP_USER_AGENT\'];', 'Code to show the user\'s user agent information', '2025-05-02 17:48:35', '2025-05-02 17:48:35'),
(2, 'custom_copyright', '//set start to date your site was published\n$startCopyRight=\'2004\';\n\n// check if start year is this year\nif(date(\'Y\') == $startCopyRight){\n// it was, just print this year\n    echo $startCopyRight;\n}else{\n// it wasnt, print startyear and this year delimited with a dash\n    echo $startCopyRight.\'-\'. date(\'Y\');\n}', 'Code to output copyright information', '2025-05-02 17:48:35', '2025-05-02 17:48:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_userplugins_seq`
--

CREATE TABLE `cms_userplugins_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_userplugins_seq`
--

INSERT INTO `cms_userplugins_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_userprefs`
--

CREATE TABLE `cms_userprefs` (
  `user_id` int(11) NOT NULL,
  `preference` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_userprefs`
--

INSERT INTO `cms_userprefs` (`user_id`, `preference`, `value`, `type`) VALUES
(1, 'wysiwyg', 'MicroTiny', NULL),
(1, 'opened_pages', '1', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_users`
--

CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `admin_access` tinyint(4) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`user_id`, `username`, `password`, `admin_access`, `first_name`, `last_name`, `email`, `active`, `create_date`, `modified_date`) VALUES
(1, 'admin', 'a857bc2c804d982ec237d2ebaa7adf47', 1, '', '', 'oskar.szota123@interia.pl', 1, '2025-05-02 17:48:35', '2025-05-02 17:48:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_users_seq`
--

CREATE TABLE `cms_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_users_seq`
--

INSERT INTO `cms_users_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_user_groups`
--

CREATE TABLE `cms_user_groups` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_user_groups`
--

INSERT INTO `cms_user_groups` (`group_id`, `user_id`, `create_date`, `modified_date`) VALUES
(1, 1, '2025-05-02 17:48:35', '2025-05-02 17:48:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_version`
--

CREATE TABLE `cms_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms_version`
--

INSERT INTO `cms_version` (`version`) VALUES
(202);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cms_additional_users`
--
ALTER TABLE `cms_additional_users`
  ADD PRIMARY KEY (`additional_users_id`);

--
-- Indeksy dla tabeli `cms_adminlog`
--
ALTER TABLE `cms_adminlog`
  ADD KEY `cms_index_adminlog1` (`timestamp`);

--
-- Indeksy dla tabeli `cms_admin_bookmarks`
--
ALTER TABLE `cms_admin_bookmarks`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `cms_index_admin_bookmarks_by_user_id` (`user_id`);

--
-- Indeksy dla tabeli `cms_content`
--
ALTER TABLE `cms_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `cms_idx_content_by_alias_active` (`content_alias`,`active`),
  ADD KEY `cms_idx_content_default_content` (`default_content`),
  ADD KEY `cms_idx_content_by_parent_id` (`parent_id`),
  ADD KEY `cms_idx_content_by_hier` (`hierarchy`),
  ADD KEY `cms_index_content_by_idhier` (`content_id`,`hierarchy`),
  ADD KEY `cms_idx_content_by_modified` (`modified_date`);

--
-- Indeksy dla tabeli `cms_content_props`
--
ALTER TABLE `cms_content_props`
  ADD KEY `cms_idx_content_props_by_content` (`content_id`);

--
-- Indeksy dla tabeli `cms_events`
--
ALTER TABLE `cms_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `cms_originator` (`originator`),
  ADD KEY `cms_event_name` (`event_name`),
  ADD KEY `cms_event_id` (`event_id`);

--
-- Indeksy dla tabeli `cms_event_handlers`
--
ALTER TABLE `cms_event_handlers`
  ADD PRIMARY KEY (`handler_id`);

--
-- Indeksy dla tabeli `cms_groups`
--
ALTER TABLE `cms_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indeksy dla tabeli `cms_group_perms`
--
ALTER TABLE `cms_group_perms`
  ADD PRIMARY KEY (`group_perm_id`),
  ADD KEY `cms_idx_grp_perms_by_grp_id_perm_id` (`group_id`,`permission_id`);

--
-- Indeksy dla tabeli `cms_layout_designs`
--
ALTER TABLE `cms_layout_designs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_idx_layout_dsn_1` (`name`);

--
-- Indeksy dla tabeli `cms_layout_design_cssassoc`
--
ALTER TABLE `cms_layout_design_cssassoc`
  ADD PRIMARY KEY (`design_id`,`css_id`);

--
-- Indeksy dla tabeli `cms_layout_design_tplassoc`
--
ALTER TABLE `cms_layout_design_tplassoc`
  ADD PRIMARY KEY (`design_id`,`tpl_id`),
  ADD KEY `cms_index_dsnassoc1` (`tpl_id`);

--
-- Indeksy dla tabeli `cms_layout_stylesheets`
--
ALTER TABLE `cms_layout_stylesheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_idx_layout_css_1` (`name`);

--
-- Indeksy dla tabeli `cms_layout_templates`
--
ALTER TABLE `cms_layout_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_idx_layout_tpl_1` (`name`),
  ADD KEY `cms_idx_layout_tpl_2` (`type_id`,`type_dflt`);

--
-- Indeksy dla tabeli `cms_layout_tpl_addusers`
--
ALTER TABLE `cms_layout_tpl_addusers`
  ADD PRIMARY KEY (`tpl_id`,`user_id`);

--
-- Indeksy dla tabeli `cms_layout_tpl_categories`
--
ALTER TABLE `cms_layout_tpl_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_idx_layout_tpl_cat_1` (`name`);

--
-- Indeksy dla tabeli `cms_layout_tpl_type`
--
ALTER TABLE `cms_layout_tpl_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_idx_layout_tpl_type_1` (`originator`,`name`);

--
-- Indeksy dla tabeli `cms_locks`
--
ALTER TABLE `cms_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_index_locks1` (`type`,`oid`),
  ADD KEY `cms_index_locks2` (`expires`),
  ADD KEY `cms_index_locks3` (`uid`);

--
-- Indeksy dla tabeli `cms_modules`
--
ALTER TABLE `cms_modules`
  ADD PRIMARY KEY (`module_name`),
  ADD KEY `cms_idx_modules_by_name` (`module_name`);

--
-- Indeksy dla tabeli `cms_module_gallery`
--
ALTER TABLE `cms_module_gallery`
  ADD PRIMARY KEY (`fileid`);

--
-- Indeksy dla tabeli `cms_module_gallery_fielddefs`
--
ALTER TABLE `cms_module_gallery_fielddefs`
  ADD PRIMARY KEY (`fieldid`);

--
-- Indeksy dla tabeli `cms_module_gallery_fieldvals`
--
ALTER TABLE `cms_module_gallery_fieldvals`
  ADD PRIMARY KEY (`fileid`,`fieldid`);

--
-- Indeksy dla tabeli `cms_module_gallery_props`
--
ALTER TABLE `cms_module_gallery_props`
  ADD PRIMARY KEY (`fileid`);

--
-- Indeksy dla tabeli `cms_module_gallery_templateprops`
--
ALTER TABLE `cms_module_gallery_templateprops`
  ADD PRIMARY KEY (`templateid`);

--
-- Indeksy dla tabeli `cms_module_news`
--
ALTER TABLE `cms_module_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `cms_news_postdate` (`news_date`),
  ADD KEY `cms_news_daterange` (`start_time`,`end_time`),
  ADD KEY `cms_news_author` (`author_id`),
  ADD KEY `cms_news_hier` (`news_category_id`),
  ADD KEY `cms_news_url` (`news_url`),
  ADD KEY `cms_news_startenddate` (`start_time`,`end_time`);

--
-- Indeksy dla tabeli `cms_module_news_categories`
--
ALTER TABLE `cms_module_news_categories`
  ADD PRIMARY KEY (`news_category_id`);

--
-- Indeksy dla tabeli `cms_module_news_fielddefs`
--
ALTER TABLE `cms_module_news_fielddefs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cms_module_news_fieldvals`
--
ALTER TABLE `cms_module_news_fieldvals`
  ADD PRIMARY KEY (`news_id`,`fielddef_id`);

--
-- Indeksy dla tabeli `cms_module_search_index`
--
ALTER TABLE `cms_module_search_index`
  ADD KEY `cms_index_search_count` (`count`),
  ADD KEY `cms_index_search_index` (`word`);

--
-- Indeksy dla tabeli `cms_module_search_items`
--
ALTER TABLE `cms_module_search_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `extra_attr` (`extra_attr`),
  ADD KEY `cms_index_search_items` (`module_name`,`content_id`);

--
-- Indeksy dla tabeli `cms_module_search_words`
--
ALTER TABLE `cms_module_search_words`
  ADD PRIMARY KEY (`word`);

--
-- Indeksy dla tabeli `cms_module_smarty_plugins`
--
ALTER TABLE `cms_module_smarty_plugins`
  ADD PRIMARY KEY (`sig`),
  ADD KEY `cms_idx_smp_module` (`module`);

--
-- Indeksy dla tabeli `cms_module_templates`
--
ALTER TABLE `cms_module_templates`
  ADD KEY `cms_idx_module_templates_by_module_and_tpl_name` (`module_name`,`template_name`);

--
-- Indeksy dla tabeli `cms_module_tinymce_profiles`
--
ALTER TABLE `cms_module_tinymce_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indeksy dla tabeli `cms_module_tinymce_profile_group`
--
ALTER TABLE `cms_module_tinymce_profile_group`
  ADD PRIMARY KEY (`id_profile`,`id_group`);

--
-- Indeksy dla tabeli `cms_mod_cmsjobmgr`
--
ALTER TABLE `cms_mod_cmsjobmgr`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cms_mod_filepicker_profiles`
--
ALTER TABLE `cms_mod_filepicker_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_cmsfp_idx0` (`name`);

--
-- Indeksy dla tabeli `cms_permissions`
--
ALTER TABLE `cms_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeksy dla tabeli `cms_routes`
--
ALTER TABLE `cms_routes`
  ADD PRIMARY KEY (`term`,`key1`);

--
-- Indeksy dla tabeli `cms_siteprefs`
--
ALTER TABLE `cms_siteprefs`
  ADD PRIMARY KEY (`sitepref_name`);

--
-- Indeksy dla tabeli `cms_userplugins`
--
ALTER TABLE `cms_userplugins`
  ADD PRIMARY KEY (`userplugin_id`);

--
-- Indeksy dla tabeli `cms_userprefs`
--
ALTER TABLE `cms_userprefs`
  ADD PRIMARY KEY (`user_id`,`preference`),
  ADD KEY `cms_idx_userprefs_by_user_id` (`user_id`);

--
-- Indeksy dla tabeli `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `cms_user_groups`
--
ALTER TABLE `cms_user_groups`
  ADD PRIMARY KEY (`group_id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_layout_designs`
--
ALTER TABLE `cms_layout_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_layout_stylesheets`
--
ALTER TABLE `cms_layout_stylesheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_layout_templates`
--
ALTER TABLE `cms_layout_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_layout_tpl_categories`
--
ALTER TABLE `cms_layout_tpl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_layout_tpl_type`
--
ALTER TABLE `cms_layout_tpl_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_locks`
--
ALTER TABLE `cms_locks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_module_gallery`
--
ALTER TABLE `cms_module_gallery`
  MODIFY `fileid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_module_gallery_fielddefs`
--
ALTER TABLE `cms_module_gallery_fielddefs`
  MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_module_gallery_templateprops`
--
ALTER TABLE `cms_module_gallery_templateprops`
  MODIFY `templateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_module_news_fielddefs`
--
ALTER TABLE `cms_module_news_fielddefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_module_tinymce_profiles`
--
ALTER TABLE `cms_module_tinymce_profiles`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_mod_cmsjobmgr`
--
ALTER TABLE `cms_mod_cmsjobmgr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_mod_filepicker_profiles`
--
ALTER TABLE `cms_mod_filepicker_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
