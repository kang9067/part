/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : part

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-11-17 16:48:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for active
-- ----------------------------

CREATE TABLE `active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `introduce` text,
  `ready` text,
  `context` text,
  `uid` int(11) DEFAULT NULL,
  `enterTime` datetime DEFAULT NULL,
  `enterAddress` varchar(255) DEFAULT NULL,
  `launch` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '0-社会   1-学校  2-社团',
  `cover` varchar(64) DEFAULT NULL COMMENT '封面',
  `a_t_id` int(11) DEFAULT NULL COMMENT '活动类型性质',
  `title` varchar(25) DEFAULT NULL,
  `agree` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for users
-- ----------------------------

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `modifytime` datetime DEFAULT NULL,
  `real_name` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL COMMENT '现住城市',
  `gender` tinyint(1) DEFAULT '0' COMMENT '0-未知 1-男 2-女',
  `email` varchar(64) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 2016年11月18日14:26:06
-- ----------------------------
ALTER TABLE `active`
ADD COLUMN `auther`  varchar(32) NULL AFTER `agree`;
