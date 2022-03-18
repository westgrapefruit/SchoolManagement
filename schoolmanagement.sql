/*
Navicat MySQL Data Transfer

Source Server         : MysqlTest
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : schoolmanagement

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2021-03-23 20:18:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `adminno` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES ('200', '张三', '6e947b112c4adbdae28be21e6ba24c24', '200');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `classno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`classno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('001', '1', '1', '1', '10', '1');
INSERT INTO `classes` VALUES ('1', '1', '1', '1', '10', '1');
INSERT INTO `classes` VALUES ('20180102', null, '商学院', '金融', '10', '2018');
INSERT INTO `classes` VALUES ('20180201', null, '工学院', '机械工学', '10', '2018');
INSERT INTO `classes` VALUES ('20180202', null, '工学院', '机械系统工学', '10', '2018');
INSERT INTO `classes` VALUES ('20180203', null, '工学院', '环境化学工学', '10', '2018');
INSERT INTO `classes` VALUES ('20180301', null, '数学院', '信息与计算科学', '10', '2018');
INSERT INTO `classes` VALUES ('20180302', null, '数学院', '应用数学', '10', '2018');
INSERT INTO `classes` VALUES ('20180303', null, '数学院', '统计学', '10', '2018');
INSERT INTO `classes` VALUES ('20180401', null, '物理学院', '理论物理', '10', '2018');
INSERT INTO `classes` VALUES ('20180402', null, '物理学院', '微电子', '10', '2018');
INSERT INTO `classes` VALUES ('20180403', null, '物理学院', '凝聚态', '10', '2018');
INSERT INTO `classes` VALUES ('20180501', null, '美术学院', '中国画专业', '10', '2018');
INSERT INTO `classes` VALUES ('20180502', null, '美术学院', '油画专业', '10', '2018');
INSERT INTO `classes` VALUES ('20180503', null, '美术学院', '版画专业', '10', '2018');
INSERT INTO `classes` VALUES ('20180601', null, '舞蹈学院', '芭蕾舞', '10', '2018');
INSERT INTO `classes` VALUES ('20180602', null, '舞蹈学院', '中国古典舞', '10', '2018');
INSERT INTO `classes` VALUES ('20180603', null, '舞蹈学院', '国际标准舞', '10', '2018');
INSERT INTO `classes` VALUES ('20180701', null, '计算机科学学院', '计算机科学与技术', '10', '2018');
INSERT INTO `classes` VALUES ('20180702', null, '计算机科学学院', '网络工程', '10', '2018');
INSERT INTO `classes` VALUES ('20180703', null, '计算机科学学院', '软件工程', '10', '2018');
INSERT INTO `classes` VALUES ('20180801', null, '马克思学院', '军事学', '10', '2018');
INSERT INTO `classes` VALUES ('20180802', null, '马克思学院', '思政', '10', '2018');
INSERT INTO `classes` VALUES ('20180803', null, '马克思学院', '党史', '10', '2018');
INSERT INTO `classes` VALUES ('20190101', null, '商学院', '会计', '10', '2019');
INSERT INTO `classes` VALUES ('20190102', null, '商学院', '金融', '10', '2019');
INSERT INTO `classes` VALUES ('20190103', null, '商学院', '市场营销', '10', '2019');
INSERT INTO `classes` VALUES ('20190201', null, '工学院', '机械工学', '10', '2019');
INSERT INTO `classes` VALUES ('20190202', null, '工学院', '机械系统工学', '10', '2019');
INSERT INTO `classes` VALUES ('20190203', null, '工学院', '环境化学工学', '10', '2019');
INSERT INTO `classes` VALUES ('20190301', null, '数学院', '信息与计算科学', '10', '2019');
INSERT INTO `classes` VALUES ('20190302', null, '数学院', '应用数学', '10', '2019');
INSERT INTO `classes` VALUES ('20190303', null, '数学院', '统计学', '10', '2019');
INSERT INTO `classes` VALUES ('20190401', null, '物理学院', '理论物理', '10', '2019');
INSERT INTO `classes` VALUES ('20190402', null, '物理学院', '微电子', '10', '2019');
INSERT INTO `classes` VALUES ('20190403', null, '物理学院', '凝聚态', '10', '2019');
INSERT INTO `classes` VALUES ('20190501', null, '美术学院', '中国画专业', '10', '2019');
INSERT INTO `classes` VALUES ('20190502', null, '美术学院', '油画专业', '10', '2019');
INSERT INTO `classes` VALUES ('20190503', null, '美术学院', '版画专业', '10', '2019');
INSERT INTO `classes` VALUES ('20190601', null, '舞蹈学院', '芭蕾舞', '10', '2019');
INSERT INTO `classes` VALUES ('20190602', null, '舞蹈学院', '中国古典舞', '10', '2019');
INSERT INTO `classes` VALUES ('20190603', null, '舞蹈学院', '国际标准舞', '10', '2019');
INSERT INTO `classes` VALUES ('20190701', null, '计算机科学学院', '计算机科学与技术', '10', '2019');
INSERT INTO `classes` VALUES ('20190702', null, '计算机科学学院', '网络工程', '10', '2019');
INSERT INTO `classes` VALUES ('20190703', null, '计算机科学学院', '软件工程', '10', '2019');
INSERT INTO `classes` VALUES ('20190801', null, '马克思学院', '军事学', '10', '2019');
INSERT INTO `classes` VALUES ('20190802', null, '马克思学院', '思政', '10', '2019');
INSERT INTO `classes` VALUES ('20190803', null, '马克思学院', '党史', '10', '2019');
INSERT INTO `classes` VALUES ('20200101', null, '商学院', '会计', '10', '2020');
INSERT INTO `classes` VALUES ('20200102', null, '商学院', '金融', '10', '2020');
INSERT INTO `classes` VALUES ('20200103', null, '商学院', '市场营销', '10', '2020');
INSERT INTO `classes` VALUES ('20200201', null, '工学院', '机械工学', '10', '2020');
INSERT INTO `classes` VALUES ('20200202', null, '工学院', '机械系统工学', '10', '2020');
INSERT INTO `classes` VALUES ('20200203', null, '工学院', '环境化学工学', '10', '2020');
INSERT INTO `classes` VALUES ('20200301', null, '数学院', '信息与计算科学', '10', '2020');
INSERT INTO `classes` VALUES ('20200302', null, '数学院', '应用数学', '10', '2020');
INSERT INTO `classes` VALUES ('20200303', null, '数学院', '统计学', '10', '2020');
INSERT INTO `classes` VALUES ('20200401', null, '物理学院', '理论物理', '10', '2020');
INSERT INTO `classes` VALUES ('20200402', null, '物理学院', '微电子', '10', '2020');
INSERT INTO `classes` VALUES ('20200403', null, '物理学院', '凝聚态', '10', '2020');
INSERT INTO `classes` VALUES ('20200501', null, '美术学院', '中国画专业', '10', '2020');
INSERT INTO `classes` VALUES ('20200502', null, '美术学院', '油画专业', '10', '2020');
INSERT INTO `classes` VALUES ('20200503', null, '美术学院', '版画专业', '10', '2020');
INSERT INTO `classes` VALUES ('20200601', null, '舞蹈学院', '芭蕾舞', '10', '2020');
INSERT INTO `classes` VALUES ('20200602', null, '舞蹈学院', '中国古典舞', '10', '2020');
INSERT INTO `classes` VALUES ('20200603', null, '舞蹈学院', '国际标准舞', '10', '2020');
INSERT INTO `classes` VALUES ('20200701', null, '计算机科学学院', '计算机科学与技术', '10', '2020');
INSERT INTO `classes` VALUES ('20200702', null, '计算机科学学院', '网络工程', '10', '2020');
INSERT INTO `classes` VALUES ('20200703', null, '计算机科学学院', '软件工程', '10', '2020');
INSERT INTO `classes` VALUES ('20200801', null, '马克思学院', '军事学', '10', '2020');
INSERT INTO `classes` VALUES ('20200802', null, '马克思学院', '思政', '10', '2020');
INSERT INTO `classes` VALUES ('20200803', null, '马克思学院', '党史', '10', '2020');

-- ----------------------------
-- Table structure for classes_course
-- ----------------------------
DROP TABLE IF EXISTS `classes_course`;
CREATE TABLE `classes_course` (
  `classno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`classno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of classes_course
-- ----------------------------
INSERT INTO `classes_course` VALUES ('20180101', '010001', '2020-2021学年第一学期', '已录入');
INSERT INTO `classes_course` VALUES ('20180101', '010002', '2020-2021学年第一学期', '待录入');
INSERT INTO `classes_course` VALUES ('20180101', '010003', '2020-2021学年第一学期', '待录入');
INSERT INTO `classes_course` VALUES ('20180101', '010006', '2020-2021学年第一学期', '待录入');
INSERT INTO `classes_course` VALUES ('20180101', '020001', '2020-2021学年第一学期', '待录入');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`college`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('商学院');
INSERT INTO `college` VALUES ('工学院');
INSERT INTO `college` VALUES ('数学院');
INSERT INTO `college` VALUES ('物理学院');
INSERT INTO `college` VALUES ('美术学院');
INSERT INTO `college` VALUES ('舞蹈学院');
INSERT INTO `college` VALUES ('计算机科学学院');
INSERT INTO `college` VALUES ('马克思学院');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `scoreway` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dscb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `begin_week` smallint(255) DEFAULT NULL,
  `end_week` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`cno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('010001', '微观经济学', '商学院', '必修课', '5', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('010002', '宏观经济学', '商学院', '选修课', '2', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('010003', '管理学', '商学院', '必修课', '6', '百分制', null, '43', '1', '18');
INSERT INTO `course` VALUES ('010006', '高级财务会计', '商学院', '选修课', '5', '百分制', null, '2', '3', '15');
INSERT INTO `course` VALUES ('020001', '空气动力学', '工学院', '必修课', '5', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('020002', '工程热力学', '工学院', '必修课', '4', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('020003', '理论力学', '工学院', '必修课', '3', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('020004', '材料力学', '工学院', '选修课', '2', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('020005', '流体力学进展', '工学院', '选修课', '3', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('020006', '生物流体力学', '工学院', '选修课', '4', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('030001', '高等数学', '数学院', '必修课', '2', '百分制', null, '32', '2', '18');
INSERT INTO `course` VALUES ('030002', '解析几何', '数学院', '必修课', '5', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('030003', '概率统计', '数学院', '必修课', '5', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('030004', '偏微分方程', '数学院', '必修课', '5', '百分制', null, '34', '1', '18');
INSERT INTO `course` VALUES ('030005', '图论', '数学院', '选修课', '3', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('030006', '组合学', '数学院', '选修课', '3', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('030007', '数学史', '数学院', '选修课', '2', '百分制', null, '24', '3', '15');
INSERT INTO `course` VALUES ('040001', '力学', '物理学院', '必修课', '3', '百分制', null, '28', '4', '17');
INSERT INTO `course` VALUES ('040002', '热学', '物理学院', '选修课', '2', '百分制', null, '40', '1', '20');
INSERT INTO `course` VALUES ('040003', '光学', '物理学院', '必修课', '3', '百分制', null, '38', '2', '20');
INSERT INTO `course` VALUES ('040004', '大学物理', '物理学院', '必修课', '5', '百分制', null, '40', '1', '20');
INSERT INTO `course` VALUES ('040005', '原子物理学', '物理学院', '选修课', '2', '百分制', null, '26', '3', '15');
INSERT INTO `course` VALUES ('040006', '量子力学', '物理学院', '选修课', '2', '百分制', null, '30', '1', '14');
INSERT INTO `course` VALUES ('050001', '素描', '美术学院', '必修课', '3', '百分制', null, '32', '2', '16');
INSERT INTO `course` VALUES ('050002', '色彩', '美术学院', '必修课', '3', '百分制', null, '36', '3', '20');
INSERT INTO `course` VALUES ('050003', '设计学基础', '美术学院', '必修课', '3', '百分制', null, '34', '3', '19');
INSERT INTO `course` VALUES ('050004', '艺术史', '美术学院', '选修课', '3', '百分制', null, '30', '3', '17');
INSERT INTO `course` VALUES ('050005', '软件', '美术学院', '选修课', '2', '百分制', null, '34', '3', '19');
INSERT INTO `course` VALUES ('050006', '国画', '美术学院', '选修课', '3', '百分制', null, '20', '2', '11');
INSERT INTO `course` VALUES ('060001', '中国舞蹈史', '舞蹈学院', '必修课', '3', '百分制', null, '40', '1', '20');
INSERT INTO `course` VALUES ('060002', '中国民间舞蹈文化', '舞蹈学院', '必修课', '3', '百分制', null, '40', '1', '20');
INSERT INTO `course` VALUES ('060003', '欧美现代舞史', '舞蹈学院', '必修课', '3', '百分制', null, '32', '1', '15');
INSERT INTO `course` VALUES ('060004', '舞蹈形态学', '舞蹈学院', '选修课', '2', '百分制', null, '34', '1', '17');
INSERT INTO `course` VALUES ('060005', '编舞技法', '舞蹈学院', '选修课', '3', '百分制', null, '36', '1', '18');
INSERT INTO `course` VALUES ('060006', '音乐理论', '舞蹈学院', '选修课', '3', '百分制', null, '36', '2', '19');
INSERT INTO `course` VALUES ('070001', '操作系统', '计算机科学学院', '必修课', '5', '百分制', '', '45', '1', '16');
INSERT INTO `course` VALUES ('070002', '数据结构', '计算机科学学院', '必修课', '5', '百分制', '', '45', '1', '16');
INSERT INTO `course` VALUES ('070003', '软件工程', '计算机科学学院', '必修课', '5', '百分制', '', '45', '1', '16');
INSERT INTO `course` VALUES ('070004', '安卓开发', '计算机科学学院', '选修课', '3', '百分制', '', '36', '3', '15');
INSERT INTO `course` VALUES ('070005', '大数据应用', '计算机科学学院', '选修课', '3', '百分制', '', '36', '3', '15');
INSERT INTO `course` VALUES ('070006', '网络编程', '计算机科学学院', '选修课', '3', '百分制', '', '36', '3', '15');
INSERT INTO `course` VALUES ('080001', '马克思主义基本原理概论', '马克思学院', '必修课', '7', '百分制', null, '32', '2', '18');
INSERT INTO `course` VALUES ('080002', '形式与政策', '马克思学院', '必修课', '1', '百分制', null, '32', '2', '18');
INSERT INTO `course` VALUES ('080003', '科学社会主义', '马克思学院', '必修课', '5', '百分制', '', '45', '1', '16');
INSERT INTO `course` VALUES ('080007', '现代经济学', '马克思学院', '选修课', '3', '百分制', '', '36', '3', '15');
INSERT INTO `course` VALUES ('080008', '国外马克思主义流派', '马克思学院', '选修课', '3', '百分制', '', '35', '3', '15');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('2010');
INSERT INTO `grade` VALUES ('2011');
INSERT INTO `grade` VALUES ('2012');
INSERT INTO `grade` VALUES ('2013');
INSERT INTO `grade` VALUES ('2014');
INSERT INTO `grade` VALUES ('2015');
INSERT INTO `grade` VALUES ('2016');
INSERT INTO `grade` VALUES ('2017');
INSERT INTO `grade` VALUES ('2018');
INSERT INTO `grade` VALUES ('2019');
INSERT INTO `grade` VALUES ('2020');
INSERT INTO `grade` VALUES ('2021');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `college` varchar(50) NOT NULL,
  `major1` varchar(50) DEFAULT NULL,
  `major2` varchar(50) DEFAULT NULL,
  `major3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`college`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('商学院', '会计', '金融', '市场营销');
INSERT INTO `major` VALUES ('工学院', '机械工学', '机械系统工学', '环境化学工学');
INSERT INTO `major` VALUES ('数学院', '信息与计算科学', '应用数学', '统计学');
INSERT INTO `major` VALUES ('物理学院', '理论物理', '微电子', '凝聚态');
INSERT INTO `major` VALUES ('美术学院', '中国画专业', '油画专业', '版画专业');
INSERT INTO `major` VALUES ('舞蹈学院', '芭蕾舞', '中国古典舞', '国际标准舞');
INSERT INTO `major` VALUES ('计算机科学学院', '计算机科学与技术', '网络工程', '软件工程');
INSERT INTO `major` VALUES ('马克思学院', '军事学', '思政', '党史');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sno` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `cno` int(11) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `tno` int(11) DEFAULT NULL,
  `classno` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `pscore` varchar(255) DEFAULT NULL,
  `maxscore` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('2018010101', '张三', '10001', '微观经济学', '19990001', '1', null, '90', '99', '93', '2020-2021学年第一学期', null);
INSERT INTO `sc` VALUES ('2018010102', '李四', '10001', '微观经济学', '19990001', null, null, '60', '78', '30', '2020-2021学年第一学期', null);
INSERT INTO `sc` VALUES ('2018010103', '王五', '10001', '微观经济学', '19990001', null, null, '67', '45', '60', '2020-2021学年第一学期', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `college` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `classno` varchar(50) DEFAULT NULL,
  `sno` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `pnum` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('工学院', '2010', '20170205', '2010020105', '齐聪慧', '男', '62347443166', '87543234331@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170204', '2010020104', '萦梦依', '女', '64676543234', '346542312431@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170203', '2010020103', '夏史可', '男', '87654234543', '3156316513@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170202', '2010020102', '夏来之', '女', '21643737344', '3153156136@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170201', '2010020101', '齐夏', '男', '74341241415', '3161531531@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180201', '2018020103', '齐夏', '男', '74341241415', '3161531531@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180202', '2018020201', '夏来之', '女', '21643737344', '3153156136@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180202', '2018020202', '夏史可', '男', '87654234543', '3156316513@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180202', '2018020203', '萦梦依', '女', '64676543234', '346542312431@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180203', '2018020301', '齐聪慧', '男', '62347443166', '87543234331@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180203', '2018020302', '金康', '女', '32652356315', '5135135315@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2018', '20180203', '2018020303', '秦乐', '男', '11354236534', '351354135135@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180301', '2018030101', '尉迟蓝', '男', '53153152142', '3764321@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180301', '2018030102', '元起', '女', '21421531555', '345764351@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180301', '2018030103', '陆生', '男', '46534653243', '234565432@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180302', '2018030201', '简自在', '女', '23521568765', '345676654@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180302', '2018030202', '云逸', '男', '87654334564', '3243565432@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180302', '2018030203', '梁载反', '女', '76543212345', '876543234@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180303', '2018030301', '卞官', '男', '23657432356', '7654334642@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180303', '2018030302', '王城问', '女', '76543245654', '23456787654@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2018', '20180303', '2018030303', '李然', '男', '23456780987', '3423232532@qq.com', '统计学');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180401', '2018040101', '张自然', '男', '14521565221', '23476543@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180401', '2018040102', '李青峰', '女', '65323432343', '34576523@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180401', '2018040103', '王码', '男', '13435456543', '232435467654@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180402', '2018040201', '刘峰', '女', '23432123234', '12324576543@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180402', '2018040202', '陈浩', '女', '34545434543', '1367654456@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180402', '2018040203', '陈一帆', '男', '13476433673', '3765434@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180403', '2018040301', '吴亦凡', '男', '13645234668', '987654345@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180403', '2018040302', '杨金洁', '男', '18434576364', '65434543@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('物理学院', '2018', '20180403', '2018040303', '徐波', '女', '21676135323', '65433454567@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180501', '2018050101', '尹新月', '男', '21513631412', '6532331@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180501', '2018050102', '刘晨', '女', '53566543451', '65432345@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180501', '2018050103', '李晨', '女', '76323234634', '2125323@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180502', '2018050201', '王海', '女', '14654565456', '7653454@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180502', '2018050202', '宋一', '女', '23643513456', '787654345@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180502', '2018050203', '李海燕', '女', '21264545676', '45654321234@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180503', '2018050301', '刘欣', '女', '23676545642', '2345676543@qq.com', '版画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180503', '2018050302', '张毅', '男', '87654567655', '54323456@qq.com', '版画专业');
INSERT INTO `student` VALUES ('美术学院', '2018', '20180503', '2018050303', '刘四', '男', '34576545654', '876543542@qq.com', '版画专业');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180601', '2018060101', '张三', '男', '26354234543', '4565432345@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180601', '2018060102', '周依依', '女', '76432345672', '76524565@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180601', '2018060103', '刘建安', '女', '87654323452', '5687654345@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180602', '2018060201', '李润', '男', '34565414568', '876543234@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180602', '2018060202', '张欣', '男', '87654323456', '98765435@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180602', '2018060203', '刘琦', '女', '23454456762', '87654345@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180603', '2018060301', '吴三桂', '女', '76543234542', '245654565@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180603', '2018060302', '杨建军', '男', '45676543424', '876545654@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2018', '20180603', '2018060303', '李健', '男', '76543234545', '87654345654@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180701', '2018070101', '李白', '男', '23434323442', '2345654@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180701', '2018070102', '李子器', '女', '76434543234', '875456324@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180701', '2018070103', '刘佳奇', '女', '76542345426', '876543456@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180702', '2018070201', '杨亚娟', '女', '53234565454', '7654345@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180702', '2018070202', '李去浊', '男', '87654134323', '873234532@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180702', '2018070203', '王伟', '男', '87654565432', '76543455@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180703', '2018070301', '杨威', '男', '24567843231', '14983455@qq.com', '软件工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180703', '2018070302', '周美玲', '女', '98765435423', '9876545676@qq.com', '软件工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2018', '20180703', '2018070303', '杨伟', '男', '67624542542', '9876543456@qq.com', '软件工程');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180801', '2018080101', '周伟', '男', '87654343123', '324623532@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180801', '2018080102', '杨立', '男', '23456765445', '2345654@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180801', '2018080103', '周莉莉', '女', '12345434545', '843334332@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180802', '2018080201', '孙晓燕', '女', '87654565432', '2454677545@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180802', '2018080202', '杨佳璇', '女', '16454345468', '5665434@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180802', '2018080203', '李莉莉', '女', '17643454344', '24576245325@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180803', '2018080301', '杨莹', '女', '17654345643', '21642624@qq.com', '党史');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180803', '2018080302', '孙鲁班', '女', '13676535422', '8763243542@qq.com', '党史');
INSERT INTO `student` VALUES ('马克思学院', '2018', '20180803', '2018080303', '严庆', '男', '17983453452', '1362625236@qq.com', '党史');
INSERT INTO `student` VALUES ('商学院', '2018', '20180102', '2018010202', '唐千', '男', '21321516226', '231515551@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2019', '20190101', '2019010101', '王圣安', '男', '19684563259', '4519845@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2019', '20190101', '2019010103', '李大伟', '男', '15698736548', '4564544@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2019', '20190102', '2019010201', '李欣', '女', '15932486259', '5222928@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2019', '20190102', '2019010202', '张都是', '男', '15369872548', '4651552@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2019', '20190102', '2019010203', '王睿', '女', '18369824785', '4655238@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2019', '20190103', '2019010301', '张安静', '女', '17865429856', '4564514@qq.com', '市场营销');
INSERT INTO `student` VALUES ('商学院', '2019', '20190103', '2019010302', '王拉发', '女', '17869354862', '9214527@qq.com', '市场营销');
INSERT INTO `student` VALUES ('商学院', '2019', '20190103', '2019010303', '朱拂柳', '女', '19835648256', '7569628@qq.com', '市场营销');
INSERT INTO `student` VALUES ('工学院', '2019', '20190201', '2019020101', '陆聪', '男', '15648792456', '7512651@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190201', '2019020102', '汤成都', '男', '16985422684', '5654651@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190201', '2019020103', '刘先发', '男', '14638595789', '8945614@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190202', '2019020201', '李才早', '男', '1569875489', '4514514@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190202', '2019020202', '杨东方', '男', '16958426985', '5632745@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190202', '2019020203', '李三都', '男', '16954823698', '7845855@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190203', '2019020301', '邱莹莹', '女', '14689725698', '8456124@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190203', '2019020302', '潘世', '男', '16893548695', '4564514@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2019', '20190203', '2019020303', '王飞龙', '男', '16982585255', '8456128@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190301', '2019030101', '王和', '男', '16895468926', '8564855@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190301', '2019030103', '黄飒', '女', '13698752752', '4514517@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190302', '2019030201', '杨大量', '男', '16985255456', '4512451@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190302', '2019030202', '宋蜀', '男', '15654985695', '8454545@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190302', '2019030203', '杨发', '男', '17485845859', '1489458@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190303', '2019030301', '卫村高', '男', '98456124554', '8544558@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2019', '20190303', '2019030302', '李邹', '男', '18549685845', '4512454@qq.com', '统计学');
INSERT INTO `student` VALUES ('商学院', '2018', '20380102', '2418010203', '唐以千1', '男', '21321516788', '2315155151@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2018', '20280102', '2318010201', '张顺连1', '男', '12516215421', '231515@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2018', '20180101', '2008010101', '梁诚敬1', '男', '21313122467', '213124@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2018', '20180101', '2118010102', '卢静1', '女', '21313131231', '312313@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2018', '20100101', '2218010103', '言希画1', '女', '32151517885', '689274@qq.com', '会计');
INSERT INTO `student` VALUES ('工学院', '2010', '20170207', '2010020107', '秦乐', '男', '11354236534', '351354135135@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170206', '2010020106', '金康', '女', '32652356315', '5135135315@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170208', '2010020108', '尉迟蓝', '男', '53153152142', '3764321@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170209', '2010020109', '元起', '女', '21421531555', '345764351@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170210', '2010020110', '陆生', '男', '46534653243', '234565432@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170211', '2010020111', '简自在', '女', '23521568765', '345676654@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170212', '2010020112', '云逸', '男', '87654334564', '3243565432@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170213', '2010020113', '梁载反', '女', '76543212345', '876543234@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170214', '2010020114', '卞官', '男', '23657432356', '7654334642@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170215', '2010020115', '王城问', '女', '76543245654', '23456787654@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170216', '2010020116', '李然', '男', '23456780987', '3423232532@qq.com', '统计学');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170217', '2010020117', '张自然', '男', '14521565221', '23476543@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170218', '2010020118', '李青峰', '女', '65323432343', '34576523@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170219', '2010020119', '王码', '男', '13435456543', '232435467654@qq.com', '理论物理');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170220', '2010020120', '刘峰', '女', '23432123234', '12324576543@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170221', '2010020121', '陈浩', '女', '34545434543', '1367654456@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170222', '2010020122', '陈一帆', '男', '13476433673', '3765434@qq.com', '微电子');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170223', '2010020123', '吴亦凡', '男', '13645234668', '987654345@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170224', '2010020124', '杨金洁', '男', '18434576364', '65434543@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('物理学院', '2010', '20170225', '2010020125', '徐波', '女', '21676135323', '65433454567@qq.com', '凝聚态');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170226', '2010020126', '尹新月', '男', '21513631412', '6532331@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170227', '2010020127', '刘晨', '女', '53566543451', '65432345@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170228', '2010020128', '李晨', '女', '76323234634', '2125323@qq.com', '中国画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170229', '2010020129', '王海', '女', '14654565456', '7653454@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170230', '2010020130', '宋一', '女', '23643513456', '787654345@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170231', '2010020131', '李海燕', '女', '21264545676', '45654321234@qq.com', '油画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170232', '2010020132', '刘欣', '女', '23676545642', '2345676543@qq.com', '版画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170233', '2010020133', '张毅', '男', '87654567655', '54323456@qq.com', '版画专业');
INSERT INTO `student` VALUES ('美术学院', '2010', '20170234', '2010020134', '刘四', '男', '34576545654', '876543542@qq.com', '版画专业');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170235', '2010020135', '张三', '男', '26354234543', '4565432345@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170236', '2010020136', '周依依', '女', '76432345672', '76524565@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170237', '2010020137', '刘建安', '女', '87654323452', '5687654345@qq.com', '芭蕾舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170238', '2010020138', '李润', '男', '34565414568', '876543234@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170239', '2010020139', '张欣', '男', '87654323456', '98765435@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170240', '2010020140', '刘琦', '女', '23454456762', '87654345@qq.com', '中国古典舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170241', '2010020141', '吴三桂', '女', '76543234542', '245654565@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170242', '2010020142', '杨建军', '男', '45676543424', '876545654@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('舞蹈学院', '2010', '20170243', '2010020143', '李健', '男', '76543234545', '87654345654@qq.com', '国际标准舞');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170244', '2010020144', '李白', '男', '23434323442', '2345654@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170245', '2010020145', '李子器', '女', '76434543234', '875456324@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170246', '2010020146', '刘佳奇', '女', '76542345426', '876543456@qq.com', '计算机科学与技术');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170247', '2010020147', '杨亚娟', '女', '53234565454', '7654345@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170248', '2010020148', '李去浊', '男', '87654134323', '873234532@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170249', '2010020149', '王伟', '男', '87654565432', '76543455@qq.com', '网络工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170250', '2010020150', '杨威', '男', '24567843231', '14983455@qq.com', '软件工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170251', '2010020151', '周美玲', '女', '98765435423', '9876545676@qq.com', '软件工程');
INSERT INTO `student` VALUES ('计算机科学学院', '2010', '20170252', '2010020152', '杨伟', '男', '67624542542', '9876543456@qq.com', '软件工程');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170253', '2010020153', '周伟', '男', '87654343123', '324623532@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170254', '2010020154', '杨立', '男', '23456765445', '2345654@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170255', '2010020155', '周莉莉', '女', '12345434545', '843334332@qq.com', '军事学');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170256', '2010020156', '孙晓燕', '女', '87654565432', '2454677545@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170257', '2010020157', '杨佳璇', '女', '16454345468', '5665434@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170258', '2010020158', '李莉莉', '女', '17643454344', '24576245325@qq.com', '思政');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170259', '2010020159', '杨莹', '女', '17654345643', '21642624@qq.com', '党史');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170260', '2010020160', '孙鲁班', '女', '13676535422', '8763243542@qq.com', '党史');
INSERT INTO `student` VALUES ('马克思学院', '2010', '20170261', '2010020161', '严庆', '男', '17983453452', '1362625236@qq.com', '党史');
INSERT INTO `student` VALUES ('商学院', '2010', '20170262', '2010020162', '唐千', '男', '21321516226', '231515551@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170263', '2010020163', '王圣安', '男', '19684563259', '4519845@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2010', '20170264', '2010020164', '李大伟', '男', '15698736548', '4564544@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2010', '20170265', '2010020165', '李欣', '女', '15932486259', '5222928@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170266', '2010020166', '张都是', '男', '15369872548', '4651552@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170267', '2010020167', '王睿', '女', '18369824785', '4655238@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170268', '2010020168', '张安静', '女', '17865429856', '4564514@qq.com', '市场营销');
INSERT INTO `student` VALUES ('商学院', '2010', '20170269', '2010020169', '王拉发', '女', '17869354862', '9214527@qq.com', '市场营销');
INSERT INTO `student` VALUES ('商学院', '2010', '20170270', '2010020170', '朱拂柳', '女', '19835648256', '7569628@qq.com', '市场营销');
INSERT INTO `student` VALUES ('工学院', '2010', '20170271', '2010020171', '陆聪', '男', '15648792456', '7512651@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170272', '2010020172', '汤成都', '男', '16985422684', '5654651@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170273', '2010020173', '刘先发', '男', '14638595789', '8945614@qq.com', '机械工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170274', '2010020174', '李才早', '男', '1569875489', '4514514@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170275', '2010020175', '杨东方', '男', '16958426985', '5632745@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170276', '2010020176', '李三都', '男', '16954823698', '7845855@qq.com', '机械系统工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170277', '2010020177', '邱莹莹', '女', '14689725698', '8456124@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170278', '2010020178', '潘世', '男', '16893548695', '4564514@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('工学院', '2010', '20170279', '2010020179', '王飞龙', '男', '16982585255', '8456128@qq.com', '环境化学工学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170280', '2010020180', '王和', '男', '16895468926', '8564855@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170281', '2010020181', '黄飒', '女', '13698752752', '4514517@qq.com', '信息与计算科学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170282', '2010020182', '杨大量', '男', '16985255456', '4512451@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170283', '2010020183', '宋蜀', '男', '15654985695', '8454545@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170284', '2010020184', '杨发', '男', '17485845859', '1489458@qq.com', '应用数学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170285', '2010020185', '卫村高', '男', '98456124554', '8544558@qq.com', '统计学');
INSERT INTO `student` VALUES ('数学院', '2010', '20170286', '2010020186', '李邹', '男', '18549685845', '4512454@qq.com', '统计学');
INSERT INTO `student` VALUES ('商学院', '2010', '20170287', '2010020187', '唐以千1', '男', '21321516788', '2315155151@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170288', '2010020188', '张顺连1', '男', '12516215421', '231515@qq.com', '金融');
INSERT INTO `student` VALUES ('商学院', '2010', '20170289', '2010020189', '梁诚敬1', '男', '21313122467', '213124@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2010', '20170290', '2010020190', '卢静1', '女', '21313131231', '312313@qq.com', '会计');
INSERT INTO `student` VALUES ('商学院', '2010', '20170291', '2010020191', '言希画1', '女', '32151517885', '689274@qq.com', '会计');

-- ----------------------------
-- Table structure for student_login
-- ----------------------------
DROP TABLE IF EXISTS `student_login`;
CREATE TABLE `student_login` (
  `sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_login
-- ----------------------------
INSERT INTO `student_login` VALUES ('2010020101', '齐夏', 'e4087c930b633ae773edd5f7e6b368c7', '2010020101');
INSERT INTO `student_login` VALUES ('2010020102', '夏来之', '1e89afefbaee31cf81544742f34684d7', '2010020102');
INSERT INTO `student_login` VALUES ('2010020103', '夏史可', 'b2fc4c3e85b845fcee36201fe5be717e', '2010020103');
INSERT INTO `student_login` VALUES ('2010020104', '萦梦依', 'bad5ba561c365a5be0fc9b3627503c48', '2010020104');
INSERT INTO `student_login` VALUES ('2010020105', '齐聪慧', 'e58a9190900efb455528931297135d65', '2010020105');
INSERT INTO `student_login` VALUES ('2010020106', '金康', 'e9dd23f212ca0a63dba1844c909b0f50', '2010020106');
INSERT INTO `student_login` VALUES ('2010020107', '秦乐', '2074ce2705f916998d92aa32c6e3c1a8', '2010020107');
INSERT INTO `student_login` VALUES ('2010020108', '尉迟蓝', '2dea2dc8cc77a1e6821a56f2aafec506', '2010020108');
INSERT INTO `student_login` VALUES ('2010020109', '元起', '345c40b1980c55f5cc51c07615a83f9d', '2010020109');
INSERT INTO `student_login` VALUES ('2010020110', '陆生', 'e3e20b5388689b583271cbe9e5e135e4', '2010020110');
INSERT INTO `student_login` VALUES ('2010020111', '简自在', '24b999d32b19d7bc18198e27dea145a4', '2010020111');
INSERT INTO `student_login` VALUES ('2010020112', '云逸', '449b3b88e735b0c55a6e9242f6cb9117', '2010020112');
INSERT INTO `student_login` VALUES ('2010020113', '梁载反', 'e44f4e5c6b1daa245a5b09e4ecac3c53', '2010020113');
INSERT INTO `student_login` VALUES ('2010020114', '卞官', '1e15a3a9ef2246cd03a6c2bd13cb80ce', '2010020114');
INSERT INTO `student_login` VALUES ('2010020115', '王城问', '8df5451ece37551873e11fdfb276638c', '2010020115');
INSERT INTO `student_login` VALUES ('2010020116', '李然', 'ca7ac0c572ba823be4cf1a7d6f8fabd5', '2010020116');
INSERT INTO `student_login` VALUES ('2010020117', '张自然', 'e75651933af6cd41233cd8526c507ed0', '2010020117');
INSERT INTO `student_login` VALUES ('2010020118', '李青峰', 'ba5402a44b81a87eb17c615ae9bfd432', '2010020118');
INSERT INTO `student_login` VALUES ('2010020119', '王码', '2317d885da8d23721e47b97f8c809cbe', '2010020119');
INSERT INTO `student_login` VALUES ('2010020120', '刘峰', '338fd4ce86e007110ec3f6d63c4ce373', '2010020120');
INSERT INTO `student_login` VALUES ('2010020121', '陈浩', '2787c8b2de19c5f9ee33eae1ef1fcc16', '2010020121');
INSERT INTO `student_login` VALUES ('2010020122', '陈一帆', 'fecf64b58b92db5e3d510d4fd1a5de0e', '2010020122');
INSERT INTO `student_login` VALUES ('2010020123', '吴亦凡', 'f5f1f0d44bb85ceff1f313ea5d71bfda', '2010020123');
INSERT INTO `student_login` VALUES ('2010020124', '杨金洁', '7f16f81d67c43a0003965104ab3f023f', '2010020124');
INSERT INTO `student_login` VALUES ('2010020125', '徐波', '40ace04975f58312640a6c3ba83ca2bf', '2010020125');
INSERT INTO `student_login` VALUES ('2010020126', '尹新月', '1a0f97acaebb93fd0759f79c2fdba3cd', '2010020126');
INSERT INTO `student_login` VALUES ('2010020127', '刘晨', '1581bdaa6c71017d2d5d67f2847a3db6', '2010020127');
INSERT INTO `student_login` VALUES ('2010020128', '李晨', 'e77e712e4f2d13373709ca97abbb7165', '2010020128');
INSERT INTO `student_login` VALUES ('2010020129', '王海', 'bca26986491e8551080853171ab7acfb', '2010020129');
INSERT INTO `student_login` VALUES ('2010020130', '宋一', '953b420c6e51e96906618bbdc0b8426d', '2010020130');
INSERT INTO `student_login` VALUES ('2010020131', '李海燕', '0e5150dc7240672f5883aa4e7ceaeaa4', '2010020131');
INSERT INTO `student_login` VALUES ('2010020132', '刘欣', '53b5566b7220b9a4b93067a2a2b03218', '2010020132');
INSERT INTO `student_login` VALUES ('2010020133', '张毅', '601664b23766639f46a2a0db70c4febc', '2010020133');
INSERT INTO `student_login` VALUES ('2010020134', '刘四', '45013fe2a3eb90fb76a310263d67b4f5', '2010020134');
INSERT INTO `student_login` VALUES ('2010020135', '张三', '977a39f3ddee50f2063320d0f9994aca', '2010020135');
INSERT INTO `student_login` VALUES ('2010020136', '周依依', 'e534aafe58f201d8bf866dedef61746e', '2010020136');
INSERT INTO `student_login` VALUES ('2010020137', '刘建安', '3dba057b10d715a78b330e88df6ddc38', '2010020137');
INSERT INTO `student_login` VALUES ('2010020138', '李润', 'cf1282fcb950f097d764391133bc7981', '2010020138');
INSERT INTO `student_login` VALUES ('2010020139', '张欣', '372a6066a50b65e0ad6874cd7755d1ea', '2010020139');
INSERT INTO `student_login` VALUES ('2010020140', '刘琦', '4433a51644baa91016c8279f8402c7bb', '2010020140');
INSERT INTO `student_login` VALUES ('2010020141', '吴三桂', 'f81d46199745f74602456b0bd5678f0e', '2010020141');
INSERT INTO `student_login` VALUES ('2010020142', '杨建军', '459feb54ab3da71f0952a6bdfe3f57c0', '2010020142');
INSERT INTO `student_login` VALUES ('2010020143', '李健', '3e165eb349617639a6526797e9115254', '2010020143');
INSERT INTO `student_login` VALUES ('2010020144', '李白', '16cdc27fe253fa2074d66a72b3d72725', '2010020144');
INSERT INTO `student_login` VALUES ('2010020145', '李子器', '5fe74c56c8b15b5fb621ddf74be9d899', '2010020145');
INSERT INTO `student_login` VALUES ('2010020146', '刘佳奇', '8455407948c6316b7244728052958fac', '2010020146');
INSERT INTO `student_login` VALUES ('2010020147', '杨亚娟', 'b0f3514697b01d3a8a9c293aeed8c3a2', '2010020147');
INSERT INTO `student_login` VALUES ('2010020148', '李去浊', '8e037115ca9bb0302efda2d46cdd6f2c', '2010020148');
INSERT INTO `student_login` VALUES ('2010020149', '王伟', '6cd4001ced11c7e660652ac7288c4ee0', '2010020149');
INSERT INTO `student_login` VALUES ('2010020150', '杨威', '6c2b3e996200b018611eac4ddf9326c0', '2010020150');
INSERT INTO `student_login` VALUES ('2010020151', '周美玲', '0a68fc535d5fc344652cd90d0e585a2c', '2010020151');
INSERT INTO `student_login` VALUES ('2010020152', '杨伟', 'db2ed32a19450f95680d8ad7c6bed44a', '2010020152');
INSERT INTO `student_login` VALUES ('2010020153', '周伟', '5dca5ffc3c8d3ed1304bbcaff627416e', '2010020153');
INSERT INTO `student_login` VALUES ('2010020154', '杨立', '2d754353d10761a9a94c4b9ac4d0d597', '2010020154');
INSERT INTO `student_login` VALUES ('2010020155', '周莉莉', 'f3f9b02d60b36808876164bd83ad7e8f', '2010020155');
INSERT INTO `student_login` VALUES ('2010020156', '孙晓燕', 'bb8290bde1597a6d5c8e0925839e0290', '2010020156');
INSERT INTO `student_login` VALUES ('2010020157', '杨佳璇', 'c2e07c8b1631ef983a4d74a535aef7a0', '2010020157');
INSERT INTO `student_login` VALUES ('2010020158', '李莉莉', '279e04dee99115a1072b8da3a3d45e71', '2010020158');
INSERT INTO `student_login` VALUES ('2010020159', '杨莹', '67d95f5015dbb1de2f53ccd8ba6c961b', '2010020159');
INSERT INTO `student_login` VALUES ('2010020160', '孙鲁班', '2da76b7a31f65939db62b4db2c0f70b0', '2010020160');
INSERT INTO `student_login` VALUES ('2010020161', '严庆', 'c326cbeb839c486462c89c4a793acdc3', '2010020161');
INSERT INTO `student_login` VALUES ('2010020162', '唐千', 'aaae3f338da92b715e89ff938c1ae4a9', '2010020162');
INSERT INTO `student_login` VALUES ('2010020163', '王圣安', '1c95a323177c3344af3cae648d1f4c34', '2010020163');
INSERT INTO `student_login` VALUES ('2010020164', '李大伟', '56ad2631ac9a7024b3d6e90fcc48d688', '2010020164');
INSERT INTO `student_login` VALUES ('2010020165', '李欣', '074547a9397ee097c4cb617782e1088d', '2010020165');
INSERT INTO `student_login` VALUES ('2010020166', '张都是', 'bbbd58309817754f611d60bcf4d4693f', '2010020166');
INSERT INTO `student_login` VALUES ('2010020167', '王睿', '5adc5749424278caef416d46034e9c39', '2010020167');
INSERT INTO `student_login` VALUES ('2010020168', '张安静', 'c31cf426e8f98f9c053c8bbe3dfc5066', '2010020168');
INSERT INTO `student_login` VALUES ('2010020169', '王拉发', '859fd57a792bbb49e08a8c46c6ecb6fc', '2010020169');
INSERT INTO `student_login` VALUES ('2010020170', '朱拂柳', '994da8c912a47ca3e4403ee165782345', '2010020170');
INSERT INTO `student_login` VALUES ('2010020171', '陆聪', '4909332ede77c75cdf808490beaaff82', '2010020171');
INSERT INTO `student_login` VALUES ('2010020172', '汤成都', 'de0fb9e997f928638f4bd54d30a5504f', '2010020172');
INSERT INTO `student_login` VALUES ('2010020173', '刘先发', '0c6c0235c32c1b842a347dde2ec44b06', '2010020173');
INSERT INTO `student_login` VALUES ('2010020174', '李才早', 'ada954b3461d8aa750089179e3c7062b', '2010020174');
INSERT INTO `student_login` VALUES ('2010020175', '杨东方', '7c848a61190995ed66f6aeeba3d549ed', '2010020175');
INSERT INTO `student_login` VALUES ('2010020176', '李三都', '7d8da9544e2d0df57f0b36a120ed4a91', '2010020176');
INSERT INTO `student_login` VALUES ('2010020177', '邱莹莹', '84be8181d387c62a0fafbb3cd058936f', '2010020177');
INSERT INTO `student_login` VALUES ('2010020178', '潘世', '0ce7b0ae3a8179b88d79728492fc6e0a', '2010020178');
INSERT INTO `student_login` VALUES ('2010020179', '王飞龙', 'e87f1c152a956b6807f06cc6794d8d63', '2010020179');
INSERT INTO `student_login` VALUES ('2010020180', '王和', '3706967b0dddc1b6c25b7187d937ff50', '2010020180');
INSERT INTO `student_login` VALUES ('2010020181', '黄飒', 'a720c0255532ddcaf098ce3b48b81142', '2010020181');
INSERT INTO `student_login` VALUES ('2010020182', '杨大量', '581ef06358a9cb9d1393e0fa63ae791b', '2010020182');
INSERT INTO `student_login` VALUES ('2010020183', '宋蜀', '08671f800207ec9dd293b35d650bb73e', '2010020183');
INSERT INTO `student_login` VALUES ('2010020184', '杨发', 'c97d5ea2733b5b6b4f4fd1b45fdd1c01', '2010020184');
INSERT INTO `student_login` VALUES ('2010020185', '卫村高', '0c015e3824f985d0172d274aba14175a', '2010020185');
INSERT INTO `student_login` VALUES ('2010020186', '李邹', '93769bbabbdede9989397a2be4aec679', '2010020186');
INSERT INTO `student_login` VALUES ('2010020187', '唐以千1', '579e3b6eff5f7370241392383d603f40', '2010020187');
INSERT INTO `student_login` VALUES ('2010020188', '张顺连1', '561b5e27d46e78ef44f82a3b1c1879ae', '2010020188');
INSERT INTO `student_login` VALUES ('2010020189', '梁诚敬1', 'd6531e3bc310b42730e5095b5930814e', '2010020189');
INSERT INTO `student_login` VALUES ('2010020190', '卢静1', 'e794ab9356b1dfeb1b8dfc7d7b60f98f', '2010020190');
INSERT INTO `student_login` VALUES ('2010020191', '言希画1', '2af37c51b6ebde558fd9cec0d5145e27', '2010020191');
INSERT INTO `student_login` VALUES ('22222222', '1', '15368eac25eb0c54d33315034fedc40b', '22222222');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tno` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tsex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `college` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pnum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('19990008', '王森勋', '男', '讲师', '数学院', '博士', 'wsx777@qq.com', '15559666687', null);
INSERT INTO `teacher` VALUES ('19990009', '熊久浩', '男', '副教授', '数学院', '博士', 'xjh999@qq.com', '12698456663', null);
INSERT INTO `teacher` VALUES ('19990010', '张致邦', '男', '副教授', '物理学院', '博士', '213123123@qq.com', '12345678901', null);
INSERT INTO `teacher` VALUES ('19990011', '曾妍景', '女', '助教', '物理学院', '硕士', '789321793@qq.com', '12345428901', null);
INSERT INTO `teacher` VALUES ('19990012', '刘格颢', '女', '教授', '物理学院', '博士', '235739799@qq.com', '12342421901', null);
INSERT INTO `teacher` VALUES ('19990013', '吴柔洁', '女', '副教授', '美术学院', '硕士', '231515415@qq.com', '12341253901', null);
INSERT INTO `teacher` VALUES ('19990014', '李蕴翰', '男', '助教', '美术学院', '博士', '876543567@qq.com', '12345631231', null);
INSERT INTO `teacher` VALUES ('19990015', '宋铭苇', '女', '副教授', '美术学院', '博士', '356673262@qq.com', '12321312413', null);
INSERT INTO `teacher` VALUES ('19990016', '任丰昊', '男', '讲师', '舞蹈学院', '博士', '515151672@qq.com', '12345642147', null);
INSERT INTO `teacher` VALUES ('19990017', '李熙雪', '女', '教授', '舞蹈学院', '硕士', '731372216@qq.com', '12349991201', null);
INSERT INTO `teacher` VALUES ('19990018', '刘莉美', '女', '助教', '舞蹈学院', '博士', '613461341@qq.com', '11233131890', null);
INSERT INTO `teacher` VALUES ('19990019', '欣霞', '女', '教授', '计算机科学学院', '博士', '93387465@qq.com', '13548996583', null);
INSERT INTO `teacher` VALUES ('19990020', '汇鹏', '男', '副教授', '计算机科学学院', '博士', '45124563@qq.com', '17725693489', null);
INSERT INTO `teacher` VALUES ('19990021', '王建远', '男', '讲师', '计算机科学学院', '博士', '84584564@qq.com', '18345697256', null);
INSERT INTO `teacher` VALUES ('19990022', '昱永', '男', '副教授', '马克思学院', '博士', '65856854@qq.com', '13658974286', null);
INSERT INTO `teacher` VALUES ('19990023', '杨卿山', '男', '讲师', '马克思学院', '硕士研究生', '85451956@qq.com', '14698253647', null);
INSERT INTO `teacher` VALUES ('19990024', '岚瑶', '女', '讲师', '马克思学院', '博士', '65485425@qq.com', '15536924895', null);
INSERT INTO `teacher` VALUES ('19990025', '唐三', '男', '讲师', '马克思学院', '硕士研究生', '1723237959@qq.com', '1111111111', '');
INSERT INTO `teacher` VALUES ('19990026', '唐三', '男', '讲师', '马克思学院', '硕士研究生', '1723237959@qq.com', '1111111111', '');
INSERT INTO `teacher` VALUES ('20180005', '曾妍景', '20180005', '助教', '物理学院', '硕士', '789321793@qq.com', '12345428901', '空');
INSERT INTO `teacher` VALUES ('20180006', '刘格颢', '20180006', '教授', '物理学院', '博士', '235739799@qq.com', '12342421901', '空');
INSERT INTO `teacher` VALUES ('20180007', '吴柔洁', '20180007', '副教授', '美术学院', '硕士', '231515415@qq.com', '12341253901', '空');
INSERT INTO `teacher` VALUES ('20180008', '李蕴翰', '20180008', '助教', '美术学院', '博士', '876543567@qq.com', '12345631231', '空');
INSERT INTO `teacher` VALUES ('20180009', '宋铭苇', '20180009', '副教授', '美术学院', '博士', '356673262@qq.com', '12321312413', '空');
INSERT INTO `teacher` VALUES ('20180010', '任丰昊', '20180010', '讲师', '舞蹈学院', '博士', '515151672@qq.com', '12345642147', '空');
INSERT INTO `teacher` VALUES ('20180011', '李熙雪', '20180011', '教授', '舞蹈学院', '硕士', '731372216@qq.com', '12349991201', '空');
INSERT INTO `teacher` VALUES ('20180012', '刘莉美', '20180012', '助教', '舞蹈学院', '博士', '613461341@qq.com', '11233131890', '空');
INSERT INTO `teacher` VALUES ('20180013', '欣霞', '20180013', '教授', '计算机科学学院', '博士', '93387465@qq.com', '13548996583', '空');
INSERT INTO `teacher` VALUES ('20180014', '汇鹏', '20180014', '副教授', '计算机科学学院', '博士', '45124563@qq.com', '17725693489', '空');
INSERT INTO `teacher` VALUES ('20180015', '王建远', '20180015', '讲师', '计算机科学学院', '博士', '84584564@qq.com', '18345697256', '空');
INSERT INTO `teacher` VALUES ('20180016', '昱永', '20180016', '副教授', '马克思学院', '博士', '65856854@qq.com', '13658974286', '空');
INSERT INTO `teacher` VALUES ('20180017', '杨卿山', '20180017', '讲师', '马克思学院', '硕士研究生', '85451956@qq.com', '14698253647', '空');
INSERT INTO `teacher` VALUES ('20180018', '岚瑶', '20180018', '讲师', '马克思学院', '博士', '65485425@qq.com', '15536924895', '空');
INSERT INTO `teacher` VALUES ('20180019', '唐三', '20180019', '讲师', '马克思学院', '硕士研究生', '1723237959@qq.com', '1111111111', '空');
INSERT INTO `teacher` VALUES ('20180020', '唐三', '20180020', '讲师', '马克思学院', '硕士研究生', '1723237959@qq.com', '1111111111', '空');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `week` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('52', '19990001', '010001', 'B101', '1', '1', '正常', '20180101', null);
INSERT INTO `teacher_course` VALUES ('53', '19990001', '010002', 'A202', '1', '3', '正常', '20180101', null);
INSERT INTO `teacher_course` VALUES ('54', '19990001', '010003', 'A101', '1', '1', '调停课审核中', '20180101', null);
INSERT INTO `teacher_course` VALUES ('55', '19990001', '010006', 'A102', '2', '3', '正常', '20180101', null);

-- ----------------------------
-- Table structure for teacher_login
-- ----------------------------
DROP TABLE IF EXISTS `teacher_login`;
CREATE TABLE `teacher_login` (
  `tno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_login
-- ----------------------------
INSERT INTO `teacher_login` VALUES ('19990001', '张瑞贤', '3af055d6e16dcc500037f7d4a1898d86', '19990001');
INSERT INTO `teacher_login` VALUES ('20180005', '曾妍景', '88126438e45c86725e09e3f64bdb2b9d', '20180005');
INSERT INTO `teacher_login` VALUES ('20180006', '刘格颢', 'e7ac608d4f0c4811d3b20a1ead8de7d1', '20180006');
INSERT INTO `teacher_login` VALUES ('20180007', '吴柔洁', '721d1f17c94f8c381e72bc3c4623bbed', '20180007');
INSERT INTO `teacher_login` VALUES ('20180008', '李蕴翰', 'e303301ec92d253d13511cdbaf729cce', '20180008');
INSERT INTO `teacher_login` VALUES ('20180009', '宋铭苇', 'c73f0e7ad9a77c61a18e8b2e73824cee', '20180009');
INSERT INTO `teacher_login` VALUES ('20180010', '任丰昊', '3fc10c72f97e2bf0083eb543c14f98ab', '20180010');
INSERT INTO `teacher_login` VALUES ('20180011', '李熙雪', '2ab10922a37bda25eb2a1a431c5e7c0f', '20180011');
INSERT INTO `teacher_login` VALUES ('20180012', '刘莉美', 'b4d9af1067d2e40ee9143272f754376f', '20180012');
INSERT INTO `teacher_login` VALUES ('20180013', '欣霞', '79fb320056c4dae19b81d465036fbbaa', '20180013');
INSERT INTO `teacher_login` VALUES ('20180014', '汇鹏', 'b3ffe7a738b90ff69b61675044bc0191', '20180014');
INSERT INTO `teacher_login` VALUES ('20180015', '王建远', 'ef65f1c7928627455b9eedf0b2ef7b0d', '20180015');
INSERT INTO `teacher_login` VALUES ('20180016', '昱永', '8f9095d719eb6c5f0a31ef9b0232b9a1', '20180016');
INSERT INTO `teacher_login` VALUES ('20180017', '杨卿山', '2079fba5a11b0232b6f01d14175aa1e4', '20180017');
INSERT INTO `teacher_login` VALUES ('20180018', '岚瑶', 'efbf2561f8ac55de65238f6616cd2667', '20180018');
INSERT INTO `teacher_login` VALUES ('20180019', '唐三', '40c21f7011327fc78c5519b30dbd58d2', '20180019');
INSERT INTO `teacher_login` VALUES ('20180020', '唐三', 'a92b8b7134e1de799ab0afd95e9e887d', '20180020');
