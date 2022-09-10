/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : exam1

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 06/05/2022 15:13:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 669 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (148, 2, 35);
INSERT INTO `authority` VALUES (149, 2, 36);
INSERT INTO `authority` VALUES (150, 2, 25);
INSERT INTO `authority` VALUES (151, 2, 1);
INSERT INTO `authority` VALUES (152, 2, 14);
INSERT INTO `authority` VALUES (153, 2, 15);
INSERT INTO `authority` VALUES (618, 1, 1);
INSERT INTO `authority` VALUES (619, 1, 5);
INSERT INTO `authority` VALUES (620, 1, 17);
INSERT INTO `authority` VALUES (621, 1, 18);
INSERT INTO `authority` VALUES (622, 1, 19);
INSERT INTO `authority` VALUES (623, 1, 20);
INSERT INTO `authority` VALUES (624, 1, 13);
INSERT INTO `authority` VALUES (625, 1, 21);
INSERT INTO `authority` VALUES (626, 1, 22);
INSERT INTO `authority` VALUES (627, 1, 23);
INSERT INTO `authority` VALUES (628, 1, 35);
INSERT INTO `authority` VALUES (629, 1, 36);
INSERT INTO `authority` VALUES (630, 1, 14);
INSERT INTO `authority` VALUES (631, 1, 15);
INSERT INTO `authority` VALUES (632, 1, 24);
INSERT INTO `authority` VALUES (633, 1, 25);
INSERT INTO `authority` VALUES (634, 1, 26);
INSERT INTO `authority` VALUES (635, 1, 31);
INSERT INTO `authority` VALUES (636, 1, 32);
INSERT INTO `authority` VALUES (637, 1, 33);
INSERT INTO `authority` VALUES (638, 1, 34);
INSERT INTO `authority` VALUES (639, 1, 37);
INSERT INTO `authority` VALUES (640, 1, 38);
INSERT INTO `authority` VALUES (641, 1, 39);
INSERT INTO `authority` VALUES (642, 1, 40);
INSERT INTO `authority` VALUES (643, 1, 41);
INSERT INTO `authority` VALUES (644, 1, 42);
INSERT INTO `authority` VALUES (645, 1, 43);
INSERT INTO `authority` VALUES (646, 1, 44);
INSERT INTO `authority` VALUES (647, 1, 45);
INSERT INTO `authority` VALUES (648, 1, 46);
INSERT INTO `authority` VALUES (649, 1, 47);
INSERT INTO `authority` VALUES (650, 1, 48);
INSERT INTO `authority` VALUES (651, 1, 49);
INSERT INTO `authority` VALUES (652, 1, 50);
INSERT INTO `authority` VALUES (653, 1, 51);
INSERT INTO `authority` VALUES (654, 1, 64);
INSERT INTO `authority` VALUES (655, 1, 52);
INSERT INTO `authority` VALUES (656, 1, 53);
INSERT INTO `authority` VALUES (657, 1, 54);
INSERT INTO `authority` VALUES (658, 1, 55);
INSERT INTO `authority` VALUES (659, 1, 56);
INSERT INTO `authority` VALUES (660, 1, 57);
INSERT INTO `authority` VALUES (661, 1, 58);
INSERT INTO `authority` VALUES (662, 1, 60);
INSERT INTO `authority` VALUES (663, 1, 61);
INSERT INTO `authority` VALUES (664, 1, 67);
INSERT INTO `authority` VALUES (665, 1, 62);
INSERT INTO `authority` VALUES (666, 1, 63);
INSERT INTO `authority` VALUES (667, 1, 65);
INSERT INTO `authority` VALUES (668, 1, 66);

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subjectId` int(11) NOT NULL,
  `startTime` datetime(0) NULL DEFAULT NULL,
  `endTime` datetime(0) NULL DEFAULT NULL,
  `avaliableTime` int(8) NOT NULL,
  `questionNum` int(5) NOT NULL,
  `totalScore` int(5) NOT NULL,
  `passScore` int(5) NOT NULL,
  `singleQuestionNum` int(5) NOT NULL,
  `muiltQuestionNum` int(5) NOT NULL,
  `chargeQuestionNum` int(5) NOT NULL,
  `lunshuQuestionNum` int(5) NOT NULL,
  `paperNum` int(5) NOT NULL DEFAULT 0,
  `examedNum` int(5) NOT NULL DEFAULT 0,
  `passNum` int(5) NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subjectId`(`subjectId`) USING BTREE,
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (2, '软件工程期中考试', 1, '2022-02-28 00:00:00', '2022-02-28 00:00:00', 60, 4, 10, 5, 2, 1, 1, 0, 5, 5, 4, '2022-02-28 20:23:03');
INSERT INTO `exam` VALUES (3, '计算机基本知识小测验', 1, '2022-02-28 20:28:48', '2022-02-28 20:28:51', 2, 11, 28, 20, 4, 3, 4, 0, 3, 3, 0, '2022-02-28 20:29:06');
INSERT INTO `exam` VALUES (4, '软件工程课堂随机小测试', 1, '2022-02-28 11:45:00', '2022-02-28 11:12:02', 1, 2, 6, 2, 1, 1, 0, 0, 2, 2, 2, '2022-02-28 11:12:12');
INSERT INTO `exam` VALUES (5, '物理课堂测验', 6, '2022-03-16 16:48:31', '2022-03-24 16:48:34', 30, 6, 16, 4, 2, 2, 2, 0, 1, 1, 1, '2022-02-28 16:49:28');
INSERT INTO `exam` VALUES (7, 'java期末考试', 1, '2022-02-13 10:34:05', '2022-02-13 11:29:33', 60, 8, 24, 60, 2, 4, 2, 0, 1, 1, 0, '2022-02-28 10:30:07');
INSERT INTO `exam` VALUES (8, 'Springboot测试', 1, '2022-02-13 13:29:00', '2022-02-13 14:29:09', 60, 12, 32, 20, 5, 4, 3, 0, 1, 1, 0, '2022-02-13 13:29:30');
INSERT INTO `exam` VALUES (9, 'java', 6, '2022-03-16 09:57:42', '2022-03-31 09:57:50', 60, 6, 16, 20, 2, 2, 2, 0, 2, 1, 0, '2022-03-16 10:01:41');
INSERT INTO `exam` VALUES (10, 'Springboot', 6, '2022-03-16 14:52:57', '2022-03-25 14:53:02', 60, 6, 16, 10, 2, 2, 2, 0, 1, 0, 0, '2022-03-16 14:53:14');
INSERT INTO `exam` VALUES (11, 'css测试', 9, '2022-03-19 11:28:02', '2022-03-20 11:28:08', 30, 6, 16, 30, 2, 2, 2, 0, 1, 1, 0, '2022-03-19 11:30:35');
INSERT INTO `exam` VALUES (12, 'css期末考试', 10, '2022-03-19 11:52:56', '2022-03-20 11:53:00', 30, 6, 16, 10, 2, 2, 2, 0, 1, 1, 0, '2022-03-19 11:53:52');
INSERT INTO `exam` VALUES (13, 'java第四章测试', 6, '2022-03-25 21:25:47', '2022-03-31 21:25:50', 30, 6, 16, 20, 2, 2, 2, 0, 0, 0, 0, '2022-03-25 21:26:12');
INSERT INTO `exam` VALUES (14, 'jjjj', 6, '2022-03-25 22:45:31', '2022-03-30 22:45:34', 60, 4, 12, 20, 1, 2, 1, 0, 0, 0, 0, '2022-03-25 22:45:47');
INSERT INTO `exam` VALUES (15, 'redis测试', 1, '2022-04-05 19:45:20', '2022-04-07 19:45:32', 200, 5, 20, 10, 2, 1, 1, 1, 0, 0, 0, '2022-04-05 19:46:15');
INSERT INTO `exam` VALUES (16, '查', 1, '2022-04-05 20:42:36', '2022-04-21 20:42:42', 21, 6, 24, 20, 2, 2, 1, 1, 1, 1, 0, '2022-04-05 20:44:12');
INSERT INTO `exam` VALUES (17, '出十三点', 1, '2022-04-05 21:09:02', '2022-04-28 21:09:07', 100, 7, 26, 10, 2, 2, 2, 1, 1, 1, 0, '2022-04-05 21:09:18');
INSERT INTO `exam` VALUES (18, 'Redis测试啊', 1, '2022-04-05 21:51:18', '2022-04-23 21:51:23', 100, 8, 36, 20, 2, 2, 2, 2, 2, 2, 0, '2022-04-05 21:51:38');
INSERT INTO `exam` VALUES (19, 'java期末大考试', 6, '2022-04-05 22:38:40', '2022-04-06 22:38:44', 30, 8, 36, 30, 2, 2, 2, 2, 0, 0, 0, '2022-04-05 22:39:12');
INSERT INTO `exam` VALUES (20, 'jjjjjjj', 6, '2022-04-05 22:46:27', '2022-04-06 22:46:30', 30, 8, 36, 30, 2, 2, 2, 2, 2, 1, 0, '2022-04-05 22:47:03');
INSERT INTO `exam` VALUES (21, 'css大测试', 10, '2022-04-05 23:00:37', '2022-04-06 02:00:41', 30, 8, 36, 60, 2, 2, 2, 2, 1, 1, 0, '2022-04-05 23:01:02');
INSERT INTO `exam` VALUES (22, 'java滴滴滴', 6, '2022-04-06 09:02:35', '2022-04-07 09:02:37', 30, 11, 52, 20, 2, 3, 3, 3, 1, 1, 1, '2022-04-06 09:03:09');
INSERT INTO `exam` VALUES (23, '5月2redis测试', 1, '2022-05-02 10:47:51', '2022-05-03 10:47:54', 30, 8, 36, 10, 2, 2, 2, 2, 1, 1, 1, '2022-05-02 10:48:17');
INSERT INTO `exam` VALUES (24, '5-6redis', 1, '2022-05-06 10:18:00', '2022-05-08 10:18:04', 30, 14, 58, 20, 5, 3, 3, 3, 2, 2, 0, '2022-05-06 10:18:35');

-- ----------------------------
-- Table structure for exampaper
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `totalScore` int(5) NOT NULL DEFAULT 0,
  `score` int(5) NOT NULL DEFAULT 0,
  `startExamTime` datetime(0) NULL DEFAULT NULL,
  `endExamTime` datetime(0) NULL DEFAULT NULL,
  `useTime` int(8) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `examId`(`examId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  CONSTRAINT `examPaper_ibfk_1` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `examPaper_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES (9, 2, 6, 1, 10, 6, '2022-02-25 11:04:02', '2022-02-25 11:07:11', 3, '2022-02-25 11:06:49');
INSERT INTO `exampaper` VALUES (10, 4, 6, 1, 6, 6, '2022-02-25 11:12:32', '2022-02-25 11:13:31', 0, '2022-02-25 11:12:32');
INSERT INTO `exampaper` VALUES (11, 3, 6, 1, 28, 4, '2022-02-25 13:25:22', '2022-02-25 13:26:30', 1, '2022-02-25 13:25:22');
INSERT INTO `exampaper` VALUES (12, 5, 8, 1, 8, 4, '2022-02-25 16:55:38', '2022-02-25 16:55:58', 0, '2022-02-25 16:55:38');
INSERT INTO `exampaper` VALUES (14, 2, 9, 1, 10, 8, '2022-02-25 18:20:37', '2022-02-25 18:20:56', 0, '2022-02-25 18:20:37');
INSERT INTO `exampaper` VALUES (15, 2, 10, 1, 10, 6, '2022-02-25 18:22:29', '2022-02-25 18:22:46', 0, '2022-02-25 18:22:29');
INSERT INTO `exampaper` VALUES (16, 2, 11, 1, 10, 2, '2022-02-25 18:24:07', '2022-02-25 18:24:19', 0, '2022-02-25 18:24:07');
INSERT INTO `exampaper` VALUES (17, 4, 11, 1, 6, 2, '2022-02-25 18:24:51', '2022-02-25 18:25:50', 0, '2022-02-25 18:24:51');
INSERT INTO `exampaper` VALUES (18, 3, 11, 1, 28, 6, '2022-02-25 18:26:25', '2022-02-25 18:26:44', 0, '2022-02-25 18:26:25');
INSERT INTO `exampaper` VALUES (19, 7, 2, 1, 24, 2, '2022-02-25 10:32:52', '2022-02-13 10:33:28', 0, '2022-02-13 10:32:51');
INSERT INTO `exampaper` VALUES (20, 8, 2, 1, 32, 0, '2022-02-25 13:33:03', '2022-02-13 13:33:16', 0, '2022-02-13 13:33:03');
INSERT INTO `exampaper` VALUES (21, 3, 2, 1, 28, 0, '2022-02-28 09:01:44', '2022-02-28 09:03:45', 2, '2022-02-28 09:01:43');
INSERT INTO `exampaper` VALUES (22, 9, 8, 1, 16, 6, '2022-03-16 10:03:30', '2022-03-16 10:04:01', 0, '2022-03-16 10:03:30');
INSERT INTO `exampaper` VALUES (23, 10, 8, 0, 16, 0, NULL, NULL, NULL, '2022-03-16 14:53:50');
INSERT INTO `exampaper` VALUES (24, 11, 3, 1, 16, 12, '2022-03-19 11:32:51', '2022-03-19 11:33:19', 0, '2022-03-19 11:32:50');
INSERT INTO `exampaper` VALUES (25, 12, 3, 1, 16, 8, '2022-03-19 11:54:21', '2022-03-19 11:54:45', 0, '2022-03-19 11:54:21');
INSERT INTO `exampaper` VALUES (26, 9, 13, 0, 16, 0, NULL, NULL, NULL, '2022-03-25 22:51:13');
INSERT INTO `exampaper` VALUES (27, 15, 2, 0, 20, 0, NULL, NULL, NULL, '2022-04-05 20:12:50');
INSERT INTO `exampaper` VALUES (28, 16, 2, 1, 24, 2, '2022-04-05 21:05:41', '2022-04-05 21:06:48', 1, '2022-04-05 20:45:08');
INSERT INTO `exampaper` VALUES (29, 17, 2, 1, 26, 7, '2022-04-05 21:41:52', '2022-04-05 21:42:14', 0, '2022-04-05 21:13:44');
INSERT INTO `exampaper` VALUES (30, 18, 2, 1, 36, 11, '2022-04-05 21:51:51', '2022-04-05 21:52:39', 0, '2022-04-05 21:51:50');
INSERT INTO `exampaper` VALUES (31, 18, 6, 1, 36, 14, '2022-04-05 22:40:35', '2022-04-05 22:42:20', 1, '2022-04-05 22:40:35');
INSERT INTO `exampaper` VALUES (32, 20, 8, 1, 36, 10, '2022-04-05 22:47:28', '2022-04-05 22:48:10', 0, '2022-04-05 22:47:28');
INSERT INTO `exampaper` VALUES (33, 21, 3, 1, 36, 13, '2022-04-05 23:03:18', '2022-04-05 23:04:11', 0, '2022-04-05 23:03:18');
INSERT INTO `exampaper` VALUES (34, 20, 13, 0, 36, 0, NULL, NULL, NULL, '2022-04-05 23:07:34');
INSERT INTO `exampaper` VALUES (35, 22, 8, 1, 52, 27, '2022-04-06 09:03:57', '2022-04-06 09:05:06', 1, '2022-04-06 09:03:57');
INSERT INTO `exampaper` VALUES (36, 23, 2, 1, 36, 16, '2022-05-02 10:48:34', '2022-05-02 10:49:27', 0, '2022-05-02 10:48:33');
INSERT INTO `exampaper` VALUES (37, 24, 2, 1, 58, 10, '2022-05-06 10:19:36', '2022-05-06 10:21:05', 1, '2022-05-06 10:19:36');
INSERT INTO `exampaper` VALUES (38, 24, 4, 1, 58, 4, '2022-05-06 15:10:48', '2022-05-06 15:12:12', 1, '2022-05-06 15:10:47');

-- ----------------------------
-- Table structure for exampaperanswer
-- ----------------------------
DROP TABLE IF EXISTS `exampaperanswer`;
CREATE TABLE `exampaperanswer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `examPaperId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL DEFAULT 0,
  `answer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isCorrect` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `examId`(`examPaperId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  INDEX `questionId`(`questionId`) USING BTREE,
  INDEX `examId_2`(`examId`) USING BTREE,
  CONSTRAINT `examPaperAnswer_ibfk_1` FOREIGN KEY (`examPaperId`) REFERENCES `exampaper` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `examPaperAnswer_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `examPaperAnswer_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `examPaperAnswer_ibfk_4` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exampaperanswer
-- ----------------------------
INSERT INTO `exampaperanswer` VALUES (21, 2, 9, 6, 2, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (23, 2, 9, 6, 1, 'ABCD', 1);
INSERT INTO `exampaperanswer` VALUES (24, 2, 9, 6, 5, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (26, 4, 10, 6, 1, 'ABCD', 1);
INSERT INTO `exampaperanswer` VALUES (27, 3, 11, 6, 16, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (29, 3, 11, 6, 14, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (30, 3, 11, 6, 2, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (31, 3, 11, 6, 21, 'ACD', 0);
INSERT INTO `exampaperanswer` VALUES (32, 3, 11, 6, 20, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (33, 3, 11, 6, 22, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (34, 3, 11, 6, 5, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (35, 3, 11, 6, 17, 'B', 1);
INSERT INTO `exampaperanswer` VALUES (36, 3, 11, 6, 18, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (37, 3, 11, 6, 19, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (38, 5, 12, 8, 29, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (39, 5, 12, 8, 28, 'BD', 1);
INSERT INTO `exampaperanswer` VALUES (40, 5, 12, 8, 30, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (50, 2, 14, 9, 14, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (52, 2, 14, 9, 21, 'CD', 1);
INSERT INTO `exampaperanswer` VALUES (53, 2, 14, 9, 19, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (54, 2, 15, 10, 2, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (55, 2, 15, 10, 13, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (56, 2, 15, 10, 21, 'ABCD', 0);
INSERT INTO `exampaperanswer` VALUES (57, 2, 15, 10, 18, 'B', 1);
INSERT INTO `exampaperanswer` VALUES (58, 2, 16, 11, 2, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (59, 2, 16, 11, 16, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (60, 2, 16, 11, 1, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (61, 2, 16, 11, 19, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (62, 4, 17, 11, 13, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (63, 4, 17, 11, 20, 'AC', 0);
INSERT INTO `exampaperanswer` VALUES (64, 3, 18, 11, 2, 'C', 0);
INSERT INTO `exampaperanswer` VALUES (66, 3, 18, 11, 15, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (67, 3, 18, 11, 13, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (68, 3, 18, 11, 1, 'BC', 0);
INSERT INTO `exampaperanswer` VALUES (69, 3, 18, 11, 20, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (70, 3, 18, 11, 22, 'ABD', 0);
INSERT INTO `exampaperanswer` VALUES (71, 3, 18, 11, 5, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (72, 3, 18, 11, 17, 'B', 1);
INSERT INTO `exampaperanswer` VALUES (73, 3, 18, 11, 18, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (74, 3, 18, 11, 19, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (75, 7, 19, 2, 2, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (76, 7, 19, 2, 13, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (77, 7, 19, 2, 1, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (78, 7, 19, 2, 20, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (79, 7, 19, 2, 21, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (80, 7, 19, 2, 22, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (81, 7, 19, 2, 5, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (82, 7, 19, 2, 17, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (83, 8, 20, 2, 2, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (84, 8, 20, 2, 13, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (85, 8, 20, 2, 14, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (86, 8, 20, 2, 15, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (87, 8, 20, 2, 16, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (88, 8, 20, 2, 1, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (89, 8, 20, 2, 20, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (90, 8, 20, 2, 21, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (91, 8, 20, 2, 22, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (92, 8, 20, 2, 19, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (93, 8, 20, 2, 17, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (95, 3, 21, 2, 50, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (96, 3, 21, 2, 51, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (97, 3, 21, 2, 49, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (98, 3, 21, 2, 54, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (99, 3, 21, 2, 1, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (100, 3, 21, 2, 22, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (101, 3, 21, 2, 20, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (102, 3, 21, 2, 58, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (103, 3, 21, 2, 18, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (104, 3, 21, 2, 5, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (105, 3, 21, 2, 19, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (106, 9, 22, 8, 13, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (107, 9, 22, 8, 15, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (108, 9, 22, 8, 21, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (109, 9, 22, 8, 20, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (110, 9, 22, 8, 5, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (111, 9, 22, 8, 18, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (112, 10, 23, 8, 29, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (113, 10, 23, 8, 13, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (114, 10, 23, 8, 28, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (115, 10, 23, 8, 21, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (116, 10, 23, 8, 19, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (117, 10, 23, 8, 5, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (118, 11, 24, 3, 62, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (119, 11, 24, 3, 65, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (120, 11, 24, 3, 63, 'ABC', 0);
INSERT INTO `exampaperanswer` VALUES (121, 11, 24, 3, 66, 'AB', 1);
INSERT INTO `exampaperanswer` VALUES (122, 11, 24, 3, 64, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (123, 11, 24, 3, 67, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (124, 12, 25, 3, 68, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (125, 12, 25, 3, 71, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (126, 12, 25, 3, 69, 'ABC', 0);
INSERT INTO `exampaperanswer` VALUES (127, 12, 25, 3, 72, 'ABC', 0);
INSERT INTO `exampaperanswer` VALUES (128, 12, 25, 3, 70, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (129, 12, 25, 3, 73, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (130, 9, 26, 13, 15, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (131, 9, 26, 13, 29, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (132, 9, 26, 13, 28, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (133, 9, 26, 13, 21, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (134, 9, 26, 13, 5, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (135, 9, 26, 13, 30, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (136, 16, 28, 2, 34, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (137, 16, 28, 2, 48, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (138, 16, 28, 2, 1, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (139, 16, 28, 2, 22, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (140, 16, 28, 2, 17, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (141, 16, 28, 2, 74, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (142, 17, 29, 2, 51, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (143, 17, 29, 2, 45, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (144, 17, 29, 2, 1, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (145, 17, 29, 2, 22, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (146, 17, 29, 2, 17, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (147, 17, 29, 2, 58, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (148, 17, 29, 2, 74, 'public 是哈哈哈', 0);
INSERT INTO `exampaperanswer` VALUES (149, 18, 30, 2, 41, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (150, 18, 30, 2, 34, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (151, 18, 30, 2, 1, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (152, 18, 30, 2, 22, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (153, 18, 30, 2, 17, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (154, 18, 30, 2, 58, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (155, 18, 30, 2, 74, 'public', 0);
INSERT INTO `exampaperanswer` VALUES (156, 18, 30, 2, 75, 'redis是一个缓存数据库,具有高性能', 0);
INSERT INTO `exampaperanswer` VALUES (157, 18, 31, 6, 42, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (158, 18, 31, 6, 33, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (159, 18, 31, 6, 1, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (160, 18, 31, 6, 22, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (161, 18, 31, 6, 17, 'B', 1);
INSERT INTO `exampaperanswer` VALUES (162, 18, 31, 6, 58, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (163, 18, 31, 6, 74, 'public', 0);
INSERT INTO `exampaperanswer` VALUES (164, 18, 31, 6, 75, '缓存是什么', 0);
INSERT INTO `exampaperanswer` VALUES (165, 20, 32, 8, 29, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (166, 20, 32, 8, 13, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (167, 20, 32, 8, 20, 'AC', 0);
INSERT INTO `exampaperanswer` VALUES (168, 20, 32, 8, 28, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (169, 20, 32, 8, 30, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (170, 20, 32, 8, 18, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (171, 20, 32, 8, 76, 'public是关键', 0);
INSERT INTO `exampaperanswer` VALUES (172, 20, 32, 8, 77, '数据库异常', 0);
INSERT INTO `exampaperanswer` VALUES (173, 21, 33, 3, 68, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (174, 21, 33, 3, 71, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (175, 21, 33, 3, 69, 'ABC', 0);
INSERT INTO `exampaperanswer` VALUES (176, 21, 33, 3, 72, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (177, 21, 33, 3, 70, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (178, 21, 33, 3, 73, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (179, 21, 33, 3, 78, '绝对布局是的', 0);
INSERT INTO `exampaperanswer` VALUES (180, 21, 33, 3, 79, 'aa和bb', 0);
INSERT INTO `exampaperanswer` VALUES (181, 20, 34, 13, 29, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (182, 20, 34, 13, 13, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (183, 20, 34, 13, 28, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (184, 20, 34, 13, 20, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (185, 20, 34, 13, 19, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (186, 20, 34, 13, 18, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (187, 20, 34, 13, 76, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (188, 20, 34, 13, 77, NULL, 0);
INSERT INTO `exampaperanswer` VALUES (189, 22, 35, 8, 29, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (190, 22, 35, 8, 15, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (191, 22, 35, 8, 20, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (192, 22, 35, 8, 21, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (193, 22, 35, 8, 28, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (194, 22, 35, 8, 19, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (195, 22, 35, 8, 30, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (196, 22, 35, 8, 18, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (197, 22, 35, 8, 80, 'while和for', 0);
INSERT INTO `exampaperanswer` VALUES (198, 22, 35, 8, 77, '空指针和数据库', 0);
INSERT INTO `exampaperanswer` VALUES (199, 22, 35, 8, 81, 'aa和bb和cc', 0);
INSERT INTO `exampaperanswer` VALUES (200, 23, 36, 2, 75, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (201, 23, 36, 2, 16, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (202, 23, 36, 2, 1, 'ABCD', 1);
INSERT INTO `exampaperanswer` VALUES (203, 23, 36, 2, 22, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (204, 23, 36, 2, 17, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (205, 23, 36, 2, 58, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (206, 23, 36, 2, 74, 'aa', 0);
INSERT INTO `exampaperanswer` VALUES (207, 23, 36, 2, 82, '啊啊啊啊啊内存数据库还有速度快', 0);
INSERT INTO `exampaperanswer` VALUES (208, 24, 37, 2, 37, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (209, 24, 37, 2, 34, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (210, 24, 37, 2, 35, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (211, 24, 37, 2, 50, 'B', 0);
INSERT INTO `exampaperanswer` VALUES (212, 24, 37, 2, 46, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (213, 24, 37, 2, 1, 'ABCD', 1);
INSERT INTO `exampaperanswer` VALUES (214, 24, 37, 2, 22, 'AB', 0);
INSERT INTO `exampaperanswer` VALUES (215, 24, 37, 2, 84, 'ABC', 0);
INSERT INTO `exampaperanswer` VALUES (216, 24, 37, 2, 17, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (217, 24, 37, 2, 58, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (218, 24, 37, 2, 85, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (219, 24, 37, 2, 75, '11', 0);
INSERT INTO `exampaperanswer` VALUES (220, 24, 37, 2, 74, '11', 0);
INSERT INTO `exampaperanswer` VALUES (221, 24, 37, 2, 82, '11', 0);
INSERT INTO `exampaperanswer` VALUES (222, 24, 38, 4, 14, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (223, 24, 38, 4, 39, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (224, 24, 38, 4, 41, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (225, 24, 38, 4, 56, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (226, 24, 38, 4, 36, 'C', 0);
INSERT INTO `exampaperanswer` VALUES (227, 24, 38, 4, 1, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (228, 24, 38, 4, 22, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (229, 24, 38, 4, 84, 'D', 0);
INSERT INTO `exampaperanswer` VALUES (230, 24, 38, 4, 17, 'A', 0);
INSERT INTO `exampaperanswer` VALUES (231, 24, 38, 4, 58, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (232, 24, 38, 4, 85, 'A', 1);
INSERT INTO `exampaperanswer` VALUES (233, 24, 38, 4, 74, '11', 0);
INSERT INTO `exampaperanswer` VALUES (234, 24, 38, 4, 86, '绝对布局相对布局网格布局', 0);
INSERT INTO `exampaperanswer` VALUES (235, 24, 38, 4, 82, '11', 0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (39, '用户名为{xh}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:08:50');
INSERT INTO `log` VALUES (40, '用户名为xh的用户登录时输入验证码错误!', '2022-03-19 11:25:44');
INSERT INTO `log` VALUES (41, '用户名为{xh}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:25:56');
INSERT INTO `log` VALUES (42, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:31:32');
INSERT INTO `log` VALUES (43, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:34:04');
INSERT INTO `log` VALUES (44, '用户名为{xh}，角色为{普通用户}的用户登录成功!', '2022-03-19 11:35:35');
INSERT INTO `log` VALUES (45, '用户名为{xh}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:44:13');
INSERT INTO `log` VALUES (46, '用户名为{xh}，角色为{普通用户}的用户登录成功!', '2022-03-19 11:46:46');
INSERT INTO `log` VALUES (47, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:48:33');
INSERT INTO `log` VALUES (48, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-19 11:55:52');
INSERT INTO `log` VALUES (49, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-25 21:24:55');
INSERT INTO `log` VALUES (50, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-25 22:44:10');
INSERT INTO `log` VALUES (51, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-03-25 22:49:54');
INSERT INTO `log` VALUES (52, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 17:45:18');
INSERT INTO `log` VALUES (53, '用户名为admin的用户登录时输入密码错误!', '2022-04-05 18:11:02');
INSERT INTO `log` VALUES (54, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:11:13');
INSERT INTO `log` VALUES (55, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:15:23');
INSERT INTO `log` VALUES (56, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:18:45');
INSERT INTO `log` VALUES (57, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:20:20');
INSERT INTO `log` VALUES (58, '用户名为admin的用户登录时输入验证码错误!', '2022-04-05 18:28:02');
INSERT INTO `log` VALUES (59, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:28:14');
INSERT INTO `log` VALUES (60, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:32:43');
INSERT INTO `log` VALUES (61, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:38:57');
INSERT INTO `log` VALUES (62, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:47:46');
INSERT INTO `log` VALUES (63, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:50:29');
INSERT INTO `log` VALUES (64, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:51:55');
INSERT INTO `log` VALUES (65, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:53:35');
INSERT INTO `log` VALUES (66, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:55:58');
INSERT INTO `log` VALUES (67, '用户名为admin的用户登录时输入验证码错误!', '2022-04-05 18:58:42');
INSERT INTO `log` VALUES (68, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 18:58:52');
INSERT INTO `log` VALUES (69, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:02:36');
INSERT INTO `log` VALUES (70, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:06:33');
INSERT INTO `log` VALUES (71, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:09:51');
INSERT INTO `log` VALUES (72, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:23:49');
INSERT INTO `log` VALUES (73, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:27:21');
INSERT INTO `log` VALUES (74, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:33:49');
INSERT INTO `log` VALUES (75, '用户名为admin的用户登录时输入验证码错误!', '2022-04-05 19:37:30');
INSERT INTO `log` VALUES (76, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:37:41');
INSERT INTO `log` VALUES (77, '用户名为admin的用户登录时输入验证码错误!', '2022-04-05 19:41:01');
INSERT INTO `log` VALUES (78, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:41:10');
INSERT INTO `log` VALUES (79, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:43:26');
INSERT INTO `log` VALUES (80, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 19:56:25');
INSERT INTO `log` VALUES (81, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 20:01:53');
INSERT INTO `log` VALUES (82, '用户名为admin的用户登录时输入验证码错误!', '2022-04-05 20:05:52');
INSERT INTO `log` VALUES (83, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 20:06:01');
INSERT INTO `log` VALUES (84, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 20:07:23');
INSERT INTO `log` VALUES (85, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 20:37:33');
INSERT INTO `log` VALUES (86, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 20:42:22');
INSERT INTO `log` VALUES (87, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 21:08:41');
INSERT INTO `log` VALUES (88, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 21:50:04');
INSERT INTO `log` VALUES (89, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 22:28:52');
INSERT INTO `log` VALUES (90, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 22:36:01');
INSERT INTO `log` VALUES (91, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 22:45:17');
INSERT INTO `log` VALUES (92, '登录时，用户名为aa的用户不存在!', '2022-04-05 22:58:09');
INSERT INTO `log` VALUES (93, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 22:58:20');
INSERT INTO `log` VALUES (94, '登录时，用户名为邱凯的用户不存在!', '2022-04-05 23:02:18');
INSERT INTO `log` VALUES (95, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 23:02:35');
INSERT INTO `log` VALUES (96, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-05 23:07:05');
INSERT INTO `log` VALUES (97, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-06 08:55:49');
INSERT INTO `log` VALUES (98, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 11:58:22');
INSERT INTO `log` VALUES (99, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 12:34:40');
INSERT INTO `log` VALUES (100, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:34:50');
INSERT INTO `log` VALUES (101, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:36:27');
INSERT INTO `log` VALUES (102, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 12:37:43');
INSERT INTO `log` VALUES (103, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 12:37:51');
INSERT INTO `log` VALUES (104, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:38:00');
INSERT INTO `log` VALUES (105, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 12:40:04');
INSERT INTO `log` VALUES (106, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:40:13');
INSERT INTO `log` VALUES (107, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:41:47');
INSERT INTO `log` VALUES (108, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:42:53');
INSERT INTO `log` VALUES (109, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:43:45');
INSERT INTO `log` VALUES (110, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:50:42');
INSERT INTO `log` VALUES (111, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:53:50');
INSERT INTO `log` VALUES (112, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:55:09');
INSERT INTO `log` VALUES (113, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 12:56:48');
INSERT INTO `log` VALUES (114, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:03:03');
INSERT INTO `log` VALUES (115, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 13:04:53');
INSERT INTO `log` VALUES (116, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:05:04');
INSERT INTO `log` VALUES (117, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:07:51');
INSERT INTO `log` VALUES (118, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:11:42');
INSERT INTO `log` VALUES (119, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:15:56');
INSERT INTO `log` VALUES (120, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:19:50');
INSERT INTO `log` VALUES (121, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:22:28');
INSERT INTO `log` VALUES (122, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:27:26');
INSERT INTO `log` VALUES (123, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:32:25');
INSERT INTO `log` VALUES (124, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:35:23');
INSERT INTO `log` VALUES (125, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:41:32');
INSERT INTO `log` VALUES (126, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:47:11');
INSERT INTO `log` VALUES (127, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 13:53:25');
INSERT INTO `log` VALUES (128, '用户名为admin的用户登录时输入验证码错误!', '2022-04-12 16:42:49');
INSERT INTO `log` VALUES (129, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 16:43:01');
INSERT INTO `log` VALUES (130, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-04-12 16:46:06');
INSERT INTO `log` VALUES (131, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-05-02 10:40:34');
INSERT INTO `log` VALUES (132, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-05-05 12:06:48');
INSERT INTO `log` VALUES (133, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-05-06 10:14:07');
INSERT INTO `log` VALUES (134, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2022-05-06 15:08:29');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES (5, 1, '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES (13, 1, '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES (14, 0, '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (31, 0, '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES (32, 31, '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES (33, 32, '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES (37, 0, '学科管理', '', 'icon-text-padding-left');
INSERT INTO `menu` VALUES (38, 37, '学科列表', '../admin/subject/list', 'icon-application-view-columns');
INSERT INTO `menu` VALUES (39, 38, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (40, 38, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (41, 38, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (42, 0, '考生管理', '', 'icon-users');
INSERT INTO `menu` VALUES (43, 42, '考生列表', '../admin/student/list', 'icon-vcard');
INSERT INTO `menu` VALUES (44, 43, '添加', 'openAdd()', 'icon-user-add');
INSERT INTO `menu` VALUES (45, 43, '编辑', 'openEdit()', 'icon-user-edit');
INSERT INTO `menu` VALUES (46, 43, '删除', 'remove()', 'icon-user-cross');
INSERT INTO `menu` VALUES (47, 0, '试题管理', '', 'icon-date');
INSERT INTO `menu` VALUES (48, 47, '试题列表', '../admin/question/list', 'icon-date-magnify');
INSERT INTO `menu` VALUES (49, 48, '添加', 'openAdd()', 'icon-date-add');
INSERT INTO `menu` VALUES (50, 48, '编辑', 'openEdit()', 'icon-date-edit');
INSERT INTO `menu` VALUES (51, 48, '删除', 'remove()', 'icon-date-delete');
INSERT INTO `menu` VALUES (52, 0, '考试管理', '', 'icon-map');
INSERT INTO `menu` VALUES (53, 52, '考试列表', '../admin/exam/list', 'icon-map-magnify');
INSERT INTO `menu` VALUES (54, 53, '添加', 'openAdd()', 'icon-map-add');
INSERT INTO `menu` VALUES (55, 53, '编辑', 'openEdit()', 'icon-map-edit');
INSERT INTO `menu` VALUES (56, 53, '删除', 'remove()', 'icon-map-delete');
INSERT INTO `menu` VALUES (57, 0, '试卷管理', '', 'icon-page-white-text');
INSERT INTO `menu` VALUES (58, 57, '试卷列表', '../admin/examPaper/list', 'icon-page-white-stack');
INSERT INTO `menu` VALUES (60, 58, '编辑', 'openEdit()', 'icon-page-white-edit');
INSERT INTO `menu` VALUES (61, 58, '删除', 'remove()', 'icon-page-white-delete');
INSERT INTO `menu` VALUES (62, 0, '答题管理', '', 'icon-building-edit');
INSERT INTO `menu` VALUES (63, 62, '答题列表', '../admin/examPaperAnswer/list', 'icon-building');
INSERT INTO `menu` VALUES (64, 48, '导入试题', 'openImport()', 'icon-note-go');
INSERT INTO `menu` VALUES (65, 0, '成绩统计', '', 'icon-text-letter-omega');
INSERT INTO `menu` VALUES (66, 65, '统计图表', '../admin/stats/exam_stats', 'icon-chart-line');
INSERT INTO `menu` VALUES (67, 58, '查看试卷', 'openView()', 'icon-application-stop');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL DEFAULT 1,
  `questionType` int(2) NOT NULL DEFAULT 0,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(3) NOT NULL,
  `attrA` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrB` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrC` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attrD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subjectId`(`subjectId`) USING BTREE,
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 1, 1, '下列哪些是高级编程语言？', 4, 'java', 'C', 'C++', 'PHP', 'ABCD', '2022-02-25 22:03:44');
INSERT INTO `question` VALUES (2, 1, 0, '下列需要虚拟机中执行代码的是？', 2, 'Java代码', 'C代码', 'C++代码', 'PHP代码', 'A', '2022-02-25 22:10:05');
INSERT INTO `question` VALUES (5, 6, 2, '泛化针对类型而不针对实例，一个类可以继承另一个类，但一个对象不能继承另一个对象', 2, '正确', '错误', '', '', 'A', '2022-02-25 22:19:22');
INSERT INTO `question` VALUES (13, 6, 0, 'Java是什么？', 2, '编程语言', '不知道', '一种吃的东西', '诗歌语言吧', 'A', '2022-02-25 13:05:18');
INSERT INTO `question` VALUES (14, 1, 0, '瀑布模型把软件生命周期划分为八个阶段：问题的定义、可行性研究、软件需求分析、系统总体设计、详细设计、编码、测试和运行、维护。八个阶段又可归纳为三个大的阶段：计划阶段、开发阶段和＿。', 2, '详细计划', '可行性分析', '运行阶段', '测试与排错', 'C', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (15, 6, 0, '在结构化的瀑布模型中，哪一个阶段定义的标准将成为软件测试年勺系统测试阶段的目标', 2, '需求分析阶段', '详细设计阶段', '概要设计阶段', '可行性研究阶段', 'A', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (16, 1, 0, '软件工程的出现主要是由于', 2, '程序设计方法学的影响', '其它工程科学的影响', '软件危机的出现', '计算机的发展', 'C', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (17, 1, 2, '开发软件就是编写程序。', 2, '正确', '错误', '', '', 'B', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (18, 6, 2, '系统测试的主要方法是白盒法，主要进行功能测试、性能测试、安全性测试及可靠性等测试。', 2, '正确', '错误', '', '', 'B', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (19, 6, 2, '生产高质量的软件产品是软件工程的首要目标。', 2, '正确', '错误', '', '', 'A', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (20, 6, 1, '计算机病毒有两大类，它们是()', 4, '感染可执行文件', '感染磁盘dos启动区', '文件型病毒', '感染磁盘分区引导区，系统引导型病毒', 'ACD', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (21, 6, 1, '指令系统中控制程序流程的指令通常有()', 4, '传送指令', '比较指令', '转移指令', '转移与返回指令', 'CD', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (22, 1, 1, '关于计算机的主要发展趋势,以下说法正确的是', 4, '为形成计算机网络,使一国乃至全世界的多台计算机能够共享信息', '为满足科研等领域的需要,向超高速巨型化发展', '向高速微型发展', '为节约耗电量,形成计算机网络', 'ABC', '2022-02-25 13:21:54');
INSERT INTO `question` VALUES (25, 5, 0, '被誉为中国现代数学祖师的是？', 2, '姜伯驹', '苏步青', '姜立夫', '杨振宁', 'C', '2022-02-25 16:35:57');
INSERT INTO `question` VALUES (26, 5, 1, '荣获1989年台湾当局颁发的景星奖章是（），中国的第一份数学刊物--《算学报》是由（）创办的。', 4, '黄庆澄', '柯召', '徐贤修', '华罗庚', 'AC', '2022-02-25 16:38:15');
INSERT INTO `question` VALUES (27, 5, 2, '1988年被英国国际传记中心收入《世界名人录》的是方德植？', 2, '正确', '错误', '', '', 'A', '2022-02-25 16:39:00');
INSERT INTO `question` VALUES (28, 6, 1, '以下物理学知识的相关叙述，其中正确的是', 4, '用透明的标准样板和单色光检查平面的平整度是利用了光的偏振', '变化的电场周围不一定产生变化的磁场', '交警通过发射超声波测量车速是利用了波的干涉原理', '狭义相对论认为，在惯性参照系中，光速与光源、观察者间的相对运动无关', 'BD', '2022-02-25 16:41:43');
INSERT INTO `question` VALUES (29, 6, 0, '许多物理学家的科学研究不仅促进了物理学的发展，而且推动了人类文明的进步。在对以下几位物理学家所做科学贡献的叙述中，正确的是', 2, '英国物理学家卡文迪许用实验的方法测出了引力常量G ', '牛顿通过计算首先发现了海王星和冥王星', '爱因斯坦建立了相对论，相对论物理学否定了经典物理学', '开普勒经过多年的天文观测和记录，提出了“日心说”的观点', 'A', '2022-02-25 16:43:14');
INSERT INTO `question` VALUES (30, 6, 2, '许多物体可以在不发生形变的条件下对物体施以弹力作用', 2, '正确', '错误', '', '', 'B', '2022-02-25 16:45:01');
INSERT INTO `question` VALUES (31, 7, 0, 'Your sister looks very ________.What\'s the matter with her?', 2, 'funny', 'weak', 'boring', 'relaxed', 'B', '2022-02-25 16:46:42');
INSERT INTO `question` VALUES (32, 1, 0, 'Java是什么？', 2, '编程语言', '不知道', '一种吃的东西', '诗歌语言吧', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (33, 1, 0, '联合国教科文组织分别于2003年和2005年召开了以______为主题的世界性大会，并发布了《布拉格宣言》和《亚历山大宣言》。', 2, '信息素养', '信息安全', '信息检索', '信息评价', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (34, 1, 0, '\"Information retrieval \"翻译为______。\n', 2, '信息检索', '信息素养', '信息安全', '信息评价', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (35, 1, 0, '______是指在信息的生产、存储、获取、传播和利用等信息活动各个环节中，用来规范相关主体之间相互关系的法律关系和道德规范的总称。', 2, '信息知识', '信息能力', '信息意识', '信息伦理', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (36, 1, 0, '下列各项中______属于一次文献。', 2, '专利说明书', '百科全书', '目录', '综述', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (37, 1, 0, '下列各项中______属于二次文献。', 2, '索引', '期刊', '学位论文', '百科全书', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (38, 1, 0, '国内使用的《中国图书馆分类法》是采用______方法进行编排的。', 2, '字顺', '分类', '主题', '时序', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (39, 1, 0, '布尔逻辑检索中检索符号“OR”的主要作用在于______。', 2, '提高查准率', '提高查全率', '排除不必要信息', '减少文献输出量', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (40, 1, 0, '______指检出的相关文献信息量与检出的文献总量之比', 2, '查全率', '查准率', '误检率', '漏检率', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (41, 1, 0, '______是出版周期最短的定期连续出版物。', 2, '图书', '期刊', '报纸', '学位论文', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (42, 1, 0, '利用图书末尾所附参考文献进行检索的方法是____。', 2, '顺查法', '倒查法', '抽查法', '追溯法', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (43, 1, 0, '《四级英语词汇》这本图书的分类号可能是______。', 2, 'G636.33', 'J216.2', 'I247.4', 'H319', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (44, 1, 0, '布尔逻辑检索技术属于_____。', 2, '文本检索技术', '图像检索技术', '音频检索技术', '视频检索技术', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (45, 1, 0, '二次检索指的是______。', 2, '第二次检索', '检索了一次之后，结果不满意，再检索一次', '在上一次检索的结果集上进行的检索', '与上一次检索的结果进行对比，得到的检索', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (46, 1, 0, '利用CNKI的全文数据库，检索“文庭孝”老师的作品，应选择______作为检索途径。', 2, '题名', '作者', '关键词', '单位', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (47, 1, 0, 'Adobe Reader可以阅读____格式文献。', 2, 'VIP', 'TXT', 'HTML', 'PDF', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (48, 1, 0, 'CAJviewer（俗称：CAJ阅读器）是______数据库的全文阅读软件。', 2, '超星数字图书馆', '中国知网', '万方', '维普期刊', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (49, 1, 0, '以下哪项不是中国期刊全文数据库（CNKI）的检索字段？', 2, '作者', '第一作者', '基金', '分子式', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (50, 1, 0, '美国《科学引文索引》的缩写为____。', 2, 'SCI', 'CSSCI', 'EI', 'ISTP', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (51, 1, 0, '当今世界上最知名也是最权威的百科全书是____。', 2, '美国百科全书', '哥伦比亚百科全书', '不列颠百科全书', '中国大百科全书', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (52, 1, 0, 'WWW信息资源主要基于___协议传输。', 2, 'FTP', 'TELNET', 'HTTP', 'P2P', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (53, 1, 0, '微软公司开发的搜索引擎是______。', 2, 'www.baidu.com', 'www.yahoo.com', 'www.iask.com', 'www.bing.com', 'D', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (54, 1, 0, '全球最大的中文搜索引擎是______。', 2, '搜搜', '百度', '雅虎', '谷歌', 'B', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (55, 1, 0, '在百度和谷歌中，可以通过______语法实现把检索范围限定在网页标题中这个功能。', 2, 'filetype：', 'inurl：', 'intitle：', 'site：', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (56, 1, 0, '下载工具是帮助用户快速、稳定地从网上下载资源的软件。下列属于常用下载工具有哪些？', 2, '迅雷', '优酷', '淘宝', '新浪', 'A', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (57, 1, 0, '在参考文献“李国新 . 开启新时代图书馆法治研究的新阶段[J]. 图书馆, 2018.”中，“[J]”表示该参考文献是_____。', 2, '著作', '专利', '连续出版物', '标准', 'C', '2022-02-25 12:29:07');
INSERT INTO `question` VALUES (58, 1, 2, 'py', 2, '正确', '错误', '', '', 'A', '2022-02-25 12:30:57');
INSERT INTO `question` VALUES (59, 8, 0, 'issjjjdc', 2, 'is', 'are', 'am', 'no', 'D', '2022-03-19 11:15:50');
INSERT INTO `question` VALUES (60, 8, 1, 'are is', 4, 'is', 'are', 'is', 'is', 'ACD', '2022-03-19 11:15:50');
INSERT INTO `question` VALUES (61, 8, 2, 'is', 2, '错误', '正确', '', '', 'A', '2022-03-19 11:15:50');
INSERT INTO `question` VALUES (62, 9, 0, 'div属于什么', 2, '标签', '属性', '变量', '样式', 'A', '2022-03-19 11:27:00');
INSERT INTO `question` VALUES (63, 9, 1, '样式布局有哪些', 4, '定位', '绝对', '相对', 'is', 'ACB', '2022-03-19 11:27:00');
INSERT INTO `question` VALUES (64, 9, 2, '相对布局对吗', 2, '错误', '正确', '', '', 'A', '2022-03-19 11:27:00');
INSERT INTO `question` VALUES (65, 9, 0, 'aa', 2, 'aa', 'aa', 'bb', 'cc', 'A', '2022-03-19 11:29:27');
INSERT INTO `question` VALUES (66, 9, 1, 'bb', 4, '11', '22', '33', '44', 'AB', '2022-03-19 11:29:51');
INSERT INTO `question` VALUES (67, 9, 2, 'ee', 2, '正确', '错误', '', '', 'A', '2022-03-19 11:30:19');
INSERT INTO `question` VALUES (68, 10, 0, 'div属于什么', 2, '标签', '属性', '变量', '样式', 'A', '2022-03-19 11:51:02');
INSERT INTO `question` VALUES (69, 10, 1, '样式布局有哪些', 4, '定位', '绝对', '相对', 'is', 'ACB', '2022-03-19 11:51:02');
INSERT INTO `question` VALUES (70, 10, 2, '相对布局对吗', 2, '错误', '正确', '', '', 'A', '2022-03-19 11:51:02');
INSERT INTO `question` VALUES (71, 10, 0, 'aa', 2, '11', '22', '33', '44', 'A', '2022-03-19 11:51:41');
INSERT INTO `question` VALUES (72, 10, 1, '22', 4, '11', '22', '33', '44', 'AB', '2022-03-19 11:52:00');
INSERT INTO `question` VALUES (73, 10, 2, '33', 2, '正确', '错误', '', '', 'A', '2022-03-19 11:52:25');
INSERT INTO `question` VALUES (74, 1, 3, '请介绍Redis', 10, '', '', '', '', 'public,static', '2022-04-05 19:10:22');
INSERT INTO `question` VALUES (75, 1, 3, 'Redis是什么', 10, '', '', '', '', '高性能,缓存,public', '2022-04-05 21:50:58');
INSERT INTO `question` VALUES (76, 6, 3, 'java有哪些关键字', 10, '', '', '', '', 'public,class', '2022-04-05 22:36:55');
INSERT INTO `question` VALUES (77, 6, 3, 'java中的异常有哪些', 10, '', '', '', '', '空指针,整形数字,数据库', '2022-04-05 22:38:00');
INSERT INTO `question` VALUES (78, 10, 3, 'css布局有哪些', 10, '', '', '', '', '网格布局,绝对布局,相对布局', '2022-04-05 22:59:32');
INSERT INTO `question` VALUES (79, 10, 3, 'aaaaa', 10, '', '', '', '', 'a,bb,cc', '2022-04-05 22:59:59');
INSERT INTO `question` VALUES (80, 6, 3, 'java的循环', 10, '', '', '', '', 'for,aa,while', '2022-04-06 09:00:47');
INSERT INTO `question` VALUES (81, 6, 3, 'java数组', 10, '', '', '', '', 'aa,bb,cc', '2022-04-06 09:01:55');
INSERT INTO `question` VALUES (82, 1, 3, 'redis的优点', 10, '', '', '', '', '内存数据库,速度快', '2022-05-02 10:46:46');
INSERT INTO `question` VALUES (83, 1, 0, 'div属于什么', 2, '标签', '属性', '变量', '样式', 'A', '2022-05-06 10:15:23');
INSERT INTO `question` VALUES (84, 1, 1, '样式布局有哪些', 4, '定位', '绝对', '相对', 'is', 'ACB', '2022-05-06 10:15:23');
INSERT INTO `question` VALUES (85, 1, 2, '相对布局对吗', 2, '错误', '正确', '', '', 'A', '2022-05-06 10:15:23');
INSERT INTO `question` VALUES (86, 1, 3, 'css布局', 10, '绝对', '相对', '网格', '', 'ABC', '2022-05-06 10:15:23');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES (2, '教师', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trueName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subjectId`(`subjectId`) USING BTREE,
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (2, 1, '嘻哈', '123', '嘻哈', '13656564656', '2022-02-25 20:40:48');
INSERT INTO `student` VALUES (3, 10, '邱凯', '123', '邱凯', '1356565656', '2022-02-25 20:46:42');
INSERT INTO `student` VALUES (4, 1, '张三', '123', '张三', '18989898989', '2022-02-25 20:46:52');
INSERT INTO `student` VALUES (5, 7, 'ls', '123', '李四', '15656565656', '2022-02-25 20:47:00');
INSERT INTO `student` VALUES (6, 1, 'zs', '123', '李四', '13918655696', '2022-02-25 21:33:31');
INSERT INTO `student` VALUES (8, 6, 'aa', '123', 'aa', '18959558585', '2022-02-25 16:51:59');
INSERT INTO `student` VALUES (9, 1, 'bb', '123', 'bb', '13656565656', '2022-02-25 18:11:12');
INSERT INTO `student` VALUES (10, 1, 'cc', '123', 'cc', '13656564545', '2022-02-25 18:22:19');
INSERT INTO `student` VALUES (11, 1, 'dd', '123', 'dd', '13989895959', '2022-02-25 18:23:40');
INSERT INTO `student` VALUES (12, 1, 'ee', '123', '邱凯', '17516113625', '2022-02-24 09:06:16');
INSERT INTO `student` VALUES (13, 6, 'asd', '111', 'aaa', '17516113625', '2022-03-16 08:08:27');

-- ----------------------------
-- Table structure for student_copy1
-- ----------------------------
DROP TABLE IF EXISTS `student_copy1`;
CREATE TABLE `student_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trueName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subjectId`(`subjectId`) USING BTREE,
  CONSTRAINT `student_copy1_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, 'Redis', '计科');
INSERT INTO `subject` VALUES (5, 'mybatis', '软工');
INSERT INTO `subject` VALUES (6, 'Java', '计科');
INSERT INTO `subject` VALUES (7, 'Springboot', '软工');
INSERT INTO `subject` VALUES (8, 'english', '英语');
INSERT INTO `subject` VALUES (9, 'html', '网页');
INSERT INTO `subject` VALUES (10, 'css', '样式');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NOT NULL DEFAULT 0,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 1, '/resources/upload/1647350509256.jpg', 1, 1, '驻马店市');
INSERT INTO `user` VALUES (13, 'xh', '123456', 2, '/resources/upload/1647350590354.jpg', 1, 1, '新乡市');

SET FOREIGN_KEY_CHECKS = 1;
