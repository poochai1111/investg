-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- Server version:               5.5.25a - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL バージョン:               8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for anketo
CREATE DATABASE IF NOT EXISTS `anketo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `anketo`;


-- Dumping structure for テーブル anketo.anketo_all_information
CREATE TABLE IF NOT EXISTS `anketo_all_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_information` varchar(100) NOT NULL,
  `anketo_key` varchar(50) NOT NULL DEFAULT '0',
  `work_year` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `detail_id` int(11) NOT NULL,
  `choose_flag` int(11) NOT NULL DEFAULT '0',
  `comments` varchar(50) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_all_information: ~253 rows (approximately)
/*!40000 ALTER TABLE `anketo_all_information` DISABLE KEYS */;
INSERT INTO `anketo_all_information` (`id`, `user_information`, `anketo_key`, `work_year`, `sex`, `category_id`, `detail_id`, `choose_flag`, `comments`, `created_at`) VALUES
	(222, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 1, 2, '', '2016-03-03 07:02:35'),
	(223, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 2, 1, '', '2016-03-03 07:02:35'),
	(224, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 3, 1, '', '2016-03-03 07:02:35'),
	(225, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 4, 2, '', '2016-03-03 07:02:35'),
	(226, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 5, 1, '', '2016-03-03 07:02:35'),
	(227, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 6, 2, '', '2016-03-03 07:02:35'),
	(228, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 7, 2, '', '2016-03-03 07:02:35'),
	(229, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 8, 1, '', '2016-03-03 07:02:35'),
	(230, 'localhost', '56d7e18b4a790', '一年以下', '男', 1, 9, 1, '', '2016-03-03 07:02:35'),
	(231, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 10, 2, '', '2016-03-03 07:02:35'),
	(232, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 11, 1, '', '2016-03-03 07:02:35'),
	(233, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 12, 2, '', '2016-03-03 07:02:35'),
	(234, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 13, 1, '', '2016-03-03 07:02:35'),
	(235, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 14, 2, '', '2016-03-03 07:02:35'),
	(236, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 15, 1, '', '2016-03-03 07:02:35'),
	(237, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 16, 1, '', '2016-03-03 07:02:35'),
	(238, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 17, 2, '', '2016-03-03 07:02:35'),
	(239, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 18, 1, '', '2016-03-03 07:02:35'),
	(240, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 19, 1, '', '2016-03-03 07:02:35'),
	(241, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 20, 1, '', '2016-03-03 07:02:35'),
	(242, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 21, 2, '', '2016-03-03 07:02:35'),
	(243, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 22, 1, '', '2016-03-03 07:02:35'),
	(244, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 23, 2, '', '2016-03-03 07:02:35'),
	(245, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 24, 1, '', '2016-03-03 07:02:35'),
	(246, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 25, 1, '', '2016-03-03 07:02:35'),
	(247, 'localhost', '56d7e18b4a790', '一年以下', '男', 2, 26, 1, '', '2016-03-03 07:02:35'),
	(248, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 27, 1, '', '2016-03-03 07:02:35'),
	(249, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 28, 2, '', '2016-03-03 07:02:35'),
	(250, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 29, 1, '', '2016-03-03 07:02:35'),
	(251, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 30, 2, '', '2016-03-03 07:02:35'),
	(252, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 31, 1, '', '2016-03-03 07:02:35'),
	(253, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 32, 2, '', '2016-03-03 07:02:35'),
	(254, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 33, 1, '', '2016-03-03 07:02:35'),
	(255, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 34, 1, '', '2016-03-03 07:02:35'),
	(256, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 35, 1, '', '2016-03-03 07:02:35'),
	(257, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 36, 2, '', '2016-03-03 07:02:35'),
	(258, 'localhost', '56d7e18b4a790', '一年以下', '男', 3, 37, 1, '', '2016-03-03 07:02:35'),
	(259, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 1, 2, 'dgdfg', '2016-03-03 07:37:38'),
	(260, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 2, 1, 'drtyh', '2016-03-03 07:37:38'),
	(261, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 3, 2, 'erttgd', '2016-03-03 07:37:38'),
	(262, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 4, 1, 'sdhr', '2016-03-03 07:37:38'),
	(263, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 5, 2, 'dshgft', '2016-03-03 07:37:38'),
	(264, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 6, 2, 'sdfhg', '2016-03-03 07:37:38'),
	(265, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 7, 1, 'sdrg', '2016-03-03 07:37:38'),
	(266, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 8, 1, 'edrfg', '2016-03-03 07:37:38'),
	(267, '1', '56d7e9c25bc4c', '1-3年', '男', 1, 9, 2, 'sdfg', '2016-03-03 07:37:38'),
	(268, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 10, 1, 'sdrgf', '2016-03-03 07:37:38'),
	(269, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 11, 2, 'dfg', '2016-03-03 07:37:38'),
	(270, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 12, 1, 'dsfg', '2016-03-03 07:37:38'),
	(271, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 13, 1, 'dfg', '2016-03-03 07:37:38'),
	(272, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 14, 2, 'dgd', '2016-03-03 07:37:38'),
	(273, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 15, 2, 'dsgf', '2016-03-03 07:37:38'),
	(274, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 16, 1, 'dfg', '2016-03-03 07:37:38'),
	(275, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 17, 2, 'sdgrf', '2016-03-03 07:37:38'),
	(276, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 18, 2, 'dggdf', '2016-03-03 07:37:38'),
	(277, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 19, 1, 'dfgd', '2016-03-03 07:37:38'),
	(278, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 20, 2, 'dfgdf', '2016-03-03 07:37:38'),
	(279, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 21, 1, 'dsfg', '2016-03-03 07:37:38'),
	(280, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 22, 2, 'dgdg', '2016-03-03 07:37:38'),
	(281, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 23, 2, 'sgdg', '2016-03-03 07:37:38'),
	(282, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 24, 1, 'sdfg', '2016-03-03 07:37:38'),
	(283, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 25, 1, 'dsfgd', '2016-03-03 07:37:38'),
	(284, '1', '56d7e9c25bc4c', '1-3年', '男', 2, 26, 1, 'sdgfd', '2016-03-03 07:37:38'),
	(285, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 27, 1, 'dfgd', '2016-03-03 07:37:38'),
	(286, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 28, 2, 'dfgdf', '2016-03-03 07:37:38'),
	(287, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 29, 1, 'sdfgd', '2016-03-03 07:37:38'),
	(288, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 30, 2, 'dfgd', '2016-03-03 07:37:38'),
	(289, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 31, 1, 'dfgd', '2016-03-03 07:37:38'),
	(290, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 32, 2, 'dfgd', '2016-03-03 07:37:38'),
	(291, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 33, 1, 'dsfgd', '2016-03-03 07:37:38'),
	(292, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 34, 2, 'sdfgd', '2016-03-03 07:37:38'),
	(293, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 35, 2, 'dsfg', '2016-03-03 07:37:38'),
	(294, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 36, 1, 'dsg', '2016-03-03 07:37:38'),
	(295, '1', '56d7e9c25bc4c', '1-3年', '男', 3, 37, 1, 'sdfgd', '2016-03-03 07:37:38'),
	(296, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 1, 2, 'dgdfg', '2016-03-03 07:38:02'),
	(297, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 2, 1, 'drtyh', '2016-03-03 07:38:02'),
	(298, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 3, 2, 'erttgd', '2016-03-03 07:38:02'),
	(299, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 4, 1, 'sdhr', '2016-03-03 07:38:02'),
	(300, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 5, 2, 'dshgft', '2016-03-03 07:38:02'),
	(301, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 6, 2, 'sdfhg', '2016-03-03 07:38:02'),
	(302, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 7, 1, 'sdrg', '2016-03-03 07:38:02'),
	(303, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 8, 1, 'edrfg', '2016-03-03 07:38:02'),
	(304, '1', '56d7e9da1e6dd', '1-3年', '男', 1, 9, 2, 'sdfg', '2016-03-03 07:38:02'),
	(305, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 10, 1, 'sdrgf', '2016-03-03 07:38:02'),
	(306, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 11, 2, 'dfg', '2016-03-03 07:38:02'),
	(307, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 12, 1, 'dsfg', '2016-03-03 07:38:02'),
	(308, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 13, 1, 'dfg', '2016-03-03 07:38:02'),
	(309, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 14, 2, 'dgd', '2016-03-03 07:38:02'),
	(310, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 15, 2, 'dsgf', '2016-03-03 07:38:02'),
	(311, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 16, 1, 'dfg', '2016-03-03 07:38:02'),
	(312, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 17, 2, 'sdgrf', '2016-03-03 07:38:02'),
	(313, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 18, 2, 'dggdf', '2016-03-03 07:38:02'),
	(314, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 19, 1, 'dfgd', '2016-03-03 07:38:02'),
	(315, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 20, 2, 'dfgdf', '2016-03-03 07:38:02'),
	(316, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 21, 1, 'dsfg', '2016-03-03 07:38:02'),
	(317, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 22, 2, 'dgdg', '2016-03-03 07:38:02'),
	(318, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 23, 2, 'sgdg', '2016-03-03 07:38:02'),
	(319, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 24, 1, 'sdfg', '2016-03-03 07:38:02'),
	(320, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 25, 1, 'dsfgd', '2016-03-03 07:38:02'),
	(321, '1', '56d7e9da1e6dd', '1-3年', '男', 2, 26, 1, 'sdgfd', '2016-03-03 07:38:02'),
	(322, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 27, 1, 'dfgd', '2016-03-03 07:38:02'),
	(323, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 28, 2, 'dfgdf', '2016-03-03 07:38:02'),
	(324, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 29, 1, 'sdfgd', '2016-03-03 07:38:02'),
	(325, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 30, 2, 'dfgd', '2016-03-03 07:38:02'),
	(326, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 31, 1, 'dfgd', '2016-03-03 07:38:02'),
	(327, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 32, 2, 'dfgd', '2016-03-03 07:38:02'),
	(328, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 33, 1, 'dsfgd', '2016-03-03 07:38:02'),
	(329, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 34, 2, 'sdfgd', '2016-03-03 07:38:02'),
	(330, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 35, 2, 'dsfg', '2016-03-03 07:38:02'),
	(331, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 36, 1, 'dsg', '2016-03-03 07:38:02'),
	(332, '1', '56d7e9da1e6dd', '1-3年', '男', 3, 37, 1, 'sdfgd', '2016-03-03 07:38:02'),
	(333, '1', '56d7ea49b1692', '3-5年', '女', 1, 1, 1, 'dsfgsd', '2016-03-03 07:39:53'),
	(334, '1', '56d7ea49b1692', '3-5年', '女', 1, 2, 2, 'dsfg', '2016-03-03 07:39:53'),
	(335, '1', '56d7ea49b1692', '3-5年', '女', 1, 3, 2, 'sgfsdg', '2016-03-03 07:39:53'),
	(336, '1', '56d7ea49b1692', '3-5年', '女', 1, 4, 1, 'aasg', '2016-03-03 07:39:53'),
	(337, '1', '56d7ea49b1692', '3-5年', '女', 1, 5, 2, 'sdg', '2016-03-03 07:39:53'),
	(338, '1', '56d7ea49b1692', '3-5年', '女', 1, 6, 1, 'asdfgd', '2016-03-03 07:39:53'),
	(339, '1', '56d7ea49b1692', '3-5年', '女', 1, 7, 2, 'asgf', '2016-03-03 07:39:53'),
	(340, '1', '56d7ea49b1692', '3-5年', '女', 1, 8, 1, 'asg', '2016-03-03 07:39:53'),
	(341, '1', '56d7ea49b1692', '3-5年', '女', 1, 9, 2, 'agfsadgf', '2016-03-03 07:39:53'),
	(342, '1', '56d7ea49b1692', '3-5年', '女', 2, 10, 1, 'agdsg', '2016-03-03 07:39:53'),
	(343, '1', '56d7ea49b1692', '3-5年', '女', 2, 11, 2, 'agfas', '2016-03-03 07:39:53'),
	(344, '1', '56d7ea49b1692', '3-5年', '女', 2, 12, 1, 'agds', '2016-03-03 07:39:53'),
	(345, '1', '56d7ea49b1692', '3-5年', '女', 2, 13, 2, 'asdgf', '2016-03-03 07:39:53'),
	(346, '1', '56d7ea49b1692', '3-5年', '女', 2, 14, 1, 'asgsd', '2016-03-03 07:39:53'),
	(347, '1', '56d7ea49b1692', '3-5年', '女', 2, 15, 2, 'asdfgd', '2016-03-03 07:39:53'),
	(348, '1', '56d7ea49b1692', '3-5年', '女', 2, 16, 1, 'sagds', '2016-03-03 07:39:53'),
	(349, '1', '56d7ea49b1692', '3-5年', '女', 2, 17, 2, 'asgsfd', '2016-03-03 07:39:53'),
	(350, '1', '56d7ea49b1692', '3-5年', '女', 2, 18, 1, 'asfgs', '2016-03-03 07:39:53'),
	(351, '1', '56d7ea49b1692', '3-5年', '女', 2, 19, 2, 'asg', '2016-03-03 07:39:53'),
	(352, '1', '56d7ea49b1692', '3-5年', '女', 2, 20, 2, 'asgf', '2016-03-03 07:39:53'),
	(353, '1', '56d7ea49b1692', '3-5年', '女', 2, 21, 1, 'asfgf', '2016-03-03 07:39:53'),
	(354, '1', '56d7ea49b1692', '3-5年', '女', 2, 22, 1, 'asdfg', '2016-03-03 07:39:53'),
	(355, '1', '56d7ea49b1692', '3-5年', '女', 2, 23, 2, 'asgfsd', '2016-03-03 07:39:53'),
	(356, '1', '56d7ea49b1692', '3-5年', '女', 2, 24, 1, 'asgf', '2016-03-03 07:39:53'),
	(357, '1', '56d7ea49b1692', '3-5年', '女', 2, 25, 2, 'sadgffd', '2016-03-03 07:39:53'),
	(358, '1', '56d7ea49b1692', '3-5年', '女', 2, 26, 1, 'asdfgf', '2016-03-03 07:39:53'),
	(359, '1', '56d7ea49b1692', '3-5年', '女', 3, 27, 1, 'sdfg', '2016-03-03 07:39:53'),
	(360, '1', '56d7ea49b1692', '3-5年', '女', 3, 28, 2, 'sagf', '2016-03-03 07:39:53'),
	(361, '1', '56d7ea49b1692', '3-5年', '女', 3, 29, 2, 'asfgsd', '2016-03-03 07:39:53'),
	(362, '1', '56d7ea49b1692', '3-5年', '女', 3, 30, 1, 'asfg', '2016-03-03 07:39:53'),
	(363, '1', '56d7ea49b1692', '3-5年', '女', 3, 31, 2, 'safg', '2016-03-03 07:39:53'),
	(364, '1', '56d7ea49b1692', '3-5年', '女', 3, 32, 1, 'sdfgsd', '2016-03-03 07:39:53'),
	(365, '1', '56d7ea49b1692', '3-5年', '女', 3, 33, 2, 'agf', '2016-03-03 07:39:53'),
	(366, '1', '56d7ea49b1692', '3-5年', '女', 3, 34, 2, 'asfg', '2016-03-03 07:39:53'),
	(367, '1', '56d7ea49b1692', '3-5年', '女', 3, 35, 1, 'fgasdf', '2016-03-03 07:39:53'),
	(368, '1', '56d7ea49b1692', '3-5年', '女', 3, 36, 1, 'sfgfsd', '2016-03-03 07:39:53'),
	(369, '1', '56d7ea49b1692', '3-5年', '女', 3, 37, 2, 'asgf', '2016-03-03 07:39:53'),
	(370, '1', '56d7eb09f2f60', '一年以下', '男', 1, 1, 3, 'fgnf', '2016-03-03 07:43:06'),
	(371, '1', '56d7eb09f2f60', '一年以下', '男', 1, 2, 1, 'dfgjhn', '2016-03-03 07:43:06'),
	(372, '1', '56d7eb09f2f60', '一年以下', '男', 1, 3, 1, 'dfgn', '2016-03-03 07:43:06'),
	(373, '1', '56d7eb09f2f60', '一年以下', '男', 1, 4, 3, 'dfnjgh', '2016-03-03 07:43:06'),
	(374, '1', '56d7eb09f2f60', '一年以下', '男', 1, 5, 1, 'dfgnh', '2016-03-03 07:43:06'),
	(375, '1', '56d7eb09f2f60', '一年以下', '男', 1, 6, 2, 'dfg', '2016-03-03 07:43:06'),
	(376, '1', '56d7eb09f2f60', '一年以下', '男', 1, 7, 2, 'dfgn', '2016-03-03 07:43:06'),
	(377, '1', '56d7eb09f2f60', '一年以下', '男', 1, 8, 3, 'dfgn', '2016-03-03 07:43:06'),
	(378, '1', '56d7eb09f2f60', '一年以下', '男', 1, 9, 2, 'dfgnh', '2016-03-03 07:43:06'),
	(379, '1', '56d7eb09f2f60', '一年以下', '男', 2, 10, 1, 'dfgnh', '2016-03-03 07:43:06'),
	(380, '1', '56d7eb09f2f60', '一年以下', '男', 2, 11, 2, 'dfgn', '2016-03-03 07:43:06'),
	(381, '1', '56d7eb09f2f60', '一年以下', '男', 2, 12, 1, 'dfngf', '2016-03-03 07:43:06'),
	(382, '1', '56d7eb09f2f60', '一年以下', '男', 2, 13, 2, 'fdgn', '2016-03-03 07:43:06'),
	(383, '1', '56d7eb09f2f60', '一年以下', '男', 2, 14, 1, 'dfgn', '2016-03-03 07:43:06'),
	(384, '1', '56d7eb09f2f60', '一年以下', '男', 2, 15, 3, 'fgn', '2016-03-03 07:43:06'),
	(385, '1', '56d7eb09f2f60', '一年以下', '男', 2, 16, 2, 'fdgn', '2016-03-03 07:43:06'),
	(386, '1', '56d7eb09f2f60', '一年以下', '男', 2, 17, 1, 'fdng', '2016-03-03 07:43:06'),
	(387, '1', '56d7eb09f2f60', '一年以下', '男', 2, 18, 1, 'dfgn', '2016-03-03 07:43:06'),
	(388, '1', '56d7eb09f2f60', '一年以下', '男', 2, 19, 2, 'dfgn', '2016-03-03 07:43:06'),
	(389, '1', '56d7eb09f2f60', '一年以下', '男', 2, 20, 2, 'dfng', '2016-03-03 07:43:06'),
	(390, '1', '56d7eb09f2f60', '一年以下', '男', 2, 21, 1, 'fdgng', '2016-03-03 07:43:06'),
	(391, '1', '56d7eb09f2f60', '一年以下', '男', 2, 22, 1, 'fgn', '2016-03-03 07:43:06'),
	(392, '1', '56d7eb09f2f60', '一年以下', '男', 2, 23, 2, 'dfnf', '2016-03-03 07:43:06'),
	(393, '1', '56d7eb09f2f60', '一年以下', '男', 2, 24, 1, 'fgn', '2016-03-03 07:43:06'),
	(394, '1', '56d7eb09f2f60', '一年以下', '男', 2, 25, 2, 'fdgn', '2016-03-03 07:43:06'),
	(395, '1', '56d7eb09f2f60', '一年以下', '男', 2, 26, 1, 'dfn', '2016-03-03 07:43:06'),
	(396, '1', '56d7eb09f2f60', '一年以下', '男', 3, 27, 1, 'fdng', '2016-03-03 07:43:06'),
	(397, '1', '56d7eb09f2f60', '一年以下', '男', 3, 28, 1, 'fnf', '2016-03-03 07:43:06'),
	(398, '1', '56d7eb09f2f60', '一年以下', '男', 3, 29, 2, 'dfng', '2016-03-03 07:43:06'),
	(399, '1', '56d7eb09f2f60', '一年以下', '男', 3, 30, 1, 'dfgn', '2016-03-03 07:43:06'),
	(400, '1', '56d7eb09f2f60', '一年以下', '男', 3, 31, 2, 'dfgn', '2016-03-03 07:43:06'),
	(401, '1', '56d7eb09f2f60', '一年以下', '男', 3, 32, 2, 'dfgn', '2016-03-03 07:43:06'),
	(402, '1', '56d7eb09f2f60', '一年以下', '男', 3, 33, 1, 'fgn', '2016-03-03 07:43:06'),
	(403, '1', '56d7eb09f2f60', '一年以下', '男', 3, 34, 1, 'dfgn', '2016-03-03 07:43:06'),
	(404, '1', '56d7eb09f2f60', '一年以下', '男', 3, 35, 1, 'aghfd', '2016-03-03 07:43:06'),
	(405, '1', '56d7eb09f2f60', '一年以下', '男', 3, 36, 1, 'sdb', '2016-03-03 07:43:06'),
	(406, '1', '56d7eb09f2f60', '一年以下', '男', 3, 37, 1, 'sdfgb', '2016-03-03 07:43:06'),
	(407, '2', '56d8023999fd1', '一年以下', '男', 1, 1, 2, '', '2016-03-03 09:22:01'),
	(408, '2', '56d8023999fd1', '一年以下', '男', 1, 2, 1, '', '2016-03-03 09:22:01'),
	(409, '2', '56d8023999fd1', '一年以下', '男', 1, 3, 1, '', '2016-03-03 09:22:01'),
	(410, '2', '56d8023999fd1', '一年以下', '男', 1, 4, 2, '', '2016-03-03 09:22:01'),
	(411, '2', '56d8023999fd1', '一年以下', '男', 1, 5, 1, '', '2016-03-03 09:22:01'),
	(412, '2', '56d8023999fd1', '一年以下', '男', 1, 6, 2, '', '2016-03-03 09:22:01'),
	(413, '2', '56d8023999fd1', '一年以下', '男', 1, 7, 1, '', '2016-03-03 09:22:01'),
	(414, '2', '56d8023999fd1', '一年以下', '男', 1, 8, 1, '', '2016-03-03 09:22:01'),
	(415, '2', '56d8023999fd1', '一年以下', '男', 1, 9, 1, '', '2016-03-03 09:22:01'),
	(416, '2', '56d8023999fd1', '一年以下', '男', 2, 10, 1, '', '2016-03-03 09:22:01'),
	(417, '2', '56d8023999fd1', '一年以下', '男', 2, 11, 1, '', '2016-03-03 09:22:01'),
	(418, '2', '56d8023999fd1', '一年以下', '男', 2, 12, 1, '', '2016-03-03 09:22:01'),
	(419, '2', '56d8023999fd1', '一年以下', '男', 2, 13, 1, '', '2016-03-03 09:22:01'),
	(420, '2', '56d8023999fd1', '一年以下', '男', 2, 14, 1, '', '2016-03-03 09:22:01'),
	(421, '2', '56d8023999fd1', '一年以下', '男', 2, 15, 1, '', '2016-03-03 09:22:01'),
	(422, '2', '56d8023999fd1', '一年以下', '男', 2, 16, 1, '', '2016-03-03 09:22:01'),
	(423, '2', '56d8023999fd1', '一年以下', '男', 2, 17, 1, '', '2016-03-03 09:22:01'),
	(424, '2', '56d8023999fd1', '一年以下', '男', 2, 18, 1, '', '2016-03-03 09:22:01'),
	(425, '2', '56d8023999fd1', '一年以下', '男', 2, 19, 1, '', '2016-03-03 09:22:01'),
	(426, '2', '56d8023999fd1', '一年以下', '男', 2, 20, 1, '', '2016-03-03 09:22:01'),
	(427, '2', '56d8023999fd1', '一年以下', '男', 2, 21, 1, '', '2016-03-03 09:22:01'),
	(428, '2', '56d8023999fd1', '一年以下', '男', 2, 22, 1, '', '2016-03-03 09:22:01'),
	(429, '2', '56d8023999fd1', '一年以下', '男', 2, 23, 1, '', '2016-03-03 09:22:01'),
	(430, '2', '56d8023999fd1', '一年以下', '男', 2, 24, 1, '', '2016-03-03 09:22:01'),
	(431, '2', '56d8023999fd1', '一年以下', '男', 2, 25, 1, '', '2016-03-03 09:22:01'),
	(432, '2', '56d8023999fd1', '一年以下', '男', 2, 26, 1, '', '2016-03-03 09:22:01'),
	(433, '2', '56d8023999fd1', '一年以下', '男', 3, 27, 1, '', '2016-03-03 09:22:01'),
	(434, '2', '56d8023999fd1', '一年以下', '男', 3, 28, 1, '', '2016-03-03 09:22:01'),
	(435, '2', '56d8023999fd1', '一年以下', '男', 3, 29, 1, '', '2016-03-03 09:22:01'),
	(436, '2', '56d8023999fd1', '一年以下', '男', 3, 30, 1, '', '2016-03-03 09:22:01'),
	(437, '2', '56d8023999fd1', '一年以下', '男', 3, 31, 1, '', '2016-03-03 09:22:01'),
	(438, '2', '56d8023999fd1', '一年以下', '男', 3, 32, 1, '', '2016-03-03 09:22:01'),
	(439, '2', '56d8023999fd1', '一年以下', '男', 3, 33, 1, '', '2016-03-03 09:22:01'),
	(440, '2', '56d8023999fd1', '一年以下', '男', 3, 34, 1, '', '2016-03-03 09:22:01'),
	(441, '2', '56d8023999fd1', '一年以下', '男', 3, 35, 1, '', '2016-03-03 09:22:01'),
	(442, '2', '56d8023999fd1', '一年以下', '男', 3, 36, 1, '', '2016-03-03 09:22:01'),
	(443, '2', '56d8023999fd1', '一年以下', '男', 3, 37, 1, '', '2016-03-03 09:22:01');
/*!40000 ALTER TABLE `anketo_all_information` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_category
CREATE TABLE IF NOT EXISTS `anketo_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `anketo_category` DISABLE KEYS */;
INSERT INTO `anketo_category` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
	(1, '部门周会', NULL, NULL),
	(2, '公共事务', NULL, NULL),
	(3, '活动组织', NULL, NULL);
/*!40000 ALTER TABLE `anketo_category` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_category_comment
CREATE TABLE IF NOT EXISTS `anketo_category_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `anketo_key` varchar(50),
  `category_comment` varchar(100),
  `created_at` datetime,
  PRIMARY KEY (`id`),
  KEY `anketo_category_comment_FK_1` (`category_id`),
  CONSTRAINT `anketo_category_comment_FK_1` FOREIGN KEY (`category_id`) REFERENCES `anketo_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_category_comment: ~21 rows (approximately)
/*!40000 ALTER TABLE `anketo_category_comment` DISABLE KEYS */;
INSERT INTO `anketo_category_comment` (`id`, `category_id`, `anketo_key`, `category_comment`, `created_at`) VALUES
	(1, 1, '56d7dfcc63190', '', '2016-03-03 06:55:08'),
	(2, 2, '56d7dfcc63190', '', '2016-03-03 06:55:08'),
	(3, 3, '56d7dfcc63190', '', '2016-03-03 06:55:08'),
	(4, 1, '56d7e18b4a790', '', '2016-03-03 07:02:35'),
	(5, 2, '56d7e18b4a790', '', '2016-03-03 07:02:35'),
	(6, 3, '56d7e18b4a790', '', '2016-03-03 07:02:35'),
	(7, 1, '56d7e9c25bc4c', '', '2016-03-03 07:37:38'),
	(8, 2, '56d7e9c25bc4c', '', '2016-03-03 07:37:38'),
	(9, 3, '56d7e9c25bc4c', '', '2016-03-03 07:37:38'),
	(10, 1, '56d7e9da1e6dd', '', '2016-03-03 07:38:02'),
	(11, 2, '56d7e9da1e6dd', '', '2016-03-03 07:38:02'),
	(12, 3, '56d7e9da1e6dd', '', '2016-03-03 07:38:02'),
	(13, 1, '56d7ea49b1692', '', '2016-03-03 07:39:53'),
	(14, 2, '56d7ea49b1692', '', '2016-03-03 07:39:53'),
	(15, 3, '56d7ea49b1692', '', '2016-03-03 07:39:53'),
	(16, 1, '56d7eb09f2f60', '', '2016-03-03 07:43:06'),
	(17, 2, '56d7eb09f2f60', '', '2016-03-03 07:43:06'),
	(18, 3, '56d7eb09f2f60', '', '2016-03-03 07:43:06'),
	(19, 1, '56d8023999fd1', '', '2016-03-03 09:22:01'),
	(20, 2, '56d8023999fd1', '', '2016-03-03 09:22:01'),
	(21, 3, '56d8023999fd1', '', '2016-03-03 09:22:01');
/*!40000 ALTER TABLE `anketo_category_comment` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_category_name
CREATE TABLE IF NOT EXISTS `anketo_category_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `detail_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anketo_category_name_FI_1` (`category_id`),
  CONSTRAINT `anketo_category_name_FK_1` FOREIGN KEY (`category_id`) REFERENCES `anketo_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_category_name: ~37 rows (approximately)
/*!40000 ALTER TABLE `anketo_category_name` DISABLE KEYS */;
INSERT INTO `anketo_category_name` (`id`, `category_id`, `detail_id`, `detail_name`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '周会（周一）的整体满意度是？', NULL, NULL),
	(2, 1, 2, '周会（周一）的项目状况报告环节的满意度是？', NULL, NULL),
	(3, 1, 3, '周会（周一）的演讲环节的满意度是？', NULL, NULL),
	(4, 1, 4, '周会（周一）的新员工入职介绍或出差员工感言环节的满意度是？', NULL, NULL),
	(5, 1, 5, '周会（周一）的MVP颁奖环节的满意度是？', NULL, NULL),
	(6, 1, 6, '周会（周五）的整体满意度是？', NULL, NULL),
	(7, 1, 7, '周会（周五）的演讲环节的满意度是？', NULL, NULL),
	(8, 1, 8, '周会（周五）生日环节的满意度是？', NULL, NULL),
	(9, 1, 9, '周会（周五）主持人的人员安排及主持效果的满意度是？', NULL, NULL),
	(10, 2, 1, '部门文具用品管理的满意度是？（如签字笔、记事本的发放及更换等）', NULL, NULL),
	(11, 2, 2, '是否了解公司报销相关流程或规定？（如打车票、发票的使用规则、报销的条件、额度等相关要求）', NULL, NULL),
	(12, 2, 3, '对部门报销管理的满意度是？（如流程的合理性、对应的及时性、不明点的解答等）', NULL, NULL),
	(13, 2, 4, '对部门出差管理的整体满意度是？（如借款、签证办理、机票预订/改签、住宿等）', NULL, NULL),
	(14, 2, 5, '在部门内办理入职手续的满意度是？（仅2015年度中途入职或实习同事回答）', NULL, NULL),
	(15, 2, 6, '部门的新人入职培训的满意度是？（仅2015年度中途入职或实习同事回答）', NULL, NULL),
	(16, 2, 7, '部门设备管理整体的满意度是？', NULL, NULL),
	(17, 2, 8, '目前使用的设备软/硬件配置（包括台式机、附属用品、VDI、测试手机）对工作需要的满意度是？', NULL, NULL),
	(18, 2, 9, '当设备出现软/硬件故障时，是否得到故障处理的及时响应？', NULL, NULL),
	(19, 2, 10, '当设备出现软/硬件故障时，是否在期望的时间内得到有效的解决或不影响工作进度？', NULL, NULL),
	(20, 2, 11, '设备软件或操作系统配置、安装、更新等的满足度是？', NULL, NULL),
	(21, 2, 12, '部门网络管理整体的满意度是？', NULL, NULL),
	(22, 2, 13, '目前的网路环境对工作需要的满意度是？（如内部传输速度、项目相关的网络接入速度、稳定性等）', NULL, NULL),
	(23, 2, 14, '当网络出现故障时，是否得到故障处理的及时响应？', NULL, NULL),
	(24, 2, 15, '对部门内部会议室的使用情况是否满意？', NULL, NULL),
	(25, 2, 16, '是否知道部门内设有多个摄像头，可实现无死角监控。（客户信息安全要求）', NULL, NULL),
	(26, 2, 17, '对部门门禁管理的满意度是？', NULL, NULL),
	(27, 3, 1, '2015年度年初的部门新年会的满意度是？（包括限于组织形式、节目安排、饭菜口味、班车安排）', NULL, NULL),
	(28, 3, 2, '2015年5月公司内的拓展活动（与PMO合办）的满意度是？', NULL, NULL),
	(29, 3, 3, '2015年8月的部门迎新会的满意度是？（包括限于组织形式、节目安排、饭菜口味、班车安排）', NULL, NULL),
	(30, 3, 4, '2015年度公司各类文体活动中，部门的组织、管理的满意度是？（如拔河、辩论赛、乒乓球、象棋、卡拉OK等）', NULL, NULL),
	(31, 3, 5, '部门每周举行一次的经验交流会的满意度是？', NULL, NULL),
	(32, 3, 6, '所在项目组织的各项培训的满意度是？', NULL, NULL),
	(33, 3, 7, '所在项目本年度组织的项目回归的满意度是？', NULL, NULL),
	(34, 3, 8, '部门组织面向新人的孵化器项目（图书管理系统）的满意度是？', NULL, NULL),
	(35, 3, 9, '部门主页F5使用情况的满意度是？', NULL, NULL),
	(36, 3, 10, '部门的F5 Q&A知识管理系统使用情况的满意度是？', NULL, NULL),
	(37, 3, 11, '部门微信群使用情况的满意度是？', NULL, NULL);
/*!40000 ALTER TABLE `anketo_category_name` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_common_name
CREATE TABLE IF NOT EXISTS `anketo_common_name` (
  `common_id` int(11) NOT NULL,
  `common_name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`common_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_common_name: ~32 rows (approximately)
/*!40000 ALTER TABLE `anketo_common_name` DISABLE KEYS */;
INSERT INTO `anketo_common_name` (`common_id`, `common_name`, `created_at`, `updated_at`) VALUES
	(1, '非常满意', NULL, NULL),
	(2, '满意', NULL, NULL),
	(3, '比较满意', NULL, NULL),
	(4, '不太满意', NULL, NULL),
	(5, '非常不满', NULL, NULL),
	(6, '非常了解', NULL, NULL),
	(7, '了解', NULL, NULL),
	(8, '基本了解', NULL, NULL),
	(9, '不太了解', NULL, NULL),
	(10, '完全不清楚', NULL, NULL),
	(11, '未报销过，不了解', NULL, NULL),
	(12, '未出差过，不了解', NULL, NULL),
	(13, '未参加', NULL, NULL),
	(14, '未进行', NULL, NULL),
	(15, '非常满足', NULL, NULL),
	(16, '满足', NULL, NULL),
	(17, '比较满足', NULL, NULL),
	(18, '不太满足', NULL, NULL),
	(19, '无法满足', NULL, NULL),
	(20, '非常及时', NULL, NULL),
	(21, '及时', NULL, NULL),
	(22, '一般', NULL, NULL),
	(23, '不及时', NULL, NULL),
	(24, '非常不及时', NULL, NULL),
	(25, '未遇到该问题', NULL, NULL),
	(26, '基本不使用', NULL, NULL),
	(27, '知道', NULL, NULL),
	(28, '不知道', NULL, NULL),
	(29, '不了解', NULL, NULL),
	(30, '未参加或当时未入职', NULL, NULL),
	(31, '未参加过', NULL, NULL),
	(32, '还未使用过', NULL, NULL);
/*!40000 ALTER TABLE `anketo_common_name` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_detail_mapping
CREATE TABLE IF NOT EXISTS `anketo_detail_mapping` (
  `category_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `common_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `anketo_detail_mapping_FI_1` (`detail_id`),
  KEY `anketo_detail_mapping_FI_2` (`common_id`),
  KEY `anketo_detail_mapping_FK_3` (`category_id`),
  CONSTRAINT `anketo_detail_mapping_FK_2` FOREIGN KEY (`common_id`) REFERENCES `anketo_common_name` (`common_id`),
  CONSTRAINT `anketo_detail_mapping_FK_3` FOREIGN KEY (`category_id`) REFERENCES `anketo_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_detail_mapping: ~201 rows (approximately)
/*!40000 ALTER TABLE `anketo_detail_mapping` DISABLE KEYS */;
INSERT INTO `anketo_detail_mapping` (`category_id`, `detail_id`, `common_id`, `created_at`, `updated_at`, `id`) VALUES
	(1, 1, 1, NULL, NULL, 1),
	(1, 1, 2, NULL, NULL, 2),
	(1, 1, 3, NULL, NULL, 3),
	(1, 1, 4, NULL, NULL, 4),
	(1, 1, 5, NULL, NULL, 5),
	(1, 2, 1, NULL, NULL, 6),
	(1, 2, 2, NULL, NULL, 7),
	(1, 2, 3, NULL, NULL, 8),
	(1, 2, 4, NULL, NULL, 9),
	(1, 2, 5, NULL, NULL, 10),
	(1, 3, 1, NULL, NULL, 11),
	(1, 3, 2, NULL, NULL, 12),
	(1, 3, 3, NULL, NULL, 13),
	(1, 3, 4, NULL, NULL, 14),
	(1, 3, 5, NULL, NULL, 15),
	(1, 4, 1, NULL, NULL, 16),
	(1, 4, 2, NULL, NULL, 17),
	(1, 4, 3, NULL, NULL, 18),
	(1, 4, 4, NULL, NULL, 19),
	(1, 4, 5, NULL, NULL, 20),
	(1, 5, 1, NULL, NULL, 21),
	(1, 5, 2, NULL, NULL, 22),
	(1, 5, 3, NULL, NULL, 23),
	(1, 5, 4, NULL, NULL, 24),
	(1, 5, 5, NULL, NULL, 25),
	(1, 6, 1, NULL, NULL, 26),
	(1, 6, 2, NULL, NULL, 27),
	(1, 6, 3, NULL, NULL, 28),
	(1, 6, 4, NULL, NULL, 29),
	(1, 6, 5, NULL, NULL, 30),
	(1, 7, 1, NULL, NULL, 31),
	(1, 7, 2, NULL, NULL, 32),
	(1, 7, 3, NULL, NULL, 33),
	(1, 7, 4, NULL, NULL, 34),
	(1, 7, 5, NULL, NULL, 35),
	(1, 8, 1, NULL, NULL, 36),
	(1, 8, 2, NULL, NULL, 37),
	(1, 8, 3, NULL, NULL, 38),
	(1, 8, 4, NULL, NULL, 39),
	(1, 8, 5, NULL, NULL, 40),
	(1, 9, 1, NULL, NULL, 41),
	(1, 9, 2, NULL, NULL, 42),
	(1, 9, 3, NULL, NULL, 43),
	(1, 9, 4, NULL, NULL, 44),
	(1, 9, 5, NULL, NULL, 45),
	(2, 1, 1, NULL, NULL, 52),
	(2, 1, 2, NULL, NULL, 53),
	(2, 1, 3, NULL, NULL, 54),
	(2, 1, 4, NULL, NULL, 55),
	(2, 1, 5, NULL, NULL, 56),
	(2, 2, 6, NULL, NULL, 57),
	(2, 2, 7, NULL, NULL, 58),
	(2, 2, 8, NULL, NULL, 59),
	(2, 2, 9, NULL, NULL, 60),
	(2, 2, 10, NULL, NULL, 61),
	(2, 3, 1, NULL, NULL, 62),
	(2, 3, 2, NULL, NULL, 63),
	(2, 3, 3, NULL, NULL, 64),
	(2, 3, 4, NULL, NULL, 65),
	(2, 3, 5, NULL, NULL, 66),
	(2, 3, 11, NULL, NULL, 67),
	(2, 4, 1, NULL, NULL, 68),
	(2, 4, 2, NULL, NULL, 69),
	(2, 4, 3, NULL, NULL, 70),
	(2, 4, 4, NULL, NULL, 71),
	(2, 4, 5, NULL, NULL, 72),
	(2, 4, 12, NULL, NULL, 73),
	(2, 5, 1, NULL, NULL, 74),
	(2, 5, 2, NULL, NULL, 75),
	(2, 5, 3, NULL, NULL, 76),
	(2, 5, 4, NULL, NULL, 77),
	(2, 5, 5, NULL, NULL, 78),
	(2, 6, 1, NULL, NULL, 79),
	(2, 6, 2, NULL, NULL, 80),
	(2, 6, 3, NULL, NULL, 81),
	(2, 6, 4, NULL, NULL, 82),
	(2, 6, 5, NULL, NULL, 83),
	(2, 6, 13, NULL, NULL, 84),
	(2, 6, 14, NULL, NULL, 85),
	(2, 7, 1, NULL, NULL, 86),
	(2, 7, 2, NULL, NULL, 87),
	(2, 7, 3, NULL, NULL, 88),
	(2, 7, 4, NULL, NULL, 89),
	(2, 7, 5, NULL, NULL, 90),
	(2, 8, 15, NULL, NULL, 91),
	(2, 8, 16, NULL, NULL, 92),
	(2, 8, 17, NULL, NULL, 93),
	(2, 8, 18, NULL, NULL, 94),
	(2, 8, 19, NULL, NULL, 95),
	(2, 9, 20, NULL, NULL, 96),
	(2, 9, 21, NULL, NULL, 97),
	(2, 9, 22, NULL, NULL, 98),
	(2, 9, 23, NULL, NULL, 99),
	(2, 9, 24, NULL, NULL, 100),
	(2, 9, 25, NULL, NULL, 101),
	(2, 10, 1, NULL, NULL, 102),
	(2, 10, 2, NULL, NULL, 103),
	(2, 10, 3, NULL, NULL, 104),
	(2, 10, 4, NULL, NULL, 105),
	(2, 10, 5, NULL, NULL, 106),
	(2, 10, 25, NULL, NULL, 107),
	(2, 11, 1, NULL, NULL, 108),
	(2, 11, 2, NULL, NULL, 109),
	(2, 11, 3, NULL, NULL, 110),
	(2, 11, 4, NULL, NULL, 111),
	(2, 11, 5, NULL, NULL, 112),
	(2, 12, 1, NULL, NULL, 113),
	(2, 12, 2, NULL, NULL, 114),
	(2, 12, 3, NULL, NULL, 115),
	(2, 12, 4, NULL, NULL, 116),
	(2, 12, 5, NULL, NULL, 117),
	(2, 13, 1, NULL, NULL, 118),
	(2, 13, 2, NULL, NULL, 119),
	(2, 13, 3, NULL, NULL, 120),
	(2, 13, 4, NULL, NULL, 121),
	(2, 13, 5, NULL, NULL, 122),
	(2, 14, 20, NULL, NULL, 123),
	(2, 14, 21, NULL, NULL, 124),
	(2, 14, 22, NULL, NULL, 125),
	(2, 14, 23, NULL, NULL, 126),
	(2, 14, 24, NULL, NULL, 127),
	(2, 14, 25, NULL, NULL, 128),
	(2, 15, 1, NULL, NULL, 129),
	(2, 15, 2, NULL, NULL, 130),
	(2, 15, 3, NULL, NULL, 131),
	(2, 15, 4, NULL, NULL, 132),
	(2, 15, 5, NULL, NULL, 133),
	(2, 15, 26, NULL, NULL, 134),
	(2, 16, 27, NULL, NULL, 135),
	(2, 16, 28, NULL, NULL, 136),
	(2, 17, 1, NULL, NULL, 137),
	(2, 17, 2, NULL, NULL, 138),
	(2, 17, 3, NULL, NULL, 139),
	(2, 17, 4, NULL, NULL, 140),
	(2, 17, 5, NULL, NULL, 141),
	(2, 17, 29, NULL, NULL, 142),
	(3, 1, 1, NULL, NULL, 143),
	(3, 1, 2, NULL, NULL, 144),
	(3, 1, 3, NULL, NULL, 145),
	(3, 1, 4, NULL, NULL, 146),
	(3, 1, 5, NULL, NULL, 147),
	(3, 1, 30, NULL, NULL, 148),
	(3, 2, 1, NULL, NULL, 149),
	(3, 2, 2, NULL, NULL, 150),
	(3, 2, 3, NULL, NULL, 151),
	(3, 2, 4, NULL, NULL, 152),
	(3, 2, 5, NULL, NULL, 153),
	(3, 2, 30, NULL, NULL, 154),
	(3, 3, 1, NULL, NULL, 155),
	(3, 3, 2, NULL, NULL, 156),
	(3, 3, 3, NULL, NULL, 157),
	(3, 3, 4, NULL, NULL, 158),
	(3, 3, 5, NULL, NULL, 159),
	(3, 3, 30, NULL, NULL, 160),
	(3, 4, 1, NULL, NULL, 161),
	(3, 4, 2, NULL, NULL, 162),
	(3, 4, 3, NULL, NULL, 163),
	(3, 4, 4, NULL, NULL, 164),
	(3, 4, 5, NULL, NULL, 165),
	(3, 4, 29, NULL, NULL, 166),
	(3, 5, 1, NULL, NULL, 167),
	(3, 5, 2, NULL, NULL, 168),
	(3, 5, 3, NULL, NULL, 169),
	(3, 5, 4, NULL, NULL, 170),
	(3, 5, 5, NULL, NULL, 171),
	(3, 5, 29, NULL, NULL, 172),
	(3, 6, 1, NULL, NULL, 173),
	(3, 6, 2, NULL, NULL, 174),
	(3, 6, 3, NULL, NULL, 175),
	(3, 6, 4, NULL, NULL, 176),
	(3, 6, 5, NULL, NULL, 177),
	(3, 6, 31, NULL, NULL, 178),
	(3, 7, 1, NULL, NULL, 179),
	(3, 7, 2, NULL, NULL, 180),
	(3, 7, 3, NULL, NULL, 181),
	(3, 7, 4, NULL, NULL, 182),
	(3, 7, 5, NULL, NULL, 183),
	(3, 8, 1, NULL, NULL, 184),
	(3, 8, 2, NULL, NULL, 185),
	(3, 8, 3, NULL, NULL, 186),
	(3, 8, 4, NULL, NULL, 187),
	(3, 8, 5, NULL, NULL, 188),
	(3, 8, 29, NULL, NULL, 189),
	(3, 9, 1, NULL, NULL, 190),
	(3, 9, 2, NULL, NULL, 191),
	(3, 9, 3, NULL, NULL, 192),
	(3, 9, 4, NULL, NULL, 193),
	(3, 9, 5, NULL, NULL, 194),
	(3, 9, 32, NULL, NULL, 195),
	(3, 10, 1, NULL, NULL, 196),
	(3, 10, 2, NULL, NULL, 197),
	(3, 10, 3, NULL, NULL, 198),
	(3, 10, 4, NULL, NULL, 199),
	(3, 10, 5, NULL, NULL, 200),
	(3, 10, 32, NULL, NULL, 201),
	(3, 11, 1, NULL, NULL, 202),
	(3, 11, 2, NULL, NULL, 203),
	(3, 11, 3, NULL, NULL, 204),
	(3, 11, 4, NULL, NULL, 205),
	(3, 11, 5, NULL, NULL, 206),
	(3, 11, 32, NULL, NULL, 207);
/*!40000 ALTER TABLE `anketo_detail_mapping` ENABLE KEYS */;


-- Dumping structure for テーブル anketo.anketo_user_management
CREATE TABLE IF NOT EXISTS `anketo_user_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_pwd` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table anketo.anketo_user_management: ~3 rows (approximately)
/*!40000 ALTER TABLE `anketo_user_management` DISABLE KEYS */;
INSERT INTO `anketo_user_management` (`id`, `user_name`, `user_pwd`, `created_at`) VALUES
	(1, 'aa', '123456', '2016-03-03 16:59:55'),
	(2, 'bb', '123456', '2016-03-03 16:59:55'),
	(3, 'cc', '123456', '2016-03-03 16:59:55');
/*!40000 ALTER TABLE `anketo_user_management` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;