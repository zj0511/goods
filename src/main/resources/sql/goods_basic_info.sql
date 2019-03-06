/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-06 14:36:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `goods_basic_info`;
CREATE TABLE `goods_basic_info` (
  `id` varchar(50) NOT NULL,
  `goods_name` varchar(50) NOT NULL,
  `belong_type` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `goods_price` decimal(18,2) NOT NULL,
  `total_price` decimal(18,2) NOT NULL DEFAULT '0.00',
  `goods_count` int(11) NOT NULL,
  `rest_goods` int(11) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_basic_info_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_basic_info
-- ----------------------------
INSERT INTO `goods_basic_info` VALUES ('1', 'iphone', '1', '2019-03-01 17:07:12', '5000.00', '10000.00', '3', '1', null);
