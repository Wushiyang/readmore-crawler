/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : readme

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-27 18:02:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rm_books
-- ----------------------------
DROP TABLE IF EXISTS `rm_books`;
CREATE TABLE `rm_books` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '书籍id',
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍名字',
  `author` varchar(32) CHARACTER SET utf8 DEFAULT '' COMMENT '作者',
  `num` int(10) unsigned NOT NULL COMMENT '字数',
  `tags` varchar(128) CHARACTER SET utf8 DEFAULT '' COMMENT '标签',
  `imgUrl` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '书籍封面',
  `catalog` varchar(128) CHARACTER SET utf8 DEFAULT '' COMMENT '分类',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_books
-- ----------------------------

-- ----------------------------
-- Table structure for rm_chapters
-- ----------------------------
DROP TABLE IF EXISTS `rm_chapters`;
CREATE TABLE `rm_chapters` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '章节名',
  `content` text CHARACTER SET utf8 COMMENT '内容',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_chapters
-- ----------------------------

-- ----------------------------
-- Table structure for rm_group
-- ----------------------------
DROP TABLE IF EXISTS `rm_group`;
CREATE TABLE `rm_group` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户组名字',
  `name` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户组名',
  `access` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '访问性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_group
-- ----------------------------

-- ----------------------------
-- Table structure for rm_logs
-- ----------------------------
DROP TABLE IF EXISTS `rm_logs`;
CREATE TABLE `rm_logs` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '爬取资源地址',
  `status` tinyint(1) unsigned NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '运行结果',
  `designer` int(10) NOT NULL COMMENT '任务设计者',
  `taskTime` int(10) unsigned NOT NULL COMMENT '任务生成时间',
  `designTime` int(10) unsigned NOT NULL COMMENT '计划时间',
  `runTime` int(10) unsigned NOT NULL COMMENT '运行时间',
  `creatTime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_logs
-- ----------------------------

-- ----------------------------
-- Table structure for rm_tasks
-- ----------------------------
DROP TABLE IF EXISTS `rm_tasks`;
CREATE TABLE `rm_tasks` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '爬取资源地址',
  `designer` int(10) unsigned NOT NULL,
  `designTime` int(10) unsigned NOT NULL,
  `createTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_tasks
-- ----------------------------

-- ----------------------------
-- Table structure for rm_users
-- ----------------------------
DROP TABLE IF EXISTS `rm_users`;
CREATE TABLE `rm_users` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `group` int(10) unsigned NOT NULL COMMENT '用户所属用户组',
  `nickname` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '账号昵称',
  `username` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rm_users
-- ----------------------------
