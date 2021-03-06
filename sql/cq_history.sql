/*
 Navicat Premium Data Transfer

 Source Server         : localhost-MySQL8
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : cq_history

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 21/07/2022 14:46:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_arrangement
-- ----------------------------
DROP TABLE IF EXISTS `exam_arrangement`;
CREATE TABLE `exam_arrangement`  (
                                     `exam_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                                     `exam_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                                     `exam_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                                     `exam_begin` datetime NULL DEFAULT NULL,
                                     `exam_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_arrangement
-- ----------------------------
INSERT INTO `exam_arrangement` VALUES ('A1', 'fsfs814TY', 'Y', '2022-07-29 15:47:08', '120');
INSERT INTO `exam_arrangement` VALUES ('B2', 'wrff7898Z', 'N', NULL, '20');

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people`  (
                           `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                           `weight` double NULL DEFAULT NULL,
                           PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('???', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('???????????????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('????????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 10);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 11);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 12);
INSERT INTO `people` VALUES ('?????????', 10);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 16);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 10);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 10);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 23);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 8);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 7);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 12);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 14);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 9);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('????????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('????????????', 7);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('????????????', 4);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('????????????', 4);
INSERT INTO `people` VALUES ('?????????', 11);
INSERT INTO `people` VALUES ('????????????', 12);
INSERT INTO `people` VALUES ('????????????', 15);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('????????????', 21);
INSERT INTO `people` VALUES ('????????????', 26);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 12);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 15);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('????????????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 8);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('????????????', 15);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('????????????', 6);
INSERT INTO `people` VALUES ('????????????', 18);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 9);
INSERT INTO `people` VALUES ('??????', 8);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('????????????', 15);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 14);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 7);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 8);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 6);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 7);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('????????????', 4);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('????????????', 6);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('????????????', 2);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('????????????', 7);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 11);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('????????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('??????', 3);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('??????', 4);
INSERT INTO `people` VALUES ('??????', 8);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 10);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 9);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 6);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('??????', 1);
INSERT INTO `people` VALUES ('???????????????', 1);
INSERT INTO `people` VALUES ('????????????', 1);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('??????', 2);
INSERT INTO `people` VALUES ('?????????', 12);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 16);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('?????????', 5);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 1);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 8);
INSERT INTO `people` VALUES ('?????????', 23);
INSERT INTO `people` VALUES ('?????????', 4);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 2);
INSERT INTO `people` VALUES ('?????????', 3);
INSERT INTO `people` VALUES ('?????????', 7);
INSERT INTO `people` VALUES ('?????????', 15);
INSERT INTO `people` VALUES ('?????????', 1);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
                            `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                            `English` int NULL DEFAULT NULL,
                            `Math` int NULL DEFAULT NULL,
                            `Computer` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('zhangsan', 69, 86, 77);
INSERT INTO `student` VALUES ('lisi', 55, 95, 88);
INSERT INTO `student` VALUES ('scofileld', 45, 89, 100);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                          `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                          `auth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                          `addTime` datetime NULL DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, '111', '1VWCfsqs6GjiOj5E4cND3+v+WRc=', '1', '2022-07-14 23:23:28');
INSERT INTO `users` VALUES (5, '1111', 'Un7ECW3WH6hXkv09Ua2yQUGZ7BSLMDXJ7s41bqDwXzk=', '1', '2022-07-15 14:31:46');
INSERT INTO `users` VALUES (6, '12345', '2Vfq15lNknxsQnTttxC5eGBWT7IhFLZPGjUndF0M2j0=', '1', '2022-07-15 15:06:51');
INSERT INTO `users` VALUES (7, '123456666', '2Vfq15lNknxsQnTttxC5eGBWT7IhFLZPGjUndF0M2j0=', '1', '2022-07-16 15:08:16');

SET FOREIGN_KEY_CHECKS = 1;
