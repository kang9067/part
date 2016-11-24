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
ALTER TABLE `users`
ADD COLUMN `phone`  varchar(16) NULL COMMENT '手机号码' AFTER `addr`;

-- ----------------------------
-- 2016年11月22日11:46:10
-- ----------------------------
ALTER TABLE `active`
MODIFY COLUMN `title`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题' AFTER `a_t_id`;
ALTER TABLE `admin`
MODIFY COLUMN `id`  int(11) NOT NULL AUTO_INCREMENT FIRST ;

-- ----------------------------
-- 2016年11月23日16:30:58
-- ----------------------------
CREATE TABLE `html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(24) DEFAULT NULL COMMENT 'key',
  `value` varchar(256) DEFAULT NULL COMMENT 'value',
  `desc` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

ALTER TABLE `html`
CHANGE COLUMN `key` `name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key' AFTER `id`,
CHANGE COLUMN `desc` `beif`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述' AFTER `value`;

-- ----------------------------
-- 2016年11月24日12:11:42
-- ----------------------------
CREATE TABLE `r_active_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


