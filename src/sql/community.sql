/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : community

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 16/12/2020 17:22:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` bigint(20) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for humidity
-- ----------------------------
DROP TABLE IF EXISTS `humidity`;
CREATE TABLE `humidity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `test_time` datetime(0) NULL DEFAULT NULL,
  `hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `humidity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of humidity
-- ----------------------------
INSERT INTO `humidity` VALUES (1, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '20', '1');
INSERT INTO `humidity` VALUES (2, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '30', '1');
INSERT INTO `humidity` VALUES (3, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '40', '1');
INSERT INTO `humidity` VALUES (4, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '50', '1');
INSERT INTO `humidity` VALUES (5, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '40', '1');
INSERT INTO `humidity` VALUES (6, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '30', '1');
INSERT INTO `humidity` VALUES (7, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '20', '1');
INSERT INTO `humidity` VALUES (8, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '10', '1');
INSERT INTO `humidity` VALUES (9, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '20', '1');
INSERT INTO `humidity` VALUES (10, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '20', '1');
INSERT INTO `humidity` VALUES (11, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '30', '1');
INSERT INTO `humidity` VALUES (12, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '40', '1');
INSERT INTO `humidity` VALUES (13, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '21', '2');
INSERT INTO `humidity` VALUES (14, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '32', '2');
INSERT INTO `humidity` VALUES (15, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '21', '2');
INSERT INTO `humidity` VALUES (16, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '35', '2');
INSERT INTO `humidity` VALUES (17, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '22', '2');
INSERT INTO `humidity` VALUES (18, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '10', '2');
INSERT INTO `humidity` VALUES (19, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '13', '2');
INSERT INTO `humidity` VALUES (20, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '14', '2');
INSERT INTO `humidity` VALUES (21, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '20', '2');
INSERT INTO `humidity` VALUES (22, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '5', '2');
INSERT INTO `humidity` VALUES (23, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '30', '2');
INSERT INTO `humidity` VALUES (24, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '12', '2');
INSERT INTO `humidity` VALUES (25, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '22', '3');
INSERT INTO `humidity` VALUES (26, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '16', '3');
INSERT INTO `humidity` VALUES (27, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '18', '3');
INSERT INTO `humidity` VALUES (28, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '15', '3');
INSERT INTO `humidity` VALUES (29, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '14', '3');
INSERT INTO `humidity` VALUES (30, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '20', '3');
INSERT INTO `humidity` VALUES (31, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '22', '3');
INSERT INTO `humidity` VALUES (32, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '21', '3');
INSERT INTO `humidity` VALUES (33, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '24', '3');
INSERT INTO `humidity` VALUES (34, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '23', '3');
INSERT INTO `humidity` VALUES (35, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '13', '3');
INSERT INTO `humidity` VALUES (36, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '25', '3');
INSERT INTO `humidity` VALUES (37, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '21', '4');
INSERT INTO `humidity` VALUES (38, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '32', '4');
INSERT INTO `humidity` VALUES (39, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '21', '4');
INSERT INTO `humidity` VALUES (40, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '35', '4');
INSERT INTO `humidity` VALUES (41, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '10', '4');
INSERT INTO `humidity` VALUES (42, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '22', '4');
INSERT INTO `humidity` VALUES (43, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '15', '4');
INSERT INTO `humidity` VALUES (44, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '16', '4');
INSERT INTO `humidity` VALUES (45, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '18', '4');
INSERT INTO `humidity` VALUES (46, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '10', '4');
INSERT INTO `humidity` VALUES (47, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '20', '4');
INSERT INTO `humidity` VALUES (48, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '20', '4');

-- ----------------------------
-- Table structure for ios
-- ----------------------------
DROP TABLE IF EXISTS `ios`;
CREATE TABLE `ios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `test_time` datetime(0) NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ios
-- ----------------------------
INSERT INTO `ios` VALUES (1, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '1', '0');
INSERT INTO `ios` VALUES (2, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '2', '0');
INSERT INTO `ios` VALUES (3, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '3', '0');
INSERT INTO `ios` VALUES (4, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '50', '4', '0');
INSERT INTO `ios` VALUES (5, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '5', '0');
INSERT INTO `ios` VALUES (6, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '6', '0');
INSERT INTO `ios` VALUES (7, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '7', '0');
INSERT INTO `ios` VALUES (8, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '8', '0');
INSERT INTO `ios` VALUES (9, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '9', '0');
INSERT INTO `ios` VALUES (10, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '10', '0');
INSERT INTO `ios` VALUES (11, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '11', '0');
INSERT INTO `ios` VALUES (12, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '12', '0');
INSERT INTO `ios` VALUES (13, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '1', '1');
INSERT INTO `ios` VALUES (14, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '2', '1');
INSERT INTO `ios` VALUES (15, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '3', '1');
INSERT INTO `ios` VALUES (16, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '50', '4', '1');
INSERT INTO `ios` VALUES (17, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '5', '1');
INSERT INTO `ios` VALUES (18, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '6', '1');
INSERT INTO `ios` VALUES (19, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '7', '1');
INSERT INTO `ios` VALUES (20, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '8', '1');
INSERT INTO `ios` VALUES (21, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '9', '1');
INSERT INTO `ios` VALUES (22, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '20', '10', '1');
INSERT INTO `ios` VALUES (23, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '30', '11', '1');
INSERT INTO `ios` VALUES (24, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '40', '12', '1');

-- ----------------------------
-- Table structure for pm
-- ----------------------------
DROP TABLE IF EXISTS `pm`;
CREATE TABLE `pm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `test_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pm
-- ----------------------------
INSERT INTO `pm` VALUES (1, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '20');
INSERT INTO `pm` VALUES (2, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '30');
INSERT INTO `pm` VALUES (3, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '40');
INSERT INTO `pm` VALUES (4, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '50');
INSERT INTO `pm` VALUES (5, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '40');
INSERT INTO `pm` VALUES (6, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '30');
INSERT INTO `pm` VALUES (7, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '20');
INSERT INTO `pm` VALUES (8, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '10');
INSERT INTO `pm` VALUES (9, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '20');
INSERT INTO `pm` VALUES (10, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '20');
INSERT INTO `pm` VALUES (11, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '30');
INSERT INTO `pm` VALUES (12, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '40');

-- ----------------------------
-- Table structure for temperature
-- ----------------------------
DROP TABLE IF EXISTS `temperature`;
CREATE TABLE `temperature`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `test_time` datetime(0) NULL DEFAULT NULL,
  `hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `temperature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temperature
-- ----------------------------
INSERT INTO `temperature` VALUES (13, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '21', '2');
INSERT INTO `temperature` VALUES (14, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '32', '2');
INSERT INTO `temperature` VALUES (15, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '21', '2');
INSERT INTO `temperature` VALUES (16, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '35', '2');
INSERT INTO `temperature` VALUES (17, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '22', '2');
INSERT INTO `temperature` VALUES (18, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '10', '2');
INSERT INTO `temperature` VALUES (19, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '13', '2');
INSERT INTO `temperature` VALUES (20, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '14', '2');
INSERT INTO `temperature` VALUES (21, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '20', '2');
INSERT INTO `temperature` VALUES (22, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '5', '2');
INSERT INTO `temperature` VALUES (23, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '30', '2');
INSERT INTO `temperature` VALUES (24, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '12', '2');
INSERT INTO `temperature` VALUES (25, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '22', '3');
INSERT INTO `temperature` VALUES (26, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '16', '3');
INSERT INTO `temperature` VALUES (27, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '18', '3');
INSERT INTO `temperature` VALUES (28, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '15', '3');
INSERT INTO `temperature` VALUES (29, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '14', '3');
INSERT INTO `temperature` VALUES (30, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '20', '3');
INSERT INTO `temperature` VALUES (31, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '22', '3');
INSERT INTO `temperature` VALUES (32, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '21', '3');
INSERT INTO `temperature` VALUES (33, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '24', '3');
INSERT INTO `temperature` VALUES (34, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '23', '3');
INSERT INTO `temperature` VALUES (35, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '13', '3');
INSERT INTO `temperature` VALUES (36, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '12', '25', '3');
INSERT INTO `temperature` VALUES (37, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '1', '21', '4');
INSERT INTO `temperature` VALUES (38, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '2', '32', '4');
INSERT INTO `temperature` VALUES (39, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '3', '21', '4');
INSERT INTO `temperature` VALUES (40, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '4', '35', '4');
INSERT INTO `temperature` VALUES (41, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '5', '10', '4');
INSERT INTO `temperature` VALUES (42, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '6', '22', '4');
INSERT INTO `temperature` VALUES (43, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '7', '15', '4');
INSERT INTO `temperature` VALUES (44, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '8', '16', '4');
INSERT INTO `temperature` VALUES (45, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '9', '18', '4');
INSERT INTO `temperature` VALUES (46, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '10', '10', '4');
INSERT INTO `temperature` VALUES (47, '2020-12-01 13:04:52', '2020-12-01 13:04:54', '11', '20', '4');

SET FOREIGN_KEY_CHECKS = 1;
