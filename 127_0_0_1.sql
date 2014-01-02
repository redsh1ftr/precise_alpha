-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2014 at 09:08 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(5, 'test', 'client_list', 'Client_ID', '', '', '_', ''),
(3, 'test', 'client_list', 'Contact_First_Name', '', '', '_', ''),
(6, 'test', 'client_list', 'Billing_Notes', '', '', '_', ''),
(9, 'test', 'job_type', 'job_type1', '', '', '_', ''),
(10, 'test', 'job_type', 'job_code1', '', '', '_', ''),
(11, 'test', 'client_list_1', 'UNIQUE', '', '', '_', ''),
(12, 'test', 'client_list_1', 'Client_ID', '', '', '_', ''),
(13, 'test', 'client_list_1', 'Contact_First_Name', '', '', '_', ''),
(14, 'test', 'client_list_1', 'Contact_Last_Name', '', '', '_', ''),
(15, 'test', 'client_list_1', 'Contact_Phone_Number', '', '', '_', ''),
(16, 'test', 'client_list_1', 'Contact_Fax_Number', '', '', '_', ''),
(17, 'test', 'client_list_1', 'Contact_Email', '', '', '_', ''),
(18, 'test', 'client_list_1', 'Contact_Notes', '', '', '_', ''),
(19, 'test', 'client_list_1', 'Business_Name', '', '', '_', ''),
(20, 'test', 'client_list_1', 'Job_Type', '', '', '_', ''),
(21, 'test', 'client_list_1', 'Billing_Address_Street', '', '', '_', ''),
(22, 'test', 'client_list_1', 'Billing_Address_City', '', '', '_', ''),
(23, 'test', 'client_list_1', 'Billing_Address_State', '', '', '_', ''),
(24, 'test', 'client_list_1', 'Billing_Address_Zip', '', '', '_', ''),
(25, 'test', 'client_list_1', 'Net_Terms', '', '', '_', ''),
(26, 'test', 'client_list_1', 'Billing_Notes', '', '', '_', ''),
(27, 'test', 'client_list_1', 'Worksite_Address_Street', '', '', '_', ''),
(28, 'test', 'client_list_1', 'Worksite_Address_City', '', '', '_', ''),
(29, 'test', 'client_list_1', 'Worksite_Address_State', '', '', '_', ''),
(30, 'test', 'client_list_1', 'Worksite_Address_Zip', '', '', '_', ''),
(31, 'test', 'client_list_1', 'Worksite_Notes', '', '', '_', ''),
(32, 'test', 'client_list_1', 'UNIQUE_1', '', '', '_', ''),
(39, 'precise_dev', 'billing_index', 'business_name', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"precise_dev","table":"billing_index"},{"db":"precise_dev","table":"billing_contact_list"},{"db":"precise_dev","table":"purchase_order_list"},{"db":"precise_dev","table":"purchase_order_index"},{"db":"precise_dev","table":"migrations"},{"db":"precise_dev","table":"job_type_count"},{"db":"precise_dev","table":"clientlists"},{"db":"precise_beta","table":"client_list"},{"db":"precise_dev","table":"clientlist"},{"db":"precise_dev","table":"client_list"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test', 'client_list', '[]', '2013-12-22 07:25:43'),
('root', 'precise_dev', 'billing_index', '{"sorted_col":"`billing_index`.`billing_notes` ASC"}', '2013-12-29 19:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
--
-- Database: `precise_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_contact_list`
--

CREATE TABLE IF NOT EXISTS `billing_contact_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `billing_contact_list`
--

INSERT INTO `billing_contact_list` (`id`, `billing_company`, `first_name`, `last_name`, `phone_number`, `fax_number`, `email`, `billing_notes`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `created_at`, `updated_at`) VALUES
(1, 'Capital Billing', 'Calvin', 'Lasterson', '313-414-5152', '515-313-5112', 'emailaddress@dotcom.com', 'The Holy Grail is a dish, plate, stone, or cup that is part of an important theme of Arthurian literature. A grail, wondrous but not explicitly "holy," first appears in Perceval le Gallois, an unfinished romance by Chrétien de Troyes:[1] it is a processional salver used to serve at a feast. Chrétien''s story attracted many continuators, translators and interpreters in the later 12th and early 13th centuries, including Wolfram von Eschenbach, who makes the grail a great precious stone that fell from the sky. The Grail legend became interwoven with legends of the Holy Chalice.[2] The connection with Joseph of Arimathea and with vessels associated with the Last Supper and crucifixion of Jesus, dates from Robert de Boron''s Joseph d''Arimathie (late 12th century) in which Joseph receives the Grail from an apparition of Jesus and sends it with his followers to Great Britain. Building upon this theme, later writers recounted how Joseph used the Grail to catch Christ''s blood while interring him and how he founded a line of guardians to keep it safe in Britain. The legend may combine Christian lore with a Celtic myth of a cauldron endowed with special powers.', '4055 Billing Ave. ste 234', 'City of City', 'MI', '48124', '2013-12-29 05:00:00', '2013-12-29 05:00:00'),
(2, 'Infinity Billing', 'Dude', 'Itsinfinity', '321-525-7637', '324-525-7633', 'infinitybilling@aol.yahoo.com', 'Normalized tables are suitable for general-purpose querying. This means any queries against these tables, including future queries whose details cannot be anticipated, are supported. In contrast, tables that are not normalized lend themselves to some types of queries, but not others. For example, consider an online bookseller whose customers maintain wishlists of books they''d like to have. For the obvious, anticipated query—what books does this customer want?—it''s enough to store the customer''s wishlist in the table as, say, a homogeneous string of authors and titles. With this design, though, the database can answer only that one single query. It cannot by itself answer interesting but unanticipated queries: What is the most-wished-for book? Which customers are interested in WWII espionage? How does Lord Byron stack up against his contemporary poets? Answers to these questions must come from special adaptive tools completely separate from the database. One tool might be software written especially to handle such queries. This special adaptive software has just one single purpose: in effect to normalize the non-normalized field. Unforeseen queries can be answered trivially, and entirely within the database framework, with a normalized table.', '525 Infinity Loop ', 'Beyond', 'Michigan', '23566', '2013-12-31 05:00:00', '2013-12-31 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_index`
--

CREATE TABLE IF NOT EXISTS `billing_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `business_name` text COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` int(11) NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `billing_index`
--

INSERT INTO `billing_index` (`id`, `client_id`, `business_name`, `billing_id`, `billing_company`, `first_name`, `last_name`, `phone_number`, `fax_number`, `email`, `billing_notes`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `created_at`, `updated_at`) VALUES
(1, 4050, 'The Test Company for Testing', 1, 'Capital Billing', 'Calvin ', 'Lasterson', '313-414-5152', '515-313-5112', 'emailaddress@dotcom.com', 'The Holy Grail is a dish, plate, stone, or cup that is part of an important theme of Arthurian literature. A grail, wondrous but not explicitly "holy," first appears in Perceval le Gallois, an unfinished romance by Chrétien de Troyes:[1] it is a processional salver used to serve at a feast. Chrétien''s story attracted many continuators, translators and interpreters in the later 12th and early 13th centuries, including Wolfram von Eschenbach, who makes the grail a great precious stone that fell from the sky. The Grail legend became interwoven with legends of the Holy Chalice.[2] The connection with Joseph of Arimathea and with vessels associated with the Last Supper and crucifixion of Jesus, dates from Robert de Boron''s Joseph d''Arimathie (late 12th century) in which Joseph receives the Grail from an apparition of Jesus and sends it with his followers to Great Britain. Building upon this theme, later writers recounted how Joseph used the Grail to catch Christ''s blood while interring him and how he founded a line of guardians to keep it safe in Britain. The legend may combine Christian lore with a Celtic myth of a cauldron endowed with special powers.	', '4055 Billing Ave. ste 234', 'City of City', 'MI', '48124', '2013-12-29 05:00:00', '2013-12-29 05:00:00'),
(2, 4050, 'The Test Company for Testing', 2, 'Infinity Billing', 'Dude', 'Itsinfinity', '321-525-7637', '324-525-7633', 'infinitybilling@aol.yahoo.com', 'Normalized tables are suitable for general-purpose querying. This means any queries against these tables, including future queries whose details cannot be anticipated, are supported. In contrast, tables that are not normalized lend themselves to some types of queries, but not others.\r\nFor example, consider an online bookseller whose customers maintain wishlists of books they''d like to have. For the obvious, anticipated query—what books does this customer want?—it''s enough to store the customer''s wishlist in the table as, say, a homogeneous string of authors and titles.\r\nWith this design, though, the database can answer only that one single query. It cannot by itself answer interesting but unanticipated queries: What is the most-wished-for book? Which customers are interested in WWII espionage? How does Lord Byron stack up against his contemporary poets? Answers to these questions must come from special adaptive tools completely separate from the database. One tool might be software written especially to handle such queries. This special adaptive software has just one single purpose: in effect to normalize the non-normalized field.\r\nUnforeseen queries can be answered trivially, and entirely within the database framework, with a normalized table.', '525 Infinity Loop ', 'Beyond', 'Michigan', '23566', '2013-12-29 05:00:00', '2013-12-29 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clientlists`
--

CREATE TABLE IF NOT EXISTS `clientlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net_terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_job_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clientlists`
--

INSERT INTO `clientlists` (`id`, `client_id`, `business_name`, `business_type`, `net_terms`, `current_job_number`, `created_at`, `updated_at`) VALUES
(1, 4050, 'The Test Company for Testing', 'Interior Maintenance', '30 days', '001', '2013-12-29 05:00:00', '2013-12-29 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_type_count`
--

CREATE TABLE IF NOT EXISTS `job_type_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_type` text COLLATE utf8_unicode_ci NOT NULL,
  `job_type_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_12_28_035711_create_client_table_1', 1),
('2013_12_28_035732_create_job_type_counter_1', 1),
('2013_12_28_035832_create_billing_contact_list', 1),
('2013_12_28_035848_create_worksite_list', 1),
('2013_12_28_035900_create_work_order_list', 1),
('2013_12_28_035911_create_purchase_order_list', 1),
('2013_12_28_035925_create_worksite_index', 1),
('2013_12_28_035935_create_billing_index', 1),
('2013_12_28_035946_create_work_order_index', 1),
('2013_12_28_040000_create_purchase_order_index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_index`
--

CREATE TABLE IF NOT EXISTS `purchase_order_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `purchase_order_number` int(11) NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_list`
--

CREATE TABLE IF NOT EXISTS `purchase_order_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_index`
--

CREATE TABLE IF NOT EXISTS `work_order_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `work_order_id` int(11) NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_list`
--

CREATE TABLE IF NOT EXISTS `work_order_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_out` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_hours` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_po_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_index`
--

CREATE TABLE IF NOT EXISTS `worksite_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `worksite_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_list`
--

CREATE TABLE IF NOT EXISTS `worksite_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `worksite_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
--
-- Database: `precise_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_contact_list`
--

CREATE TABLE IF NOT EXISTS `billing_contact_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `billing_index`
--

CREATE TABLE IF NOT EXISTS `billing_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE IF NOT EXISTS `client_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net_terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_job_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_type_count`
--

CREATE TABLE IF NOT EXISTS `job_type_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_type` text COLLATE utf8_unicode_ci NOT NULL,
  `job_type_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_12_28_035711_create_client_table_1', 1),
('2013_12_28_035732_create_job_type_counter_1', 1),
('2013_12_28_035832_create_billing_contact_list', 1),
('2013_12_28_035848_create_worksite_list', 1),
('2013_12_28_035900_create_work_order_list', 1),
('2013_12_28_035911_create_purchase_order_list', 1),
('2013_12_28_035925_create_worksite_index', 1),
('2013_12_28_035935_create_billing_index', 1),
('2013_12_28_035946_create_work_order_index', 1),
('2013_12_28_040000_create_purchase_order_index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_index`
--

CREATE TABLE IF NOT EXISTS `purchase_order_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `purchase_order_number` int(11) NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_list`
--

CREATE TABLE IF NOT EXISTS `purchase_order_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_index`
--

CREATE TABLE IF NOT EXISTS `work_order_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `work_order_id` int(11) NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_list`
--

CREATE TABLE IF NOT EXISTS `work_order_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_out` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_hours` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_po_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_index`
--

CREATE TABLE IF NOT EXISTS `worksite_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `worksite_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_list`
--

CREATE TABLE IF NOT EXISTS `worksite_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `worksite_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
--
-- Database: `precise_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_contact_list`
--

CREATE TABLE IF NOT EXISTS `billing_contact_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `billing_index`
--

CREATE TABLE IF NOT EXISTS `billing_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE IF NOT EXISTS `client_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net_terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_job_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_type_count`
--

CREATE TABLE IF NOT EXISTS `job_type_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_type` text COLLATE utf8_unicode_ci NOT NULL,
  `job_type_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_12_28_035711_create_client_table_1', 1),
('2013_12_28_035732_create_job_type_counter_1', 1),
('2013_12_28_035832_create_billing_contact_list', 1),
('2013_12_28_035848_create_worksite_list', 1),
('2013_12_28_035900_create_work_order_list', 1),
('2013_12_28_035911_create_purchase_order_list', 1),
('2013_12_28_035925_create_worksite_index', 1),
('2013_12_28_035935_create_billing_index', 1),
('2013_12_28_035946_create_work_order_index', 1),
('2013_12_28_040000_create_purchase_order_index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_index`
--

CREATE TABLE IF NOT EXISTS `purchase_order_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `purchase_order_number` int(11) NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_list`
--

CREATE TABLE IF NOT EXISTS `purchase_order_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_order_notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_index`
--

CREATE TABLE IF NOT EXISTS `work_order_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `work_order_id` int(11) NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_list`
--

CREATE TABLE IF NOT EXISTS `work_order_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_out` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_hours` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billable_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_po_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_order_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_index`
--

CREATE TABLE IF NOT EXISTS `worksite_index` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `worksite_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `worksite_list`
--

CREATE TABLE IF NOT EXISTS `worksite_list` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `worksite_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_street_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worksite_notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE IF NOT EXISTS `client_list` (
  `Client_ID` int(5) NOT NULL,
  `Contact_First_Name` text NOT NULL,
  `Contact_Last_Name` text NOT NULL,
  `Business_Name` text NOT NULL,
  `Job_Type` text NOT NULL,
  `Billing_Address_Street` text NOT NULL,
  `Billing_Address_City` text NOT NULL,
  `Billing_Address_State` text NOT NULL,
  `Billing_Address_Zip` text NOT NULL,
  `Billing_Notes` text NOT NULL,
  `Contact_Phone_Number` text NOT NULL,
  `Contact_Fax_Number` text NOT NULL,
  `Contact_Email` text NOT NULL,
  `Worksite_Address_Street` text NOT NULL,
  `Worksite_Address_City` text NOT NULL,
  `Worksite_Address_State` text NOT NULL,
  `Worksite_Address_Zip` text NOT NULL,
  `Contact_Notes` text NOT NULL,
  `Worksite_Notes` text NOT NULL,
  `Net_Terms` text NOT NULL,
  KEY `Client_ID` (`Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`Client_ID`, `Contact_First_Name`, `Contact_Last_Name`, `Business_Name`, `Job_Type`, `Billing_Address_Street`, `Billing_Address_City`, `Billing_Address_State`, `Billing_Address_Zip`, `Billing_Notes`, `Contact_Phone_Number`, `Contact_Fax_Number`, `Contact_Email`, `Worksite_Address_Street`, `Worksite_Address_City`, `Worksite_Address_State`, `Worksite_Address_Zip`, `Contact_Notes`, `Worksite_Notes`, `Net_Terms`) VALUES
(0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(0, 'Ed', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 'Steve', 'Guy', 'Stuff', 'Jobs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4050, 'Steve', 'Klamer', 'United Artists', 'Cleaning', '3033 Street Suite 952', 'Wixom', 'MI', '48202', '', '313-313-3131', '313-646-6464', 'frontdesk@website.net', '23422 West B. Ave. Suite 0324', 'Wixom', 'MI', '49211', 'I spoke with the guy there and he said some stuff about some things', 'Smells funny. Painted walls.', '60');

-- --------------------------------------------------------

--
-- Table structure for table `client_list_1`
--

CREATE TABLE IF NOT EXISTS `client_list_1` (
  `UNIQUE_1` int(11) NOT NULL AUTO_INCREMENT,
  `Client_ID` int(5) NOT NULL,
  `Contact_First_Name` text NOT NULL,
  `Contact_Last_Name` text NOT NULL,
  `Contact_Phone_Number` text NOT NULL,
  `Contact_Fax_Number` text NOT NULL,
  `Contact_Email` text NOT NULL,
  `Contact_Notes` text NOT NULL,
  `Business_Name` text NOT NULL,
  `Job_Type` text NOT NULL,
  `Billing_Address_Street` text NOT NULL,
  `Billing_Address_City` text NOT NULL,
  `Billing_Address_State` text NOT NULL,
  `Billing_Address_Zip` text NOT NULL,
  `Net_Terms` int(2) NOT NULL,
  `Billing_Notes` text NOT NULL,
  `Worksite_Address_Street` text NOT NULL,
  `Worksite_Address_City` text NOT NULL,
  `Worksite_Address_State` text NOT NULL,
  `Worksite_Address_Zip` text NOT NULL,
  `Worksite_Notes` text NOT NULL,
  PRIMARY KEY (`Client_ID`),
  UNIQUE KEY `UNIQUE` (`UNIQUE_1`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4234248 ;

--
-- Dumping data for table `client_list_1`
--

INSERT INTO `client_list_1` (`UNIQUE_1`, `Client_ID`, `Contact_First_Name`, `Contact_Last_Name`, `Contact_Phone_Number`, `Contact_Fax_Number`, `Contact_Email`, `Contact_Notes`, `Business_Name`, `Job_Type`, `Billing_Address_Street`, `Billing_Address_City`, `Billing_Address_State`, `Billing_Address_Zip`, `Net_Terms`, `Billing_Notes`, `Worksite_Address_Street`, `Worksite_Address_City`, `Worksite_Address_State`, `Worksite_Address_Zip`, `Worksite_Notes`) VALUES
(4234234, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', ''),
(4234247, 50001, 'First Name', 'Last Name', 'Phone Number', 'Fax Number', 'Email', 'Notes for Contact', 'Business Name', 'Cleaning_1', 'Billing Street', 'Billing City', 'Billing State', 'Billing Zip', 30, 'Billing Notes', 'Worksite Street', 'Worksite City', 'Worksite State', 'Worksite Zip', 'Worksite Notes'),
(4234235, 50064, 'First Name', 'Last Name', 'Phone Number', 'Fax Number', 'Email', 'Notes for Contact', 'Business Name', 'Interior_Maintenance', 'Billing Street', 'Billing City', 'Billing State', 'Billing Zip', 30, 'Billing Notes', 'Worksite Street', 'Worksite City', 'Worksite State', 'Worksite Zip', 'Worksite Notes'),
(4234237, 50065, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234238, 50066, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234239, 50067, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234240, 50068, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234241, 50069, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234242, 50070, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234243, 50071, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234244, 50072, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234245, 50073, 'Test', 'TestTestTestTest', 'TestTestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTestTestTest', 'Interior_Maintenance', 'TestTestTestTest', 'TestTestTest', 'TE', 'TestTestTestTestTest', 30, 'TestTestTestTestTestTestTestTestTestTestTest', 'TestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest', 'TestTestTest'),
(4234246, 50501, 'sdffsdfsdf', 'sdfsdfsdfa', 'sdfsdfsdfsdf', 'sdfsdfsdfsdf', 'sdfsdfsdfsdf', 'sdfsdfsdfsdf', 'Business Name', 'Exterior_Maintenance', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdfsd', 'sdfsdfsdfsdf', 0, 'sdfsdfsdf', 'sdfsdfs', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', 'sdfsdfdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE IF NOT EXISTS `job_type` (
  `job_type1` text NOT NULL,
  `job_code1` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`job_type1`, `job_code1`) VALUES
('Interior_Maintenance', 1),
('Exterior_Maintenance', 1),
('Cleaning_1', 1);
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
