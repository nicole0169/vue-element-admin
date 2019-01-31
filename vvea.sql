/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : vvea

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2019-01-31 17:54:39
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
  `active_date` date NOT NULL DEFAULT '0000-00-00',
  `active_time` time NOT NULL DEFAULT '00:00:00',
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tdf_actives
-- ----------------------------
INSERT INTO `tdf_actives` VALUES ('1', 'abc', 'shanghai', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 15:44:15', '2019-01-28 15:44:15', '0');
INSERT INTO `tdf_actives` VALUES ('2', 'abc', 'shanghai', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 15:45:46', '2019-01-28 15:45:46', '0');
INSERT INTO `tdf_actives` VALUES ('3', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:16:03', '2019-01-28 16:16:03', '0');
INSERT INTO `tdf_actives` VALUES ('4', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:17:13', '2019-01-28 16:17:13', '0');
INSERT INTO `tdf_actives` VALUES ('5', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:19:51', '2019-01-28 16:19:51', '0');
INSERT INTO `tdf_actives` VALUES ('6', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:34:56', '2019-01-28 16:34:56', '0');
INSERT INTO `tdf_actives` VALUES ('7', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-28 16:36:49', '2019-01-28 16:36:49', '0');
INSERT INTO `tdf_actives` VALUES ('8', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 10:59:30', '2019-01-29 10:59:30', '0');
INSERT INTO `tdf_actives` VALUES ('9', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 11:04:52', '2019-01-29 11:04:52', '0');
INSERT INTO `tdf_actives` VALUES ('10', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 13:11:37', '2019-01-29 13:11:37', '0');
INSERT INTO `tdf_actives` VALUES ('11', '', '', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 13:19:23', '2019-01-29 13:19:23', '0');
INSERT INTO `tdf_actives` VALUES ('12', 'abc', 'shanghai', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 13:31:29', '2019-01-29 13:31:29', '0');
INSERT INTO `tdf_actives` VALUES ('13', 'abc', 'shanghai', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 13:32:47', '2019-01-29 13:32:47', '0');
INSERT INTO `tdf_actives` VALUES ('14', 'abc', 'shanghai', '0000-00-00', '00:00:00', '0', '', '0', '', '', '', '2019-01-29 14:07:25', '2019-01-29 14:07:25', '0');
INSERT INTO `tdf_actives` VALUES ('15', 'abc', 'beijing', '2019-01-29', '15:43:08', '1', 'Array', '1', '310104', '', '', '2019-01-29 15:43:20', '2019-01-29 15:43:20', '0');
INSERT INTO `tdf_actives` VALUES ('16', 'abc', 'beijing', '2019-01-29', '15:47:35', '0', 'Array', '2', '310104', '', '', '2019-01-29 15:47:50', '2019-01-29 15:47:50', '0');
INSERT INTO `tdf_actives` VALUES ('17', 'abc', '', '2019-01-29', '16:47:13', '0', 'true', '2', '', '', '', '2019-01-29 16:48:45', '2019-01-29 16:48:45', '0');
INSERT INTO `tdf_actives` VALUES ('18', 'abc', 'beijing', '2019-01-29', '16:49:14', '1', '[\"1\",\"3\"]', '1', '110101', 'ttt', '', '2019-01-29 16:49:27', '2019-01-29 16:49:27', '0');
INSERT INTO `tdf_actives` VALUES ('19', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '[\"1\",\"4\"]', '2', '310104', '弹道导弹核潜艇', '110101', '2019-01-30 16:01:12', '2019-01-30 16:01:12', '0');
INSERT INTO `tdf_actives` VALUES ('20', 'D大调', 'beijing', '2019-01-30', '17:06:36', '1', '[\"1\",\"4\",\"3\"]', '1', '120102', '多发发发大沙发沙发', '360101', '2019-01-30 17:06:56', '2019-01-30 17:06:56', '0');
INSERT INTO `tdf_actives` VALUES ('21', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '[\"1\",\"4\"]', '2', '120101', '弹道导弹核潜艇', '110102', '2019-01-31 14:54:04', '2019-01-31 14:54:04', '0');
INSERT INTO `tdf_actives` VALUES ('22', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '[\"1\",\"4\"]', '2', '110101', '弹道导弹核潜艇', '120102', '2019-01-31 14:55:20', '2019-01-31 14:55:20', '0');
INSERT INTO `tdf_actives` VALUES ('23', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '[\"1\",\"4\"]', '2', '110101', '弹道导弹核潜艇', '110101', '2019-01-31 14:56:02', '2019-01-31 14:56:02', '0');
INSERT INTO `tdf_actives` VALUES ('24', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '\"[\\\"1\\\",\\\"4\\\"]\"', '2', '110101', '弹道导弹核潜艇', '130203', '2019-01-31 14:56:20', '2019-01-31 14:56:20', '0');
INSERT INTO `tdf_actives` VALUES ('25', 'D大调', 'shanghai', '2019-01-30', '16:00:50', '1', '[\"1\",\"4\"]', '2', '110101', '弹道导弹核潜艇', '310101', '2019-01-31 14:57:06', '2019-01-31 14:57:06', '0');
INSERT INTO `tdf_actives` VALUES ('26', 'a', 'beijing', '2019-01-31', '14:57:49', '1', '[\"1\"]', '1', '110107', '', '140105', '2019-01-31 14:58:44', '2019-01-31 14:58:44', '0');
INSERT INTO `tdf_actives` VALUES ('27', 'd', 'shanghai', '2019-01-31', '15:01:05', '1', '[\"2\"]', '2', '120100', '', '110100', '2019-01-31 15:01:18', '2019-01-31 15:01:18', '0');
INSERT INTO `tdf_actives` VALUES ('28', 'd', 'shanghai', '2019-01-31', '15:01:05', '1', '\"[\\\"2\\\"]\"', '2', '120100', '', '310100', '2019-01-31 15:01:36', '2019-01-31 15:01:36', '0');
INSERT INTO `tdf_actives` VALUES ('29', 'a', 'shanghai', '2019-01-31', '15:46:17', '1', '[\"1\"]', '2', '110101', '', '120102', '2019-01-31 15:46:43', '2019-01-31 15:46:43', '0');
INSERT INTO `tdf_actives` VALUES ('30', '啊', 'beijing', '2019-01-31', '17:28:52', '1', '[\"2\"]', '2', '130207', '', '210321', '2019-01-31 17:29:03', '2019-01-31 17:29:03', '0');
INSERT INTO `tdf_actives` VALUES ('31', '啊', 'beijing', '2019-01-31', '17:47:36', '1', '[\"1\"]', '1', '130406', '', '', '2019-01-31 17:47:49', '2019-01-31 17:47:49', '0');

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
