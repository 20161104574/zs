/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : d6_zhensuo

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 01/03/2020 23:54:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_bing
-- ----------------------------
DROP TABLE IF EXISTS `t_bing`;
CREATE TABLE `t_bing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorId` int(11) NULL DEFAULT NULL,
  `gendersel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yzcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `zdcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `zzcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `FKCB5B052BD95B1267`(`doctorId`) USING BTREE,
  CONSTRAINT `FKCB5B052BD95B1267` FOREIGN KEY (`doctorId`) REFERENCES `t_simuser` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_bing
-- ----------------------------
INSERT INTO `t_bing` VALUES (1, '2020-03-01', 1, '男', '111111111111111111', '李四', '多休息', '1. 右颞顶部头皮裂伤\r\n2.头皮血肿\r\n3.全身多处软组织挫伤', '约1小时前被人用凳子及烟灰缸砸伤全身多处。伤后无昏迷，自觉头痛、头昏、全身多处酸痛伴头部伤口活动性出血，感恶心、无呕吐，无四肢抽搐及大小便失禁。');
INSERT INTO `t_bing` VALUES (2, '2020-03-01 22:34:59', 1, '女', '222222222222222222', '张飞', '1231', '213', '3');

-- ----------------------------
-- Table structure for t_bing_yao
-- ----------------------------
DROP TABLE IF EXISTS `t_bing_yao`;
CREATE TABLE `t_bing_yao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NULL DEFAULT NULL,
  `bingId` int(11) NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` double NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yaoId` int(11) NULL DEFAULT NULL,
  `yong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `FKEEDB79538D2A76D9`(`yaoId`) USING BTREE,
  INDEX `FKEEDB7953F14AD8EB`(`bingId`) USING BTREE,
  CONSTRAINT `FKEEDB7953F14AD8EB` FOREIGN KEY (`bingId`) REFERENCES `t_bing` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FKEEDB79538D2A76D9` FOREIGN KEY (`yaoId`) REFERENCES `t_yao` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_bing_yao
-- ----------------------------
INSERT INTO `t_bing_yao` VALUES (1, 1, 1, '111111111111111111', 19, 19, '已退药', 1, '');
INSERT INTO `t_bing_yao` VALUES (2, 2, 1, '111111111111111111', 40, 20, '待取药', 2, '一日一片');
INSERT INTO `t_bing_yao` VALUES (3, 2, 2, '222222222222222222', 40, 20, '待取药', 2, '');
INSERT INTO `t_bing_yao` VALUES (4, 3, 2, '222222222222222222', 90, 30, '已取药', 5, '');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weizhi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (1, '内科', '020-25458745', 'xxxxxxxxxxxx');
INSERT INTO `t_dept` VALUES (2, '外科', '020-65685656', 'xxxxxxxxxxx');
INSERT INTO `t_dept` VALUES (3, '儿科', '020-36985478', 'xxxxxxxxxxxxxx');
INSERT INTO `t_dept` VALUES (4, '眼科', '020-25878454', 'xxxxxxxxxxxxxxxxxxx');

-- ----------------------------
-- Table structure for t_hao
-- ----------------------------
DROP TABLE IF EXISTS `t_hao`;
CREATE TABLE `t_hao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorId` int(11) NULL DEFAULT NULL,
  `gendersel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `sid`(`sid`) USING BTREE,
  INDEX `FK68F684BD95B1267`(`doctorId`) USING BTREE,
  CONSTRAINT `FK68F684BD95B1267` FOREIGN KEY (`doctorId`) REFERENCES `t_simuser` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_hao
-- ----------------------------
INSERT INTO `t_hao` VALUES (1, '2020-03-01 21:23:47', 1, '男', '111111111111111111', '李四', '321001', '已退号');
INSERT INTO `t_hao` VALUES (2, '2020-03-01 21:26:28', 1, '男', '111111111111111111', '李四', '321002', '已诊断');
INSERT INTO `t_hao` VALUES (3, '2020-03-01 22:34:28', 1, '女', '222222222222222222', '张飞', '321003', '已诊断');

-- ----------------------------
-- Table structure for t_simuser
-- ----------------------------
DROP TABLE IF EXISTS `t_simuser`;
CREATE TABLE `t_simuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptId` int(11) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userBirth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userGender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `uname`(`uname`) USING BTREE,
  INDEX `FK38625857F47E1FB5`(`deptId`) USING BTREE,
  CONSTRAINT `FK38625857F47E1FB5` FOREIGN KEY (`deptId`) REFERENCES `t_dept` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_simuser
-- ----------------------------
INSERT INTO `t_simuser` VALUES (1, 1, '1583065212459.jpg', NULL, '1001', '', '', '', '女', '王小云', 'E10ADC3949BA59ABBE56E057F20F883E', '');

-- ----------------------------
-- Table structure for t_sysuser
-- ----------------------------
DROP TABLE IF EXISTS `t_sysuser`;
CREATE TABLE `t_sysuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userBirth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userGender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `uname`(`uname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_sysuser
-- ----------------------------
INSERT INTO `t_sysuser` VALUES (1, 'admin', '', '', '', '男', '管理员', 'E10ADC3949BA59ABBE56E057F20F883E', '');

-- ----------------------------
-- Table structure for t_yao
-- ----------------------------
DROP TABLE IF EXISTS `t_yao`;
CREATE TABLE `t_yao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changshang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guige` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leixsel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `storeAmount` int(11) NULL DEFAULT NULL,
  `wenhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhongliang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_yao
-- ----------------------------
INSERT INTO `t_yao` VALUES (1, '杭州澳医保灵药业有限公司', '盒', '10mg*10片/盒', 'OTC药品', '依巴斯汀片', '荨麻疹、过敏性鼻炎、湿疹、皮炎、痒疹、皮肤瘙痒症等', 19, '12001', 50, '国药准字H20040503', '10mg');
INSERT INTO `t_yao` VALUES (2, '0', '盒', '50μg*120喷', 'OTC药品', '丙酸氟替卡松鼻喷雾剂', '本品用于预防和治疗季节性过敏性鼻炎（包括枯草热）和常年性过敏性鼻炎。', 20, '12002', 0, '注册证号H20091100', '100mg');
INSERT INTO `t_yao` VALUES (3, '格华止', '盒', '0.5g*20s', '处方药品', '盐酸二甲双胍片', '本品的主要成份为盐酸二甲双胍其化学名称：1.1—二甲基双胍盐酸盐 学名：1,1-二甲基双胍盐酸盐 分子式：C4H11N5.HCl 分子量：165.62', 30, '12003', 0, '国药准字H20023370', '50mg');
INSERT INTO `t_yao` VALUES (4, '格华止', '盒', '0.5g*20s', '处方药品', '格列美脲分散片', '本品的主要成份为盐酸二甲双胍其化学名称：1.1—二甲基双胍盐酸盐 学名：1,1-二甲基双胍盐酸盐 分子式：C4H11N5.HCl 分子量：165.62', 30, '12004', 0, '国药准字H20023370', '50mg');
INSERT INTO `t_yao` VALUES (5, '格华止', '盒', '0.5g*20s', '处方药品', '盐酸二甲双胍肠溶片', '本品的主要成份为盐酸二甲双胍其化学名称：1.1—二甲基双胍盐酸盐 学名：1,1-二甲基双胍盐酸盐 分子式：C4H11N5.HCl 分子量：165.62', 30, '12005', 97, '国药准字H20023370', '50mg');
INSERT INTO `t_yao` VALUES (6, '格华止', '盒', '0.5g*20s', '处方药品', '达格列净片', '本品的主要成份为盐酸二甲双胍其化学名称：1.1—二甲基双胍盐酸盐 学名：1,1-二甲基双胍盐酸盐 分子式：C4H11N5.HCl 分子量：165.62', 30, '12006', 0, '国药准字H20023370', '50mg');

-- ----------------------------
-- Table structure for t_yaoguo
-- ----------------------------
DROP TABLE IF EXISTS `t_yaoguo`;
CREATE TABLE `t_yaoguo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NULL DEFAULT NULL,
  `chudate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cuoshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jinshou` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yaoId` int(11) NULL DEFAULT NULL,
  `yaosid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `FK877DA3A58D2A76D9`(`yaoId`) USING BTREE,
  CONSTRAINT `FK877DA3A58D2A76D9` FOREIGN KEY (`yaoId`) REFERENCES `t_yao` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_yaoguo
-- ----------------------------
INSERT INTO `t_yaoguo` VALUES (1, 50, '2020-03-01', '销毁', '李菲菲', '0', 1, '12001');
INSERT INTO `t_yaoguo` VALUES (2, 100, '2020-03-01', '1', '1', '1', 1, '12001');

-- ----------------------------
-- Table structure for t_yaomai
-- ----------------------------
DROP TABLE IF EXISTS `t_yaomai`;
CREATE TABLE `t_yaomai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `jinshou` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yaoId` int(11) NULL DEFAULT NULL,
  `yaosid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `FK877DB7B98D2A76D9`(`yaoId`) USING BTREE,
  CONSTRAINT `FK877DB7B98D2A76D9` FOREIGN KEY (`yaoId`) REFERENCES `t_yao` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_yaomai
-- ----------------------------
INSERT INTO `t_yaomai` VALUES (1, '2020-03-01', 100, '李飞', '无', 1, '12001');
INSERT INTO `t_yaomai` VALUES (2, '2020-03-01', 100, '1', '1', 5, '12005');

SET FOREIGN_KEY_CHECKS = 1;
