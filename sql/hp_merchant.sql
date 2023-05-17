/*
 Navicat Premium Data Transfer

 Source Server         : Server
 Source Server Type    : MySQL
 Source Server Version : 80024 (8.0.24)
 Source Host           : 8.130.79.158:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 80024 (8.0.24)
 File Encoding         : 65001

 Date: 17/05/2023 11:34:30
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hp_merchant
-- ----------------------------
DROP TABLE IF EXISTS `hp_merchant`;
CREATE TABLE `hp_merchant`
(
    `id`       int                                                           NOT NULL AUTO_INCREMENT,
    `name`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `token`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hp_merchant
-- ----------------------------
INSERT INTO `hp_merchant`
VALUES (1, '13500000000', '1234', 'b3ef7a70-86ce-48d1-8144-3b196f3d047b');
INSERT INTO `hp_merchant`
VALUES (2, '15500000000', '1234', '4f6f92fc-9ddd-484e-8a7e-69bd1e6c79a3');

SET
FOREIGN_KEY_CHECKS = 1;
