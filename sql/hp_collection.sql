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

 Date: 17/05/2023 11:34:47
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hp_collection
-- ----------------------------
DROP TABLE IF EXISTS `hp_collection`;
CREATE TABLE `hp_collection`
(
    `id`                   int                                                           NOT NULL AUTO_INCREMENT,
    `user_id`              int NULL DEFAULT NULL,
    `classification2_id`   int                                                           NOT NULL,
    `classification2_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `service_id`           int                                                           NOT NULL,
    `name`                 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `price`                float                                                         NOT NULL,
    `image`                varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX                  `user_id`(`user_id` ASC) USING BTREE,
    INDEX                  `classification2_id`(`classification2_id` ASC) USING BTREE,
    INDEX                  `service_id`(`service_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hp_collection
-- ----------------------------

SET
FOREIGN_KEY_CHECKS = 1;
