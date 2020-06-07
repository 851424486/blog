/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-06-02 16:34:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'MySQL数据库视图：视图定义、创建视图、修改视图', '视图是指计算机数据库中的视图，是一个虚拟表，其内容由查询定义。同真实的表一样，视图包含一系列带有名称的列和行数据。但是，视图并不在数据库中以存储的数据值集形式存在。行和列数据来自由定义视图的查询所引用的表，并且在引用视图时动态生成。——百度百科\r\n\r\n关系型数据库中的数据是由一张一张的二维关系表所组成，简单的单表查询只需要遍历一个表，而复杂的多表查询需要将多个表连接起来进行查询任务。对于复杂的查询事件，每次查询都需要编写MySQL代码效率低下。为了解决这个问题，数据库提供了视图（view）功能。', '123');
INSERT INTO `article` VALUES ('2', 'http的请求与响应', 'http（超文本传输协议）是用于客户端浏览器和web服务器之间传输信息的协议，它规定了一系列约定，以便信息可以在浏览器和服务器之间有效的传输。规定了URL的格式、浏览器发送请求都要发送哪些内容、服务器响应要返回哪些信息等。               http://host[:post][abs_path]http表示传输协议是http协议；\r\nhost表示的是主机域名或IP地址；\r\nport指端口号；\r\nabs_path指要请求的资源的路径      （2）发送请求时所要发送的信息：\r\n请求行：请求方法+http协议版本+URL\r\n请求头部：用键值对表示，如Accept-Charst:utf-8，指定客户端接收的字符集；\r\n空行：通知请求头部结束；\r\n请求数据：由数据头部信息和数据内容组成，数据头部规定了数据的类型、长度、编码等信息（post方法有请求数据，get方法不能发送请求数据）   （3）响应后返回的数据信息：\r\n状态行：协议版本+状态码（如常见的404,500,200）+状态码文本描述；\r\n响应头部：用键值对表示；\r\n空行：表示响应头部结束；\r\n响应数据：服务器返回的数据内容和数据头部信息（head请求无响应数据）。\r\n\r\n', '123');
INSERT INTO `article` VALUES ('14', '这是一次测试', '                    这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试\r\n这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试\r\n这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试这是一次测试', 'qwe');
INSERT INTO `article` VALUES ('15', '这是用户名为1的测试', '           asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas                    asdasdasdasdasdasdasdas         ', '1');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('6', '1', '123', '测试一下评论功能');
INSERT INTO `comment` VALUES ('7', '2', '123', '可以评论么');
INSERT INTO `comment` VALUES ('8', '1', 'qwe', '用户名为qwe的来测试评论功能了');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL,
  `password` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123');
INSERT INTO `user` VALUES ('33', 'qwe', 'qwe');
INSERT INTO `user` VALUES ('34', '1', '1');
