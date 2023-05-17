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

 Date: 17/05/2023 11:34:58
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hp_classification
-- ----------------------------
DROP TABLE IF EXISTS `hp_classification`;
CREATE TABLE `hp_classification`
(
    `id`                   int NOT NULL AUTO_INCREMENT,
    `classification1_id`   int NULL DEFAULT NULL,
    `classification1_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    `classification2_id`   int NULL DEFAULT NULL,
    `classification2_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX                  `shop_id`(`classification2_id` ASC) USING BTREE,
    INDEX                  `classification1_id`(`classification1_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hp_classification
-- ----------------------------
INSERT INTO `hp_classification`
VALUES (1, 1, '家庭清洁', 1, '居家卫生');
INSERT INTO `hp_classification`
VALUES (2, 1, '家庭清洁', 2, '电器清洗');
INSERT INTO `hp_classification`
VALUES (3, 1, '家庭清洁', 3, '专项清洁');
INSERT INTO `hp_classification`
VALUES (4, 1, '家庭清洁', 4, '布艺除螨');
INSERT INTO `hp_classification`
VALUES (5, 1, '家庭清洁', 5, '消杀除菌');
INSERT INTO `hp_classification`
VALUES (6, 2, '保姆月嫂', 6, '照顾老幼');
INSERT INTO `hp_classification`
VALUES (7, 2, '保姆月嫂', 7, '科学月子');
INSERT INTO `hp_classification`
VALUES (8, 2, '保姆月嫂', 8, '育婴启蒙');
INSERT INTO `hp_classification`
VALUES (9, 3, '放心搬家', 9, '货车搬家');
INSERT INTO `hp_classification`
VALUES (10, 3, '放心搬家', 10, '托管式搬家');
INSERT INTO `hp_classification`
VALUES (11, 3, '放心搬家', 11, '办公室搬家');
INSERT INTO `hp_classification`
VALUES (12, 4, '家庭应急', 12, '厨卫疏通');
INSERT INTO `hp_classification`
VALUES (13, 4, '家庭应急', 13, '开锁');
INSERT INTO `hp_classification`
VALUES (14, 4, '家庭应急', 14, '换锁装锁');
INSERT INTO `hp_classification`
VALUES (15, 5, '二手回收', 15, '家电');
INSERT INTO `hp_classification`
VALUES (16, 5, '二手回收', 16, '家具');
INSERT INTO `hp_classification`
VALUES (17, 5, '二手回收', 17, '金属');
INSERT INTO `hp_classification`
VALUES (18, 5, '二手回收', 18, '厨房设备');
INSERT INTO `hp_classification`
VALUES (19, 5, '二手回收', 19, '电脑');
INSERT INTO `hp_classification`
VALUES (20, 5, '二手回收', 20, '文体乐器');
INSERT INTO `hp_classification`
VALUES (21, 5, '二手回收', 21, '办公用品');
INSERT INTO `hp_classification`
VALUES (22, 6, '房屋维修', 22, '墙体墙面');
INSERT INTO `hp_classification`
VALUES (23, 6, '房屋维修', 23, '地面地暖');
INSERT INTO `hp_classification`
VALUES (24, 7, '水电五金', 24, '水电维修');
INSERT INTO `hp_classification`
VALUES (25, 7, '水电五金', 25, '五金安装');
INSERT INTO `hp_classification`
VALUES (26, 8, '衣物洗护', 26, '衣物清洗');
INSERT INTO `hp_classification`
VALUES (27, 8, '衣物洗护', 27, '鞋子清洗');
INSERT INTO `hp_classification`
VALUES (28, 8, '衣物洗护', 28, '高端洗护');
INSERT INTO `hp_classification`
VALUES (29, 9, '餐饮美食', 29, '上门做菜');
INSERT INTO `hp_classification`
VALUES (30, 10, '数码维修', 30, '电脑');
INSERT INTO `hp_classification`
VALUES (31, 10, '数码维修', 31, '网络');
INSERT INTO `hp_classification`
VALUES (32, 10, '数码维修', 32, '手机');
INSERT INTO `hp_classification`
VALUES (33, 10, '数码维修', 33, '办公设备');

SET
FOREIGN_KEY_CHECKS = 1;
