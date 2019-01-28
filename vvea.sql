/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : vvea

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2019-01-28 17:48:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tdf_actives`
-- ----------------------------
DROP TABLE IF EXISTS `tdf_actives`;
CREATE TABLE `tdf_actives` (
  `active_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `active_title` varchar(200) NOT NULL DEFAULT '',
  `active_area` varchar(200) NOT NULL DEFAULT '',
  `active_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_delivery` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active_tags` varchar(200) NOT NULL DEFAULT '',
  `active_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active_province` varchar(200) NOT NULL DEFAULT '',
  `active_memo` varchar(200) NOT NULL DEFAULT '',
  `active_belong_province` varchar(200) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tdf_actives
-- ----------------------------
INSERT INTO `tdf_actives` VALUES ('1', 'abc', 'shanghai', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 15:44:15', '2019-01-28 15:44:15', '0');
INSERT INTO `tdf_actives` VALUES ('2', 'abc', 'shanghai', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 15:45:46', '2019-01-28 15:45:46', '0');
INSERT INTO `tdf_actives` VALUES ('3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:16:03', '2019-01-28 16:16:03', '0');
INSERT INTO `tdf_actives` VALUES ('4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:17:13', '2019-01-28 16:17:13', '0');
INSERT INTO `tdf_actives` VALUES ('5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:19:51', '2019-01-28 16:19:51', '0');
INSERT INTO `tdf_actives` VALUES ('6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:34:56', '2019-01-28 16:34:56', '0');
INSERT INTO `tdf_actives` VALUES ('7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:36:49', '2019-01-28 16:36:49', '0');

-- ----------------------------
-- Table structure for `tdf_admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `tdf_admin_users`;
CREATE TABLE `tdf_admin_users` (
  `uid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tdf_admin_users
-- ----------------------------
INSERT INTO `tdf_admin_users` VALUES ('1', 'admin', '123456');
INSERT INTO `tdf_admin_users` VALUES ('2', 'editor', '123456');
