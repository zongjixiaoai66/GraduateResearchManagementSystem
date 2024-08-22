/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t374`;
CREATE DATABASE IF NOT EXISTS `t374` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t374`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'zhuanye_types', '学校', 1, '学校1', NULL, NULL, '2023-03-08 11:45:10'),
	(2, 'zhuanye_types', '学校', 2, '学校2', NULL, NULL, '2023-03-08 11:45:10'),
	(3, 'zhuanye_types', '学校', 3, '学校3', NULL, NULL, '2023-03-08 11:45:10'),
	(4, 'zhuanye_erji_types', '学院', 1, '学院1', 1, NULL, '2023-03-08 11:45:10'),
	(5, 'zhuanye_erji_types', '学院', 2, '学院2', 2, NULL, '2023-03-08 11:45:10'),
	(6, 'zhuanye_erji_types', '学院', 3, '学院3', 3, NULL, '2023-03-08 11:45:10'),
	(7, 'zuanye_types', '专业类型', 1, '专业类型1', NULL, NULL, '2023-03-08 11:45:10'),
	(8, 'zuanye_types', '专业类型', 2, '专业类型2', NULL, NULL, '2023-03-08 11:45:10'),
	(9, 'zuanye_types', '专业类型', 3, '专业类型3', NULL, NULL, '2023-03-08 11:45:10'),
	(10, 'kecheng_types', '课程类型', 1, '课程类型1', NULL, NULL, '2023-03-08 11:45:10'),
	(11, 'kecheng_types', '课程类型', 2, '课程类型2', NULL, NULL, '2023-03-08 11:45:10'),
	(12, 'kecheng_types', '课程类型', 3, '课程类型3', NULL, NULL, '2023-03-08 11:45:10'),
	(13, 'jiaoshi_types', '教师类型', 1, '教师类型1', NULL, NULL, '2023-03-08 11:45:10'),
	(14, 'jiaoshi_types', '教师类型', 2, '教师类型2', NULL, NULL, '2023-03-08 11:45:10'),
	(15, 'jiaoshi_types', '教师类型', 3, '教师类型3', NULL, NULL, '2023-03-08 11:45:10'),
	(16, 'exampaper_types', '问卷状态', 1, '启用', NULL, NULL, '2023-03-08 11:45:10'),
	(17, 'exampaper_types', '问卷状态', 2, '禁用', NULL, NULL, '2023-03-08 11:45:10'),
	(18, 'examquestion_types', '试题类型', 1, '单选', NULL, NULL, '2023-03-08 11:45:10'),
	(19, 'examquestion_types', '试题类型', 2, '多选', NULL, NULL, '2023-03-08 11:45:10'),
	(20, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-08 11:45:10'),
	(21, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-08 11:45:11'),
	(22, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-03-08 11:45:11'),
	(23, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-08 11:45:11'),
	(24, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-08 11:45:11'),
	(25, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-08 11:45:11'),
	(26, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-08 11:45:11');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '问卷名称 Search111',
  `exampaper_date` int NOT NULL COMMENT '时长(分钟)',
  `exampaper_jieshuyu` varchar(255) DEFAULT NULL COMMENT '结束语',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '问卷状态 Search111',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='问卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_jieshuyu`, `exampaper_types`, `create_time`) VALUES
	(2, '《永劫无间》调查问卷', 60, '非常感谢您的参与！希望您能够继续关注《永劫无间》的游戏以及周边产品哦！', 1, '2023-03-08 11:45:10');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '所属问卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `exampaper_id`, `examquestion_name`, `examquestion_options`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(27, 2, '您对于《永劫无间》这款游戏的体验程度是？', '[{"text":"玩过","code":"A"},{"text":"没玩过但看过直播/录播","code":"B"},{"text":"其他","code":"C"}]', 1, 1, '2023-03-08 11:45:10'),
	(28, 2, '您比较喜欢下列哪些种类的游戏？', '[{"text":"卡牌类（炉石传说、明日方舟，皇室战争）","code":"A"},{"text":"养成类（宝可梦，奇迹暖暖，阴阳师）","code":"B"},{"text":"竞速类（qq飞车，跑跑卡丁车等）","code":"C"},{"text":"moba类（王者荣耀，lol，虚荣）","code":"D"}]', 2, 2, '2023-03-08 11:45:10'),
	(29, 2, '您的年龄段是？', '[{"text":"16-18岁","code":"A"},{"text":"19-24岁","code":"B"},{"text":"25-30岁","code":"C"},{"text":"30岁以上","code":"D"}]', 1, 3, '2023-03-08 11:45:10'),
	(30, 2, '您的性别是？', '[{"text":"男","code":"A"},{"text":"女","code":"B"},{"text":"其他","code":"C"}]', 1, 4, '2023-03-08 11:45:10'),
	(31, 2, '您的职业或身份是？', '[{"text":"学生","code":"A"},{"text":"公职人员（教师，医生，公务员等）","code":"B"},{"text":"公司员工（主要是指定期上班的员工等）","code":"C"},{"text":"个体经营者（比如个体经营户，自由插画师等等）","code":"D"}]', 1, 5, '2023-03-08 11:45:10'),
	(32, 2, 'test', '[{"text":"测试","code":"A"},{"text":"测试2","code":"B"},{"text":"测试3","code":"C"}]', 2, 1111, '2023-03-08 11:45:10'),
	(33, 2, '1111111', '[{"text":"123","code":"A"},{"text":"321","code":"B"},{"text":"312","code":"C"},{"text":"231","code":"D"}]', 2, 1111, '2023-03-08 11:45:10');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '问卷调查编号',
  `yonghu_id` int NOT NULL COMMENT '问卷调查用户',
  `exampaper_id` int NOT NULL COMMENT '所属问卷id（外键）',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '问卷调查时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='问卷调查记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `insert_time`, `create_time`) VALUES
	(6, '1723446401279', 1, 2, '2024-08-12 07:06:41', '2024-08-12 07:06:41');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '问卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户选项',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `create_time`) VALUES
	(29, '1723446401279', 1, 33, 'A', '2024-08-12 07:06:45'),
	(30, '1723446401279', 1, 32, 'A', '2024-08-12 07:06:48'),
	(31, '1723446401279', 1, 27, '未作答', '2024-08-12 07:06:50'),
	(32, '1723446401279', 1, 28, '未作答', '2024-08-12 07:06:50'),
	(33, '1723446401279', 1, 29, '未作答', '2024-08-12 07:06:50'),
	(34, '1723446401279', 1, 30, '未作答', '2024-08-12 07:06:50'),
	(35, '1723446401279', 1, 31, '未作答', '2024-08-12 07:06:50');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='情感树洞';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 436, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 187, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(3, '帖子标题3', 3, NULL, '发布内容3', 401, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(4, '帖子标题4', 1, NULL, '发布内容4', 356, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(5, '帖子标题5', 2, NULL, '发布内容5', 33, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(6, '帖子标题6', 2, NULL, '发布内容6', 76, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(7, '帖子标题7', 1, NULL, '发布内容7', 121, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 495, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 448, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(10, '帖子标题10', 2, NULL, '发布内容10', 334, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(11, '帖子标题11', 3, NULL, '发布内容11', 353, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(12, '帖子标题12', 1, NULL, '发布内容12', 220, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(13, '帖子标题13', 1, NULL, '发布内容13', 240, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(14, '帖子标题14', 1, NULL, '发布内容14', 32, 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(15, NULL, 1, NULL, '666', 14, 2, '2024-08-12 07:06:57', NULL, '2024-08-12 07:06:57');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_types` int DEFAULT NULL COMMENT '教师类型 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_shichang` varchar(200) DEFAULT NULL COMMENT '工作时长',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `zhuanye_types` int DEFAULT NULL COMMENT '学校 Search111',
  `zhuanye_erji_types` int DEFAULT NULL COMMENT '学院 Search111',
  `jiaoshi_content` text COMMENT '教师简介',
  `jiaoshi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='教师信息';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `jiaoshi_name`, `jiaoshi_types`, `jiaoshi_photo`, `jiaoshi_phone`, `jiaoshi_shichang`, `sex_types`, `zhuanye_types`, `zhuanye_erji_types`, `jiaoshi_content`, `jiaoshi_delete`, `insert_time`, `create_time`) VALUES
	(1, '教师名称1', 3, 'upload/jiaoshi1.jpg', '17703786901', '工作时长1', 1, 2, 1, '教师简介1', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(2, '教师名称2', 1, 'upload/jiaoshi2.jpg', '17703786902', '工作时长2', 2, 1, 3, '教师简介2', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(3, '教师名称3', 2, 'upload/jiaoshi3.jpg', '17703786903', '工作时长3', 2, 1, 2, '教师简介3', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(4, '教师名称4', 3, 'upload/jiaoshi4.jpg', '17703786904', '工作时长4', 1, 1, 2, '教师简介4', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(5, '教师名称5', 1, 'upload/jiaoshi5.jpg', '17703786905', '工作时长5', 1, 1, 3, '教师简介5', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(6, '教师名称6', 2, 'upload/jiaoshi6.jpg', '17703786906', '工作时长6', 2, 2, 2, '教师简介6', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(7, '教师名称7', 3, 'upload/jiaoshi7.jpg', '17703786907', '工作时长7', 1, 2, 2, '教师简介7', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(8, '教师名称8', 1, 'upload/jiaoshi8.jpg', '17703786908', '工作时长8', 1, 2, 2, '教师简介8', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(9, '教师名称9', 3, 'upload/jiaoshi9.jpg', '17703786909', '工作时长9', 1, 2, 2, '教师简介9', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(10, '教师名称10', 3, 'upload/jiaoshi10.jpg', '17703786910', '工作时长10', 2, 2, 2, '教师简介10', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(11, '教师名称11', 1, 'upload/jiaoshi11.jpg', '17703786911', '工作时长11', 1, 1, 3, '教师简介11', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(12, '教师名称12', 1, 'upload/jiaoshi12.jpg', '17703786912', '工作时长12', 1, 2, 3, '教师简介12', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(13, '教师名称13', 3, 'upload/jiaoshi13.jpg', '17703786913', '工作时长13', 2, 2, 2, '教师简介13', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(14, '教师名称14', 2, 'upload/jiaoshi14.jpg', '17703786914', '工作时长14', 1, 2, 1, '教师简介14', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111 ',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `jiaoshi_id` int DEFAULT NULL COMMENT '上课教师',
  `zhuanye_id` int DEFAULT NULL COMMENT '专业信息',
  `kecheng_shangke` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `kecheng_shichang` varchar(200) DEFAULT NULL COMMENT '课程时长',
  `zhuanye_types` int DEFAULT NULL COMMENT '学校 Search111',
  `zhuanye_erji_types` int DEFAULT NULL COMMENT '学院 Search111',
  `kecheng_content` text COMMENT '课程简介',
  `kecheng_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='课表信息';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_name`, `kecheng_types`, `kecheng_photo`, `jiaoshi_id`, `zhuanye_id`, `kecheng_shangke`, `kecheng_shichang`, `zhuanye_types`, `zhuanye_erji_types`, `kecheng_content`, `kecheng_delete`, `insert_time`, `create_time`) VALUES
	(1, '课程名称1', 3, 'upload/kecheng1.jpg', 1, 1, '上课时间1', '课程时长1', 1, 2, '课程简介1', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(2, '课程名称2', 3, 'upload/kecheng2.jpg', 2, 2, '上课时间2', '课程时长2', 2, 1, '课程简介2', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(3, '课程名称3', 2, 'upload/kecheng3.jpg', 3, 3, '上课时间3', '课程时长3', 3, 2, '课程简介3', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(4, '课程名称4', 3, 'upload/kecheng4.jpg', 4, 4, '上课时间4', '课程时长4', 1, 1, '课程简介4', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(5, '课程名称5', 1, 'upload/kecheng5.jpg', 5, 5, '上课时间5', '课程时长5', 2, 3, '课程简介5', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(6, '课程名称6', 2, 'upload/kecheng6.jpg', 6, 6, '上课时间6', '课程时长6', 1, 3, '课程简介6', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(7, '课程名称7', 2, 'upload/kecheng7.jpg', 7, 7, '上课时间7', '课程时长7', 2, 3, '课程简介7', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(8, '课程名称8', 2, 'upload/kecheng8.jpg', 8, 8, '上课时间8', '课程时长8', 1, 2, '课程简介8', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(9, '课程名称9', 3, 'upload/kecheng9.jpg', 9, 9, '上课时间9', '课程时长9', 1, 3, '课程简介9', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(10, '课程名称10', 2, 'upload/kecheng10.jpg', 10, 10, '上课时间10', '课程时长10', 2, 1, '课程简介10', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(11, '课程名称11', 1, 'upload/kecheng11.jpg', 11, 11, '上课时间11', '课程时长11', 3, 2, '课程简介11', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(12, '课程名称12', 2, 'upload/kecheng12.jpg', 12, 12, '上课时间12', '课程时长12', 1, 1, '课程简介12', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(13, '课程名称13', 1, 'upload/kecheng13.jpg', 13, 13, '上课时间13', '课程时长13', 1, 3, '课程简介13', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(14, '课程名称14', 1, 'upload/kecheng14.jpg', 14, 14, '上课时间14', '课程时长14', 3, 3, '课程简介14', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-03-08 11:47:55', '公告详情1', '2023-03-08 11:47:55'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-03-08 11:47:55', '公告详情2', '2023-03-08 11:47:55'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-03-08 11:47:55', '公告详情3', '2023-03-08 11:47:55'),
	(4, '公告标题4', 3, 'upload/news4.jpg', '2023-03-08 11:47:55', '公告详情4', '2023-03-08 11:47:55'),
	(5, '公告标题5', 3, 'upload/news5.jpg', '2023-03-08 11:47:55', '公告详情5', '2023-03-08 11:47:55'),
	(6, '公告标题6', 3, 'upload/news6.jpg', '2023-03-08 11:47:55', '公告详情6', '2023-03-08 11:47:55'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-03-08 11:47:55', '公告详情7', '2023-03-08 11:47:55'),
	(8, '公告标题8', 3, 'upload/news8.jpg', '2023-03-08 11:47:55', '公告详情8', '2023-03-08 11:47:55'),
	(9, '公告标题9', 2, 'upload/news9.jpg', '2023-03-08 11:47:55', '公告详情9', '2023-03-08 11:47:55'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-03-08 11:47:55', '公告详情10', '2023-03-08 11:47:55'),
	(11, '公告标题11', 3, 'upload/news11.jpg', '2023-03-08 11:47:55', '公告详情11', '2023-03-08 11:47:55'),
	(12, '公告标题12', 3, 'upload/news12.jpg', '2023-03-08 11:47:55', '公告详情12', '2023-03-08 11:47:55'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-03-08 11:47:55', '公告详情13', '2023-03-08 11:47:55'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-03-08 11:47:55', '公告详情14', '2023-03-08 11:47:55');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '00dgmxq5a40y24oznrw45gtxes65ta84', '2023-03-08 11:54:46', '2024-08-12 08:05:17'),
	(2, 1, '用户1', 'yonghu', '用户', 'ayqwwe2svwsrpcquv45afqczq3de1z3x', '2024-08-12 07:06:30', '2024-08-12 08:06:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-08 11:45:10');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 1, '2023-03-08 11:47:55'),
	(2, '用户2', '123456', '用户姓名2', 1, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 1, '2023-03-08 11:47:55'),
	(3, '用户3', '123456', '用户姓名3', 2, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 1, '2023-03-08 11:47:55');

DROP TABLE IF EXISTS `zhuanye`;
CREATE TABLE IF NOT EXISTS `zhuanye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhuanye_name` varchar(200) DEFAULT NULL COMMENT '专业名称 Search111 ',
  `zuanye_types` int DEFAULT NULL COMMENT '专业类型 Search111',
  `zhuanye_photo` varchar(200) DEFAULT NULL COMMENT '专业封面',
  `zhuanye_shangke` varchar(200) DEFAULT NULL COMMENT '师资力量',
  `zhuanye_number` int DEFAULT NULL COMMENT '招生人数',
  `zhuanye_types` int DEFAULT NULL COMMENT '学校 Search111',
  `zhuanye_erji_types` int DEFAULT NULL COMMENT '学院 Search111',
  `zhuanye_content` text COMMENT '专业简介',
  `zhuanye_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='专业信息';

DELETE FROM `zhuanye`;
INSERT INTO `zhuanye` (`id`, `zhuanye_name`, `zuanye_types`, `zhuanye_photo`, `zhuanye_shangke`, `zhuanye_number`, `zhuanye_types`, `zhuanye_erji_types`, `zhuanye_content`, `zhuanye_delete`, `insert_time`, `create_time`) VALUES
	(1, '专业名称1', 1, 'upload/zhuanye1.jpg', '师资力量1', 347, 2, 3, '专业简介1', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(2, '专业名称2', 1, 'upload/zhuanye2.jpg', '师资力量2', 31, 1, 3, '专业简介2', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(3, '专业名称3', 1, 'upload/zhuanye3.jpg', '师资力量3', 311, 1, 2, '专业简介3', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(4, '专业名称4', 3, 'upload/zhuanye4.jpg', '师资力量4', 365, 2, 3, '专业简介4', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(5, '专业名称5', 1, 'upload/zhuanye5.jpg', '师资力量5', 56, 1, 2, '专业简介5', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(6, '专业名称6', 3, 'upload/zhuanye6.jpg', '师资力量6', 254, 1, 3, '专业简介6', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(7, '专业名称7', 2, 'upload/zhuanye7.jpg', '师资力量7', 258, 3, 2, '专业简介7', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(8, '专业名称8', 2, 'upload/zhuanye8.jpg', '师资力量8', 471, 3, 3, '专业简介8', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(9, '专业名称9', 3, 'upload/zhuanye9.jpg', '师资力量9', 299, 1, 3, '专业简介9', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(10, '专业名称10', 1, 'upload/zhuanye10.jpg', '师资力量10', 70, 3, 3, '专业简介10', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(11, '专业名称11', 1, 'upload/zhuanye11.jpg', '师资力量11', 20, 1, 1, '专业简介11', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(12, '专业名称12', 3, 'upload/zhuanye12.jpg', '师资力量12', 217, 1, 1, '专业简介12', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(13, '专业名称13', 2, 'upload/zhuanye13.jpg', '师资力量13', 222, 3, 2, '专业简介13', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55'),
	(14, '专业名称14', 1, 'upload/zhuanye14.jpg', '师资力量14', 270, 3, 1, '专业简介14', 1, '2023-03-08 11:47:55', '2023-03-08 11:47:55');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
