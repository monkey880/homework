/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50152
Source Host           : 192.168.1.105:3306
Source Database       : 5jstar.net

Target Server Type    : MYSQL
Target Server Version : 50152
File Encoding         : 65001

Date: 2011-05-10 11:45:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `userpass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('0', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- ----------------------------
-- Table structure for `cp`
-- ----------------------------
DROP TABLE IF EXISTS `cp`;
CREATE TABLE `cp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fl` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shijian` datetime DEFAULT NULL,
  `zz` varchar(255) DEFAULT NULL,
  `ll` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `photoname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cp
-- ----------------------------

-- ----------------------------
-- Table structure for `cp_category`
-- ----------------------------
DROP TABLE IF EXISTS `cp_category`;
CREATE TABLE `cp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `biaoshi` varchar(255) DEFAULT NULL,
  `weizhi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of cp_category
-- ----------------------------
INSERT INTO cp_category VALUES ('7', '案例1', '案例', '30');

-- ----------------------------
-- Table structure for `dy`
-- ----------------------------
DROP TABLE IF EXISTS `dy`;
CREATE TABLE `dy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `weizhi` int(11) DEFAULT NULL,
  `content` mediumtext,
  `biaoshi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dy
-- ----------------------------

-- ----------------------------
-- Table structure for `lanmu`
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weizhi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO lanmu VALUES ('1', '首页', 'http://192.168.1.105/5jstar.net', '100');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fl` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `shijian` datetime DEFAULT NULL,
  `zz` varchar(255) DEFAULT NULL,
  `ll` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO news VALUES ('3', '5', 'sfsdf', '2011-05-08 21:45:04', 'admin', '本站', 'sdfsdfsdfs');

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `biaoshi` varchar(255) DEFAULT NULL,
  `weizhi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO news_category VALUES ('5', '公司新闻', '公司', '1');

-- ----------------------------
-- Table structure for `sysconfig`
-- ----------------------------
DROP TABLE IF EXISTS `sysconfig`;
CREATE TABLE `sysconfig` (
  `sitename` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `des` text,
  `sitestatic` int(11) DEFAULT NULL,
  `content` text,
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sysconfig
-- ----------------------------
INSERT INTO sysconfig VALUES ('五角星网络科技有限公司', '五角星', '五角星', '1', '网站维护中', '1');

-- ----------------------------
-- Table structure for `yqlj`
-- ----------------------------
DROP TABLE IF EXISTS `yqlj`;
CREATE TABLE `yqlj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weizhi` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of yqlj
-- ----------------------------
INSERT INTO yqlj VALUES ('3', '百度', 'http://www.baidu.com', '10', '');
