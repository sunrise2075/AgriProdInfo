DROP DATABASE IF EXISTS `2020091210592037`;
CREATE DATABASE `2020091210592037`;
use `2020091210592037`;

DROP DATABASE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`originName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原始文件名',
`fileName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '姓名',
`password` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '密码',
`nickName` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '昵称',
`sex` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '性别',
`age` int(10) COMMENT '年龄',
`birthday` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '生日',
`phone` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '手机号',
`address` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '地址',
`code` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '编号',
`email` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '邮箱',
`cardId` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '身份证',
`level` int(10) NOT NULL DEFAULT '1' COMMENT '权限等级',
UNIQUE KEY `uk_name` (`name`) USING BTREE,
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';


DROP TABLE IF EXISTS `agri_tech_info`;
CREATE TABLE `agri_tech_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '指导标题',
`content` text COMMENT '指导内容',
`createdTime` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建时间',
`createdBy` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建人',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农事指导信息表';


DROP TABLE IF EXISTS `argi_policy_info`;
CREATE TABLE `argi_policy_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '政策扶持标题',
`content` text COMMENT '政策扶持内容详情',
`createdTime` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建时间',
`createdBy` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建人',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='政策扶持专题信息表';


DROP TABLE IF EXISTS `argi_product_info`;
CREATE TABLE `argi_product_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '农产品名称',
`description` text COMMENT '农产品描述',
`createdTime` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建时间',
`createdBy` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '创建人',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农产品信息表';


DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '姓名',
`password` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '密码',
`nickName` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '昵称',
`sex` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '性别',
`age` int(10) COMMENT '年龄',
`birthday` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '生日',
`phone` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '手机号',
`address` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '地址',
`email` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '邮箱',
`level` int(10) NOT NULL DEFAULT '3' COMMENT '权限等级',
UNIQUE KEY `uk_name` (`name`) USING BTREE,
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';


DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '公告名称',
`content` longtext COMMENT '公告内容',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '公告时间',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';


DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '留言名称',
`content` text COMMENT '留言内容',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '留言时间',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留言信息表';


INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2020-09-12 23:34:25', '18843232356', '上海市', '111', 'aa@163.com', '342425199001116372', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 23, '2020-09-12 23:34:25', '18843232356', '北京市', '222', 'bb@163.com', '342425199001116376', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (3, 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 32, '2020-09-12 23:34:25', '18843232356', '合肥市', '333', 'cc@163.com', '342425199001116323', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (4, 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 24, '2020-09-12 23:34:25', '18843232356', '北京市', '444', 'hahaha@126.com', '342425199001116837', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (5, 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 25, '2020-09-12 23:34:25', '18843232356', '合肥市', '555', 'hello@126.com', '342425199001116309', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (6, 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 26, '2020-09-12 23:34:25', '18843232356', '北京市', '666', '1212@qq.com', '342425199001116984', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (7, 'admin7', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 21, '2020-09-12 23:34:25', '18843232356', '合肥市', '777', '8765@qq.com', '342425199001116303', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (8, 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 31, '2020-09-12 23:34:25', '18843232356', '北京市', '888', '9080@qq.com', '342425199001116910', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (9, 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 34, '2020-09-12 23:34:25', '18843232356', '合肥市', '999', 'shjs@126.com', '342425199001116345', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (10, 'admin10', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 33, '2020-09-12 23:34:25', '18843232356', '深圳市', '000', '666@qq.com', '342425199001116234', 1);


INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老张', '男', 22, '2020-09-12 23:34:25', '18843232356', '上海市', 'aa@163.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (2, '赵千里', 'e10adc3949ba59abbe56e057f20f883e', '老赵', '男', 23, '2020-09-12 23:34:25', '18843232356', '北京市', 'bb@163.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (3, '钱优优', 'e10adc3949ba59abbe56e057f20f883e', '老钱', '女', 32, '2020-09-12 23:34:25', '18843232356', '合肥市', 'cc@163.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (4, '贾宏鑫', 'e10adc3949ba59abbe56e057f20f883e', '老贾', '女', 24, '2020-09-12 23:34:25', '18843232356', '北京市', 'hahaha@126.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (5, '夏其林', 'e10adc3949ba59abbe56e057f20f883e', '老夏', '男', 25, '2020-09-12 23:34:25', '18843232356', '合肥市', 'hello@126.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (6, '倪标生', 'e10adc3949ba59abbe56e057f20f883e', '老倪', '男', 26, '2020-09-12 23:34:25', '18843232356', '北京市', '1212@qq.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (7, '孙晓哈', 'e10adc3949ba59abbe56e057f20f883e', '老孙', '男', 21, '2020-09-12 23:34:25', '18843232356', '合肥市', '8765@qq.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (8, '李锐', 'e10adc3949ba59abbe56e057f20f883e', '老李', '男', 31, '2020-09-12 23:34:25', '18843232356', '北京市', '9080@qq.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (9, '吴腊苏', 'e10adc3949ba59abbe56e057f20f883e', '老吴', '男', 34, '2020-09-12 23:34:25', '18843232356', '合肥市', 'shjs@126.com', 3);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, level) VALUES (10, '潘晓章', 'e10adc3949ba59abbe56e057f20f883e', '老潘', '女', 33, '2020-09-12 23:34:25', '18843232356', '深圳市', '666@qq.com', 3);


INSERT INTO `advertiser_info` (id, name, content, time) VALUES (1, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (2, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (3, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (4, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (5, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (6, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (7, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (8, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (9, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (10, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-12 23:34:25');


INSERT INTO `message_info` (id, name, content, time) VALUES (1, '小李', '来了', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (2, '小张', '我觉得系统需要改进下', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (3, '老湿', '这个系统太棒了', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (4, '骑猪去旅行', '请问哪里有邮箱？', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (5, '一行清泪', '我该怎么联系管理员呢？', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (6, '小魔仙', '来过！', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (7, '水壶', '哈哈哈哈哈', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (8, '哈哈哈嗝', '我觉得帅的很', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (9, '我是一只小蚂蚱', '666', '2020-09-12 23:34:25');
INSERT INTO `message_info` (id, name, content, time) VALUES (10, '不要问问就是牛逼', '牛逼就完事了', '2020-09-12 23:34:25');


