-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.62 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных alfa
CREATE DATABASE IF NOT EXISTS `alfa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `alfa`;

-- Дамп структуры для таблица alfa.department_tab
CREATE TABLE IF NOT EXISTS `department_tab` (
  `DEP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEP_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DEP_ID`),
  KEY `DEP_ID` (`DEP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы alfa.department_tab: ~3 rows (приблизительно)
DELETE FROM `department_tab`;
/*!40000 ALTER TABLE `department_tab` DISABLE KEYS */;
INSERT INTO `department_tab` (`DEP_ID`, `DEP_NAME`) VALUES
	(1, 'Менеджмент'),
	(2, 'Продажи'),
	(3, 'Разработка');
/*!40000 ALTER TABLE `department_tab` ENABLE KEYS */;

-- Дамп структуры для таблица alfa.log_tab
CREATE TABLE IF NOT EXISTS `log_tab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UDATE` timestamp NULL DEFAULT NULL,
  `USER_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAGE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы alfa.log_tab: ~15 rows (приблизительно)
DELETE FROM `log_tab`;
/*!40000 ALTER TABLE `log_tab` DISABLE KEYS */;
INSERT INTO `log_tab` (`ID`, `UDATE`, `USER_LOGIN`, `PAGE_NAME`) VALUES
	(1, '2019-08-05 15:00:03', 'ZILBERSHTEIN', 'news.php'),
	(2, '2019-08-05 18:02:14', 'ZILBERSHTEIN', 'news.php'),
	(3, '2019-08-15 00:00:00', 'POPOV', 'index.php'),
	(4, '2019-08-14 00:00:00', 'SIDOROV', 'index.php'),
	(5, '2019-08-01 00:00:00', 'IVANOV', 'account.php'),
	(6, '2019-08-02 00:00:00', 'IVANOV', 'news.php'),
	(7, '2019-08-03 01:02:03', 'PETROV', 'index.php'),
	(8, '2019-08-18 00:00:00', 'SIDOROV', 'account.php'),
	(9, '2019-08-05 00:00:00', 'ZILBERSHTEIN', 'news.php'),
	(10, '2019-08-11 00:00:00', 'IVANOV', 'news.php'),
	(11, '2019-08-06 00:00:00', 'POPOV', 'index.php'),
	(12, '2019-08-01 00:00:00', 'SIDOROV', 'account.php'),
	(13, '2019-08-01 00:00:00', 'IVANOV', 'account.php'),
	(14, '2019-08-05 00:00:00', 'POPOV', 'account.php'),
	(15, '2019-08-15 00:00:00', 'POPOV', 'account.php');
/*!40000 ALTER TABLE `log_tab` ENABLE KEYS */;

-- Дамп структуры для таблица alfa.users_tab
CREATE TABLE IF NOT EXISTS `users_tab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы alfa.users_tab: ~6 rows (приблизительно)
DELETE FROM `users_tab`;
/*!40000 ALTER TABLE `users_tab` DISABLE KEYS */;
INSERT INTO `users_tab` (`ID`, `LOGIN`, `FIO`, `DEPARTMENT_ID`) VALUES
	(1, 'IVANOV', 'Иванов Иван', 1),
	(2, 'PETROV', 'Петров Петр', 1),
	(3, 'SIDOROV', 'Сидоров Сидор', 2),
	(4, 'POPOV', 'Попов Поп', 2),
	(5, 'ZILBERSHTEIN', 'Зильберштейн Акакий', 3),
	(6, 'GROZMAN', 'Грозман Аврам', 3);
/*!40000 ALTER TABLE `users_tab` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
