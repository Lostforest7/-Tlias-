/*
 Navicat Premium Data Transfer

 Source Server         : 12345
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : web03

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 27/03/2025 11:33:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clazz
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级名称',
  `room` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级教室',
  `begin_date` date NOT NULL COMMENT '开课时间',
  `end_date` date NOT NULL COMMENT '结课时间',
  `master_id` int UNSIGNED NULL DEFAULT NULL COMMENT '班主任ID, 关联员工表ID',
  `subject` tinyint UNSIGNED NOT NULL COMMENT '学科, 1:java, 2:前端, 3:大数据, 4:Python, 5:Go, 6: 嵌入式',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES (1, 'JavaEE就业163期', '212', '2024-04-30', '2024-06-29', 10, 1, '2024-06-01 17:08:23', '2024-06-01 17:39:58');
INSERT INTO `clazz` VALUES (3, 'JavaEE就业165期', '108', '2024-06-15', '2024-12-25', 6, 1, '2024-06-01 17:45:40', '2024-06-01 17:45:40');
INSERT INTO `clazz` VALUES (5, '大数据就业58期', '209', '2024-08-01', '2026-02-15', 7, 3, '2024-06-01 17:51:21', '2024-06-01 17:51:21');
INSERT INTO `clazz` VALUES (6, 'JavaEE就业167期', '325', '2024-11-20', '2025-05-10', 36, 1, '2024-11-15 11:35:46', '2024-12-13 14:31:24');
INSERT INTO `clazz` VALUES (7, '情南两状条接', 'incididunt', '1975-09-13', '2008-07-21', 42, 49, '2025-01-01 00:00:00', '2025-03-22 18:48:43');
INSERT INTO `clazz` VALUES (8, '任查电知千通', 'ullamco', '2021-02-11', '2023-01-05', 65, 51, '2025-03-22 17:42:46', '2025-03-22 17:42:46');
INSERT INTO `clazz` VALUES (15, '任查电知通', 'ullamco', '2021-02-11', '2023-01-05', 65, 51, '2025-03-22 19:05:21', '2025-03-22 19:05:21');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (2, '教研部', '2025-02-19 17:24:04', '2025-02-19 17:24:04');
INSERT INTO `dept` VALUES (3, '咨询部', '2025-02-19 17:24:04', '2025-02-19 17:24:04');
INSERT INTO `dept` VALUES (4, '就业部', '2025-02-19 17:24:04', '2025-02-19 17:24:04');
INSERT INTO `dept` VALUES (5, '人事部', '2025-02-19 17:24:04', '2025-02-19 17:24:04');
INSERT INTO `dept` VALUES (6, '唐dog研究部', '2025-03-14 14:33:05', '2025-03-14 14:33:05');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `gender` tinyint UNSIGNED NOT NULL COMMENT '性别, 1:男, 2:女',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `job` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '职位, 1:班主任,2:讲师,3:学工主管,4:教研主管,5:咨询师',
  `salary` int UNSIGNED NULL DEFAULT NULL COMMENT '薪资',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `entry_date` date NULL DEFAULT NULL COMMENT '入职日期',
  `dept_id` int UNSIGNED NULL DEFAULT NULL COMMENT '关联的部门ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'shinaian', '123456', '施耐庵', 1, '13309090001', 4, 25000, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2000-01-01', 2, '2024-10-27 16:35:33', '2025-03-16 18:45:05');
INSERT INTO `emp` VALUES (2, 'songjiang', '123456', '宋江', 1, '13309090002', 2, 8600, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2015-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:37');
INSERT INTO `emp` VALUES (3, 'lujunyi', '123456', '卢俊义', 1, '13309090003', 2, 8900, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2008-05-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:39');
INSERT INTO `emp` VALUES (4, 'wuyong', '123456', '吴用', 1, '13309090004', 2, 9200, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2007-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:41');
INSERT INTO `emp` VALUES (5, 'gongsunsheng', '123456', '公孙胜', 1, '13309090005', 2, 9500, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2012-12-05', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:43');
INSERT INTO `emp` VALUES (6, 'huosanniang', '123456', '扈三娘', 2, '13309090006', 3, 6500, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2013-09-05', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:45');
INSERT INTO `emp` VALUES (7, 'chaijin', '123456', '柴进', 1, '13309090007', 1, 4700, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2005-08-01', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:47');
INSERT INTO `emp` VALUES (8, 'likui', '123456', '李逵', 1, '13309090008', 1, 4800, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2014-11-09', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:49');
INSERT INTO `emp` VALUES (9, 'wusong', '123456', '武松', 1, '13309090009', 1, 4900, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2011-03-11', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:51');
INSERT INTO `emp` VALUES (10, 'lichong', '123456', '林冲', 1, '13309090010', 1, 5000, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2013-09-05', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:53');
INSERT INTO `emp` VALUES (11, 'huyanzhuo', '123456', '呼延灼', 1, '13309090011', 2, 9700, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2007-02-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:55');
INSERT INTO `emp` VALUES (12, 'xiaoliguang', '123456', '小李广', 1, '13309090012', 2, 10000, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2008-08-18', 2, '2024-10-27 16:35:33', '2024-10-27 16:35:57');
INSERT INTO `emp` VALUES (13, 'yangzhi', '123456', '杨志', 1, '13309090013', 1, 5300, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2012-11-01', 1, '2024-10-27 16:35:33', '2024-10-27 16:35:59');
INSERT INTO `emp` VALUES (14, 'shijin', '123456', '史进', 1, '13309090014', 2, 10600, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2002-08-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:01');
INSERT INTO `emp` VALUES (15, 'sunerniang', '123456', '孙二娘', 2, '13309090015', 2, 10900, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2011-05-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:03');
INSERT INTO `emp` VALUES (16, 'luzhishen', '123456', '鲁智深', 1, '13309090016', 2, 9600, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2010-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:05');
INSERT INTO `emp` VALUES (17, 'liying', '12345678', '李应', 1, '13309090017', 1, 5800, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2015-03-21', 1, '2024-10-27 16:35:33', '2024-10-27 16:36:07');
INSERT INTO `emp` VALUES (18, 'shiqian', '123456', '时迁', 1, '13309090018', 2, 10200, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2015-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:09');
INSERT INTO `emp` VALUES (19, 'gudasao', '123456', '顾大嫂', 2, '13309090019', 2, 10500, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2008-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:11');
INSERT INTO `emp` VALUES (20, 'ruanxiaoer', '123456', '阮小二', 1, '13309090020', 2, 10800, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2018-01-01', 2, '2024-10-27 16:35:33', '2024-10-27 16:36:13');
INSERT INTO `emp` VALUES (21, 'ruanxiaowu', '123456', '阮小五', 1, '13309090021', 5, 5200, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2015-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:15');
INSERT INTO `emp` VALUES (22, 'ruanxiaoqi', '123456', '阮小七', 1, '13309090022', 5, 5500, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2016-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:17');
INSERT INTO `emp` VALUES (23, 'ruanji', '123456', '阮籍', 1, '13309090023', 5, 5800, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2012-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:19');
INSERT INTO `emp` VALUES (24, 'tongwei', '123456', '童威', 1, '13309090024', 5, 5000, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2006-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:21');
INSERT INTO `emp` VALUES (25, 'tongmeng', '123456', '童猛', 1, '13309090025', 5, 4800, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2002-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:23');
INSERT INTO `emp` VALUES (26, 'yanshun', '123456', '燕顺', 1, '13309090026', 5, 5400, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2011-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:25');
INSERT INTO `emp` VALUES (27, 'lijun', '123456', '李俊', 1, '13309090027', 5, 6600, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2004-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:27');
INSERT INTO `emp` VALUES (28, 'lizhong', '123456', '李忠', 1, '13309090028', 5, 5000, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2007-01-01', 3, '2024-10-27 16:35:33', '2024-10-27 16:36:29');
INSERT INTO `emp` VALUES (29, 'songqing', '123456', '宋清', 1, '13309090029', NULL, 5100, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2020-01-01', NULL, '2024-10-27 16:35:33', '2024-10-27 16:36:31');
INSERT INTO `emp` VALUES (30, 'liyun', '123456', '李云', 1, '13309090030', NULL, NULL, 'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png', '2020-03-01', NULL, '2024-10-27 16:35:33', '2024-10-27 16:36:31');
INSERT INTO `emp` VALUES (39, '薛静4', '123456', '变全须好统', 2, '1234568901', 4, 65, 'http://dummyimage.com/400x400', '1976-08-06', 63, '2025-02-27 21:34:37', '2025-02-27 21:34:37');
INSERT INTO `emp` VALUES (45, '唐dog', '123455', '唐dog’', 1, '12312131213', 6, 11111, '', '2025-03-02', 4, '2025-03-01 16:35:47', '2025-03-01 16:35:47');
INSERT INTO `emp` VALUES (47, '唐superdog', '123455', '唐superdog', 1, '12312131219', 1, 11111, 'https://java-wen0.oss-cn-beijing.aliyuncs.com/2025/03/3206ad0b-d560-4d15-8efa-86e81daf5646.jpg', '2025-03-03', 1, '2025-03-13 14:43:54', '2025-03-13 14:43:54');
INSERT INTO `emp` VALUES (49, '唐superdog123', '123455', '唐dog2号', 1, '12312131214', 1, 12345, '', '2025-03-02', 6, '2025-03-16 17:31:24', '2025-03-16 18:46:25');

-- ----------------------------
-- Table structure for emp_expr
-- ----------------------------
DROP TABLE IF EXISTS `emp_expr`;
CREATE TABLE `emp_expr`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
  `emp_id` int UNSIGNED NULL DEFAULT NULL COMMENT '员工ID',
  `begin` date NULL DEFAULT NULL COMMENT '开始时间',
  `end` date NULL DEFAULT NULL COMMENT '结束时间',
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司名称',
  `job` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工作经历' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_expr
-- ----------------------------
INSERT INTO `emp_expr` VALUES (1, 40, '1978-07-23', '1990-04-21', 'ullamco proident non', 'dolor s');
INSERT INTO `emp_expr` VALUES (2, 40, '1978-07-23', '1945-04-21', 'ullamco proident non', 'dolor s');
INSERT INTO `emp_expr` VALUES (3, 40, '1999-07-23', '2019-04-21', 'ullamco proident non', 'dolor s');
INSERT INTO `emp_expr` VALUES (4, 41, '1956-02-19', '1993-04-13', 'pro', 'officia');
INSERT INTO `emp_expr` VALUES (5, 43, '1956-02-19', '1993-04-13', 'pro', 'officia');
INSERT INTO `emp_expr` VALUES (6, 44, '2022-03-15', '2022-03-17', '1223', '123');
INSERT INTO `emp_expr` VALUES (7, 44, '2023-03-14', '2023-04-08', '12', '12');
INSERT INTO `emp_expr` VALUES (8, 45, '2025-03-14', '2025-04-22', '唐dog研究院', '打灰');
INSERT INTO `emp_expr` VALUES (9, 47, '2025-03-02', '2025-03-03', '12', '1234455');
INSERT INTO `emp_expr` VALUES (22, 1, NULL, NULL, NULL, '4');
INSERT INTO `emp_expr` VALUES (25, 49, '2025-03-21', '2025-03-21', '1212', '1');
INSERT INTO `emp_expr` VALUES (26, 49, '2025-03-27', '2025-03-29', '唐dog产后护理', '234');

-- ----------------------------
-- Table structure for emp_log
-- ----------------------------
DROP TABLE IF EXISTS `emp_log`;
CREATE TABLE `emp_log`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
  `operate_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp_log
-- ----------------------------
INSERT INTO `emp_log` VALUES (1, '2025-03-01 16:35:47', '新增员工：Emp{id = 45, username = 唐dog, password = 12345000, name = 唐dog’, gender = 1, phone = 12312131213, job = 6, salary = 11111, image = , entryDate = 2025-03-02, deptId = 4, createTime = 2025-03-01T16:35:47.159615, updateTime = 2025-03-01T16:35:47.159615}');
INSERT INTO `emp_log` VALUES (2, '2025-03-13 14:42:28', '新增员工：Emp{id = null, username = 唐dog, password = 12345000, name = 唐dog’, gender = 1, phone = 12312131213, job = 6, salary = 11111, image = https://java-wen0.oss-cn-beijing.aliyuncs.com/2025/03/48a1f4a5-e446-48da-b691-d32afd7ec1b7.jpg, entryDate = 2025-03-03, deptId = 5, createTime = 2025-03-13T14:42:27.655496900, updateTime = 2025-03-13T14:42:27.655496900}');
INSERT INTO `emp_log` VALUES (3, '2025-03-13 14:43:54', '新增员工：Emp{id = 47, username = 唐superdog, password = 12345000, name = 唐superdog, gender = 1, phone = 12312131219, job = 1, salary = 11111, image = https://java-wen0.oss-cn-beijing.aliyuncs.com/2025/03/3206ad0b-d560-4d15-8efa-86e81daf5646.jpg, entryDate = 2025-03-03, deptId = 1, createTime = 2025-03-13T14:43:53.623555, updateTime = 2025-03-13T14:43:53.623555}');
INSERT INTO `emp_log` VALUES (4, '2025-03-16 15:00:45', '新增员工：Emp{id = 48, username = 唐superdog122, password = 12345000, name = superdog, gender = 1, phone = 12312131216, job = 1, salary = 11111, image = , entryDate = 2025-03-02, deptId = 6, createTime = 2025-03-16T15:00:45.447539500, updateTime = 2025-03-16T15:00:45.447539500}');
INSERT INTO `emp_log` VALUES (5, '2025-03-16 17:31:24', '新增员工：Emp{id = 49, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 11111, image = , entryDate = 2025-03-02, deptId = 6, createTime = 2025-03-16T17:31:23.879822700, updateTime = 2025-03-16T17:31:23.879822700}');
INSERT INTO `emp_log` VALUES (6, '2025-03-17 15:39:50', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T15:39:49.997610300, updateTime = 2025-03-17T15:39:49.997610300}');
INSERT INTO `emp_log` VALUES (7, '2025-03-17 15:55:55', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T15:55:54.908523100, updateTime = 2025-03-17T15:55:54.908523100}');
INSERT INTO `emp_log` VALUES (8, '2025-03-17 15:56:12', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T15:56:11.900903700, updateTime = 2025-03-17T15:56:11.901902}');
INSERT INTO `emp_log` VALUES (9, '2025-03-17 15:57:26', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T15:57:25.715302800, updateTime = 2025-03-17T15:57:25.715302800}');
INSERT INTO `emp_log` VALUES (10, '2025-03-17 15:59:30', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T15:59:29.734099400, updateTime = 2025-03-17T15:59:29.734099400}');
INSERT INTO `emp_log` VALUES (11, '2025-03-17 16:04:26', '新增员工：Emp{id = null, username = 唐superdog123, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T16:04:25.186767200, updateTime = 2025-03-17T16:04:25.186767200}');
INSERT INTO `emp_log` VALUES (12, '2025-03-17 16:04:50', '新增员工：Emp{id = null, username = 唐superdo, password = 12345000, name = 唐dog2号, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T16:04:50.371915400, updateTime = 2025-03-17T16:04:50.371915400}');
INSERT INTO `emp_log` VALUES (13, '2025-03-17 16:05:01', '新增员工：Emp{id = null, username = 唐superdo, password = 12345000, name = 唐do2, gender = 1, phone = 12312131214, job = 1, salary = 12345, image = , entryDate = 2025-03-18, deptId = 6, createTime = 2025-03-17T16:05:01.149714200, updateTime = 2025-03-17T16:05:01.149714200}');
INSERT INTO `emp_log` VALUES (14, '2025-03-22 17:42:46', '新增班级：Clazz{id = null, name = 任查电知千通, room = ullamco, beginDate = 2021-02-11, endDate = 2023-01-05, masterId = 65, subject = 51, createTime = 2025-03-22T17:42:45.657406500, updateTime = 2025-03-22T17:42:45.657406500, masterName = null, status = null}');
INSERT INTO `emp_log` VALUES (15, '2025-03-22 18:49:53', '新增班级：Clazz{id = null, name = JavaEE就业100期, room = 108, beginDate = 2024-06-15, endDate = 2024-12-25, masterId = 6, subject = 1, createTime = 2025-03-22T18:49:52.795119800, updateTime = 2025-03-22T18:49:52.795119800, masterName = null, status = null}');
INSERT INTO `emp_log` VALUES (16, '2025-03-22 19:05:21', '新增班级：Clazz{id = null, name = 任查电知通, room = ullamco, beginDate = 2021-02-11, endDate = 2023-01-05, masterId = 65, subject = 51, createTime = 2025-03-22T19:05:21.279547, updateTime = 2025-03-22T19:05:21.279547, masterName = null, status = null}');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `no` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `gender` tinyint UNSIGNED NOT NULL COMMENT '性别, 1: 男, 2: 女',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `id_card` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `is_college` tinyint UNSIGNED NOT NULL COMMENT '是否来自于院校, 1:是, 0:否',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系地址',
  `degree` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '最高学历, 1:初中, 2:高中, 3:大专, 4:本科, 5:硕士, 6:博士',
  `graduation_date` date NULL DEFAULT NULL COMMENT '毕业时间',
  `clazz_id` int UNSIGNED NOT NULL COMMENT '班级ID, 关联班级表ID',
  `violation_count` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '违纪次数',
  `violation_score` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '违纪扣分',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `no`(`no` ASC) USING BTREE,
  UNIQUE INDEX `phone`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `id_card`(`id_card` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '段誉', '2022000001', 1, '18800000001', '110120000300200001', 1, '北京市昌平区建材城西路1号', 1, '2021-07-01', 2, 1, 10, '2024-11-14 21:22:19', '2024-11-15 16:20:59');
INSERT INTO `student` VALUES (2, '萧峰', '2022000002', 1, '18800210003', '110120000300200002', 1, '北京市昌平区建材城西路2号', 2, '2022-07-01', 1, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (3, '虚竹', '2022000003', 1, '18800013001', '110120000300200003', 1, '北京市昌平区建材城西路3号', 2, '2024-07-01', 1, 1, 5, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (4, '萧远山', '2022000004', 1, '18800003211', '110120000300200004', 1, '北京市昌平区建材城西路4号', 3, '2024-07-01', 1, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (5, '阿朱', '2022000005', 2, '18800160002', '110120000300200005', 1, '北京市昌平区建材城西路5号', 4, '2020-07-01', 1, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (6, '阿紫', '2022000006', 2, '18800000034', '110120000300200006', 1, '北京市昌平区建材城西路6号', 4, '2021-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (7, '游坦之', '2022000007', 1, '18800000067', '110120000300200007', 1, '北京市昌平区建材城西路7号', 4, '2022-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (8, '康敏', '2022000008', 2, '18800000077', '110120000300200008', 1, '北京市昌平区建材城西路8号', 5, '2024-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (9, '徐长老', '2022000009', 1, '18800000341', '110120000300200009', 1, '北京市昌平区建材城西路9号', 3, '2024-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (10, '云中鹤', '2022000010', 1, '18800006571', '110120000300200010', 1, '北京市昌平区建材城西路10号', 2, '2020-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (11, '钟万仇', '2022000011', 1, '18800000391', '110120000300200011', 1, '北京市昌平区建材城西路11号', 4, '2021-07-01', 1, 0, 0, '2024-11-14 21:22:19', '2024-11-15 16:21:24');
INSERT INTO `student` VALUES (12, '崔百泉', '2022000012', 1, '18800000781', '110120000300200018', 1, '北京市昌平区建材城西路12号', 4, '2022-07-05', 3, 6, 17, '2024-11-14 21:22:19', '2024-12-13 14:33:58');
INSERT INTO `student` VALUES (13, '耶律洪基', '2022000013', 1, '18800008901', '110120000300200013', 1, '北京市昌平区建材城西路13号', 4, '2024-07-01', 2, 0, 0, '2024-11-14 21:22:19', '2024-11-15 16:21:21');
INSERT INTO `student` VALUES (14, '天山童姥', '2022000014', 2, '18800009201', '110120000300200014', 1, '北京市昌平区建材城西路14号', 4, '2024-07-01', 1, 0, 0, '2024-11-14 21:22:19', '2024-11-15 16:21:17');
INSERT INTO `student` VALUES (15, '刘竹庄', '2022000015', 1, '18800009401', '110120000300200015', 1, '北京市昌平区建材城西路15号', 3, '2020-07-01', 4, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (16, '李春来', '2022000016', 1, '18800008501', '110120000300200016', 1, '北京市昌平区建材城西路16号', 4, '2021-07-01', 4, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (17, '王语嫣', '2022000017', 2, '18800007601', '110120000300200017', 1, '北京市昌平区建材城西路17号', 2, '2022-07-01', 4, 0, 0, '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES (18, '郑成功', '2024001101', 1, '13309092345', '110110110110110110', 0, '北京市昌平区回龙观街道88号', 5, '2021-07-01', 3, 2, 7, '2024-11-15 16:26:18', '2024-11-15 16:40:10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhaoyun', '12345678', '赵云', 18);
INSERT INTO `user` VALUES (2, 'xiaoqiao', '123456', '小乔', 18);
INSERT INTO `user` VALUES (3, 'diaochan', '123456', '貂蝉', 24);
INSERT INTO `user` VALUES (4, 'lvbu', '123456', '吕布', 28);

SET FOREIGN_KEY_CHECKS = 1;
