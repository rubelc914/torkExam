-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table tork_exam.ans_from_user
DROP TABLE IF EXISTS `ans_from_user`;
CREATE TABLE IF NOT EXISTS `ans_from_user` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `ques_id` int(20) unsigned NOT NULL DEFAULT 0,
  `marks` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `created_by` int(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tork_exam.ans_from_user: ~0 rows (approximately)
DELETE FROM `ans_from_user`;

-- Dumping structure for table tork_exam.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tork_exam.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table tork_exam.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tork_exam.migrations: ~3 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- Dumping structure for table tork_exam.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tork_exam.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table tork_exam.questions
DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `type` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '01 = radio 02 = checkbox, 03 = boolean',
  `options` text DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT '',
  `status` enum('1','2') DEFAULT '1' COMMENT '1= active  2 = inactive',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tork_exam.questions: ~2 rows (approximately)
DELETE FROM `questions`;
INSERT INTO `questions` (`id`, `title`, `type`, `options`, `right_answer`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'testsdd', '1', 'demo Text', 'demo Text', '1', '2022-09-22', '2022-09-22'),
	(2, 'test', '', 'demo Text', 'demo Text', '1', '2022-09-22', '2022-09-22');

-- Dumping structure for table tork_exam.qus_to_users
DROP TABLE IF EXISTS `qus_to_users`;
CREATE TABLE IF NOT EXISTS `qus_to_users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `question_id` int(20) NOT NULL DEFAULT 0,
  `user_id` int(20) NOT NULL DEFAULT 0,
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1= active  2 = inactive',
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tork_exam.qus_to_users: ~0 rows (approximately)
DELETE FROM `qus_to_users`;

-- Dumping structure for table tork_exam.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tork_exam.users: ~2 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `user_group_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$0ZrBdY2bl7aQJHy8zK9GSeXcIwqXWNg45f96o0Pkh0zwB5vCqlOk.', NULL, '2022-09-22 09:06:21', '2022-09-22 09:06:21'),
	(2, 2, 'rubel', 'rubel@gmail.com', NULL, '$2y$10$umXRQiq8YP4/x9mFMFrWDOERBHKCk4KulwTZZaG1YfRLqlHmF6952', NULL, '2022-09-22 09:11:15', '2022-09-22 09:11:15');

-- Dumping structure for table tork_exam.user_group
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tork_exam.user_group: ~2 rows (approximately)
DELETE FROM `user_group`;
INSERT INTO `user_group` (`id`, `name`, `updated_at`, `updated_by`) VALUES
	(1, 'Admin', '2022-09-22 15:02:30', 0),
	(2, 'Student', '2022-09-22 15:02:44', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
