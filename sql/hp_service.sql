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

 Date: 17/05/2023 11:34:09
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hp_service
-- ----------------------------
DROP TABLE IF EXISTS `hp_service`;
CREATE TABLE `hp_service`
(
    `id`              int NOT NULL AUTO_INCREMENT COMMENT '服务ID',
    `classification1` int NULL DEFAULT NULL COMMENT '服务一级分类ID',
    `classification2` int NULL DEFAULT NULL COMMENT '服务二级分类ID',
    `image_url`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务图片地址',
    `title`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务名称',
    `content`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务详情',
    `price`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务价格',
    `city`            varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
    `merchant_id`     int NULL DEFAULT NULL COMMENT '商家ID',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX             `classification2`(`classification2` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hp_service
-- ----------------------------
INSERT INTO `hp_service`
VALUES (1, 1, 1, 'https://img2.baidu.com/it/u=3116339264,3410824633&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500',
        '居家卫生打扫', '详情', '288', '雅安', 2);
INSERT INTO `hp_service`
VALUES (2, 1, 1, 'https://5b0988e595225.cdn.sohucs.com/images/20200128/5d83a82e78804f9996852feda1ddfbb3.jpeg',
        '居家卫生打扫', '详情', '248', '雅安', 2);
INSERT INTO `hp_service`
VALUES (3, 1, 1, 'https://p7.itc.cn/images01/20200818/d75f43a37e2449ebacc626887ec3a2b7.jpeg', '居家卫生打扫', '详情',
        '345', '雅安', 2);
INSERT INTO `hp_service`
VALUES (4, 1, 1,
        'https://pics6.baidu.com/feed/c8177f3e6709c93d024ce4295a3250d9d0005443.jpeg?token=98d088ad72debaaab3ff1d676346b63b&s=12B47185449251D4C88C08D20300D030',
        '居家卫生打扫', '详情', '432', '雅安', 2);
INSERT INTO `hp_service`
VALUES (5, 1, 1, 'https://p8.itc.cn/q_70/images03/20210105/8ea952c128844e1294c138193cb867f8.jpeg', '居家卫生打扫',
        '详情', '316', '雅安', 2);
INSERT INTO `hp_service`
VALUES (6, 1, 1, 'https://img1.baidu.com/it/u=4241902249,24092191&fm=253&fmt=auto&app=138&f=JPEG?w=767&h=432',
        '居家卫生打扫', '详情', '198', '雅安', 2);
INSERT INTO `hp_service`
VALUES (7, 1, 1, 'https://5b0988e595225.cdn.sohucs.com/images/20181024/3f6134f8e67d4a8ba6f5c132baa55b3b.jpeg',
        '居家卫生打扫', '详情', '378', '雅安', 2);
INSERT INTO `hp_service`
VALUES (8, 1, 1, 'https://img1.baidu.com/it/u=3866319554,2564864863&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=266',
        '居家卫生打扫', '详情', '428', '雅安', 2);
INSERT INTO `hp_service`
VALUES (9, 1, 1, 'https://5b0988e595225.cdn.sohucs.com/images/20170906/713aa059ac354cf48fb93add1caa72e5.jpeg',
        '居家卫生打扫', '详情', '246', '雅安', 2);
INSERT INTO `hp_service`
VALUES (10, 1, 1, 'https://www.17life.com/Images/imagesU/67e0e787-e5a1-4051-8754-bfb682252806/IMG_4257.jpg',
        '居家卫生打扫', '详情', '228', '雅安', 2);
INSERT INTO `hp_service`
VALUES (11, 1, 2, 'https://img0.baidu.com/it/u=147126505,3705804186&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '电器清洗清洁', '详情', '104', '雅安', 2);
INSERT INTO `hp_service`
VALUES (12, 1, 2, 'https://img0.baidu.com/it/u=2138835777,1388415151&fm=253&fmt=auto&app=120&f=PNG?w=486&h=325',
        '电器清洗清洁', '详情', '109', '雅安', 2);
INSERT INTO `hp_service`
VALUES (13, 1, 2, 'https://img1.baidu.com/it/u=2188479427,1061708931&fm=253&fmt=auto&app=138&f=JPEG?w=749&h=500',
        '电器清洗清洁', '详情', '126', '雅安', 2);
INSERT INTO `hp_service`
VALUES (14, 1, 2, 'https://img2.baidu.com/it/u=654683835,1896054050&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '电器清洗清洁', '详情', '193', '雅安', 2);
INSERT INTO `hp_service`
VALUES (15, 1, 2, 'https://5b0988e595225.cdn.sohucs.com/images/20181203/76d222f2c1244ef985a1f8e5d08b6b34.jpeg',
        '电器清洗清洁', '详情', '165', '雅安', 2);
INSERT INTO `hp_service`
VALUES (16, 1, 2,
        'https://p0.meituan.net/merchantpic/a816d197faba3214b672dbacd6b21e61_1_b8eb8f1aa8e3ef7a_1_BNRW1zKEsGDRhGSVMUUJIw1txvnJCbvh0MwK1pVAPZ7ZjrCOwOT2b0xmSJqfLtmCBwk7ol7PsMTFj668eXLbxKshzChQ4mcG27RCEVJ0FqhPeNuGfCtVuaHJ2lmI2A9LdtvSC4B%2B4%2F3d%2B6OhylnRdw%3D%3D',
        '电器清洗清洁', '详情', '136', '雅安', 2);
INSERT INTO `hp_service`
VALUES (17, 1, 2, 'https://img0.baidu.com/it/u=2134684449,3717095954&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500',
        '电器清洗清洁', '详情', '147', '雅安', 2);
INSERT INTO `hp_service`
VALUES (18, 1, 2, 'https://img1.baidu.com/it/u=3580340977,947315016&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=713',
        '电器清洗清洁', '详情', '145', '雅安', 2);
INSERT INTO `hp_service`
VALUES (19, 1, 2, 'https://aimg8.dlssyht.cn/u/1409477/ueditor/image/705/1409477/1591938937845568.jpg', '电器清洗清洁',
        '详情', '148', '雅安', 2);
INSERT INTO `hp_service`
VALUES (20, 1, 2, 'https://img2.baidu.com/it/u=3400752983,297025310&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
        '电器清洗清洁', '详情', '213', '雅安', 2);
INSERT INTO `hp_service`
VALUES (21, 1, 2, 'https://img.91huoke.com/xxfl/hk91/customer/31419/IDLOgUIhRJZTsnd8OS8DLo6aSHIo42coUtw4kEXa.jpeg',
        '电器清洗清洁', '详情', '168', '雅安', 2);
INSERT INTO `hp_service`
VALUES (22, 1, 3,
        'https://p0.meituan.net/dpmerchantpic/429a714613b121817e5fd0a7de74c6bc_1_b8eb8f1aa8e3ef7a_1_mUHTir%2FcRrHQ34nnDcCVv6GkromkQaO6M1H7T0tvHmQ3Ioy5uxzg0CsUGzFnHlbJBsWm%2B773QvgtUgYBDJkbp85TrkE9uXrRoBTZDmqHxOk1YxyYXog%2BkNUbK34fLgvBI0vaGPHWK%2BUwQ7fXBT6seQ%3D%3D',
        '专项清洁', '详情', '309', '雅安', 2);
INSERT INTO `hp_service`
VALUES (23, 1, 3, 'https://pic4.58cdn.com.cn/p1/big/n_v2ca1f104ee5614b60a403f91a04ddb5ad.jpg', '专项清洁', '详情',
        '332', '雅安', 2);
INSERT INTO `hp_service`
VALUES (24, 1, 3, 'https://pic7.58cdn.com.cn/p1/big/n_v272e3b4eba4a44eb4b1879de9d8435e78.jpg', '专项清洁', '详情',
        '298', '雅安', 2);
INSERT INTO `hp_service`
VALUES (25, 1, 3,
        'https://p0.meituan.net/dpdeal/ca2955cf0969df276dd1dee9b4924502161598.jpg%40640w_1024h_1e_1l%7Cwatermark=1&&r=1&p=9&x=2&y=2&relative=1&o=20',
        '专项清洁', '详情', '260', '雅安', 2);
INSERT INTO `hp_service`
VALUES (26, 1, 3, 'https://qnimg.zowoyoo.com/img/297392/1645423386702.jpg', '专项清洁', '详情', '222', '雅安', 2);
INSERT INTO `hp_service`
VALUES (27, 1, 3, 'https://img0.baidu.com/it/u=1007509986,556704228&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '专项清洁', '详情', '274', '雅安', 2);
INSERT INTO `hp_service`
VALUES (28, 1, 3, 'https://img0.baidu.com/it/u=3942918612,59433112&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '专项清洁', '详情', '203', '雅安', 2);
INSERT INTO `hp_service`
VALUES (29, 1, 4, 'https://pic7.58cdn.com.cn//p1/big/n_v23282237f7a604f0784bbc6c0e4d21990.jpg', '布艺除螨', '详情',
        '240', '雅安', 2);
INSERT INTO `hp_service`
VALUES (30, 1, 4, 'https://img.daoway.cn/img/price/2021/05/20/2d9ae44e-d2e1-41a4-8037-63246def9f9c.jpg', '布艺除螨',
        '详情', '166', '雅安', 2);
INSERT INTO `hp_service`
VALUES (31, 1, 4, 'https://img.daoway.cn/img/price/2020/06/04/6cb9c55c-fe30-4a8c-a7bd-dd89ea2a6752.jpg', '布艺除螨',
        '详情', '318', '雅安', 2);
INSERT INTO `hp_service`
VALUES (32, 1, 4, 'https://cos3.solepic.com/20210810/b_5612740202108100336587505.jpg', '布艺除螨', '详情', '246',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (33, 1, 4, 'https://img2.baidu.com/it/u=3437643776,3859581057&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
        '布艺除螨', '详情', '161', '雅安', 2);
INSERT INTO `hp_service`
VALUES (34, 1, 4, 'https://img.daoway.cn/img/price/2020/03/05/1b974917-44c3-474e-bb23-7414b61b66b3.jpg', '布艺除螨',
        '详情', '235', '雅安', 2);
INSERT INTO `hp_service`
VALUES (35, 1, 4, 'https://img.alicdn.com/bao/uploaded/i3/2200559365679/O1CN01ESJYhf1rp1veEYf6i_%21%210-item_pic.jpg',
        '布艺除螨', '详情', '363', '雅安', 2);
INSERT INTO `hp_service`
VALUES (36, 1, 4, 'https://v1.cdn-static.cn/2017/3/12/9503_j06sjgpe.JPG?imageView2/2/h/1074/q/100', '布艺除螨', '详情',
        '205', '雅安', 2);
INSERT INTO `hp_service`
VALUES (37, 1, 4, 'https://img2.baidu.com/it/u=2116880590,1296054201&fm=253&fmt=auto&app=138&f=JPEG?w=867&h=500',
        '布艺除螨', '详情', '283', '雅安', 2);
INSERT INTO `hp_service`
VALUES (38, 1, 4,
        'https://p0.meituan.net/merchantpic/33ee0b5ebf27dac6b1084ba6c26f1298_1_b8eb8f1aa8e3ef7a_1_QSOcE5yC8s6%2Bv4JB7YUFOWAjcIgqdr8dayZleCazPtozWQFcGBZBDX6KznASfUxGxz4NlVbvf4QwKphaEcVGMKXZOLDfzF39Qry8SGE1BlTbPiTbq35fyAaeMRCJwWoLVTNF70cJBs27%2BpuPgfowfg%3D%3D',
        '布艺除螨', '详情', '323', '雅安', 2);
INSERT INTO `hp_service`
VALUES (39, 1, 4, 'https://tyunfile.71360.com/UpLoadFile/2019/9/25/16/637050241381387058_qhzxjz_5559192.jpg',
        '布艺除螨', '详情', '365', '雅安', 2);
INSERT INTO `hp_service`
VALUES (40, 1, 4, 'https://img.alicdn.com/bao/uploaded/i3/20639449/O1CN01LbDtBb2JfhF0bCrti_%21%2120639449.jpg',
        '布艺除螨', '详情', '267', '雅安', 2);
INSERT INTO `hp_service`
VALUES (41, 1, 5, 'https://img0.baidu.com/it/u=2025242775,4271784187&fm=253&fmt=auto&app=138&f=JPEG?w=664&h=500',
        '消毒消杀', '详情', '175', '雅安', 2);
INSERT INTO `hp_service`
VALUES (42, 1, 5, 'http://t13.baidu.com/it/u=2251136769,2033150085&fm=224&app=112&f=JPEG?w=500&h=500', '消毒消杀',
        '详情', '167', '雅安', 2);
INSERT INTO `hp_service`
VALUES (43, 1, 5, 'https://img2.baidu.com/it/u=1819763769,3848036084&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=425',
        '消毒消杀', '详情', '129', '雅安', 2);
INSERT INTO `hp_service`
VALUES (44, 1, 5, 'https://img1.baidu.com/it/u=2891913362,109536747&fm=253&fmt=auto&app=138&f=JPEG?w=600&h=450',
        '消毒消杀', '详情', '123', '雅安', 2);
INSERT INTO `hp_service`
VALUES (45, 1, 5, 'https://img0.baidu.com/it/u=279991311,2515906533&fm=253&fmt=auto&app=138&f=JPEG?w=509&h=500',
        '消毒消杀', '详情', '208', '雅安', 2);
INSERT INTO `hp_service`
VALUES (46, 1, 5, 'https://img.rednet.cn/2020/02-06/ab4be035-fbdb-495c-add0-95bca1c75f01.', '消毒消杀', '详情', '147',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (47, 2, 6, 'https://img2.baidu.com/it/u=2860423731,4099595947&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=355',
        '老人照顾', '详情', '276', '雅安', 2);
INSERT INTO `hp_service`
VALUES (48, 2, 6, 'https://img1.baidu.com/it/u=2396673837,1877700966&fm=253&fmt=auto&app=138&f=JPEG?w=355&h=500',
        '老人照顾', '详情', '257', '雅安', 2);
INSERT INTO `hp_service`
VALUES (49, 2, 6, 'https://img2.baidu.com/it/u=1674491992,2258726836&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=705',
        '老人照顾', '详情', '236', '雅安', 2);
INSERT INTO `hp_service`
VALUES (50, 2, 6,
        'https://pics7.baidu.com/feed/a1ec08fa513d2697d7fd456bcd3a26fc4316d827.jpeg?token=d2209e15c2b5c952b05c3198e4b6f236',
        '老人照顾', '详情', '306', '雅安', 2);
INSERT INTO `hp_service`
VALUES (51, 2, 6, 'https://bj.bjd.com.cn/images/202002/05/5e3ab1dde4b0768c3a894743.jpeg', '老人照顾', '详情', '360',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (52, 2, 6, 'https://pic1.zhimg.com/v2-c6343d7c0f0c9f19d90dd31adf01756c_r.jpg', '老人照顾', '详情', '234', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (53, 2, 6, 'https://12318.s21i.faiusr.com/2/ABUIABACGAAgw8OciQUo2ZjNqAQwyAk4gBA.jpg', '老人照顾', '详情', '289',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (54, 2, 6, 'https://inews.gtimg.com/newsapp_bt/0/13357493046/1000.jpg', '老人照顾', '详情', '434', '雅安', 2);
INSERT INTO `hp_service`
VALUES (55, 2, 6, 'https://tenfei01.cfp.cn/creative/vcg/nowater800/new/VCG21gic20013849.jpg', '老人照顾', '详情', '318',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (56, 2, 7, 'https://n.sinaimg.cn/sinakd20200714ac/267/w640h427/20200714/c22d-iwhseiu3885270.jpg', '月子照顾',
        '详情', '538', '雅安', 2);
INSERT INTO `hp_service`
VALUES (57, 2, 7, 'https://p1.meituan.net/shaitu/44f877389c68f623e0638ca7a538b0d01055010.jpg', '月子照顾', '详情',
        '572', '雅安', 2);
INSERT INTO `hp_service`
VALUES (58, 2, 7,
        'https://dingyue.ws.126.net/=ZaBS5Op72uMNLn7cL4v3Lqh=qZZOfVwCi3O4h6IF3Ht11545379674679compressflag.jpg',
        '月子照顾', '详情', '542', '雅安', 2);
INSERT INTO `hp_service`
VALUES (59, 2, 7, 'https://n.sinaimg.cn/sinacn20200204ac/265/w640h425/20200204/97d2-inzcrxs2553538.jpg', '月子照顾',
        '详情', '568', '雅安', 2);
INSERT INTO `hp_service`
VALUES (60, 2, 7, 'https://p2.itc.cn/images01/20200616/7c9d1dde95cd4a96b65c46b8582b9e12.jpeg', '月子照顾', '详情',
        '535', '雅安', 2);
INSERT INTO `hp_service`
VALUES (61, 2, 7, 'https://www.duoxiwa.com/resource/images/9d846f008ab94b3b881ca494d1a7097f_7.jpg', '月子照顾', '详情',
        '541', '雅安', 2);
INSERT INTO `hp_service`
VALUES (62, 2, 7, 'https://n.sinaimg.cn/sinacn17/488/w800h488/20180817/59d2-hhvciiw7930609.jpg', '月子照顾', '详情',
        '498', '雅安', 2);
INSERT INTO `hp_service`
VALUES (63, 2, 8,
        'https://p0.meituan.net/dpmerchantpic/5531ac8b97e47bd91fb18675829b1621507394.jpg%40640w_480h_1e_1c_1l%7Cwatermark%3D0',
        '育婴育儿', '详情', '490', '雅安', 2);
INSERT INTO `hp_service`
VALUES (64, 2, 8, 'https://img.shangyexinzhi.com/xztest-image/article/4e498a4849ad63db.jpg', '育婴育儿', '详情', '487',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (65, 2, 8,
        'https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2021%2F0426%2F36de2675p00qs5smp00a3d000hs00app.png&thumbnail=660x2147483647&quality=80&type=jpg',
        '育婴育儿', '详情', '463', '雅安', 2);
INSERT INTO `hp_service`
VALUES (66, 2, 8, 'https://pic1.58cdn.com.cn/p1/big/n_v2575001ca5952461f84d4d706963bbbbe.jpg', '育婴育儿', '详情',
        '420', '雅安', 2);
INSERT INTO `hp_service`
VALUES (67, 2, 8, 'https://pic3.58cdn.com.cn/p1/big/n_v2d7aba664d29748cc809d60ef69ae686e.jpg', '育婴育儿', '详情',
        '498', '雅安', 2);
INSERT INTO `hp_service`
VALUES (68, 2, 8, 'https://pic1.58cdn.com.cn/p1/big/n_v21e1dd998e6ab4ab0a76349fd80a62df4.jpg', '育婴育儿', '详情',
        '462', '雅安', 2);
INSERT INTO `hp_service`
VALUES (69, 2, 8, 'https://img2.baidu.com/it/u=1958079018,3962543195&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
        '育婴育儿', '详情', '494', '雅安', 2);
INSERT INTO `hp_service`
VALUES (70, 3, 9, 'https://p3.itc.cn/images01/20200616/44e67b2ba45a4c20b076c883f03edf93.jpeg', '专业货车搬家', '详情',
        '269', '雅安', 2);
INSERT INTO `hp_service`
VALUES (71, 3, 9, 'https://p8.itc.cn/images01/20200619/081813f83efa449fb21213965422bf52.jpeg', '专业货车搬家', '详情',
        '114', '雅安', 2);
INSERT INTO `hp_service`
VALUES (72, 3, 9, 'https://filecdn.tuiguang91.com/uploads/15147_21646/202105/c201b2ce8ab73d7929ad832345d1ad14.jpg',
        '专业货车搬家', '详情', '292', '雅安', 2);
INSERT INTO `hp_service`
VALUES (73, 3, 9, 'https://pic1.zhimg.com/v2-8ef75b3bcd1c7cbe633cbde7dc3d146a_r.jpg?source=1940ef5c', '专业货车搬家',
        '详情', '237', '雅安', 2);
INSERT INTO `hp_service`
VALUES (74, 3, 9, 'https://img1.baidu.com/it/u=1291404307,434817139&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889',
        '专业货车搬家', '详情', '205', '雅安', 2);
INSERT INTO `hp_service`
VALUES (75, 3, 9, 'https://img2.baidu.com/it/u=1589864095,2917189974&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业货车搬家', '详情', '137', '雅安', 2);
INSERT INTO `hp_service`
VALUES (76, 3, 9, 'https://img1.baidu.com/it/u=1896249495,2623256290&fm=253&fmt=auto&app=138&f=JPEG?w=668&h=500',
        '专业货车搬家', '详情', '537', '雅安', 2);
INSERT INTO `hp_service`
VALUES (77, 3, 9, 'https://img1.baidu.com/it/u=2538923390,2285013866&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业货车搬家', '详情', '297', '雅安', 2);
INSERT INTO `hp_service`
VALUES (78, 3, 9, 'https://www.4007008942.com/zb_users/upload/2019/11/201911281574871933256219.jpg', '专业货车搬家',
        '详情', '435', '雅安', 2);
INSERT INTO `hp_service`
VALUES (79, 3, 9, 'https://img2.baidu.com/it/u=2963141983,2026446526&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '专业货车搬家', '详情', '303', '雅安', 2);
INSERT INTO `hp_service`
VALUES (80, 3, 9, 'https://img1.baidu.com/it/u=1351754176,3362347358&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业货车搬家', '详情', '481', '雅安', 2);
INSERT INTO `hp_service`
VALUES (81, 3, 9, 'https://img0.baidu.com/it/u=4046477716,826654365&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业货车搬家', '详情', '239', '雅安', 2);
INSERT INTO `hp_service`
VALUES (82, 3, 9, 'https://pic1.0597kk.com/attachment/forum/pw/forum/201705/26/175511t33ercllr3re3j3j.jpg',
        '专业货车搬家', '详情', '426', '雅安', 2);
INSERT INTO `hp_service`
VALUES (83, 3, 10, 'https://img0.baidu.com/it/u=3943428094,2475823417&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666',
        '托管式搬家', '详情', '385', '雅安', 2);
INSERT INTO `hp_service`
VALUES (84, 3, 10, 'https://img2.baidu.com/it/u=3741120415,357032979&fm=253&fmt=auto&app=138&f=JPEG?w=424&h=500',
        '托管式搬家', '详情', '291', '雅安', 2);
INSERT INTO `hp_service`
VALUES (85, 3, 10, 'https://img2.baidu.com/it/u=1669918314,901063933&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
        '托管式搬家', '详情', '138', '雅安', 2);
INSERT INTO `hp_service`
VALUES (86, 3, 10, 'https://img2.baidu.com/it/u=1588818109,472575609&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
        '托管式搬家', '详情', '654', '雅安', 2);
INSERT INTO `hp_service`
VALUES (87, 3, 10, 'https://cos.solepic.com/20181022/b_4238744_201810221545403538.jpg', '托管式搬家', '详情', '330',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (88, 3, 10, 'https://www.icuncang.com/uploads/210423/1-210423152634617.jpg', '托管式搬家', '详情', '557', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (89, 3, 10, 'https://www.icuncang.com/uploads/210423/1-2104231526143Y.jpg', '托管式搬家', '详情', '579', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (90, 3, 10, 'https://img2.baidu.com/it/u=3898342467,132343253&fm=253&fmt=auto&app=120&f=JPEG?w=600&h=400',
        '托管式搬家', '详情', '337', '雅安', 2);
INSERT INTO `hp_service`
VALUES (91, 3, 10, 'https://img2.baidu.com/it/u=3660041838,44848100&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '托管式搬家', '详情', '349', '雅安', 2);
INSERT INTO `hp_service`
VALUES (92, 3, 10, 'https://img1.baidu.com/it/u=4000977640,306492629&fm=253&fmt=auto&app=138&f=JPEG?w=707&h=500',
        '托管式搬家', '详情', '537', '雅安', 2);
INSERT INTO `hp_service`
VALUES (93, 3, 10, 'https://newpic.jxnews.com.cn/003/029/013/00302901302_4ff898f6.jpg', '托管式搬家', '详情', '719',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (94, 3, 11, 'https://pic2.58cdn.com.cn/p1/big/n_v2dac7589374154d9e9953446c2e7b9c5c.jpg', '专业办公室搬家',
        '详情', '516', '雅安', 2);
INSERT INTO `hp_service`
VALUES (95, 3, 11, 'https://img.11467.com/2021/06-22/3106439114.jpg', '专业办公室搬家', '详情', '164', '雅安', 2);
INSERT INTO `hp_service`
VALUES (96, 3, 11, 'https://p2.itc.cn/images01/20201110/26603c8204e34d85851009cebf332b9d.png', '专业办公室搬家', '详情',
        '192', '雅安', 2);
INSERT INTO `hp_service`
VALUES (97, 3, 11,
        'https://static1.keepcdn.com/picture/2020/06/30/21/16/eb835fdec92341815603dace8c48b68b801a74e3_1080x810.jpg',
        '专业办公室搬家', '详情', '308', '雅安', 2);
INSERT INTO `hp_service`
VALUES (98, 3, 11,
        'https://t11.baidu.com/it/u=1616346569,183316901&fm=30&app=106&f=PNG?w=640&h=408&s=8EB8098A06717B8A4D203CE403005031',
        '专业办公室搬家', '详情', '382', '雅安', 2);
INSERT INTO `hp_service`
VALUES (99, 3, 11, 'https://img0.baidu.com/it/u=2666019460,750000972&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业办公室搬家', '详情', '200', '雅安', 2);
INSERT INTO `hp_service`
VALUES (100, 3, 11, 'https://img0.baidu.com/it/u=2666019460,750000972&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业办公室搬家', '详情', '355', '雅安', 2);
INSERT INTO `hp_service`
VALUES (101, 3, 11, 'https://p5.itc.cn/images01/20201110/a0df3e84420e4b82b851cd61e0edaa3d.png', '专业办公室搬家',
        '详情', '263', '雅安', 2);
INSERT INTO `hp_service`
VALUES (102, 3, 11, 'https://img2.baidu.com/it/u=3599792815,4053988084&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500',
        '专业办公室搬家', '详情', '443', '雅安', 2);
INSERT INTO `hp_service`
VALUES (103, 3, 11, 'https://img.11467.com/2021/06-22/3107582868.jpg', '专业办公室搬家', '详情', '367', '雅安', 2);
INSERT INTO `hp_service`
VALUES (104, 3, 11, 'https://5b0988e595225.cdn.sohucs.com/images/20190923/e22ff1450f734c8db361741d0d15d64d.jpeg',
        '专业办公室搬家', '详情', '383', '雅安', 2);
INSERT INTO `hp_service`
VALUES (105, 3, 11, 'https://img1.baidu.com/it/u=3996001680,1346655214&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业办公室搬家', '详情', '549', '雅安', 2);
INSERT INTO `hp_service`
VALUES (106, 3, 11, 'https://img0.baidu.com/it/u=3826789425,2132125824&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=281',
        '专业办公室搬家', '详情', '609', '雅安', 2);
INSERT INTO `hp_service`
VALUES (107, 3, 11, 'https://img0.baidu.com/it/u=961074859,4188034054&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
        '专业办公室搬家', '详情', '320', '雅安', 2);
INSERT INTO `hp_service`
VALUES (108, 4, 12, 'https://img0.baidu.com/it/u=2728264241,212341200&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
        '疏通厨卫', '详情', '172', '雅安', 2);
INSERT INTO `hp_service`
VALUES (109, 4, 12, 'https://www.n127.com/file/upload/201809/20/1721003331875.jpg', '疏通厨卫', '详情', '407', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (110, 4, 12, 'https://pic3.zhimg.com/v2-fc974033fe68aeb3b54cc2483614f49e_r.jpg', '疏通厨卫', '详情', '293',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (111, 4, 12, 'https://p0.meituan.net/shaitu/77c96109cf57aca238db43027fb724e7131640.jpg', '疏通厨卫', '详情',
        '421', '雅安', 2);
INSERT INTO `hp_service`
VALUES (112, 4, 12, 'https://img0.baidu.com/it/u=1123445929,1598686731&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
        '疏通厨卫', '详情', '441', '雅安', 2);
INSERT INTO `hp_service`
VALUES (113, 4, 12, 'https://img1.baidu.com/it/u=229734616,1520974535&fm=253&fmt=auto&app=138&f=PNG?w=500&h=506',
        '疏通厨卫', '详情', '564', '雅安', 2);
INSERT INTO `hp_service`
VALUES (114, 4, 12, 'https://pic4.58cdn.com.cn/p1/big/n_v1bj3gzr2sa3jfqe2q6vaq.jpg', '疏通厨卫', '详情', '224', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (115, 4, 12, 'https://p1.meituan.net/shaitu/918ecfe444a3b608d3fd6865161dd4c371544.jpg', '疏通厨卫', '详情',
        '532', '雅安', 2);
INSERT INTO `hp_service`
VALUES (116, 4, 13, 'https://img1.baidu.com/it/u=2017946751,1335348106&fm=253&fmt=auto&app=120&f=JPEG?w=612&h=456',
        '专业开锁', '详情', '186', '雅安', 2);
INSERT INTO `hp_service`
VALUES (117, 4, 13, 'https://img0.baidu.com/it/u=1017967723,2981590207&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '专业开锁', '详情', '428', '雅安', 2);
INSERT INTO `hp_service`
VALUES (118, 4, 13, 'https://img1.baidu.com/it/u=103451222,33661030&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业开锁', '详情', '347', '雅安', 2);
INSERT INTO `hp_service`
VALUES (119, 4, 13, 'https://img0.baidu.com/it/u=280130285,713166731&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业开锁', '详情', '452', '雅安', 2);
INSERT INTO `hp_service`
VALUES (120, 4, 13, 'https://pic5.58cdn.com.cn/p1/big/n_v24bae968f23064449bde270709f481717.jpg', '专业开锁', '详情',
        '587', '雅安', 2);
INSERT INTO `hp_service`
VALUES (121, 4, 13, 'https://img-qn.51miz.com/preview/photo/00/01/58/07/P-1580748-3E20472CO.jpg', '专业开锁', '详情',
        '206', '雅安', 2);
INSERT INTO `hp_service`
VALUES (122, 4, 13, 'https://img1.baidu.com/it/u=1333206450,2890161504&fm=253&fmt=auto&app=138&f=JPEG?w=648&h=500',
        '专业开锁', '详情', '235', '雅安', 2);
INSERT INTO `hp_service`
VALUES (123, 4, 13, 'https://img0.baidu.com/it/u=279274311,3907249229&fm=253&fmt=auto&app=138&f=JPEG?w=530&h=375',
        '专业开锁', '详情', '95', '雅安', 2);
INSERT INTO `hp_service`
VALUES (124, 4, 13, 'https://img0.baidu.com/it/u=1234819685,3259916330&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '专业开锁', '详情', '562', '雅安', 2);
INSERT INTO `hp_service`
VALUES (125, 4, 14, 'https://pic5.58cdn.com.cn/p1/big/n_v2ebf47b8f1db946fcbff31e1deeafdafa.jpg', '换锁装锁', '详情',
        '363', '雅安', 2);
INSERT INTO `hp_service`
VALUES (126, 4, 14, 'https://www.baixiu.org/upload/img/2020/03/26/1585186951130757.jpg', '换锁装锁', '详情', '33',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (127, 4, 14,
        'https://pics1.baidu.com/feed/c9fcc3cec3fdfc037a003bda321f969da4c22606.jpeg?token=9a2cb1ad7e90833baecd4c57f08726ee',
        '换锁装锁', '详情', '280', '雅安', 2);
INSERT INTO `hp_service`
VALUES (128, 4, 14, 'https://img1.baidu.com/it/u=2075821719,1976357331&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666',
        '换锁装锁', '详情', '484', '雅安', 2);
INSERT INTO `hp_service`
VALUES (129, 4, 14, 'https://pic1.58cdn.com.cn/p1/big/n_v2c2448f62d9de4b9ba70bd497e2f8653c.jpg', '换锁装锁', '详情',
        '565', '雅安', 2);
INSERT INTO `hp_service`
VALUES (130, 4, 14, 'https://img.pconline.com.cn/images/upload/upc/tx/pc_best/2009/29/c179/233164515_1601384096759.jpg',
        '换锁装锁', '详情', '368', '雅安', 2);
INSERT INTO `hp_service`
VALUES (131, 4, 14, 'https://www.baixiu.org/upload/img/2022/03/05/1646448296212848.jpg', '换锁装锁', '详情', '442',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (132, 4, 14, 'https://img6.baixing.net/b8a4df41cfcfb9b5f803ce46b00be2d3.jpg_xl', '换锁装锁', '详情', '582',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (133, 4, 14, 'https://img1.baidu.com/it/u=3783137978,2441272772&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=658',
        '换锁装锁', '详情', '463', '雅安', 2);
INSERT INTO `hp_service`
VALUES (134, 4, 14, 'https://nwzimg.wezhan.cn/contents/sitefiles2003/10015615/images/263541.jpg', '换锁装锁', '详情',
        '118', '雅安', 2);
INSERT INTO `hp_service`
VALUES (135, 4, 14, 'https://pic1.58cdn.com.cn/p1/big/n_v23a8048a899084f10a3ddc2be00b9b55a.jpg', '换锁装锁', '详情',
        '564', '雅安', 2);
INSERT INTO `hp_service`
VALUES (136, 5, 15, 'https://img0.baidu.com/it/u=1531271274,2288625309&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '家电回收', '详情', '334', '雅安', 2);
INSERT INTO `hp_service`
VALUES (137, 5, 15,
        'https://pics2.baidu.com/feed/b58f8c5494eef01fbd6897127fd82c22bd317d93.jpeg?token=5dc821f7aeb63c5964041fca98914fe2',
        '家电回收', '详情', '195', '雅安', 2);
INSERT INTO `hp_service`
VALUES (138, 5, 15, 'https://inews.gtimg.com/newsapp_bt/0/14937038099/1000', '家电回收', '详情', '188', '雅安', 2);
INSERT INTO `hp_service`
VALUES (139, 5, 15, 'https://n.sinaimg.cn/sinakd20120/277/w640h437/20210824/5a54-9ab5398edfc4bd5ba2115a3e62448ed0.jpg',
        '家电回收', '详情', '372', '雅安', 2);
INSERT INTO `hp_service`
VALUES (140, 5, 15, 'https://mz.eastday.com/57937701.jpeg?imageslim', '家电回收', '详情', '349', '雅安', 2);
INSERT INTO `hp_service`
VALUES (141, 5, 15, 'https://p7.itc.cn/images01/20220328/8e6b23eea73c423388070cf779c35287.png', '家电回收', '详情',
        '385', '雅安', 2);
INSERT INTO `hp_service`
VALUES (142, 5, 15, 'https://pic1.58cdn.com.cn/p1/big/n_v22e45d68d82474b7e949ff32d57c3b3db.jpg', '家电回收', '详情',
        '43', '雅安', 2);
INSERT INTO `hp_service`
VALUES (143, 5, 15, 'https://inews.gtimg.com/newsapp_bt/0/14110502746/1000', '家电回收', '详情', '378', '雅安', 2);
INSERT INTO `hp_service`
VALUES (144, 5, 16, 'https://img2.baidu.com/it/u=3062159168,2679994427&fm=253&fmt=auto&app=138&f=JPEG?w=650&h=427',
        '专业家具回收', '详情', '315', '雅安', 2);
INSERT INTO `hp_service`
VALUES (145, 5, 16, 'https://cos2.solepic.com/20210426/b_3895288202104260714538617.jpg', '专业家具回收', '详情', '386',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (146, 5, 16, 'https://c.b2b168.com/download.img.dns4.cn/pic/80652/hs/20140715161928_9111_zs_sy.jpg',
        '专业家具回收', '详情', '448', '雅安', 2);
INSERT INTO `hp_service`
VALUES (147, 5, 16, 'https://img1.baidu.com/it/u=125416820,2096109994&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业家具回收', '详情', '379', '雅安', 2);
INSERT INTO `hp_service`
VALUES (148, 5, 16, 'https://pic4.58cdn.com.cn/p1/big/n_v2dc1255b8018c49cebb03c9ec35bfeb1d.jpg', '专业家具回收', '详情',
        '48', '雅安', 2);
INSERT INTO `hp_service`
VALUES (149, 5, 16, 'https://cos2.solepic.com/20210411/b_3895288202104110941387892.jpg', '专业家具回收', '详情', '315',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (150, 5, 16, 'https://cos2.solepic.com/20210306/b_699034202103061328055575.jpg', '专业家具回收', '详情', '51',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (151, 5, 16, 'https://img2.baidu.com/it/u=2781957166,2678772674&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=453',
        '专业家具回收', '详情', '377', '雅安', 2);
INSERT INTO `hp_service`
VALUES (152, 5, 16, 'https://cos2.solepic.com/20191105/b_5287682201911052025411657.jpg', '专业家具回收', '详情', '565',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (153, 5, 16, 'https://img2.baidu.com/it/u=3650504414,2161801809&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业家具回收', '详情', '182', '雅安', 2);
INSERT INTO `hp_service`
VALUES (154, 5, 17, 'https://img0.baidu.com/it/u=3623520666,3428015669&fm=253&fmt=auto&app=138&f=JPEG?w=887&h=500',
        '金属物品回收', '详情', '336', '雅安', 2);
INSERT INTO `hp_service`
VALUES (155, 5, 18, 'https://cos2.solepic.com/20200215/b_5375426202002151801332672.jpg', '厨房设备回收', '详情', '236',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (156, 5, 18, 'https://pic3.58cdn.com.cn//p1/big/n_v2dcfb4a33290049dd9133ca2fb17b9398.jpg', '厨房设备回收',
        '详情', '576', '雅安', 2);
INSERT INTO `hp_service`
VALUES (157, 5, 18, 'https://img.91huoke.com/xxfl/hk91/customer/39324/aiW4vXTHegtABSfAZJVlX6Idl86E6UF3QWBKHbow.jpeg',
        '厨房设备回收', '详情', '463', '雅安', 2);
INSERT INTO `hp_service`
VALUES (158, 5, 18, 'https://img1.baidu.com/it/u=4190437265,1644425290&fm=253&fmt=auto&app=138&f=JPEG?w=571&h=354',
        '厨房设备回收', '详情', '542', '雅安', 2);
INSERT INTO `hp_service`
VALUES (159, 5, 18, 'https://img1.baidu.com/it/u=697699348,2856960489&fm=253&fmt=auto&app=138&f=JPEG?w=758&h=500',
        '厨房设备回收', '详情', '463', '雅安', 2);
INSERT INTO `hp_service`
VALUES (160, 5, 18, 'https://img2.baidu.com/it/u=2393257959,3958924517&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '厨房设备回收', '详情', '305', '雅安', 2);
INSERT INTO `hp_service`
VALUES (161, 5, 19, 'https://img1.baidu.com/it/u=4058844601,3760386346&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '二手电脑回收', '详情', '460', '雅安', 2);
INSERT INTO `hp_service`
VALUES (162, 5, 19, 'https://img.jqcom.cn/forum/202109/29/114038bs1r1vmr1rbese1g.jpg', '二手电脑回收', '详情', '308',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (163, 5, 19, 'https://img2.baidu.com/it/u=3067860126,411973764&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '二手电脑回收', '详情', '204', '雅安', 2);
INSERT INTO `hp_service`
VALUES (164, 5, 19, 'https://meiti.fabumao.cn/BN7Kx/202109181631fnb1631953912424.jpg', '二手电脑回收', '详情', '391',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (165, 5, 19, 'https://img2.baidu.com/it/u=1865202032,1736518060&fm=253&fmt=auto&app=138&f=JPEG?w=588&h=500',
        '二手电脑回收', '详情', '572', '雅安', 2);
INSERT INTO `hp_service`
VALUES (166, 5, 19, 'https://img0.baidu.com/it/u=3430612839,1827969451&fm=253&fmt=auto&app=138&f=JPEG?w=583&h=500',
        '二手电脑回收', '详情', '264', '雅安', 2);
INSERT INTO `hp_service`
VALUES (167, 5, 19, 'https://img1.baidu.com/it/u=2178059275,3630008056&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '二手电脑回收', '详情', '337', '雅安', 2);
INSERT INTO `hp_service`
VALUES (168, 5, 19, 'https://img1.baiyewang.com/img1/5/311/986/11717486/msgpic/78d77e3bf851d4eff2cba4eb365938f2.jpeg',
        '二手电脑回收', '详情', '214', '雅安', 2);
INSERT INTO `hp_service`
VALUES (169, 5, 19, 'https://img0.baidu.com/it/u=2541413534,3299198922&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500',
        '二手电脑回收', '详情', '75', '雅安', 2);
INSERT INTO `hp_service`
VALUES (170, 5, 19, 'https://cos3.solepic.com/20210923/b_5591823202109231010451999.jpg', '二手电脑回收', '详情', '340',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (171, 5, 20, 'https://img2.baidu.com/it/u=499397218,470010908&fm=253&fmt=auto&app=138&f=JPEG?w=521&h=455',
        '文体乐器回收', '详情', '252', '雅安', 2);
INSERT INTO `hp_service`
VALUES (172, 5, 20, 'https://img1.fr-trading.com/0/5_292_1868624_1000_749.jpg', '文体乐器回收', '详情', '397', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (173, 5, 20, 'https://pic1.58cdn.com.cn/nowater/lbghy/sjt/pic/n_v2a3548d5ec84443349d8a6eb81b0c1d1d.jpg',
        '文体乐器回收', '详情', '43', '雅安', 2);
INSERT INTO `hp_service`
VALUES (174, 5, 20, 'https://img1.baidu.com/it/u=1947151121,383917976&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=473',
        '文体乐器回收', '详情', '399', '雅安', 2);
INSERT INTO `hp_service`
VALUES (175, 5, 20, 'https://img0.baidu.com/it/u=4077893658,1467657788&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '文体乐器回收', '详情', '470', '雅安', 2);
INSERT INTO `hp_service`
VALUES (176, 5, 20, 'https://pic5.58cdn.com.cn/p1/big/n_v215392cdde2444c2f8986a3816aebd4d9.jpg', '文体乐器回收', '详情',
        '295', '雅安', 2);
INSERT INTO `hp_service`
VALUES (177, 5, 20, 'https://img1.baidu.com/it/u=1809498966,2824614571&fm=253&fmt=auto&app=138&f=JPEG?w=524&h=500',
        '文体乐器回收', '详情', '128', '雅安', 2);
INSERT INTO `hp_service`
VALUES (178, 5, 20, 'https://img0.baidu.com/it/u=2318179618,2482064759&fm=253&fmt=auto&app=138&f=JPEG?w=416&h=500',
        '文体乐器回收', '详情', '70', '雅安', 2);
INSERT INTO `hp_service`
VALUES (179, 5, 20, 'https://img1.baidu.com/it/u=2501458114,2593522569&fm=253&fmt=auto&app=138&f=JPEG?w=547&h=500',
        '文体乐器回收', '详情', '516', '雅安', 2);
INSERT INTO `hp_service`
VALUES (180, 5, 21, 'https://img2.baidu.com/it/u=4086776967,2486252957&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '办公用品回收', '详情', '209', '雅安', 2);
INSERT INTO `hp_service`
VALUES (181, 5, 21, 'https://img0.baidu.com/it/u=3557644270,2525765249&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '办公用品回收', '详情', '242', '雅安', 2);
INSERT INTO `hp_service`
VALUES (182, 5, 21, 'https://pic3.58cdn.com.cn/p1/big/n_v20bb1a0fb36f14e02bb150aafeb5a409c.jpg', '办公用品回收', '详情',
        '439', '雅安', 2);
INSERT INTO `hp_service`
VALUES (183, 5, 21, 'https://pic3.58cdn.com.cn/p1/big/n_v26262f09de7ac4187b530bff3518127fc.jpg', '办公用品回收', '详情',
        '196', '雅安', 2);
INSERT INTO `hp_service`
VALUES (184, 5, 21, 'https://picture.huishoushang.com/product/2018/03/29/2018032918174304447567.jpg', '办公用品回收',
        '详情', '587', '雅安', 2);
INSERT INTO `hp_service`
VALUES (185, 5, 21, 'ahttps://work.ishouping.com/uploads/image/20210908/9e2de8597951173a879961d887feae2d.jpg',
        '办公用品回收', '详情', '439', '雅安', 2);
INSERT INTO `hp_service`
VALUES (186, 6, 22, 'https://img1.baidu.com/it/u=875358164,426509094&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '专业墙体墙面维修', '详情', '123', '雅安', 2);
INSERT INTO `hp_service`
VALUES (187, 6, 22, 'https://cos2.solepic.com/20201224/b_312778202012240947298576.jpg', '专业墙体墙面维修', '详情',
        '486', '雅安', 2);
INSERT INTO `hp_service`
VALUES (188, 6, 22, 'https://pic2.58cdn.com.cn/p1/big/n_v2bc0eb2c56bb74de0bacf78510d34c713.jpg', '专业墙体墙面维修',
        '详情', '498', '雅安', 2);
INSERT INTO `hp_service`
VALUES (189, 6, 22, 'https://n.sinaimg.cn/sinacn18/640/w1280h960/20180326/4885-fysqfnf9995561.jpg', '专业墙体墙面维修',
        '详情', '436', '雅安', 2);
INSERT INTO `hp_service`
VALUES (190, 6, 22,
        'https://pics6.baidu.com/feed/c8177f3e6709c93d57dbe41b13e3d4dbd0005412.jpeg?token=411e67cc185ef2df6e5805100b27a86b',
        '专业墙体墙面维修', '详情', '336', '雅安', 2);
INSERT INTO `hp_service`
VALUES (191, 6, 22, 'https://img2.baidu.com/it/u=2259231393,3449562546&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=429',
        '专业墙体墙面维修', '详情', '53', '雅安', 2);
INSERT INTO `hp_service`
VALUES (192, 6, 23, 'https://img2.baidu.com/it/u=654392093,1411359081&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '地面地暖维修', '详情', '377', '雅安', 2);
INSERT INTO `hp_service`
VALUES (193, 6, 23, 'https://img0.baidu.com/it/u=4236558697,704625072&fm=253&fmt=auto&app=138&f=GIF?w=605&h=375',
        '地面地暖维修', '详情', '552', '雅安', 2);
INSERT INTO `hp_service`
VALUES (194, 6, 23, 'https://img2.baidu.com/it/u=2305982902,3218439309&fm=253&fmt=auto&app=138&f=GIF?w=605&h=375',
        '地面地暖维修', '详情', '125', '雅安', 2);
INSERT INTO `hp_service`
VALUES (195, 6, 23, 'https://www.hongxinjujia.com/d/file/shuiguan/case/454747c32d02df0ec81d43c4bbcc4f8e.jpg',
        '地面地暖维修', '详情', '335', '雅安', 2);
INSERT INTO `hp_service`
VALUES (196, 6, 23, 'https://img0.baidu.com/it/u=3429812146,3870299381&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=363',
        '地面地暖维修', '详情', '428', '雅安', 2);
INSERT INTO `hp_service`
VALUES (197, 7, 24, 'https://img1.baidu.com/it/u=2940266462,11696994&fm=253&fmt=auto&app=138&f=JPEG?w=671&h=500',
        '水电维修', '详情', '132', '雅安', 2);
INSERT INTO `hp_service`
VALUES (198, 7, 24, 'https://img6.baixing.net/8f9bf7f38cd1ed7322014d51d574ee67.jpg_xl', '水电维修', '详情', '42',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (199, 7, 24, 'https://img2.baidu.com/it/u=185680042,3061639921&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '水电维修', '详情', '318', '雅安', 2);
INSERT INTO `hp_service`
VALUES (200, 7, 24, 'https://img2.baidu.com/it/u=3816293019,147024723&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=334',
        '水电维修', '详情', '541', '雅安', 2);
INSERT INTO `hp_service`
VALUES (201, 7, 24, 'https://img2.baidu.com/it/u=3984157960,681840726&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=650',
        '水电维修', '详情', '77', '雅安', 2);
INSERT INTO `hp_service`
VALUES (202, 7, 24,
        'https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2021%2F0922%2F256a7d2bj00qzu308001od200hp009yg00hp009y.jpg&thumbnail=660x2147483647&quality=80&type=jpg',
        '水电维修', '详情', '195', '雅安', 2);
INSERT INTO `hp_service`
VALUES (203, 7, 24, 'https://x0.ifengimg.com/res/2021/7F3D3E9AB56F603580D7D93F252BB01495559513_size169_w1200_h800.jpeg',
        '水电维修', '详情', '124', '雅安', 2);
INSERT INTO `hp_service`
VALUES (204, 7, 24, 'https://file.youboy.com/a/24/17/62/2/5242092s.gif', '水电维修', '详情', '296', '雅安', 2);
INSERT INTO `hp_service`
VALUES (205, 7, 25, 'https://img.zxzhijia.com/edpic/image/201604/20160409173813_32412.png', '五金安装', '详情', '524',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (206, 7, 25, 'https://img.zxzhijia.com/edpic/image/201508/20150827083610_87832.png', '五金安装', '详情', '354',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (207, 7, 25, 'https://img0.baidu.com/it/u=3795719154,2613895361&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '五金安装', '详情', '384', '雅安', 2);
INSERT INTO `hp_service`
VALUES (208, 7, 25, 'https://img1.baidu.com/it/u=2233878221,1747505899&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=281',
        '五金安装', '详情', '213', '雅安', 2);
INSERT INTO `hp_service`
VALUES (209, 7, 25,
        'https://y1.yzimgs.com/ComFolder/457119/201305/%E6%8F%92%E9%94%80%E8%9E%BA%E5%A5%974%E3%80%81%E6%95%B2%E5%85%A5%E6%8F%92%E9%94%80.jpg',
        '五金安装', '详情', '187', '雅安', 2);
INSERT INTO `hp_service`
VALUES (210, 7, 25, 'https://img0.baidu.com/it/u=2001864249,3964516964&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=460',
        '五金安装', '详情', '62', '雅安', 2);
INSERT INTO `hp_service`
VALUES (211, 8, 26,
        'https://img14.360buyimg.com/pop/jfs/t1/33467/17/18443/90642/63871b8fE45e7d2c5/4fc10caee0ced557.jpg',
        '专业衣物清洗', '详情', '211', '雅安', 2);
INSERT INTO `hp_service`
VALUES (212, 8, 26,
        'https://img14.360buyimg.com/pop/jfs/t1/98560/13/20067/140415/61cd7caaE0ab47bcd/71dfface1d1e59f2.jpg',
        '专业衣物清洗', '详情', '109', '雅安', 2);
INSERT INTO `hp_service`
VALUES (213, 8, 26,
        'https://img14.360buyimg.com/pop/jfs/t1/215437/18/11000/186828/61e51843E493cb1c1/c6dbf61e9481d0f1.jpg',
        '专业衣物清洗', '详情', '327', '雅安', 2);
INSERT INTO `hp_service`
VALUES (214, 8, 26,
        'https://img14.360buyimg.com/pop/jfs/t1/214363/7/11149/104952/61e51843Eb46ab397/046a5911669b07fa.jpg',
        '专业衣物清洗', '详情', '184', '雅安', 2);
INSERT INTO `hp_service`
VALUES (215, 8, 26,
        'https://img11.360buyimg.com/n1/jfs/t1/126243/8/23132/122407/62048a9dE4abfcbf1/ec307921da719d56.jpg',
        '专业衣物清洗', '详情', '110', '雅安', 2);
INSERT INTO `hp_service`
VALUES (216, 8, 26, 'https://img0.baidu.com/it/u=623359936,627314237&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业衣物清洗', '详情', '420', '雅安', 2);
INSERT INTO `hp_service`
VALUES (217, 8, 26, 'https://img2.baidu.com/it/u=1811908639,777405093&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500',
        '专业衣物清洗', '详情', '120', '雅安', 2);
INSERT INTO `hp_service`
VALUES (218, 8, 27, 'https://img14.360buyimg.com/pop/jfs/t1/98390/3/22280/85937/61e51843E55e04fc3/230ea4016591db6d.jpg',
        '鞋子清洗', '详情', '334', '雅安', 2);
INSERT INTO `hp_service`
VALUES (219, 8, 27, 'https://img1.baidu.com/it/u=1130893891,776613193&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '鞋子清洗', '详情', '304', '雅安', 2);
INSERT INTO `hp_service`
VALUES (220, 8, 27, 'https://img2.baidu.com/it/u=1254121209,2980835290&fm=253&fmt=auto&app=138&f=JPEG?w=826&h=500',
        '鞋子清洗', '详情', '135', '雅安', 2);
INSERT INTO `hp_service`
VALUES (221, 8, 27, 'https://p2.itc.cn/q_70/images03/20220506/f65a9216b0b445be9213d4d61e530672.jpeg', '鞋子清洗',
        '详情', '107', '雅安', 2);
INSERT INTO `hp_service`
VALUES (222, 8, 27, 'https://img0.baidu.com/it/u=645954795,2154828253&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '鞋子清洗', '详情', '67', '雅安', 2);
INSERT INTO `hp_service`
VALUES (223, 8, 27, 'https://img2.baidu.com/it/u=2699248078,271998048&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '鞋子清洗', '详情', '106', '雅安', 2);
INSERT INTO `hp_service`
VALUES (224, 8, 27, 'https://img1.baidu.com/it/u=3243601801,120303507&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500',
        '鞋子清洗', '详情', '510', '雅安', 2);
INSERT INTO `hp_service`
VALUES (225, 8, 28, 'https://p0.meituan.net/dpdeal/0f4571789b1905a64439f101efe73d02226372.jpg', '高端洗护', '详情',
        '448', '雅安', 2);
INSERT INTO `hp_service`
VALUES (226, 8, 28, 'https://img2.baidu.com/it/u=1140391609,2654955991&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=333',
        '高端洗护', '详情', '581', '雅安', 2);
INSERT INTO `hp_service`
VALUES (227, 8, 28,
        'https://bkimg.cdn.bcebos.com/pic/2f738bd4b31c8701a18b8a16ca30892f0708293851b9?x-bce-process=image/format,f_auto',
        '高端洗护', '详情', '356', '雅安', 2);
INSERT INTO `hp_service`
VALUES (228, 8, 28, 'https://inews.gtimg.com/newsapp_bt/0/12937779054/1000', '高端洗护', '详情', '546', '雅安', 2);
INSERT INTO `hp_service`
VALUES (229, 8, 28, 'https://pic2.zhimg.com/80/v2-5c4ebcaeae8177fbff9f503933a6bacd_1440w.webp', '高端洗护', '详情',
        '312', '雅安', 2);
INSERT INTO `hp_service`
VALUES (230, 9, 29, 'https://img0.baidu.com/it/u=2369634970,674636512&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
        '上门做菜宴席家宴', '详情', '428', '雅安', 2);
INSERT INTO `hp_service`
VALUES (231, 9, 29, 'https://img2.zjolcdn.com/pic/0/18/01/35/18013571_672486.jpg', '上门做菜宴席家宴', '详情', '235',
        '雅安', 2);
INSERT INTO `hp_service`
VALUES (232, 9, 29,
        'https://t12.baidu.com/it/u=503852241,187289594&fm=30&app=106&f=JPEG?w=580&h=403&s=430392458C1343DE96A5ECF903004013',
        '上门做菜宴席家宴', '详情', '568', '雅安', 2);
INSERT INTO `hp_service`
VALUES (233, 9, 29,
        'https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2FSlW2b5A7vJ1SZM834YHvYaYEYhQmfjMmEHDYzYFLKQGob1547188925261.jpg&thumbnail=660x2147483647&quality=80&type=jpg',
        '上门做菜宴席家宴', '详情', '79', '雅安', 2);
INSERT INTO `hp_service`
VALUES (234, 9, 29, 'https://u9.iqiyipic.com/image/20210525/29/c8/pv_2254587386489400_d_601_480_270.jpg',
        '上门做菜宴席家宴', '详情', '406', '雅安', 2);
INSERT INTO `hp_service`
VALUES (235, 9, 29,
        'https://t11.baidu.com/it/u=629921537,176132617&fm=30&app=106&f=JPEG?w=640&h=853&s=22019D4F8A1227C6983D1D3F03008043',
        '上门做菜宴席家宴', '详情', '406', '雅安', 2);
INSERT INTO `hp_service`
VALUES (236, 9, 29, 'https://img0.baidu.com/it/u=713776390,296255716&fm=253&fmt=auto&app=138&f=JPEG?w=350&h=466',
        '上门做菜宴席家宴', '详情', '88', '雅安', 2);
INSERT INTO `hp_service`
VALUES (237, 10, 30, 'https://img0.baidu.com/it/u=2248542791,413205990&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '电脑维修', '详情', '465', '雅安', 2);
INSERT INTO `hp_service`
VALUES (238, 10, 30, 'https://img1.baidu.com/it/u=2922980229,2323428271&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '电脑维修', '详情', '41', '雅安', 2);
INSERT INTO `hp_service`
VALUES (239, 10, 30, 'https://img1.baidu.com/it/u=912132900,3355879003&fm=253&fmt=auto&app=138&f=JPEG?w=650&h=500',
        '电脑维修', '详情', '524', '雅安', 2);
INSERT INTO `hp_service`
VALUES (240, 10, 30, 'https://img2.baidu.com/it/u=94864745,1580606042&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '电脑维修', '详情', '299', '雅安', 2);
INSERT INTO `hp_service`
VALUES (241, 10, 30, 'https://img2.baidu.com/it/u=3589654108,2718185461&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667',
        '电脑维修', '详情', '161', '雅安', 2);
INSERT INTO `hp_service`
VALUES (242, 10, 30, 'https://img0.baidu.com/it/u=871816145,711414051&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
        '电脑维修', '详情', '533', '雅安', 2);
INSERT INTO `hp_service`
VALUES (243, 10, 30, 'https://img0.baidu.com/it/u=1631701759,65182783&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
        '电脑维修', '详情', '95', '雅安', 2);
INSERT INTO `hp_service`
VALUES (244, 10, 30, 'https://www.hyww.com/wp-content/uploads/2019/06/fix-2.jpg', '电脑维修', '详情', '59', '雅安', 2);
INSERT INTO `hp_service`
VALUES (245, 10, 30, 'https://img2.baidu.com/it/u=3303564517,572980262&fm=253&fmt=auto&app=138&f=PNG?w=763&h=500',
        '电脑维修', '详情', '146', '雅安', 2);
INSERT INTO `hp_service`
VALUES (246, 10, 31,
        'https://img.douyucdn.cn/data/yuba/default/2018/10/14/201810141150207719735658861.jpg?i=41440daff6c7071099d836ed29e5714404',
        '网络维护维修', '详情', '512', '雅安', 2);
INSERT INTO `hp_service`
VALUES (247, 10, 31, 'https://img1.baidu.com/it/u=2419785837,3302510042&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=281',
        '网络维护维修', '详情', '527', '雅安', 2);
INSERT INTO `hp_service`
VALUES (248, 10, 31, 'https://img.mp.itc.cn/q_70,c_zoom,w_640/upload/20160722/fa58aa57e10b4b08b8fc10f3da98ef55_th.jpg',
        '网络维护维修', '详情', '249', '雅安', 2);
INSERT INTO `hp_service`
VALUES (249, 10, 31, 'https://img1.baidu.com/it/u=2246405791,2858692693&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=668',
        '网络维护维修', '详情', '440', '雅安', 2);
INSERT INTO `hp_service`
VALUES (250, 10, 31, 'https://r5.pccoo.cn/post/20190817/2019081709415050209191_1080_1440_500x300%28w%29.jpg',
        '网络维护维修', '详情', '448', '雅安', 2);
INSERT INTO `hp_service`
VALUES (251, 10, 32, 'https://img1.baidu.com/it/u=2474736567,2011364953&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '专业维修手机', '详情', '434', '雅安', 2);
INSERT INTO `hp_service`
VALUES (252, 10, 32, 'https://seopic.699pic.com/photo/50112/0339.jpg_wh1200.jpg', '专业维修手机', '详情', '65', '雅安',
        2);
INSERT INTO `hp_service`
VALUES (253, 10, 32,
        'https://imgcdn.yzwb.net/@/catchimages/20211119/1637291476926047751.jpg?imageMogr2/thumbnail/1080x%3E/strip/ignore-error/1%7Cimageslim',
        '专业维修手机', '详情', '413', '雅安', 2);
INSERT INTO `hp_service`
VALUES (254, 10, 32, 'https://img.mp.itc.cn/q_70,c_zoom,w_640/upload/20170511/6a63edc7fd0245a5a76957dcf3b8f97f_th.jpg',
        '专业维修手机', '详情', '168', '雅安', 2);
INSERT INTO `hp_service`
VALUES (255, 10, 32,
        'https://img95.699pic.com/xsj/1r/83/wj.jpg%21/fw/700/watermark/url/L3hzai93YXRlcl9kZXRhaWwyLnBuZw/align/southeast',
        '专业维修手机', '详情', '365', '雅安', 2);
INSERT INTO `hp_service`
VALUES (256, 10, 32, 'https://images.daojia.com/dop/custom/6c64f1eb450b7223f3d6fb073d960813.png', '专业维修手机',
        '详情', '421', '雅安', 2);
INSERT INTO `hp_service`
VALUES (257, 10, 32,
        'https://qcloud.dpfile.com/pc/fmld-DSs1s_nEnKyQjE97ChDluw-KuvgbKPym4v2DHNdo_J2BOAVauavBqpBqhsJTYGVDmosZWTLal1WbWRW3A.jpg',
        '专业维修手机', '详情', '383', '雅安', 2);
INSERT INTO `hp_service`
VALUES (258, 10, 32,
        'https://doc-fd.zol-img.com.cn/t_s640x2000/g2/M00/08/03/ChMlWl1JJ-OIEgU-AAFGQqiVBZYAAMaGgBglSgAAUZa161.jpg',
        '专业维修手机', '详情', '383', '雅安', 2);
INSERT INTO `hp_service`
VALUES (259, 10, 33, 'https://img2.baidu.com/it/u=134284076,2492800521&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
        '办公设备维修打印机', '详情', '83', '雅安', 2);
INSERT INTO `hp_service`
VALUES (260, 10, 33, 'https://img1.baidu.com/it/u=978666026,3090664052&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500x',
        '办公设备维修打印机', '详情', '35', '雅安', 2);
INSERT INTO `hp_service`
VALUES (261, 10, 33, 'https://img1.baidu.com/it/u=1875704347,153922770&fm=253&fmt=auto&app=138&f=JPEG?w=484&h=300',
        '办公设备维修打印机', '详情', '104', '雅安', 2);
INSERT INTO `hp_service`
VALUES (262, 10, 33, 'https://img2.baidu.com/it/u=1522763611,4240222913&fm=253&fmt=auto&app=138&f=JPEG?w=447&h=465',
        '办公设备维修打印机', '详情', '114', '雅安', 2);
INSERT INTO `hp_service`
VALUES (263, 10, 33, 'https://img0.baidu.com/it/u=2998084334,1916286179&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375',
        '办公设备维修打印机', '详情', '497', '雅安', 2);
INSERT INTO `hp_service`
VALUES (268, 1, 1, 'https://img1.baidu.com/it/u=3012806272,1276873993&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
        '测试2', '测试2', '123', '北京市', 2);
INSERT INTO `hp_service`
VALUES (269, 1, 1, 'https://img1.baidu.com/it/u=2463514011,1142503686&fm=253&fmt=auto&app=138&f=JPEG?w=888&h=500',
        '测试3', '测试3', '123', '北京市', 2);
INSERT INTO `hp_service`
VALUES (274, 7, 25, 'https://img1.baidu.com/it/u=4159158149,2237302473&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
        '测试', '测试水电五金', '98', '雅安市', 2);

SET
FOREIGN_KEY_CHECKS = 1;
