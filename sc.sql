-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.45-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.3.0.5855
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  schoolmanagement.sc 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
REPLACE INTO `sc` (`sno`, `sname`, `cno`, `cname`, `tno`, `classno`, `classname`, `pscore`, `maxscore`, `score`, `semester`, `credit`) VALUES
	('2018010101', '张三', '010001', '微观经济学', '19990001', '1', NULL, 90, '99', 93, '2020-2021学年第一学期', NULL),
	('2018010102', '李四', '010001', '微观经济学', '19990001', NULL, NULL, 60, '78', 30, '2020-2021学年第一学期', NULL),
	('2018010103', '王五', '010001', '微观经济学', '19990001', NULL, NULL, 67, '45', 60, '2020-2021学年第一学期', NULL);
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
