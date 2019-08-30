-- 导出 test 的数据库结构
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

#创建表
CREATE TABLE IF NOT EXISTS `apply` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` int(11) NOT NULL DEFAULT '1' COMMENT '0=待提交 1=审核中2=拒绝、3=取消、4=通过 5=删除',
  `TOTAL` decimal(9,2) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`ID`))
  ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# 插入数据
INSERT INTO `apply` (`id`, `status`, `total`, `create_time`)
VALUES
	(1, 1, 1000.00, '2019-08-30 15:03:59'),
	(2, 2, 2000.00, '2019-08-30 15:04:18'),
	(3, 4, 3000.00, '2019-08-30 15:04:23'),
	(4, 1, 4000.00, '2019-08-30 15:04:25'),
	(5, 1, 1000.00, '2019-08-20 15:03:59'),
	(6, 3, 2000.00, '2019-08-21 15:04:52'),
	(7, 2, 2000.00, '2019-08-20 15:04:18'),
	(8, 4, 3000.00, '2019-08-28 15:04:23'),
	(9, 1, 4000.00, '2019-08-29 15:04:25'),
	(10, 1, 1000.00, '2019-08-27 15:03:59'),
	(11, 3, 2000.00, '2019-08-26 15:04:52');

