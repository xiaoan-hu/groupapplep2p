/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : p2p-loan

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-04 22:56:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL,
  `tradePassword` varchar(255) DEFAULT NULL,
  `usableAmount` decimal(18,4) NOT NULL,
  `freezedAmount` decimal(18,4) NOT NULL,
  `version` int(11) NOT NULL,
  `unReceiveInterest` decimal(18,4) NOT NULL,
  `unReceivePrincipal` decimal(18,4) NOT NULL,
  `unReturnAmount` decimal(18,4) NOT NULL,
  `remainBorrowLimit` decimal(18,4) NOT NULL,
  `borrowLimit` decimal(18,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', null, '1003244.6873', '0.0000', '15', '29.1669', '1000.0000', '5033.3334', '0.0000', '5000.0000');
INSERT INTO `account` VALUES ('3', null, '12321400.2709', '0.0000', '10', '0.0000', '0.0000', '0.0000', '5000.0000', '5000.0000');
INSERT INTO `account` VALUES ('4', null, '100620.8333', '0.0000', '4', '0.0000', '0.0000', '1016.6668', '4000.0000', '5000.0000');
INSERT INTO `account` VALUES ('5', null, '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '5000.0000', '5000.0000');
INSERT INTO `account` VALUES ('6', null, '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '5000.0000', '5000.0000');
INSERT INTO `account` VALUES ('7', null, '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '5000.0000', '5000.0000');
INSERT INTO `account` VALUES ('8', null, '875.0001', '0.0000', '4', '0.0000', '0.0000', '-8.3333', '5000.0000', '5000.0000');

-- ----------------------------
-- Table structure for accountflow
-- ----------------------------
DROP TABLE IF EXISTS `accountflow`;
CREATE TABLE `accountflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,4) NOT NULL,
  `note` varchar(255) NOT NULL,
  `tradeTime` datetime NOT NULL,
  `actionType` tinyint(4) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `usableAmount` decimal(18,4) NOT NULL,
  `freezedAmount` decimal(18,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountflow
-- ----------------------------
INSERT INTO `accountflow` VALUES ('1', '1000000.0000', '线下充值,充值单:1充值金额:1000000.0000', '2017-04-30 15:27:30', '0', '1', '1000000.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('2', '12333333.0000', '线下充值,充值单:2充值金额:12333333.0000', '2017-04-30 18:39:02', '0', '3', '12333333.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('3', '4000.0000', '投资标的:我要娶媳妇投资金额:4000', '2017-04-30 18:42:09', '3', '3', '12329333.0000', '4000.0000');
INSERT INTO `accountflow` VALUES ('4', '1000.0000', '投资标的:我要娶媳妇投资金额:1000', '2017-04-30 18:42:44', '3', '3', '12328333.0000', '5000.0000');
INSERT INTO `accountflow` VALUES ('5', '5000.0000', '标的:我要娶媳妇贷款成功,入账金额:5000.0000', '2017-04-30 18:43:38', '2', '1', '1005000.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('6', '4000.0000', '投资给:成功放款4000.0000', '2017-04-30 18:43:38', '3', '3', '12328333.0000', '1000.0000');
INSERT INTO `accountflow` VALUES ('7', '1000.0000', '投资给:成功放款1000.0000', '2017-04-30 18:43:38', '3', '3', '12328333.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('8', '5000.0000', '标的:我要娶媳妇贷款成功,入账金额:5000.0000', '2017-04-30 18:44:45', '2', '1', '1009750.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('9', '4000.0000', '投资给:成功放款4000.0000', '2017-04-30 18:44:45', '3', '3', '12328333.0000', '1000.0000');
INSERT INTO `accountflow` VALUES ('10', '1000.0000', '投资给:成功放款1000.0000', '2017-04-30 18:44:45', '3', '3', '12328333.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('11', '5000.0000', '标的:我要娶媳妇贷款成功,入账金额:5000.0000', '2017-04-30 18:52:40', '2', '1', '1014500.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('12', '4000.0000', '投资给:成功放款4000.0000', '2017-04-30 18:52:41', '3', '3', '12328333.0000', '1000.0000');
INSERT INTO `accountflow` VALUES ('13', '1000.0000', '投资给:成功放款1000.0000', '2017-04-30 18:52:41', '3', '3', '12328333.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('14', '5033.3334', '偿还贷款我要娶媳妇第1期5033.3334', '2017-04-30 18:59:56', '4', '1', '1009216.6666', '0.0000');
INSERT INTO `accountflow` VALUES ('15', '4026.6667', '获得第1期的还款4026.6667', '2017-04-30 18:59:56', '5', '3', '12332359.6667', '0.0000');
INSERT INTO `accountflow` VALUES ('16', '5033.3334', '偿还贷款我要娶媳妇第1期5033.3334', '2017-04-30 19:07:29', '4', '1', '1004183.3332', '0.0000');
INSERT INTO `accountflow` VALUES ('17', '4026.6667', '获得第1期的还款4026.6667', '2017-04-30 19:07:29', '5', '3', '12332359.6667', '0.0000');
INSERT INTO `accountflow` VALUES ('18', '1.3333', '获得还款利息26.6667支付利息管理费1.3333', '2017-04-30 19:07:29', '7', '3', '12332358.3334', '0.0000');
INSERT INTO `accountflow` VALUES ('19', '1006.6667', '获得第1期的还款1006.6667', '2017-04-30 19:07:29', '5', '3', '12333365.0001', '0.0000');
INSERT INTO `accountflow` VALUES ('20', '0.3333', '获得还款利息6.6667支付利息管理费0.3333', '2017-04-30 19:07:29', '7', '3', '12333364.6668', '0.0000');
INSERT INTO `accountflow` VALUES ('21', '12000.0000', '申请提现12000,手续费:2.0000', '2017-04-30 19:24:35', '12', '3', '12321362.6668', '12002.0000');
INSERT INTO `accountflow` VALUES ('22', '12000.0000', '提现成功,冻结金额减少12000.0000', '2017-04-30 19:24:44', '1', '3', '12321362.6668', '2.0000');
INSERT INTO `accountflow` VALUES ('23', '2.0000', '提现成功,减少冻结金额2.0000支付提现手续费', '2017-04-30 19:24:44', '8', '3', '12321362.6668', '0.0000');
INSERT INTO `accountflow` VALUES ('24', '2500.0000', '投资标的:借钱去相亲投资金额:2500', '2017-05-01 15:51:31', '3', '1', '1001683.3332', '2500.0000');
INSERT INTO `accountflow` VALUES ('25', '2500.0000', '投资标的:借钱去相亲投资金额:2500', '2017-05-01 15:52:21', '3', '3', '12318862.6668', '2500.0000');
INSERT INTO `accountflow` VALUES ('26', '5000.0000', '标的:借钱去相亲贷款成功,入账金额:5000.0000', '2017-05-01 15:52:59', '2', '4', '5000.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('27', '2500.0000', '投资给:成功放款2500.0000', '2017-05-01 15:52:59', '3', '1', '1001683.3332', '0.0000');
INSERT INTO `accountflow` VALUES ('28', '2500.0000', '投资给:成功放款2500.0000', '2017-05-01 15:52:59', '3', '3', '12318862.6668', '0.0000');
INSERT INTO `accountflow` VALUES ('29', '100000.0000', '线下充值,充值单:3充值金额:100000.0000', '2017-05-03 18:44:26', '0', '4', '104750.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('30', '5079.1667', '偿还贷款借钱去相亲第1期5079.1667', '2017-05-03 18:44:39', '4', '4', '99670.8333', '0.0000');
INSERT INTO `accountflow` VALUES ('31', '2539.5834', '获得第1期的还款2539.5834', '2017-05-03 18:44:39', '5', '1', '1004222.9166', '0.0000');
INSERT INTO `accountflow` VALUES ('32', '1.9792', '获得还款利息39.5834支付利息管理费1.9792', '2017-05-03 18:44:39', '7', '1', '1004220.9374', '0.0000');
INSERT INTO `accountflow` VALUES ('33', '2539.5833', '获得第1期的还款2539.5833', '2017-05-03 18:44:39', '5', '3', '12321402.2501', '0.0000');
INSERT INTO `accountflow` VALUES ('34', '1.9792', '获得还款利息39.5833支付利息管理费1.9792', '2017-05-03 18:44:39', '7', '3', '12321400.2709', '0.0000');
INSERT INTO `accountflow` VALUES ('35', '1000.0000', '投资标的:借款标测试投资金额:1000', '2017-05-03 21:12:45', '3', '1', '1003220.9374', '1000.0000');
INSERT INTO `accountflow` VALUES ('36', '1000.0000', '标的:借款标测试贷款成功,入账金额:1000.0000', '2017-05-03 21:16:40', '2', '4', '100670.8333', '0.0000');
INSERT INTO `accountflow` VALUES ('37', '1000.0000', '投资给:成功放款1000.0000', '2017-05-03 21:16:40', '3', '1', '1003220.9374', '0.0000');
INSERT INTO `accountflow` VALUES ('38', '2000.0000', '投资标的:借款测试7投资金额:2000', '2017-05-03 22:10:56', '3', '1', '1001220.9374', '2000.0000');
INSERT INTO `accountflow` VALUES ('39', '2000.0000', '标的:借款测试7贷款成功,入账金额:2000.0000', '2017-05-03 22:13:52', '2', '8', '2000.0000', '0.0000');
INSERT INTO `accountflow` VALUES ('40', '2000.0000', '投资给:成功放款2000.0000', '2017-05-03 22:13:52', '3', '1', '1001220.9374', '0.0000');
INSERT INTO `accountflow` VALUES ('41', '8.3333', '偿还贷款借款测试7第1期8.3333', '2017-05-03 22:18:18', '4', '8', '1891.6667', '0.0000');
INSERT INTO `accountflow` VALUES ('42', '8.3333', '获得第1期的还款8.3333', '2017-05-03 22:18:18', '5', '1', '1001229.2707', '0.0000');
INSERT INTO `accountflow` VALUES ('43', '0.4167', '获得还款利息8.3333支付利息管理费0.4167', '2017-05-03 22:18:18', '7', '1', '1001228.8540', '0.0000');
INSERT INTO `accountflow` VALUES ('44', '1000.0000', '线下充值,充值单:4充值金额:1000.0000', '2017-05-03 22:18:54', '0', '8', '2891.6667', '0.0000');
INSERT INTO `accountflow` VALUES ('45', '2016.6666', '偿还贷款借款测试7第2期2016.6666', '2017-05-03 22:19:14', '4', '8', '875.0001', '0.0000');
INSERT INTO `accountflow` VALUES ('46', '2016.6666', '获得第2期的还款2016.6666', '2017-05-03 22:19:14', '5', '1', '1003245.5206', '0.0000');
INSERT INTO `accountflow` VALUES ('47', '0.8333', '获得还款利息16.6666支付利息管理费0.8333', '2017-05-03 22:19:14', '7', '1', '1003244.6873', '0.0000');

-- ----------------------------
-- Table structure for bid
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actualRate` decimal(8,4) NOT NULL,
  `availableAmount` decimal(18,4) NOT NULL,
  `bidrequest_id` bigint(20) NOT NULL,
  `bidUser_id` bigint(20) NOT NULL,
  `bidTime` datetime NOT NULL,
  `bidRequestTitle` varchar(255) DEFAULT NULL,
  `bidRequestState` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bid
-- ----------------------------
INSERT INTO `bid` VALUES ('1', '8.0000', '4000.0000', '1', '3', '2017-04-30 18:42:09', '我要娶媳妇', '8');
INSERT INTO `bid` VALUES ('2', '8.0000', '1000.0000', '1', '3', '2017-04-30 18:42:44', '我要娶媳妇', '8');
INSERT INTO `bid` VALUES ('3', '19.0000', '2500.0000', '2', '1', '2017-05-01 15:51:31', '借钱去相亲', '8');
INSERT INTO `bid` VALUES ('4', '19.0000', '2500.0000', '2', '3', '2017-05-01 15:52:21', '借钱去相亲', '8');
INSERT INTO `bid` VALUES ('5', '5.0000', '1000.0000', '4', '1', '2017-05-03 21:12:45', '借款标测试', '7');
INSERT INTO `bid` VALUES ('6', '5.0000', '2000.0000', '5', '1', '2017-05-03 22:10:56', '借款测试7', '8');

-- ----------------------------
-- Table structure for bidrequest
-- ----------------------------
DROP TABLE IF EXISTS `bidrequest`;
CREATE TABLE `bidrequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `returnType` int(11) NOT NULL,
  `bidRequestType` tinyint(4) NOT NULL,
  `bidRequestState` tinyint(4) NOT NULL,
  `bidRequestAmount` decimal(18,4) NOT NULL,
  `currentRate` decimal(8,4) NOT NULL,
  `monthes2Return` tinyint(4) NOT NULL,
  `bidCount` int(11) NOT NULL,
  `totalRewardAmount` decimal(18,4) NOT NULL,
  `currentSum` decimal(18,4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `disableDate` datetime DEFAULT NULL,
  `createuser_id` bigint(20) NOT NULL,
  `disableDays` tinyint(4) NOT NULL,
  `minBidAmount` decimal(18,4) NOT NULL,
  `applyTime` datetime DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bidrequest
-- ----------------------------
INSERT INTO `bidrequest` VALUES ('1', '6', '1', '0', '8', '5000.0000', '8.0000', '1', '2', '33.3334', '5000.0000', '我要娶媳妇', '借钱娶媳妇', '通过', '2017-05-05 16:10:54', '1', '5', '100.0000', '2017-04-30 16:05:16', '2017-04-30 16:10:54');
INSERT INTO `bidrequest` VALUES ('2', '6', '0', '0', '8', '5000.0000', '19.0000', '1', '2', '79.1667', '5000.0000', '借钱去相亲', '的点点滴滴', '发布', '2017-05-02 15:49:18', '4', '1', '100.0000', '2017-05-01 15:42:58', '2017-05-01 15:49:18');
INSERT INTO `bidrequest` VALUES ('3', '1', '0', '0', '1', '5000.0000', '5.0000', '1', '0', '20.8334', '0.0000', '借款测试', '借款测试借款测试借款测试借款测试借款测试', '挺好的', '2017-05-05 18:46:36', '4', '2', '100.0000', '2017-05-03 18:46:05', '2017-05-03 18:46:36');
INSERT INTO `bidrequest` VALUES ('4', '4', '1', '0', '7', '1000.0000', '5.0000', '4', '1', '16.6668', '1000.0000', '借款标测试', '借款标测试描述。借款标测试描述', '', '2017-05-04 21:11:06', '4', '1', '100.0000', '2017-05-03 21:07:14', '2017-05-03 21:11:06');
INSERT INTO `bidrequest` VALUES ('5', '5', '1', '0', '8', '2000.0000', '5.0000', '2', '1', '16.6666', '2000.0000', '借款测试7', '借款测试7', '', '2017-05-04 22:06:14', '8', '1', '100.0000', '2017-05-03 21:59:17', '2017-05-03 22:06:14');

-- ----------------------------
-- Table structure for bidrequestaudithistory
-- ----------------------------
DROP TABLE IF EXISTS `bidrequestaudithistory`;
CREATE TABLE `bidrequestaudithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  `bidRequestId` bigint(20) NOT NULL,
  `auditType` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bidrequestaudithistory
-- ----------------------------
INSERT INTO `bidrequestaudithistory` VALUES ('1', '1', '通过', '2017-04-30 16:10:54', '2017-04-30 16:05:16', '2', '1', '1', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('2', '1', '通过', '2017-04-30 18:43:27', '2017-04-30 18:43:27', '2', '1', '1', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('5', '1', '的点点滴滴多多多多多多多多多', '2017-04-30 18:52:40', '2017-04-30 18:52:40', '2', '1', '1', '2');
INSERT INTO `bidrequestaudithistory` VALUES ('6', '1', '发布', '2017-05-01 15:49:18', '2017-05-01 15:42:58', '2', '4', '2', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('7', '1', '', '2017-05-01 15:52:48', '2017-05-01 15:52:48', '2', '4', '2', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('8', '1', '', '2017-05-01 15:52:59', '2017-05-01 15:52:59', '2', '4', '2', '2');
INSERT INTO `bidrequestaudithistory` VALUES ('9', '1', '挺好的', '2017-05-03 18:46:36', '2017-05-03 18:46:05', '2', '4', '3', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('10', '1', '', '2017-05-03 21:11:06', '2017-05-03 21:07:14', '2', '4', '4', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('11', '1', '的点点滴滴订单', '2017-05-03 21:15:47', '2017-05-03 21:15:47', '2', '4', '4', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('12', '1', '', '2017-05-03 21:16:40', '2017-05-03 21:16:40', '2', '4', '4', '2');
INSERT INTO `bidrequestaudithistory` VALUES ('13', '1', '', '2017-05-03 22:06:14', '2017-05-03 21:59:17', '2', '8', '5', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('14', '1', '', '2017-05-03 22:13:46', '2017-05-03 22:13:46', '2', '8', '5', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('15', '1', '', '2017-05-03 22:13:52', '2017-05-03 22:13:52', '2', '8', '5', '2');

-- ----------------------------
-- Table structure for companybankinfo
-- ----------------------------
DROP TABLE IF EXISTS `companybankinfo`;
CREATE TABLE `companybankinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(255) DEFAULT NULL,
  `accountname` varchar(255) DEFAULT NULL,
  `banknumber` varchar(255) DEFAULT NULL,
  `bankforkname` varchar(255) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companybankinfo
-- ----------------------------

-- ----------------------------
-- Table structure for emailverify
-- ----------------------------
DROP TABLE IF EXISTS `emailverify`;
CREATE TABLE `emailverify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `userinfo_id` bigint(20) NOT NULL,
  `sendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uuid` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emailverify
-- ----------------------------
INSERT INTO `emailverify` VALUES ('1', 'watersoona@126.com', '1', '2017-04-30 15:23:18', '8fa02000987b4c7eae6e3a603a269ad0');
INSERT INTO `emailverify` VALUES ('2', 'watersoona@123.com', '4', '2017-05-01 14:42:24', '8fffbd26a1a549e3aaf1d1bbe12b3b11');
INSERT INTO `emailverify` VALUES ('3', 'water11@126.com', '8', '2017-05-03 21:53:00', '943c29b63a9341e7af5077c757b5b199');

-- ----------------------------
-- Table structure for iplog
-- ----------------------------
DROP TABLE IF EXISTS `iplog`;
CREATE TABLE `iplog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `logininfoid` bigint(20) DEFAULT NULL,
  `userType` tinyint(4) NOT NULL,
  `logintime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iplog
-- ----------------------------
INSERT INTO `iplog` VALUES ('1', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2017-04-30 14:57:49');
INSERT INTO `iplog` VALUES ('2', '0:0:0:0:0:0:0:1', '1', 'watersoona', null, '0', '2017-04-30 14:57:52');
INSERT INTO `iplog` VALUES ('3', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 14:58:35');
INSERT INTO `iplog` VALUES ('4', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 15:16:23');
INSERT INTO `iplog` VALUES ('5', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-04-30 15:24:34');
INSERT INTO `iplog` VALUES ('6', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 15:32:59');
INSERT INTO `iplog` VALUES ('7', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 15:56:05');
INSERT INTO `iplog` VALUES ('8', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-04-30 16:10:34');
INSERT INTO `iplog` VALUES ('9', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 16:12:07');
INSERT INTO `iplog` VALUES ('10', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-04-30 18:20:46');
INSERT INTO `iplog` VALUES ('11', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 18:23:09');
INSERT INTO `iplog` VALUES ('12', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-04-30 18:37:32');
INSERT INTO `iplog` VALUES ('13', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 18:59:23');
INSERT INTO `iplog` VALUES ('14', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 19:06:49');
INSERT INTO `iplog` VALUES ('15', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:07:09');
INSERT INTO `iplog` VALUES ('16', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 19:22:27');
INSERT INTO `iplog` VALUES ('17', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:22:34');
INSERT INTO `iplog` VALUES ('18', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-04-30 19:22:56');
INSERT INTO `iplog` VALUES ('19', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:37:59');
INSERT INTO `iplog` VALUES ('20', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:38:00');
INSERT INTO `iplog` VALUES ('21', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:38:59');
INSERT INTO `iplog` VALUES ('22', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 19:39:34');
INSERT INTO `iplog` VALUES ('23', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-04-30 19:48:30');
INSERT INTO `iplog` VALUES ('24', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-04-30 19:49:11');
INSERT INTO `iplog` VALUES ('25', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-01 13:58:08');
INSERT INTO `iplog` VALUES ('26', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-01 14:15:51');
INSERT INTO `iplog` VALUES ('27', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 15:19:15');
INSERT INTO `iplog` VALUES ('28', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-01 15:19:25');
INSERT INTO `iplog` VALUES ('29', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-01 15:48:54');
INSERT INTO `iplog` VALUES ('30', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-01 15:51:11');
INSERT INTO `iplog` VALUES ('31', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-01 15:51:13');
INSERT INTO `iplog` VALUES ('32', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 15:51:57');
INSERT INTO `iplog` VALUES ('33', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 15:58:45');
INSERT INTO `iplog` VALUES ('34', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 16:00:03');
INSERT INTO `iplog` VALUES ('35', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-01 16:18:23');
INSERT INTO `iplog` VALUES ('36', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 16:50:45');
INSERT INTO `iplog` VALUES ('37', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 16:53:27');
INSERT INTO `iplog` VALUES ('38', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 16:54:36');
INSERT INTO `iplog` VALUES ('39', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 16:55:42');
INSERT INTO `iplog` VALUES ('40', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 17:05:58');
INSERT INTO `iplog` VALUES ('41', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-01 18:06:47');
INSERT INTO `iplog` VALUES ('42', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-01 18:20:11');
INSERT INTO `iplog` VALUES ('43', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 18:34:32');
INSERT INTO `iplog` VALUES ('44', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 18:36:36');
INSERT INTO `iplog` VALUES ('45', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 18:40:49');
INSERT INTO `iplog` VALUES ('46', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 18:46:58');
INSERT INTO `iplog` VALUES ('47', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 19:03:17');
INSERT INTO `iplog` VALUES ('48', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 19:04:27');
INSERT INTO `iplog` VALUES ('49', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 19:08:33');
INSERT INTO `iplog` VALUES ('50', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 19:11:58');
INSERT INTO `iplog` VALUES ('51', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 20:14:12');
INSERT INTO `iplog` VALUES ('52', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-01 21:05:48');
INSERT INTO `iplog` VALUES ('53', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-01 21:22:08');
INSERT INTO `iplog` VALUES ('54', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-02 10:29:49');
INSERT INTO `iplog` VALUES ('55', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-02 10:39:44');
INSERT INTO `iplog` VALUES ('56', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-02 10:39:53');
INSERT INTO `iplog` VALUES ('57', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-02 10:40:20');
INSERT INTO `iplog` VALUES ('58', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-02 13:48:00');
INSERT INTO `iplog` VALUES ('59', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-02 13:48:04');
INSERT INTO `iplog` VALUES ('60', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-02 13:48:07');
INSERT INTO `iplog` VALUES ('61', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-02 13:48:37');
INSERT INTO `iplog` VALUES ('62', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-02 13:48:39');
INSERT INTO `iplog` VALUES ('63', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-02 13:50:24');
INSERT INTO `iplog` VALUES ('64', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-02 13:50:40');
INSERT INTO `iplog` VALUES ('65', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-02 13:52:10');
INSERT INTO `iplog` VALUES ('66', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-02 13:52:48');
INSERT INTO `iplog` VALUES ('67', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-02 13:56:32');
INSERT INTO `iplog` VALUES ('68', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-02 14:45:34');
INSERT INTO `iplog` VALUES ('69', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-02 21:41:19');
INSERT INTO `iplog` VALUES ('70', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-03 16:49:49');
INSERT INTO `iplog` VALUES ('71', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-03 16:49:55');
INSERT INTO `iplog` VALUES ('72', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-03 17:07:12');
INSERT INTO `iplog` VALUES ('73', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 18:31:54');
INSERT INTO `iplog` VALUES ('74', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-03 18:32:17');
INSERT INTO `iplog` VALUES ('75', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-03 18:33:43');
INSERT INTO `iplog` VALUES ('76', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 18:34:48');
INSERT INTO `iplog` VALUES ('77', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 18:41:36');
INSERT INTO `iplog` VALUES ('78', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 18:41:45');
INSERT INTO `iplog` VALUES ('79', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-03 18:43:30');
INSERT INTO `iplog` VALUES ('80', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 18:43:48');
INSERT INTO `iplog` VALUES ('81', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 18:45:06');
INSERT INTO `iplog` VALUES ('82', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 18:45:25');
INSERT INTO `iplog` VALUES ('83', '0:0:0:0:0:0:0:1', '1', '1234', null, '0', '2017-05-03 18:49:35');
INSERT INTO `iplog` VALUES ('84', '0:0:0:0:0:0:0:1', '1', '1234', null, '0', '2017-05-03 18:49:39');
INSERT INTO `iplog` VALUES ('85', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-03 18:52:47');
INSERT INTO `iplog` VALUES ('86', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2017-05-03 19:26:40');
INSERT INTO `iplog` VALUES ('87', '0:0:0:0:0:0:0:1', '1', 'test1', null, '0', '2017-05-03 19:26:44');
INSERT INTO `iplog` VALUES ('88', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 19:26:51');
INSERT INTO `iplog` VALUES ('89', '0:0:0:0:0:0:0:1', '0', 'test4', null, '0', '2017-05-03 19:36:16');
INSERT INTO `iplog` VALUES ('90', '0:0:0:0:0:0:0:1', '0', 'test5', null, '0', '2017-05-03 19:36:54');
INSERT INTO `iplog` VALUES ('91', '0:0:0:0:0:0:0:1', '0', 'test5', null, '0', '2017-05-03 19:38:20');
INSERT INTO `iplog` VALUES ('92', '0:0:0:0:0:0:0:1', '0', 'test5', null, '0', '2017-05-03 19:38:23');
INSERT INTO `iplog` VALUES ('93', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-03 19:44:09');
INSERT INTO `iplog` VALUES ('94', '0:0:0:0:0:0:0:1', '1', 'test6', null, '0', '2017-05-03 20:24:32');
INSERT INTO `iplog` VALUES ('95', '0:0:0:0:0:0:0:1', '0', 'test6', null, '0', '2017-05-03 20:24:49');
INSERT INTO `iplog` VALUES ('96', '0:0:0:0:0:0:0:1', '0', 'test6', null, '0', '2017-05-03 20:25:54');
INSERT INTO `iplog` VALUES ('97', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 20:32:49');
INSERT INTO `iplog` VALUES ('98', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 20:34:25');
INSERT INTO `iplog` VALUES ('99', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 20:34:36');
INSERT INTO `iplog` VALUES ('100', '0:0:0:0:0:0:0:1', '0', 'test2', null, '0', '2017-05-03 20:46:52');
INSERT INTO `iplog` VALUES ('101', '0:0:0:0:0:0:0:1', '0', 'test3', null, '0', '2017-05-03 20:47:29');
INSERT INTO `iplog` VALUES ('102', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-03 21:09:16');
INSERT INTO `iplog` VALUES ('103', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 21:11:28');
INSERT INTO `iplog` VALUES ('104', '0:0:0:0:0:0:0:1', '0', 'test6', null, '0', '2017-05-03 21:30:45');
INSERT INTO `iplog` VALUES ('105', '0:0:0:0:0:0:0:1', '1', 'test1', null, '0', '2017-05-03 21:32:10');
INSERT INTO `iplog` VALUES ('106', '0:0:0:0:0:0:0:1', '1', 'test1', null, '0', '2017-05-03 21:32:42');
INSERT INTO `iplog` VALUES ('107', '0:0:0:0:0:0:0:1', '0', 'test7', null, '0', '2017-05-03 21:32:48');
INSERT INTO `iplog` VALUES ('108', '0:0:0:0:0:0:0:1', '1', 'test1', null, '0', '2017-05-03 22:09:39');
INSERT INTO `iplog` VALUES ('109', '0:0:0:0:0:0:0:1', '0', 'test1', null, '0', '2017-05-03 22:09:42');
INSERT INTO `iplog` VALUES ('110', '0:0:0:0:0:0:0:1', '0', 'test7', null, '0', '2017-05-03 22:15:58');
INSERT INTO `iplog` VALUES ('111', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2017-05-04 20:33:11');
INSERT INTO `iplog` VALUES ('112', '127.0.0.1', '1', 'test1', null, '1', '2017-05-04 21:54:01');

-- ----------------------------
-- Table structure for logininfo
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logininfo
-- ----------------------------
INSERT INTO `logininfo` VALUES ('1', 'test1', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('2', 'admin', '63A9F0EA7BB98050796B649E85481845', '0', '1');
INSERT INTO `logininfo` VALUES ('3', 'test2', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('4', 'test3', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('5', 'test4', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('6', 'test5', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('7', 'test6', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');
INSERT INTO `logininfo` VALUES ('8', 'test7', '81DC9BDB52D04DC20036DBD8313ED055', '0', '0');

-- ----------------------------
-- Table structure for mailverify
-- ----------------------------
DROP TABLE IF EXISTS `mailverify`;
CREATE TABLE `mailverify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userinfo_id` bigint(20) NOT NULL,
  `deadline` datetime NOT NULL,
  `randomcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mailverify
-- ----------------------------

-- ----------------------------
-- Table structure for moneywithdraw
-- ----------------------------
DROP TABLE IF EXISTS `moneywithdraw`;
CREATE TABLE `moneywithdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  `amount` decimal(18,4) DEFAULT NULL,
  `fee` decimal(18,4) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `accountName` varchar(50) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `forkName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneywithdraw
-- ----------------------------
INSERT INTO `moneywithdraw` VALUES ('1', '1', '', '2017-04-30 19:24:44', '2017-04-30 19:24:35', '2', '3', '12000.0000', '2.0000', '1', '张思', '2017-04-30 19:24:35', '方法');

-- ----------------------------
-- Table structure for paymentschedule
-- ----------------------------
DROP TABLE IF EXISTS `paymentschedule`;
CREATE TABLE `paymentschedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deadLine` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `totalAmount` decimal(18,4) DEFAULT NULL,
  `principal` decimal(18,4) DEFAULT NULL,
  `interest` decimal(18,4) DEFAULT NULL,
  `monthIndex` decimal(18,4) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `bidRequestType` int(11) DEFAULT NULL,
  `returnType` int(11) DEFAULT NULL,
  `bidRequestTitle` varchar(255) DEFAULT NULL,
  `borrowUser_id` bigint(20) DEFAULT NULL,
  `bidRequest_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paymentschedule
-- ----------------------------
INSERT INTO `paymentschedule` VALUES ('3', '2017-05-30 16:05:16', '2017-04-30 19:07:29', '5033.3334', '5000.0000', '33.3334', '1.0000', '1', '0', '1', '我要娶媳妇', '1', '1');
INSERT INTO `paymentschedule` VALUES ('4', '2017-06-01 15:42:58', '2017-05-03 18:44:39', '5079.1667', '5000.0000', '79.1667', '1.0000', '1', '0', '0', '借钱去相亲', '4', '2');
INSERT INTO `paymentschedule` VALUES ('5', '2017-06-03 21:07:14', '2017-05-03 21:16:40', '4.1667', '0.0000', '4.1667', '1.0000', '0', '0', '1', '借款标测试', '4', '4');
INSERT INTO `paymentschedule` VALUES ('6', '2017-07-03 21:07:14', '2017-05-03 21:16:40', '4.1667', '0.0000', '4.1667', '2.0000', '0', '0', '1', '借款标测试', '4', '4');
INSERT INTO `paymentschedule` VALUES ('7', '2017-08-03 21:07:14', '2017-05-03 21:16:40', '4.1667', '0.0000', '4.1667', '3.0000', '0', '0', '1', '借款标测试', '4', '4');
INSERT INTO `paymentschedule` VALUES ('8', '2017-09-03 21:07:14', '2017-05-03 21:16:40', '1016.6668', '1000.0000', '16.6668', '4.0000', '0', '0', '1', '借款标测试', '4', '4');
INSERT INTO `paymentschedule` VALUES ('9', '2017-06-03 21:59:17', '2017-05-03 22:18:18', '8.3333', '0.0000', '8.3333', '1.0000', '1', '0', '1', '借款测试7', '8', '5');
INSERT INTO `paymentschedule` VALUES ('10', '2017-07-03 21:59:17', '2017-05-03 22:19:14', '2016.6666', '2000.0000', '16.6666', '2.0000', '1', '0', '1', '借款测试7', '8', '5');

-- ----------------------------
-- Table structure for paymentscheduledetail
-- ----------------------------
DROP TABLE IF EXISTS `paymentscheduledetail`;
CREATE TABLE `paymentscheduledetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bidAmount` decimal(18,4) DEFAULT NULL,
  `bid_id` bigint(20) DEFAULT NULL,
  `totalAmount` decimal(18,4) DEFAULT NULL,
  `principal` decimal(18,4) DEFAULT NULL,
  `interest` decimal(18,4) DEFAULT NULL,
  `monthIndex` int(11) DEFAULT NULL,
  `deadLine` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bidrequest_id` bigint(20) NOT NULL,
  `payDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `returnType` int(11) DEFAULT NULL,
  `paymentSchedule_id` bigint(20) NOT NULL,
  `fromLogininfo_id` bigint(20) NOT NULL,
  `toLogininfo_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paymentscheduledetail
-- ----------------------------
INSERT INTO `paymentscheduledetail` VALUES ('1', '4000.0000', '1', '4026.6667', '4000.0000', '26.6667', '1', '2017-05-30 16:05:16', '1', '2017-04-30 19:07:29', '1', '3', '1', '3');
INSERT INTO `paymentscheduledetail` VALUES ('2', '1000.0000', '2', '1006.6667', '1000.0000', '6.6667', '1', '2017-05-30 16:05:16', '1', '2017-04-30 19:07:29', '1', '3', '1', '3');
INSERT INTO `paymentscheduledetail` VALUES ('3', '2500.0000', '3', '2539.5834', '2500.0000', '39.5834', '1', '2017-06-01 15:42:58', '2', '2017-05-03 18:44:39', '0', '4', '4', '1');
INSERT INTO `paymentscheduledetail` VALUES ('4', '2500.0000', '4', '2539.5833', '2500.0000', '39.5833', '1', '2017-06-01 15:42:58', '2', '2017-05-03 18:44:39', '0', '4', '4', '3');
INSERT INTO `paymentscheduledetail` VALUES ('5', '1000.0000', '5', '4.1667', '0.0000', '4.1667', '1', '2017-06-03 21:07:14', '4', '2017-05-03 21:16:40', '1', '5', '4', '1');
INSERT INTO `paymentscheduledetail` VALUES ('6', '1000.0000', '5', '4.1667', '0.0000', '4.1667', '2', '2017-07-03 21:07:14', '4', '2017-05-03 21:16:40', '1', '6', '4', '1');
INSERT INTO `paymentscheduledetail` VALUES ('7', '1000.0000', '5', '4.1667', '0.0000', '4.1667', '3', '2017-08-03 21:07:14', '4', '2017-05-03 21:16:40', '1', '7', '4', '1');
INSERT INTO `paymentscheduledetail` VALUES ('8', '1000.0000', '5', '1016.6668', '1000.0000', '16.6668', '4', '2017-09-03 21:07:14', '4', '2017-05-03 21:16:40', '1', '8', '4', '1');
INSERT INTO `paymentscheduledetail` VALUES ('9', '2000.0000', '6', '8.3333', '0.0000', '8.3333', '1', '2017-06-03 21:59:17', '5', '2017-05-03 22:18:18', '1', '9', '8', '1');
INSERT INTO `paymentscheduledetail` VALUES ('10', '2000.0000', '6', '2016.6666', '2000.0000', '16.6666', '2', '2017-07-03 21:59:17', '5', '2017-05-03 22:19:14', '1', '10', '8', '1');

-- ----------------------------
-- Table structure for platformbankinfo
-- ----------------------------
DROP TABLE IF EXISTS `platformbankinfo`;
CREATE TABLE `platformbankinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(100) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `accountNumber` varchar(100) DEFAULT NULL,
  `forkName` varchar(100) DEFAULT NULL,
  `iconCls` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platformbankinfo
-- ----------------------------
INSERT INTO `platformbankinfo` VALUES ('1', '4', '张老板', '62222233333', '三峡大学支行', null);

-- ----------------------------
-- Table structure for realauth
-- ----------------------------
DROP TABLE IF EXISTS `realauth`;
CREATE TABLE `realauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `bornDate` varchar(50) DEFAULT NULL,
  `idNumber` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realauth
-- ----------------------------
INSERT INTO `realauth` VALUES ('1', '张三', '0', '2013-10-10', '340824199310105419', '安徽省潜山县五庙乡', '1', '/upload/408a3d5431224b35a2603573cfb58541.jpg', '/upload/d9de0b1dce4e4b8ab20ec67055bb4405.jpg', '通过', '2017-04-30 15:25:02', '2017-04-30 15:10:07', '2', '1');
INSERT INTO `realauth` VALUES ('2', '张思', '0', '1993-04-30', '340824199310105429', '安徽省潜山县五庙乡', '1', '/upload/d97f29a0110f4d3bb2d5b842da42d1cb.jpg', '/upload/0393319f49c042a6a321dac48951b3e2.jpg', '通过', '2017-04-30 18:38:01', '2017-04-30 18:25:10', '2', '3');
INSERT INTO `realauth` VALUES ('3', '方玉慧', '1', '1992-05-01', '11000002313123131', '上海师范大学', '1', '/upload/0635df524d3844ddb9f5ae0dce24e164.jpg', '/upload/92b1cdafe432434d86fb3fdb965ec383.jpg', '通过', '2017-05-01 14:17:50', '2017-05-01 14:17:09', '2', '4');
INSERT INTO `realauth` VALUES ('4', '张三', '0', '2017-05-02', '3444444444', '21111111111111111', '1', '/upload/a0e20a5244bb42ed8d3e198b7115fd18.jpg', '/upload/eedb0656b976416f8d63d127ef700a49.jpg', '', '2017-05-02 13:53:03', '2017-05-02 13:52:34', '2', '5');
INSERT INTO `realauth` VALUES ('5', '张鼎', '0', '2017-05-03', '34233333333333', '大大大纷纷而非', '2', '/upload/5dae60f23bec4cb8a95cd50383efe13d.jpg', '/upload/e71914a40f1046b6b2bc2ef01d9924b6.jpg', '拒绝！！！', '2017-05-03 19:44:19', '2017-05-03 19:38:52', '2', '6');
INSERT INTO `realauth` VALUES ('6', '张鼎', '0', '2017-05-03', '23232323232323232323', '3333333333', '1', '/upload/3f5564a15ae9453497e05383e4a28660.jpg', '/upload/4168f20b2ec14bf58e33753554b41b6d.jpg', '', '2017-05-03 20:06:35', '2017-05-03 20:06:20', '2', '6');
INSERT INTO `realauth` VALUES ('7', '实名', '0', '2005-01-03', '3400000000000000123', '地址地址地址地址地址地址地址', '1', '/upload/b62263c093b645439c3cb7e635f548e6.jpg', '/upload/a1bc32a4cfa342d8a568f6d3005eba61.jpg', '', '2017-05-03 21:35:22', '2017-05-03 20:26:46', '2', '7');
INSERT INTO `realauth` VALUES ('8', '张定水', '1', '2012-05-02', '3444444444', '安徽省潜山县五庙乡', '1', '/upload/f9101e413be642459712c0990d494d80.jpg', '/upload/5de97c6f339e48d2a90a5335476b6a7f.jpg', '', '2017-05-03 21:35:26', '2017-05-03 21:35:10', '2', '8');

-- ----------------------------
-- Table structure for rechargeoffline
-- ----------------------------
DROP TABLE IF EXISTS `rechargeoffline`;
CREATE TABLE `rechargeoffline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  `tradeCode` varchar(255) NOT NULL,
  `tradeTime` datetime NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `bankinfo_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rechargeoffline
-- ----------------------------
INSERT INTO `rechargeoffline` VALUES ('1', '1', '到账', '2017-04-30 15:27:30', '2017-04-30 15:27:09', '2', '1', '20170430213333333', '2017-04-30 00:00:00', '1000000.0000', '充值1000000', '1');
INSERT INTO `rechargeoffline` VALUES ('2', '1', '的点点滴滴', '2017-04-30 18:39:02', '2017-04-30 18:38:48', '2', '3', '6222222222222', '2017-04-30 00:00:00', '12333333.0000', '321', '1');
INSERT INTO `rechargeoffline` VALUES ('3', '1', '', '2017-05-03 18:44:26', '2017-05-03 18:44:03', '2', '4', '1233333333333', '2017-05-03 00:00:00', '100000.0000', '1', '1');
INSERT INTO `rechargeoffline` VALUES ('4', '1', 'dd', '2017-05-03 22:18:54', '2017-05-03 22:18:39', '2', '8', '123131313123', '2017-05-03 00:00:00', '1000.0000', 'dddd', '1');

-- ----------------------------
-- Table structure for systemaccount
-- ----------------------------
DROP TABLE IF EXISTS `systemaccount`;
CREATE TABLE `systemaccount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `usableAmount` decimal(18,4) DEFAULT NULL,
  `freezedAmount` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemaccount
-- ----------------------------
INSERT INTO `systemaccount` VALUES ('1', '13', '0.8333', '0.0000');

-- ----------------------------
-- Table structure for systemaccountflow
-- ----------------------------
DROP TABLE IF EXISTS `systemaccountflow`;
CREATE TABLE `systemaccountflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tradeTime` datetime NOT NULL,
  `actionType` tinyint(4) NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `usableAmount` decimal(18,4) NOT NULL,
  `freezedAmount` decimal(18,4) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemaccountflow
-- ----------------------------
INSERT INTO `systemaccountflow` VALUES ('1', '2017-04-30 18:43:38', '1', '250.0000', '250.0000', '0.0000', '贷款:我要娶媳妇成功,收取手续费250.00000000');
INSERT INTO `systemaccountflow` VALUES ('2', '2017-04-30 18:44:45', '1', '250.0000', '500.0000', '0.0000', '贷款:我要娶媳妇成功,收取手续费250.00000000');
INSERT INTO `systemaccountflow` VALUES ('3', '2017-04-30 18:52:40', '1', '250.0000', '750.0000', '0.0000', '贷款:我要娶媳妇成功,收取手续费250.00000000');
INSERT INTO `systemaccountflow` VALUES ('4', '2017-04-30 19:07:29', '2', '1.3333', '1.3333', '0.0000', '获得利息管理费1.3333');
INSERT INTO `systemaccountflow` VALUES ('5', '2017-04-30 19:07:29', '2', '0.3333', '0.3333', '0.0000', '获得利息管理费0.3333');
INSERT INTO `systemaccountflow` VALUES ('6', '2017-04-30 19:24:44', '3', '2.0000', '2.3333', '0.0000', '收取提现手续费2.0000');
INSERT INTO `systemaccountflow` VALUES ('7', '2017-05-01 15:52:59', '1', '250.0000', '252.3333', '0.0000', '贷款:借钱去相亲成功,收取手续费250.00000000');
INSERT INTO `systemaccountflow` VALUES ('8', '2017-05-03 18:44:39', '2', '1.9792', '1.9792', '0.0000', '获得利息管理费1.9792');
INSERT INTO `systemaccountflow` VALUES ('9', '2017-05-03 18:44:39', '2', '1.9792', '1.9792', '0.0000', '获得利息管理费1.9792');
INSERT INTO `systemaccountflow` VALUES ('10', '2017-05-03 21:16:40', '1', '50.0000', '51.9792', '0.0000', '贷款:借款标测试成功,收取手续费50.00000000');
INSERT INTO `systemaccountflow` VALUES ('11', '2017-05-03 22:13:52', '1', '100.0000', '151.9792', '0.0000', '贷款:借款测试7成功,收取手续费100.00000000');
INSERT INTO `systemaccountflow` VALUES ('12', '2017-05-03 22:18:18', '2', '0.4167', '0.4167', '0.0000', '获得利息管理费0.4167');
INSERT INTO `systemaccountflow` VALUES ('13', '2017-05-03 22:19:14', '2', '0.8333', '0.8333', '0.0000', '获得利息管理费0.8333');

-- ----------------------------
-- Table structure for systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionary`;
CREATE TABLE `systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionary
-- ----------------------------
INSERT INTO `systemdictionary` VALUES ('1', 'test01', '测试', null);
INSERT INTO `systemdictionary` VALUES ('2', 'houseCondition', '住房条件', 'houseCondition');
INSERT INTO `systemdictionary` VALUES ('3', 'kidCount', '子女情况', 'kidCount');
INSERT INTO `systemdictionary` VALUES ('4', 'marriage', '婚姻情况', null);
INSERT INTO `systemdictionary` VALUES ('5', 'incomeGrade', '月收入', null);
INSERT INTO `systemdictionary` VALUES ('6', 'educationBackground', '个人学历', null);
INSERT INTO `systemdictionary` VALUES ('7', 'fileType', '文件类型', null);

-- ----------------------------
-- Table structure for systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionaryitem`;
CREATE TABLE `systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tvalue` varchar(50) DEFAULT NULL,
  `sequence` tinyint(4) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionaryitem
-- ----------------------------
INSERT INTO `systemdictionaryitem` VALUES ('1', '1', '1', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('2', '1', '123', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('3', '6', '本科以下', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('4', '6', '本科', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('5', '6', '硕士', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('6', '6', '博士', null, '4', null);
INSERT INTO `systemdictionaryitem` VALUES ('7', '6', '其他', null, '5', null);
INSERT INTO `systemdictionaryitem` VALUES ('8', '5', '1000以下', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('9', '5', '1000-3000', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('10', '5', '3001-5000', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('11', '5', '5001-7000', null, '4', null);
INSERT INTO `systemdictionaryitem` VALUES ('12', '5', '7000以上', null, '5', null);
INSERT INTO `systemdictionaryitem` VALUES ('13', '4', '未婚', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('14', '4', '已婚', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('15', '3', '未生育', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('16', '3', '一孩', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('17', '3', '二孩', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('18', '3', '三孩', null, '4', null);
INSERT INTO `systemdictionaryitem` VALUES ('19', '3', '三孩以上', null, '5', null);
INSERT INTO `systemdictionaryitem` VALUES ('20', '2', '无房产', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('21', '2', '一套房产', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('22', '2', '两套房产', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('23', '2', '三套及以上', null, '4', null);
INSERT INTO `systemdictionaryitem` VALUES ('24', '2', '--请选择--', null, '0', null);
INSERT INTO `systemdictionaryitem` VALUES ('25', '3', '--请选择--', null, '0', null);
INSERT INTO `systemdictionaryitem` VALUES ('26', '4', '--请选择--', null, '0', null);
INSERT INTO `systemdictionaryitem` VALUES ('27', '5', '--请选择--', null, '0', null);
INSERT INTO `systemdictionaryitem` VALUES ('28', '6', '--请选择--', null, '0', null);
INSERT INTO `systemdictionaryitem` VALUES ('29', '7', '证件类', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('30', '7', '实物图', null, '2', null);

-- ----------------------------
-- Table structure for userbankinfo
-- ----------------------------
DROP TABLE IF EXISTS `userbankinfo`;
CREATE TABLE `userbankinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(255) NOT NULL,
  `accountName` varchar(255) NOT NULL,
  `accountNumber` varchar(255) NOT NULL,
  `forkName` varchar(255) DEFAULT NULL,
  `logininfo_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userbankinfo
-- ----------------------------
INSERT INTO `userbankinfo` VALUES ('1', '4', '张三', '6222222222222', '三峡大学支行', '1');
INSERT INTO `userbankinfo` VALUES ('2', '1', '张思', '6222222222222222', '方法', '3');
INSERT INTO `userbankinfo` VALUES ('3', '1', '张鼎', '1233333333333', '测试题hi', '6');

-- ----------------------------
-- Table structure for userfile
-- ----------------------------
DROP TABLE IF EXISTS `userfile`;
CREATE TABLE `userfile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) DEFAULT NULL,
  `score` tinyint(4) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `filetype_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userfile
-- ----------------------------
INSERT INTO `userfile` VALUES ('1', '1', '通过', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/2a3d73e45a4a4bf7aeffb107eeba0d9e.jpg');
INSERT INTO `userfile` VALUES ('2', '1', '', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/b4aae412d4fc4f8b878444dcec242086.jpg');
INSERT INTO `userfile` VALUES ('3', '1', '', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/35ee03534afa4404899f97e13e1d8578.jpg');
INSERT INTO `userfile` VALUES ('4', '1', '', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/debb3dadc23a425a923dafa78cbb5922.jpg');
INSERT INTO `userfile` VALUES ('5', '1', '', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/156a8032438c4f439a08fc404abd6455.jpg');
INSERT INTO `userfile` VALUES ('6', '1', '', '2017-04-30 00:00:00', '2017-04-30 00:00:00', '2', '1', '5', null, '29', '/upload/ff18d7e1889b42448f45c5516e6dc7ac.jpg');
INSERT INTO `userfile` VALUES ('7', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '30', '/upload/d46cb40017924a63a4d9e3e75c0ec580.jpg');
INSERT INTO `userfile` VALUES ('8', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '30', '/upload/d4227eb1a17d49b99d2d0ffe867ca45a.jpg');
INSERT INTO `userfile` VALUES ('9', '1', 'd', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '29', '/upload/759e042eb35d4bb0af6456255b765bbe.jpg');
INSERT INTO `userfile` VALUES ('10', '1', '的', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '29', '/upload/2c44d1245abf4b67b620770762dd7c71.jpg');
INSERT INTO `userfile` VALUES ('11', '1', '的', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '29', '/upload/461e1b0e7d1141b78b2971cd71905219.jpg');
INSERT INTO `userfile` VALUES ('12', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '1', null, '29', '/upload/e27527189d48467d8b923cfa49f60f68.jpg');
INSERT INTO `userfile` VALUES ('13', '1', 'a', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '30', null, '29', '/upload/2e89e58d556e494faac5096ca423db53.jpg');
INSERT INTO `userfile` VALUES ('14', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '30', null, '29', '/upload/86e64e8b7c0441d5ae001e51bd50632c.jpg');
INSERT INTO `userfile` VALUES ('15', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '5', null, '29', '/upload/cc0222a058f144d3a2f2bad3b3a70bde.jpg');
INSERT INTO `userfile` VALUES ('16', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '5', null, '29', '/upload/d65496a4571947abb84dbdf173fd15fb.jpg');
INSERT INTO `userfile` VALUES ('17', '1', '', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4', '5', null, '29', '/upload/1eb298365b8745918f3d43b067aca393.jpg');
INSERT INTO `userfile` VALUES ('18', '0', null, null, '2017-05-01 00:00:00', null, '3', '0', null, '29', '/upload/33ad2a6aaea241baa7ce82da3be57c44.jpg');
INSERT INTO `userfile` VALUES ('19', '0', null, null, null, null, '5', '0', null, null, '/upload/651dc68fc58e4f8eadbcbc667ed9a152.jpg');
INSERT INTO `userfile` VALUES ('20', '1', '通过', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '6', '30', null, '30', '/upload/262be3ff09364f6ebf6ef6ccfab0449b.jpg');
INSERT INTO `userfile` VALUES ('21', '1', '', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '6', '30', null, '29', '/upload/6489c97f2fce441697964354c2f4afa9.jpg');
INSERT INTO `userfile` VALUES ('22', '1', '', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '6', '30', null, '29', '/upload/96232868e7984ce8a40bba81cb2fab8f.jpg');
INSERT INTO `userfile` VALUES ('23', '1', '', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '6', '30', null, '30', '/upload/7c08a0171880478fa75450d5e56c3950.jpg');
INSERT INTO `userfile` VALUES ('24', '0', null, null, '2017-05-03 00:00:00', null, '7', '0', null, '30', '/upload/fb8baf24830a471c8970d04a0169f687.jpg');
INSERT INTO `userfile` VALUES ('25', '1', '', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '8', '30', null, '30', '/upload/f083d0000213469391f29379710d8d27.jpg');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `bitState` bigint(20) NOT NULL,
  `realName` varchar(30) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `realAuthId` bigint(20) DEFAULT NULL,
  `idNumber` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(30) DEFAULT NULL,
  `incomeGrade_id` bigint(20) DEFAULT NULL,
  `marriage_id` bigint(20) DEFAULT NULL,
  `kidCount_id` bigint(20) DEFAULT NULL,
  `educationBackground_id` bigint(20) DEFAULT NULL,
  `houseCondition_id` bigint(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '17', '95', '张三', '30', '1', '340824199310105419', '15272162989', '12', '13', '15', '3', '21', 'watersoona@126.com');
INSERT INTO `userinfo` VALUES ('3', '5', '72', '张思', '0', '2', '340824199310105429', null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('4', '22', '31', '方玉慧', '81', '3', '11000002313123131', '18972622333', '8', '13', '15', '3', '20', 'watersoona@123.com');
INSERT INTO `userinfo` VALUES ('5', '2', '8', '张三', '0', '4', '3444444444', null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('6', '9', '72', '张鼎', '120', '6', '23232323232323232323', null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('7', '2', '8', '实名', '0', '7', '3400000000000000123', null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('8', '9', '31', '张定水', '30', '8', '3444444444', '15272323233', '8', '13', '15', '4', '21', 'water11@126.com');

-- ----------------------------
-- Table structure for videoauth
-- ----------------------------
DROP TABLE IF EXISTS `videoauth`;
CREATE TABLE `videoauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videoauth
-- ----------------------------
INSERT INTO `videoauth` VALUES ('1', '1', '12313131', '2017-05-01 00:00:00', '2017-05-01 00:00:00', '2', '4');
INSERT INTO `videoauth` VALUES ('2', '1', '', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '1');
INSERT INTO `videoauth` VALUES ('3', '1', '符合', '2017-05-03 00:00:00', '2017-05-03 00:00:00', '2', '8');
