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

 Date: 17/05/2023 11:35:06
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hp_banner_image
-- ----------------------------
DROP TABLE IF EXISTS `hp_banner_image`;
CREATE TABLE `hp_banner_image`
(
    `id`  int NOT NULL AUTO_INCREMENT,
    `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hp_banner_image
-- ----------------------------
INSERT INTO `hp_banner_image`
VALUES (1, 'https://img.dlwjdh.com/upload/12329/211203/8802d61fc28642dbf0628316ad35e6bc.jpg');
INSERT INTO `hp_banner_image`
VALUES (2, 'https://www.lemaiji.com/wp-content/uploads/2022/08/97b9f2fe9d6fe99eacd53c0a43cd752f.png');
INSERT INTO `hp_banner_image`
VALUES (3, 'https://img01.fuhai360.com/ztba/201903/201903301744173241.jpg');
INSERT INTO `hp_banner_image`
VALUES (4,
        'https://wwww.dyuechi.com/homemaking/atlas/large/2020/06/20/15926242255742.png?imageMogr2/gravity/center/crop/4096x4096/interlace/1');
INSERT INTO `hp_banner_image`
VALUES (5, 'https://www.szhksh.com/uploadfile/ueditor/image/20221207/1670396614874173.png');

SET
FOREIGN_KEY_CHECKS = 1;
