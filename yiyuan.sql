/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : yiyuan

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-02-02 10:44:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t-departments`
-- ----------------------------
DROP TABLE IF EXISTS `t-departments`;
CREATE TABLE `t-departments` (
  `departmentsid` int(15) NOT NULL,
  `departmentsname` varchar(15) NOT NULL,
  `Chiefid` int(15) NOT NULL COMMENT '科长编号',
  `departmentsphone` varchar(15) NOT NULL,
  PRIMARY KEY (`departmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-departments
-- ----------------------------

-- ----------------------------
-- Table structure for `t-doctor`
-- ----------------------------
DROP TABLE IF EXISTS `t-doctor`;
CREATE TABLE `t-doctor` (
  `id` int(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `age` date NOT NULL,
  `departments` int(15) NOT NULL,
  `position` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-doctor
-- ----------------------------
INSERT INTO `t-doctor` VALUES ('101', '刘宇', '女', '1997-01-31', '1101', '11101');
INSERT INTO `t-doctor` VALUES ('102', '李慧敏', '女', '2020-01-14', '1102', '11102');

-- ----------------------------
-- Table structure for `t-drug`
-- ----------------------------
DROP TABLE IF EXISTS `t-drug`;
CREATE TABLE `t-drug` (
  `drugid` char(5) NOT NULL,
  `drugname` char(20) NOT NULL,
  `drugclassification` char(8) DEFAULT NULL,
  `drugspecifications` char(10) DEFAULT NULL,
  `drugbrand` char(10) DEFAULT NULL,
  `drugpurchaseprice` float(10,0) NOT NULL,
  `drugprice` float(10,0) NOT NULL,
  PRIMARY KEY (`drugid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-drug
-- ----------------------------
INSERT INTO `t-drug` VALUES ('1', '1', '1', '1', '1', '-1', '1');

-- ----------------------------
-- Table structure for `t-invetory`
-- ----------------------------
DROP TABLE IF EXISTS `t-invetory`;
CREATE TABLE `t-invetory` (
  `inventoryid` int(15) NOT NULL,
  `drugnum` int(15) NOT NULL COMMENT '药品数量',
  `storagenum` int(15) NOT NULL COMMENT '存储数量',
  `takenum` int(15) NOT NULL COMMENT '取出数量',
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-invetory
-- ----------------------------

-- ----------------------------
-- Table structure for `t-nurse`
-- ----------------------------
DROP TABLE IF EXISTS `t-nurse`;
CREATE TABLE `t-nurse` (
  `nurseid` int(15) NOT NULL,
  `nursename` varchar(15) NOT NULL,
  `nursesex` varchar(15) NOT NULL,
  `nurseage` date NOT NULL,
  `departments` int(15) NOT NULL COMMENT '所属科室编号',
  `nursephone` varchar(15) NOT NULL,
  `nursedotime` varchar(15) NOT NULL,
  PRIMARY KEY (`nurseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-nurse
-- ----------------------------

-- ----------------------------
-- Table structure for `t-patient`
-- ----------------------------
DROP TABLE IF EXISTS `t-patient`;
CREATE TABLE `t-patient` (
  `patientid` int(15) NOT NULL,
  `patientname` varchar(15) NOT NULL,
  `patientage` date NOT NULL,
  `patientsex` varchar(15) NOT NULL,
  `patientphone` varchar(15) NOT NULL,
  `patientaddress` varchar(15) NOT NULL,
  `patientIdcardnumber` varchar(20) NOT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-patient
-- ----------------------------

-- ----------------------------
-- Table structure for `t-registering`
-- ----------------------------
DROP TABLE IF EXISTS `t-registering`;
CREATE TABLE `t-registering` (
  `registeringid` int(15) NOT NULL,
  `registeringtype` varchar(15) NOT NULL,
  `departments` int(15) NOT NULL,
  ` withdrawing` varchar(15) DEFAULT NULL COMMENT '是否退号',
  `copay` float(15,2) DEFAULT NULL COMMENT '挂号费',
  `registeringdate` date NOT NULL,
  PRIMARY KEY (`registeringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t-registering
-- ----------------------------
