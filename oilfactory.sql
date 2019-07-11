/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.7_3306
Source Server Version : 50639
Source Host           : 192.168.1.7:3306
Source Database       : oilfactory

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-07-11 16:29:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `arrears`
-- ----------------------------
DROP TABLE IF EXISTS `arrears`;
CREATE TABLE `arrears` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) DEFAULT NULL COMMENT '客户id',
  `Detailed` varchar(50) DEFAULT NULL COMMENT '欠款明细',
  `Amount` decimal(10,2) DEFAULT NULL COMMENT '欠款数量',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='欠款明细表';

-- ----------------------------
-- Records of arrears
-- ----------------------------
INSERT INTO `arrears` VALUES ('3', '189', '222', '15.00', '', null, '2018-12-17 14:05:13', null, '2018-12-17 14:05:13');

-- ----------------------------
-- Table structure for `carinfo`
-- ----------------------------
DROP TABLE IF EXISTS `carinfo`;
CREATE TABLE `carinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FleetId` int(11) DEFAULT NULL COMMENT '车队id',
  `CarNumber` varchar(32) DEFAULT NULL COMMENT '车辆编码',
  `PlateNumber` varchar(20) DEFAULT NULL COMMENT '车牌号码',
  `PlateNumber2` varchar(20) DEFAULT NULL,
  `IsLargeCar` bit(1) DEFAULT NULL COMMENT '是否是大型车',
  `Driver1` varchar(20) DEFAULT NULL COMMENT '司机1',
  `Telephone1` varchar(15) DEFAULT NULL COMMENT '联系电话1',
  `Driver2` varchar(20) DEFAULT NULL COMMENT '司机2',
  `Telephone2` varchar(15) DEFAULT NULL COMMENT '联系电话2',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='车辆表';

-- ----------------------------
-- Records of carinfo
-- ----------------------------
INSERT INTO `carinfo` VALUES ('120', '93', 'CL001', '辽A23451', '', '', '刘', '15236523651', '', '', '', '', null, null, null, null);
INSERT INTO `carinfo` VALUES ('121', '93', 'CL002', '辽A23452', '', '', '张', '15425456552', '', '', '', '', null, null, null, null);
INSERT INTO `carinfo` VALUES ('122', '93', 'CL003', '辽A23453', '', '', '孙', '15855459853', '', '', '', '', null, null, null, null);
INSERT INTO `carinfo` VALUES ('123', '93', 'CL004', '辽A23454', '', '', '赵', '15842545254', '', '', '', '', null, null, null, null);
INSERT INTO `carinfo` VALUES ('124', '93', 'CL005', '辽A23455', '', '', '冯', '15825452565', '', '', '', '', null, null, null, null);
INSERT INTO `carinfo` VALUES ('125', '93', 'CL006', '辽G55551', '', '', '李', '13024565487', '', '', '', '', null, null, null, null);

-- ----------------------------
-- Table structure for `cityinfo`
-- ----------------------------
DROP TABLE IF EXISTS `cityinfo`;
CREATE TABLE `cityinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProvinceId` int(11) DEFAULT NULL COMMENT '菜单名称',
  `CityName` varchar(20) DEFAULT NULL COMMENT '父级id',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='市信息表';

-- ----------------------------
-- Records of cityinfo
-- ----------------------------
INSERT INTO `cityinfo` VALUES ('1', '1', '沈阳市', '', null, '2018-10-24 14:01:18', null, null);
INSERT INTO `cityinfo` VALUES ('2', '1', '大连市', '', null, '2018-10-24 14:01:49', null, null);
INSERT INTO `cityinfo` VALUES ('3', '2', '吉林市', '', null, '2018-10-24 14:07:14', null, null);
INSERT INTO `cityinfo` VALUES ('4', '2', '长春市', '', null, '2018-10-24 14:07:45', null, null);
INSERT INTO `cityinfo` VALUES ('5', '3', '哈尔滨市', '', null, '2018-10-24 14:09:26', null, null);
INSERT INTO `cityinfo` VALUES ('6', '3', '齐齐哈尔市', '', null, '2018-10-24 14:09:48', null, null);

-- ----------------------------
-- Table structure for `contractdetailed`
-- ----------------------------
DROP TABLE IF EXISTS `contractdetailed`;
CREATE TABLE `contractdetailed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ContractId` int(11) DEFAULT NULL COMMENT '合同id',
  `MaterielId` int(11) DEFAULT NULL COMMENT '物料id',
  `UnitPrice` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `SaleNumber` decimal(10,2) DEFAULT NULL COMMENT '数量',
  `Money` decimal(18,2) DEFAULT NULL COMMENT '金额',
  `TaxRate` varchar(2) DEFAULT NULL COMMENT '税率',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COMMENT='合同明细表';

-- ----------------------------
-- Records of contractdetailed
-- ----------------------------
INSERT INTO `contractdetailed` VALUES ('235', '89', '95', '5000.00', '423.00', '2326500.00', '1', null, '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractdetailed` VALUES ('236', '89', '96', '4000.00', '32.00', '140800.00', '1', null, '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractdetailed` VALUES ('237', '89', '97', '8000.00', '124.00', '1091200.00', '1', null, '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractdetailed` VALUES ('238', '89', '98', '5000.00', '45.00', '258750.00', '2', null, '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractdetailed` VALUES ('239', '89', '99', '4000.00', '7878.00', '34663200.00', '1', null, '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractdetailed` VALUES ('240', '90', '96', '4000.00', '54.00', '248400.00', '2', null, '', '51', '2018-12-17 16:09:39', null, null);
INSERT INTO `contractdetailed` VALUES ('241', '90', '95', '5000.00', '5454.00', '28633500.00', '0', null, '', '51', '2018-12-17 16:09:39', null, null);
INSERT INTO `contractdetailed` VALUES ('242', '90', '97', '8000.00', '232.00', '2041600.00', '1', null, '', '51', '2018-12-17 16:09:39', null, null);
INSERT INTO `contractdetailed` VALUES ('243', '90', '98', '5000.00', '32.00', '176000.00', '1', null, '', '51', '2018-12-17 16:09:39', null, null);
INSERT INTO `contractdetailed` VALUES ('244', '91', '95', '5000.00', '32.00', '168000.00', '0', null, '', '51', '2018-12-21 15:59:52', null, null);

-- ----------------------------
-- Table structure for `contractincomingdetailed`
-- ----------------------------
DROP TABLE IF EXISTS `contractincomingdetailed`;
CREATE TABLE `contractincomingdetailed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ContractId` int(11) DEFAULT NULL COMMENT '合同id',
  `MaterielId` int(11) DEFAULT NULL COMMENT '授手加工物资名称',
  `SettlementMethod` varchar(2) DEFAULT NULL COMMENT '结算方式（数据字典） 0:1T抵1T 1:其他',
  `SettlementMethodRemarks` varchar(200) DEFAULT NULL COMMENT '结算方式备注',
  `CargoBalance` varchar(2) DEFAULT NULL COMMENT '货物结算情况（数据字典） 0:按我方出厂 1:按对方实收 2:其他',
  `CargoRemarks` varchar(200) DEFAULT NULL COMMENT '货物结算情况备注',
  `TransportBalance` varchar(2) DEFAULT NULL COMMENT '运输结算情况（数据字典） 0:我方承担运费 1:客户自提 2:我方垫付运费 3:其他',
  `TransportRemarks` varchar(200) DEFAULT NULL COMMENT '运输结算情况备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='合同表来料加工明细';

-- ----------------------------
-- Records of contractincomingdetailed
-- ----------------------------
INSERT INTO `contractincomingdetailed` VALUES ('110', '91', '95', '0', '43', '0', '434', '0', '4343', '', '51', '2018-12-21 15:59:52', null, null);

-- ----------------------------
-- Table structure for `contractinfo`
-- ----------------------------
DROP TABLE IF EXISTS `contractinfo`;
CREATE TABLE `contractinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ContractNumber` varchar(32) DEFAULT NULL COMMENT '合同编号',
  `ContractName` varchar(50) DEFAULT NULL COMMENT '合同名称',
  `CustomerId` int(11) DEFAULT NULL COMMENT '客户id',
  `SaleNumber` decimal(10,2) DEFAULT NULL COMMENT '销售数量',
  `ContractState` varchar(2) DEFAULT NULL COMMENT '合同状态（数据字典） 0:执行中 1:未执行 2:完成 3:作废 4:未鉴定 5:其他',
  `CancellationCause` varchar(200) DEFAULT NULL COMMENT '作废原因',
  `UserInfoId` int(11) DEFAULT NULL COMMENT '销售员id',
  `SalesCompanyId` int(11) DEFAULT NULL COMMENT '销售公司id',
  `ContractDate` datetime DEFAULT NULL COMMENT '合同日期',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `ContractRoute` varchar(500) DEFAULT NULL COMMENT '合同（路径）',
  `IsIncoming` bit(1) DEFAULT b'0' COMMENT '是否来料加工（数据字典） 0:是 1:否',
  `IsApproval` bit(1) DEFAULT b'0' COMMENT '出库记录是否需要审批',
  `IsDel` bit(1) DEFAULT b'0' COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='合同信息表';

-- ----------------------------
-- Records of contractinfo
-- ----------------------------
INSERT INTO `contractinfo` VALUES ('89', 'HT20181217088', '合同名称1', '189', '323.00', '0', null, '51', '16', '2018-12-05 15:20:18', '', '', '', '', '', '51', '2018-12-17 15:34:02', null, null);
INSERT INTO `contractinfo` VALUES ('90', 'HT20181217089', '合同名称2', '190', '545.00', '0', null, '51', '17', '2018-12-11 15:56:53', '', '', '', '', '', '51', '2018-12-17 16:09:39', null, null);
INSERT INTO `contractinfo` VALUES ('91', 'HT20181221090', '测试', '189', '43.00', '1', null, '51', '16', '2018-12-21 15:47:34', '', '', '', '', '', '51', '2018-12-21 15:59:52', null, null);

-- ----------------------------
-- Table structure for `contractinfodemo`
-- ----------------------------
DROP TABLE IF EXISTS `contractinfodemo`;
CREATE TABLE `contractinfodemo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hName` varchar(50) DEFAULT NULL,
  `hType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contractinfodemo
-- ----------------------------
INSERT INTO `contractinfodemo` VALUES ('3', '合同名称333', '4');
INSERT INTO `contractinfodemo` VALUES ('6', '合同666', '4');
INSERT INTO `contractinfodemo` VALUES ('7', '合同57', '1');
INSERT INTO `contractinfodemo` VALUES ('8', '合同名称12121', '1');
INSERT INTO `contractinfodemo` VALUES ('9', '合同名称112312312', '2');
INSERT INTO `contractinfodemo` VALUES ('10', '合同称1', '2');
INSERT INTO `contractinfodemo` VALUES ('11', '合同称32', '2');
INSERT INTO `contractinfodemo` VALUES ('12', '合同八十', '2');
INSERT INTO `contractinfodemo` VALUES ('13', '合同22名称1', '2');
INSERT INTO `contractinfodemo` VALUES ('14', '合同66名称1', '1');
INSERT INTO `contractinfodemo` VALUES ('15', '合同名称1www', '0');
INSERT INTO `contractinfodemo` VALUES ('16', '合同名称1wwww2', '0');
INSERT INTO `contractinfodemo` VALUES ('17', '合同名称1', '0');
INSERT INTO `contractinfodemo` VALUES ('18', '合同名称12231231', '2');
INSERT INTO `contractinfodemo` VALUES ('19', '合同名称12312', '4');
INSERT INTO `contractinfodemo` VALUES ('20', '合同名称12321', '3');
INSERT INTO `contractinfodemo` VALUES ('21', '合同名称IdCS', '1');
INSERT INTO `contractinfodemo` VALUES ('22', '合同名称12222', '1');

-- ----------------------------
-- Table structure for `customerinfo`
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerCode` varchar(32) DEFAULT NULL COMMENT '客户编号',
  `CustomerName` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `CityId` int(11) DEFAULT NULL COMMENT '所属市',
  `IntentionalLevel` varchar(2) DEFAULT NULL COMMENT '意向客户级别（数据字典） 0:A 1:B 2:C 3:D 4:E',
  `ProcurementLevel` varchar(2) DEFAULT NULL COMMENT '采购级别（数据字典） 0:A 1:B 2:C 3:D 4:E',
  `CreditLevel` varchar(2) DEFAULT NULL COMMENT '诚信级别（数据字典） 0:A 1:B 2:C 3:D 4:E',
  `Address` varchar(128) DEFAULT NULL COMMENT '地址',
  `Contacts` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `OtherNumbers` varchar(30) DEFAULT NULL COMMENT '其他联系方式',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsIncoming` bit(1) DEFAULT NULL COMMENT '是否来料加工客户',
  `IsSupplier` bit(1) DEFAULT NULL COMMENT '是否也是供应商',
  `ArrearsMoney` decimal(10,2) DEFAULT NULL COMMENT '期初欠款金额',
  `ArrearsAmount` decimal(10,2) DEFAULT NULL COMMENT '期初欠款数量',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime NOT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

-- ----------------------------
-- Records of customerinfo
-- ----------------------------
INSERT INTO `customerinfo` VALUES ('189', 'KH001', 'ssy', '1', 'A', 'A', 'B', '沈阳', 'ssy', '13203256556', '0249568', '', '', '', '222.00', '15.00', '', null, '2018-12-17 14:05:13', null, '2018-12-17 14:05:13');
INSERT INTO `customerinfo` VALUES ('190', 'KH002', 'cs', '4', 'A', 'A', 'A', '大连', '测试', '15202365236', '15246253655', '', '', '', '322.00', '323.00', '', null, '2018-12-17 15:25:35', null, '2018-12-17 15:25:35');

-- ----------------------------
-- Table structure for `customertransports`
-- ----------------------------
DROP TABLE IF EXISTS `customertransports`;
CREATE TABLE `customertransports` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `CustomerId` int(11) DEFAULT NULL COMMENT '客户id',
  `StartAddress` varchar(200) DEFAULT NULL COMMENT '起运地',
  `Transports` varchar(200) DEFAULT NULL COMMENT '止运地点',
  `Distance` decimal(10,2) DEFAULT NULL COMMENT '运距',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='客户止运地';

-- ----------------------------
-- Records of customertransports
-- ----------------------------
INSERT INTO `customertransports` VALUES ('21', '189', null, '上海', '888.00', '', '', 'ssy', '2018-12-17 14:32:41', null, null);
INSERT INTO `customertransports` VALUES ('22', '189', null, '深圳', '999.00', '', '', 'ssy', '2018-12-17 14:32:55', null, null);
INSERT INTO `customertransports` VALUES ('23', '189', null, '四川', '777.00', '', '', 'ssy', '2018-12-17 14:33:10', null, null);
INSERT INTO `customertransports` VALUES ('24', '189', null, '湖南', '666.00', '', '', 'ssy', '2018-12-17 14:33:35', null, null);
INSERT INTO `customertransports` VALUES ('25', '189', null, '大连', '555.00', '', '', 'ssy', '2018-12-17 14:33:47', null, null);
INSERT INTO `customertransports` VALUES ('26', '189', null, '营口', '444.00', '', '', 'ssy', '2018-12-17 14:34:08', null, null);
INSERT INTO `customertransports` VALUES ('27', '190', null, '上海', '888.00', '', '', 'ssy', '2018-12-17 15:25:57', null, null);
INSERT INTO `customertransports` VALUES ('28', '190', null, '大连', '444.00', '', '', 'ssy', '2018-12-17 15:26:11', null, null);

-- ----------------------------
-- Table structure for `datadictionary`
-- ----------------------------
DROP TABLE IF EXISTS `datadictionary`;
CREATE TABLE `datadictionary` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(20) DEFAULT NULL COMMENT '分组',
  `Code` varchar(2) DEFAULT NULL COMMENT '索引',
  `Content` varchar(200) DEFAULT NULL COMMENT '内容',
  `Explain` varchar(200) DEFAULT NULL COMMENT '说明',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of datadictionary
-- ----------------------------
INSERT INTO `datadictionary` VALUES ('1', '1', '1', '沥青类成品', null, '', null, '2018-09-05 16:27:47', null, '2018-09-05 16:28:06');
INSERT INTO `datadictionary` VALUES ('2', '1', '2', '沥青类原料', null, '', null, '2018-09-05 16:27:48', null, '2018-09-05 16:28:03');
INSERT INTO `datadictionary` VALUES ('3', '1', '3', '非沥青类成品', null, '', null, '2018-09-05 16:27:50', null, '2018-09-05 16:28:01');
INSERT INTO `datadictionary` VALUES ('4', '1', '4', '非沥青类原料', null, '', null, '2018-09-05 16:27:53', null, '2018-09-05 16:27:59');
INSERT INTO `datadictionary` VALUES ('5', '1', '5', '耗品', null, '', null, '2018-09-05 16:27:55', null, '2018-09-05 16:27:57');
INSERT INTO `datadictionary` VALUES ('6', '2', '6', '仓库', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('7', '2', '7', '储罐', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('8', '3', '1', '电话拜访', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('9', '3', '2', '上门拜访', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('10', '4', '1', 'A', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('11', '4', '2', 'B', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('12', '4', '3', 'C', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('13', '4', '4', 'D', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('14', '4', '5', 'E', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('15', '5', '1', '好评', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('16', '5', '2', '其他', null, '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('17', 'xb', '0', '女', null, '', '郭燕', '2018-09-20 15:17:42', '郭燕', '2018-09-20 15:17:52');
INSERT INTO `datadictionary` VALUES ('18', 'xb', '1', '男', null, '', '郭燕', '2018-09-20 15:17:42', '郭燕', '2018-09-20 15:17:52');
INSERT INTO `datadictionary` VALUES ('19', 'Sname', '0', '辽宁瑞德', null, '', 'fx', '2018-09-25 10:28:49', 'fx', '2018-09-25 10:28:52');
INSERT INTO `datadictionary` VALUES ('20', 'htzt', '0', '执行中', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('21', 'htzt', '1', '未执行', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('22', 'htzt', '2', '完成', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('23', 'htzt', '3', '作废', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('24', 'htzt', '4', '未签订', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('25', 'htzt', '5', '其他', '合同状态', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('26', 'sl', '0', '5', '税率', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('27', 'sl', '1', '10', '税率', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('28', 'sl', '2', '15', '税率', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('29', 'sl', '3', '20', '税率', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('30', 'sl', '4', '30', '税率', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('31', 'ckdzt', '0', '正常', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('32', 'ckdzt', '1', '调拨', null, '', '郭燕', '2018-09-26 16:36:03', null, null);
INSERT INTO `datadictionary` VALUES ('33', 'ckdzt', '2', '退货', null, '', '郭燕', '2018-09-26 16:36:06', null, null);
INSERT INTO `datadictionary` VALUES ('34', 'ckdzt', '3', '空发', null, '', '郭燕', '2018-09-26 16:36:06', null, null);
INSERT INTO `datadictionary` VALUES ('35', 'yxj', '0', '正常', null, '', '郭燕', '2018-09-26 16:37:37', null, null);
INSERT INTO `datadictionary` VALUES ('36', 'yxj', '1', '优先', null, '', '郭燕', '2018-09-26 16:37:37', null, null);
INSERT INTO `datadictionary` VALUES ('37', 'jsfs', '0', '1T抵1T', '结算方式', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('38', 'jsfs', '1', '其他', '结算方式', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('39', 'hwjsqk', '0', '按我方出厂', '货物结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('40', 'hwjsqk', '1', '按对方实收', '货物结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('41', 'hwjsqk', '2', '其他\r\n其他', '货物结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('42', 'ysjsqk', '0', '我方承担运费', '运输结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('43', 'ysjsqk', '1', '客户自提', '运输结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('44', 'ysjsqk', '2', '我方垫付运费', '运输结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('45', 'ysjsqk', '3', '其他', '运输结算情况', '', null, null, null, null);
INSERT INTO `datadictionary` VALUES ('46', 'ddzt', '0', '执行中', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('47', 'ddzt', '1', '未执行', null, '', '郭燕', '2018-09-26 16:36:03', null, null);
INSERT INTO `datadictionary` VALUES ('48', 'ddzt', '2', '完成', null, '', '郭燕', '2018-09-26 16:36:06', null, null);
INSERT INTO `datadictionary` VALUES ('49', 'ddzt', '3', '作废', null, '', '郭燕', '2018-09-26 16:36:08', null, null);
INSERT INTO `datadictionary` VALUES ('50', 'ddzt', '4', '其他', null, '', '郭燕', '2018-09-26 16:37:37', null, null);
INSERT INTO `datadictionary` VALUES ('51', 'qtfhfs', '0', '邮寄', '其他发货方式', '', null, '2018-10-10 14:46:21', null, null);
INSERT INTO `datadictionary` VALUES ('52', 'qtfhfs', '1', '其他', '其他发货方式', '', null, '2018-10-10 14:46:23', null, null);
INSERT INTO `datadictionary` VALUES ('53', 'lx', '0', '正常', '类型', '', null, '2018-10-10 14:47:25', null, null);
INSERT INTO `datadictionary` VALUES ('54', 'lx', '1', '调拨', '类型', '', null, '2018-10-10 14:47:55', null, null);
INSERT INTO `datadictionary` VALUES ('55', 'jcxm', 'j1', '水泥细度', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('56', 'jcxm', 'j1', '水泥强度', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('57', 'jcxm', 'j2', '沥青含量', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('58', 'j1', '0', '10-40', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('59', 'j1', '1', '40-60', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('60', 'j2', '2', '60-80', null, '', '郭燕', '2018-09-26 16:36:00', null, null);
INSERT INTO `datadictionary` VALUES ('61', 'yushudan', '0', '出厂运输', '结算类别', '', '翟冠宇', '2018-10-15 14:01:31', null, null);
INSERT INTO `datadictionary` VALUES ('62', 'yushudan', '1', '入厂运输', '结算类别', '', '翟冠宇', '2018-10-15 14:02:30', null, null);
INSERT INTO `datadictionary` VALUES ('63', 'yushudan', '2', '未进厂运输', '结算类别', '', '翟冠宇', '2018-10-15 14:02:19', null, null);
INSERT INTO `datadictionary` VALUES ('64', 'weighingtype', '0', '普车', '称重类型', '', '王云杰', '2018-10-15 14:01:31', null, null);
INSERT INTO `datadictionary` VALUES ('65', 'weighingtype', '1', '大车', '称重类型', '', '王云杰', '2018-10-15 14:02:30', null, null);
INSERT INTO `datadictionary` VALUES ('66', 'weighingtype', '2', '超大车', '称重类型', '', '王云杰', '2018-10-15 14:02:19', null, null);
INSERT INTO `datadictionary` VALUES ('67', 'ckdzt', '4', '兑换', null, '', '郭燕', '2018-09-26 16:36:06', null, null);
INSERT INTO `datadictionary` VALUES ('68', 'ckdzt', '5', '兑换调拨', null, '', '郭燕', '2018-09-26 16:36:06', null, null);
INSERT INTO `datadictionary` VALUES ('69', 'jjzt', '0', '急', '紧急状态', '', '苑广涛', '2018-12-12 14:07:37', null, null);
INSERT INTO `datadictionary` VALUES ('70', 'jjzt', '1', '不急', '紧急状态', '', '苑广涛', '2018-12-12 14:08:26', null, null);
INSERT INTO `datadictionary` VALUES ('71', 'cgjb', '0', 'A', '采购级别', '', '苑广涛', '2018-12-12 14:09:41', null, null);
INSERT INTO `datadictionary` VALUES ('72', 'cgjb', '1', 'B', '采购级别', '', '苑广涛', '2018-12-12 14:09:44', null, null);
INSERT INTO `datadictionary` VALUES ('73', 'cgjb', '2', 'C', '采购级别', '', '苑广涛', '2018-12-12 14:09:46', null, null);
INSERT INTO `datadictionary` VALUES ('74', 'cgjb', '3', 'D', '采购级别', '', '苑广涛', '2018-12-12 14:09:48', null, null);
INSERT INTO `datadictionary` VALUES ('75', 'cgjb', '4', 'E', '采购级别', '', '苑广涛', '2018-12-12 14:09:50', null, null);

-- ----------------------------
-- Table structure for `exportmeasure`
-- ----------------------------
DROP TABLE IF EXISTS `exportmeasure`;
CREATE TABLE `exportmeasure` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Serial_ID` varchar(50) DEFAULT NULL COMMENT '流水号',
  `IDCode` varchar(50) DEFAULT NULL COMMENT 'ID卡编号',
  `WeighType` varchar(2) DEFAULT '1' COMMENT '称量类型:1 自动称重；2手动称重；3手工归档',
  `SalesOrderId` int(11) DEFAULT NULL COMMENT '销售订单id',
  `PlateNumber` varchar(20) DEFAULT NULL COMMENT '车牌号码',
  `Client` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `CustomerAlias` varchar(50) DEFAULT NULL COMMENT '客户别称',
  `Address` varchar(128) DEFAULT NULL COMMENT '送货地址',
  `Consignee` varchar(10) DEFAULT NULL COMMENT '收货人',
  `ConsigneePhone` varchar(15) DEFAULT NULL COMMENT '收货人电话',
  `ConsigneeAddress` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `ProductID` int(11) DEFAULT NULL COMMENT '物料名称',
  `LbsMaterialName` varchar(50) DEFAULT NULL COMMENT '磅单打印物料名称',
  `LbsOutputName` varchar(50) DEFAULT NULL COMMENT '磅单输出名称',
  `CartWeighType` varchar(2) DEFAULT NULL COMMENT '车辆称重类型（数据字典） 0:普通 1:大车 2:超大车',
  `DeliveryMan` varchar(10) DEFAULT NULL COMMENT '送货人',
  `DeliveryManPhone` varchar(15) DEFAULT NULL COMMENT '送货电话',
  `CarOwner` varchar(10) DEFAULT NULL COMMENT '车主',
  `CarOwnerTelephone` varchar(15) DEFAULT NULL COMMENT '车主电话',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `TestReportId` int(11) DEFAULT NULL COMMENT '检测报告id',
  `TechniqueSpecification` varchar(500) DEFAULT NULL COMMENT '技术说明',
  `TareWeight` decimal(10,2) DEFAULT NULL COMMENT '皮重',
  `TareOperator` varchar(10) DEFAULT NULL COMMENT '皮重司磅员',
  `TareMeasureTime` datetime DEFAULT NULL COMMENT '皮重称重时间',
  `GrossWeight` decimal(10,2) DEFAULT NULL COMMENT '毛重',
  `GrossOperator` varchar(10) DEFAULT NULL COMMENT '毛重司磅员',
  `GrossMeasureTime` datetime DEFAULT NULL COMMENT '毛重称重时间',
  `Suttle` decimal(10,2) DEFAULT NULL COMMENT '净重',
  `DispatchDate` datetime DEFAULT NULL COMMENT '调度时间',
  `IsPrint` bit(1) DEFAULT NULL COMMENT '是否打印',
  `IsManualFiling` varchar(10) DEFAULT NULL COMMENT '是否手工归档',
  `FilingPerson` varchar(10) DEFAULT NULL COMMENT '归档人',
  `FileCause` varchar(200) DEFAULT NULL COMMENT '手工归档原因',
  `FacingSlipNum` varchar(100) DEFAULT NULL COMMENT '封签号',
  `FacingSlipNum2` varchar(10) DEFAULT NULL COMMENT '封签号',
  `FacingSlipNum3` varchar(10) DEFAULT NULL COMMENT '封签号',
  `FacingSlipNum4` varchar(10) DEFAULT NULL COMMENT '封签号',
  `ReportNum` varchar(30) DEFAULT NULL COMMENT '报告编号',
  `CarType` varchar(2) DEFAULT NULL COMMENT '车辆类型（数据字典） 0小车,1大车',
  `ProductToGo` varchar(200) DEFAULT NULL COMMENT '货品去向',
  `Priority` varchar(2) DEFAULT '0' COMMENT '优先级 0正常, 1 优先',
  `AccreditPhone` varchar(20) DEFAULT NULL,
  `Accredit` bit(1) DEFAULT b'0' COMMENT '授权是否可以出库 0 未授权, 1授权',
  `Certigier` varchar(10) DEFAULT NULL COMMENT '授权人',
  `AccreditTime` datetime DEFAULT NULL COMMENT '授权人时间',
  `CancellationCause` varchar(200) DEFAULT NULL COMMENT '作废原因, 作废标识使用 有效标识Valid_Flag',
  `SaleCompanyName` varchar(50) DEFAULT NULL COMMENT '销售公司名称',
  `OutTypeMark` bit(1) DEFAULT NULL COMMENT '出库单类型标识 0：出库单 1：未入厂出库单',
  `Amount` decimal(10,2) DEFAULT NULL COMMENT '销售录入 结算数量',
  `GoodsPrice` decimal(10,2) DEFAULT NULL COMMENT '货品单价',
  `GoodsCost` decimal(10,2) DEFAULT NULL COMMENT '货品成本',
  `FinancePersonnel` varchar(10) DEFAULT NULL COMMENT '财务人员',
  `FinanceDate` datetime DEFAULT NULL COMMENT '财务更新日期',
  `LbsNumber` varchar(32) DEFAULT NULL COMMENT '磅单编号',
  `IsAllot` bit(1) DEFAULT NULL COMMENT '是否调拨',
  `AllotPersonnel` varchar(10) DEFAULT NULL COMMENT '调拨发起人',
  `AllotWeight` decimal(10,2) DEFAULT NULL COMMENT '调拨重量',
  `IsReturn` bit(1) DEFAULT NULL COMMENT '是否退货',
  `ReturnWeight` decimal(10,2) DEFAULT NULL COMMENT '退货重量',
  `ReturnPersonnel` varchar(10) DEFAULT NULL COMMENT '退货发起人',
  `ReturnReason` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `OutType` varchar(2) DEFAULT NULL COMMENT '出库单状态 0：正常 1：调拨 2：退货 3:空发 4:兑换 5.兑换时调拨',
  `IsEnterFactory` bit(1) DEFAULT NULL COMMENT '是否未入厂出库 0:是 1:否',
  `TransportListId` int(11) DEFAULT NULL COMMENT '运输单id',
  `PurchaseContractId` int(11) DEFAULT NULL COMMENT '采购合同id',
  `OilCardCode` varchar(32) DEFAULT NULL COMMENT '装油卡编号',
  `IsTesting` bit(1) DEFAULT NULL COMMENT '是否检测',
  `Yardman` varchar(20) DEFAULT NULL,
  `Upload` int(11) NOT NULL DEFAULT '0' COMMENT '上传标识',
  `ValidFlag` bit(1) NOT NULL DEFAULT b'1' COMMENT '有效标识,0无效,1有效',
  `FactoryTime` datetime DEFAULT NULL COMMENT '出厂时间',
  `UpdatePrice` decimal(10,2) DEFAULT NULL COMMENT '修改后价格',
  `OrderDetailedId` int(11) DEFAULT NULL COMMENT '销售订单明细流水号Id',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `EnterDate` datetime DEFAULT NULL,
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  `IsExamine` int(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COMMENT='调度出库单表';

-- ----------------------------
-- Records of exportmeasure
-- ----------------------------
INSERT INTO `exportmeasure` VALUES ('265', 'CKD2019010809403', null, '1', '106', '辽A23455', 'ssy', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '大连', '96', '水泥-规格型号2', null, '0', '冯', '15825452565', null, null, '', null, null, '100000.00', null, null, '123000.00', null, null, '23000.00', null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '辽宁瑞德', '', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '616', '0', null, '', null, '0', '', '2019-01-21 00:00:00', null, '246', '', '72', '2019-01-08 09:57:12', '2019-01-01 00:00:00', null, null, null);
INSERT INTO `exportmeasure` VALUES ('266', 'CKD2019010810404', null, '1', '116', '辽A23451', 'cs', '吉林省-长春市-cs', '大连', '测试', '15202365236', '', '95', '改性沥青-规格型号1', null, null, '刘', '15236523651', null, null, '', null, null, null, null, null, null, null, null, '120.00', null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '销售公司', '', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, '2', null, '', null, '0', '', null, null, '265', '', '72', '2019-01-08 10:40:15', null, null, null, null);
INSERT INTO `exportmeasure` VALUES ('267', 'CKD2019010810405', null, '1', '116', '辽A23455', 'cs', '吉林省-长春市-cs', '大连', '测试', '15202365236', '', '96', '水泥-规格型号2', null, '0', '冯', '15825452565', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '销售公司', '', '111.00', null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, '0', null, '', null, '0', '', '2019-01-21 00:00:00', null, '266', '', '72', '2019-01-08 10:41:52', null, null, null, null);
INSERT INTO `exportmeasure` VALUES ('268', 'CKD2019010909406', null, '1', '108', '辽G55551', 'ssy', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '四川', '95', '乳化剂-规格型号4', null, '0', '李', '13024565487', null, null, '', null, null, '100000.00', null, null, '120000.00', null, null, '20000.00', null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '辽宁瑞德', '', '20000.00', null, null, null, null, null, null, null, null, null, null, null, null, '5', null, null, '0', null, '', null, '0', '', '2019-01-22 00:00:00', null, '257', '', '72', '2019-01-09 09:27:25', '2019-01-30 00:00:00', null, null, null);
INSERT INTO `exportmeasure` VALUES ('269', 'CKD2019011410407', null, '1', '116', '辽A23452', 'cs', '吉林省-长春市-cs', '大连', '测试', '15202365236', '', '95', '改性沥青-规格型号1', null, '0', '张', '15425456552', null, null, '', null, null, '50000.00', null, null, '120000.00', null, null, '70000.00', null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '销售公司', '', '70000.00', null, null, null, null, null, null, null, null, null, '30.00', null, null, '2', null, null, '0', null, '', null, '0', '', '2019-01-23 00:00:00', null, '265', '', '72', '2019-01-14 10:42:32', '2019-01-30 00:00:00', '72', '2019-01-14 10:49:06', null);
INSERT INTO `exportmeasure` VALUES ('270', 'CKD2019011414408', null, '1', '116', '辽A23454', 'cs', '吉林省-长春市-cs', '大连', '测试', '15202365236', '', '95', '改性沥青-规格型号1', null, '0', '赵', '15842545254', null, null, '', null, null, '70000.00', null, null, '120000.00', null, null, '50000.00', null, null, null, null, null, '', null, null, null, null, null, null, '0', null, '', null, null, null, '销售公司', '', '50000.00', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, '', null, '0', '', '2019-01-15 00:00:00', null, '265', '', '72', '2019-01-14 14:20:02', '2019-01-27 00:00:00', null, null, null);

-- ----------------------------
-- Table structure for `fleetinfo`
-- ----------------------------
DROP TABLE IF EXISTS `fleetinfo`;
CREATE TABLE `fleetinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FleetNumber` varchar(32) DEFAULT NULL COMMENT '车队编号',
  `FleetName` varchar(50) DEFAULT NULL COMMENT '车队名称',
  `Contacts` varchar(20) DEFAULT NULL COMMENT '车队联系人',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='车队信息表';

-- ----------------------------
-- Records of fleetinfo
-- ----------------------------
INSERT INTO `fleetinfo` VALUES ('93', 'CD001', '车队名称1', '王先生', '15203256523', '', '', null, null, null, null);

-- ----------------------------
-- Table structure for `isusersession`
-- ----------------------------
DROP TABLE IF EXISTS `isusersession`;
CREATE TABLE `isusersession` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Creater` varchar(32) DEFAULT NULL,
  `CreateDate` datetime NOT NULL,
  `Reviser` varchar(32) DEFAULT NULL,
  `ReviserDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of isusersession
-- ----------------------------

-- ----------------------------
-- Table structure for `jurisdictioninfo`
-- ----------------------------
DROP TABLE IF EXISTS `jurisdictioninfo`;
CREATE TABLE `jurisdictioninfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleCode` int(11) DEFAULT NULL COMMENT '角色Code',
  `MenuId` int(11) DEFAULT NULL COMMENT '菜单id',
  `JurisdictionName` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限信息表';

-- ----------------------------
-- Records of jurisdictioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for `maproad`
-- ----------------------------
DROP TABLE IF EXISTS `maproad`;
CREATE TABLE `maproad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapName` varchar(255) DEFAULT NULL,
  `y` text NOT NULL,
  `x` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maproad
-- ----------------------------

-- ----------------------------
-- Table structure for `materielinfo`
-- ----------------------------
DROP TABLE IF EXISTS `materielinfo`;
CREATE TABLE `materielinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `MaterielNumber` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `MaterielNameId` int(11) DEFAULT NULL COMMENT '物料名称',
  `MaterielModelId` int(11) DEFAULT NULL COMMENT '规格型号',
  `MaterielType` varchar(2) DEFAULT NULL COMMENT '物料类别（数据字典） 0:沥青类成品 1:沥青类原料 2:非沥青类成品 3:非沥青类原料 4:耗品',
  `Unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `WarehouseId` int(11) DEFAULT NULL COMMENT '仓库id',
  `Remarks` varchar(500) DEFAULT NULL,
  `PrimeNumber` decimal(10,2) DEFAULT NULL COMMENT '初期数量',
  `TaxMoney` decimal(10,2) DEFAULT NULL COMMENT '期初含税金额',
  `NoTaxMoney` decimal(10,2) DEFAULT NULL COMMENT '期初不含税金额',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='物料信息表';

-- ----------------------------
-- Records of materielinfo
-- ----------------------------
INSERT INTO `materielinfo` VALUES ('95', 'WL001', '104', '64', '1', '公司', '106', '', '56.00', '5600.00', '5000.00', '', null, '2018-12-17 14:10:26', null, '2018-12-17 14:10:26');
INSERT INTO `materielinfo` VALUES ('96', 'WL002', '105', '65', '2', '公司', '107', '', '45.00', '4500.00', '4000.00', '', null, '2018-12-17 14:11:13', null, '2018-12-17 14:11:13');
INSERT INTO `materielinfo` VALUES ('97', 'WL003', '106', '66', '2', '公司', '108', '', '85.00', '8500.00', '8000.00', '', null, '2018-12-17 14:13:18', null, '2018-12-17 14:13:18');
INSERT INTO `materielinfo` VALUES ('98', 'WL004', '107', '67', '3', '公司', '108', '', '85.00', '5600.00', '5000.00', '', null, '2018-12-17 14:13:51', null, '2018-12-17 14:13:51');
INSERT INTO `materielinfo` VALUES ('99', 'WL005', '108', '68', '3', '公司', '109', '', '56.00', '5600.00', '4000.00', '', null, '2018-12-17 14:14:29', null, '2018-12-17 14:14:29');
INSERT INTO `materielinfo` VALUES ('100', 'WL006', '109', '69', '5', '公司', '110', '', '45.00', '5600.00', '8000.00', '', null, '2018-12-17 14:16:55', null, '2018-12-17 14:16:55');

-- ----------------------------
-- Table structure for `materielmodelinfo`
-- ----------------------------
DROP TABLE IF EXISTS `materielmodelinfo`;
CREATE TABLE `materielmodelinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `MaterielModel` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='物料型号表';

-- ----------------------------
-- Records of materielmodelinfo
-- ----------------------------
INSERT INTO `materielmodelinfo` VALUES ('64', '规格型号1', '', '2', '2018-12-17 14:10:26', '2', '2018-12-17 14:10:26');
INSERT INTO `materielmodelinfo` VALUES ('65', '规格型号2', '', '2', '2018-12-17 14:11:13', '2', '2018-12-17 14:11:13');
INSERT INTO `materielmodelinfo` VALUES ('66', '规格型号3', '', '2', '2018-12-17 14:13:18', '2', '2018-12-17 14:13:18');
INSERT INTO `materielmodelinfo` VALUES ('67', '规格型号4', '', '2', '2018-12-17 14:13:51', '2', '2018-12-17 14:13:51');
INSERT INTO `materielmodelinfo` VALUES ('68', '规格型号5', '', '2', '2018-12-17 14:14:29', '2', '2018-12-17 14:14:29');
INSERT INTO `materielmodelinfo` VALUES ('69', '规格型号6', '', '2', '2018-12-17 14:16:55', '2', '2018-12-17 14:16:55');

-- ----------------------------
-- Table structure for `materielnameinfo`
-- ----------------------------
DROP TABLE IF EXISTS `materielnameinfo`;
CREATE TABLE `materielnameinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `MaterielName` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='物料名称表';

-- ----------------------------
-- Records of materielnameinfo
-- ----------------------------
INSERT INTO `materielnameinfo` VALUES ('104', '改性沥青', '', '2', '2018-12-17 14:10:26', '2', '2018-12-17 14:10:26');
INSERT INTO `materielnameinfo` VALUES ('105', '水泥', '', '2', '2018-12-17 14:11:13', '2', '2018-12-17 14:11:13');
INSERT INTO `materielnameinfo` VALUES ('106', '乳化沥青', '', '2', '2018-12-17 14:13:18', '2', '2018-12-17 14:13:18');
INSERT INTO `materielnameinfo` VALUES ('107', '乳化剂', '', '2', '2018-12-17 14:13:51', '2', '2018-12-17 14:13:51');
INSERT INTO `materielnameinfo` VALUES ('108', '混凝土', '', '2', '2018-12-17 14:14:29', '2', '2018-12-17 14:14:29');
INSERT INTO `materielnameinfo` VALUES ('109', '稳定土', '', '2', '2018-12-17 14:16:55', '2', '2018-12-17 14:16:55');

-- ----------------------------
-- Table structure for `noweighoutwarehouse`
-- ----------------------------
DROP TABLE IF EXISTS `noweighoutwarehouse`;
CREATE TABLE `noweighoutwarehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL COMMENT '流水号',
  `SalesOrderId` int(11) DEFAULT NULL COMMENT '销售订单id',
  `OrderDetailedNumber` int(11) DEFAULT NULL COMMENT '销售订单明细id',
  `AllotWeight` decimal(10,2) DEFAULT NULL COMMENT '调拨重量',
  `SaleNumber` decimal(10,2) DEFAULT NULL COMMENT '销售数量',
  `SalePrice` decimal(10,2) DEFAULT NULL COMMENT '销售单价',
  `SaleMoney` decimal(18,2) DEFAULT NULL COMMENT '销售金额',
  `Client` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `CustomerAlias` varchar(50) DEFAULT NULL COMMENT '客户别称',
  `TaxRate` varchar(2) DEFAULT NULL COMMENT '税率（数据字典）',
  `Address` varchar(128) DEFAULT NULL COMMENT '送货地址',
  `Consignee` varchar(10) DEFAULT NULL COMMENT '收货人',
  `ConsigneePhone` varchar(15) DEFAULT NULL COMMENT '收货电话',
  `ConsigneeAddress` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `MaterielInfoId` int(11) DEFAULT NULL COMMENT '物料id',
  `TransportBalance` varchar(2) DEFAULT NULL COMMENT '运输结算情况（数据字典） 0:我方承担运费 1:客户自提 2:我方垫付运费 3:其他',
  `IsCarryOff` bit(1) DEFAULT NULL COMMENT '是否随车带走',
  `CarName` varchar(20) DEFAULT NULL COMMENT '车牌号码',
  `Deliverer` varchar(10) DEFAULT NULL COMMENT '送货人',
  `DeliveryPhone` varchar(15) DEFAULT NULL COMMENT '送货电话',
  `CarOwner` varchar(10) DEFAULT NULL COMMENT '车主',
  `CarOwnerTelephone` varchar(15) DEFAULT NULL COMMENT '车主电话',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsTesting` bit(1) DEFAULT NULL COMMENT '是否检测',
  `DispatchOutWarehouseId` int(11) DEFAULT NULL COMMENT '出库单id',
  `IsSelfLifting` bit(1) DEFAULT NULL COMMENT '是否客户自提',
  `CustomerCarName` varchar(20) DEFAULT NULL COMMENT '客户车辆信息',
  `OtherDelivery` varchar(2) DEFAULT NULL COMMENT '其他发货方式（数据字典） 0：邮寄 1：其他',
  `PostNumber` varchar(32) DEFAULT NULL COMMENT '邮单编号',
  `OtherRemarks` varchar(200) DEFAULT NULL COMMENT '其他备注',
  `State` bit(1) DEFAULT NULL COMMENT '是否空发 0:是 1:否',
  `Type` varchar(2) DEFAULT NULL COMMENT '类型（数据字典） 0:正常 1:调拨',
  `ValidFlag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `SettlementWeight` decimal(10,2) DEFAULT NULL COMMENT '结算重量',
  `StartAddress` varchar(200) DEFAULT NULL COMMENT '起运地',
  `EndAddress` varchar(200) DEFAULT NULL COMMENT '止运地',
  `Distance` decimal(10,2) DEFAULT NULL COMMENT '运距',
  `FreightPrice` decimal(10,2) DEFAULT NULL COMMENT '运费单价',
  `FreightMoney` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
  `EscortPrice` decimal(10,2) DEFAULT NULL COMMENT '押车单价',
  `EscortDays` int(11) DEFAULT NULL COMMENT '押车天数',
  `EscortMoney` decimal(10,2) DEFAULT NULL COMMENT '押车金额',
  `UpdatePrice` decimal(10,2) DEFAULT NULL COMMENT '修改后价格',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  `IsExamine` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='未称重出库单';

-- ----------------------------
-- Records of noweighoutwarehouse
-- ----------------------------
INSERT INTO `noweighoutwarehouse` VALUES ('107', 'WCZ20190108325', '106', '245', '0.01', null, null, null, 'ssy', '辽宁省-沈阳市-ssy', null, '沈阳', '12', '12', '上海', '96', '0', null, '辽A23455', '冯', '15825452565', null, null, '12', '', '265', null, null, null, null, null, null, '1', '', '12.00', null, null, '12.00', '12.00', '144.00', '12.00', '12', '144.00', null, '', '72', '2019-01-08 09:57:12', null, null, null);
INSERT INTO `noweighoutwarehouse` VALUES ('108', 'WCZ20190109326', '108', '254', '125.00', null, null, null, 'ssy', '辽宁省-沈阳市-ssy', null, '沈阳', '12', '12', '深圳', '95', '0', null, '辽G55551', '李', '13024565487', null, null, '12', '', '268', null, null, null, null, null, null, '1', '', '100.00', null, null, '10.00', '10.00', '100.00', '12.00', '12', '144.00', null, '', '72', '2019-01-09 09:27:25', null, null, null);

-- ----------------------------
-- Table structure for `outemptyrelation`
-- ----------------------------
DROP TABLE IF EXISTS `outemptyrelation`;
CREATE TABLE `outemptyrelation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `OutWarehouseId` varchar(100) DEFAULT NULL COMMENT '出库单流水号',
  `EmptyCarId` varchar(100) DEFAULT NULL COMMENT '空发单id',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='出库空发关联表';

-- ----------------------------
-- Records of outemptyrelation
-- ----------------------------
INSERT INTO `outemptyrelation` VALUES ('2', 'CKD2019010809403', 'CKD2019010810405', '', '72', '2019-01-08 10:41:52', null, null);

-- ----------------------------
-- Table structure for `prefix`
-- ----------------------------
DROP TABLE IF EXISTS `prefix`;
CREATE TABLE `prefix` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Distinguish` varchar(5) DEFAULT NULL COMMENT '区分',
  `AllPrefix` varchar(10) DEFAULT NULL COMMENT '前缀',
  `Year` varchar(5) DEFAULT NULL COMMENT '年',
  `Month` varchar(2) DEFAULT NULL COMMENT '月',
  `Day` varchar(2) DEFAULT NULL COMMENT '日',
  `Hour` varchar(2) DEFAULT NULL COMMENT '时',
  `Branch` varchar(2) DEFAULT NULL COMMENT '分',
  `Second` varchar(2) DEFAULT NULL COMMENT '秒',
  `FlowNumber` varchar(10) DEFAULT NULL COMMENT '流水号',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='前缀表';

-- ----------------------------
-- Records of prefix
-- ----------------------------
INSERT INTO `prefix` VALUES ('70', 'HT', 'HT', '0', '0', '0', '1', '1', '1', '091', '', '53', '2018-10-24 14:43:30', '52', '2018-12-21 15:59:52');
INSERT INTO `prefix` VALUES ('71', 'DD', 'DT', '0', '0', '0', '1', '1', '1', '213', '', '53', '2018-10-24 14:43:30', '52', '2019-01-16 14:31:42');
INSERT INTO `prefix` VALUES ('72', 'CK', 'CKD', '0', '0', '0', '0', '1', '1', '409', '', '53', '2018-10-24 14:43:30', '52', '2019-01-14 14:20:02');
INSERT INTO `prefix` VALUES ('73', 'RK', 'RKD', '0', '0', '0', '1', '1', '1', '102', '', '53', '2018-10-24 14:43:30', '52', '2019-01-14 10:49:06');
INSERT INTO `prefix` VALUES ('74', 'WCZ', 'WCZ', '0', '0', '0', '1', '1', '1', '327', '', '53', '2018-10-24 14:43:30', '52', '2019-01-09 09:27:24');
INSERT INTO `prefix` VALUES ('75', 'YS', 'YS', '0', '0', '0', '1', '1', '1', '724', '', '53', '2018-10-24 14:43:30', '52', '2019-01-16 13:49:28');
INSERT INTO `prefix` VALUES ('76', 'DDMX', 'DDMX', '0', '0', '0', '1', '1', '1', '526', '', '53', '2018-10-24 14:43:30', '52', '2019-01-16 14:47:16');
INSERT INTO `prefix` VALUES ('77', 'CGHT', 'CGHT', '0', '0', '0', '1', '1', '1', '048', '', '53', '2018-10-24 14:43:30', '52', '2019-01-16 10:54:09');
INSERT INTO `prefix` VALUES ('78', 'CGMX', 'CGMX', '0', '0', '0', '1', '1', '1', '156', '', '53', '2018-12-14 13:46:32', '52', '2019-01-16 10:43:32');
INSERT INTO `prefix` VALUES ('79', 'CGSQ', 'CGSQ', '0', '0', '0', '1', '1', '1', '3', '', '53', '2018-12-17 15:36:35', '52', '2018-12-21 11:11:41');

-- ----------------------------
-- Table structure for `provinceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `provinceinfo`;
CREATE TABLE `provinceinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Province` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='省信息表';

-- ----------------------------
-- Records of provinceinfo
-- ----------------------------
INSERT INTO `provinceinfo` VALUES ('1', '辽宁省', '', null, '2018-10-24 13:59:42', null, null);
INSERT INTO `provinceinfo` VALUES ('2', '吉林省', '', null, '2018-10-24 14:05:24', null, null);
INSERT INTO `provinceinfo` VALUES ('3', '黑龙江省', '', null, '2018-10-24 14:06:05', null, null);

-- ----------------------------
-- Table structure for `purchasecontract`
-- ----------------------------
DROP TABLE IF EXISTS `purchasecontract`;
CREATE TABLE `purchasecontract` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL COMMENT '单据编号',
  `date` datetime DEFAULT NULL COMMENT '日期',
  `PurchaseRequisitionId` int(11) DEFAULT NULL COMMENT '采购申请单编号',
  `SupplierId` int(11) DEFAULT NULL COMMENT '供应商id',
  `ContractState` varchar(2) DEFAULT NULL COMMENT '合同状态（数据字典） 0:执行中 1:未执行 2:完成 3:作废 4:未鉴定 5:其他',
  `ContractRoute` varchar(500) DEFAULT NULL COMMENT '合同附件路径',
  `FreightBalance` varchar(2) DEFAULT NULL COMMENT '运费结算情况（数据字典）0:我方 1:对方 2:对方垫付',
  `ExpectMoney` decimal(10,2) DEFAULT NULL COMMENT '预计运费金额',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `CancellationCause` varchar(200) DEFAULT NULL COMMENT '作废原因',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='采购合同';

-- ----------------------------
-- Records of purchasecontract
-- ----------------------------
INSERT INTO `purchasecontract` VALUES ('1', 'CGHT20181217001', '2018-12-12 15:48:07', null, '91', '0', null, '0', '323.00', '', null, '', null, '2018-12-17 16:04:00', null, '2018-12-17 16:05:43');
INSERT INTO `purchasecontract` VALUES ('2', 'CGHT20181217002', '2018-12-12 15:54:27', null, '91', '0', null, '0', '43.00', '', '', '', null, '2018-12-17 16:06:40', null, '2019-01-16 10:54:08');
INSERT INTO `purchasecontract` VALUES ('3', 'CGHT20181219004', '2018-12-19 13:45:53', null, '91', '2', null, '2', '0.00', '', null, '', null, '2018-12-19 13:59:20', null, '2018-12-19 14:01:19');
INSERT INTO `purchasecontract` VALUES ('4', 'CGHT20181221005', '2018-12-20 10:36:41', null, '91', '0', null, '1', '0.00', '', '', '', null, '2018-12-21 10:48:49', null, '2018-12-21 10:53:43');
INSERT INTO `purchasecontract` VALUES ('5', 'CGHT20181221008', '2018-12-14 10:42:18', null, '91', '1', null, '1', '0.00', '', '', '', null, '2018-12-21 10:54:17', null, '2018-12-21 10:55:01');
INSERT INTO `purchasecontract` VALUES ('6', 'CGHT20181221021', '2018-11-08 11:16:00', null, '91', '0', null, '0', '423.00', '', null, '', null, '2018-12-21 11:27:58', null, '2019-01-16 09:49:43');
INSERT INTO `purchasecontract` VALUES ('7', 'CGHT20190116022', '2019-01-03 09:49:52', null, '91', '0', null, '0', '12.00', '12', null, '', null, '2019-01-16 09:50:46', null, '2019-01-16 09:51:08');
INSERT INTO `purchasecontract` VALUES ('8', 'CGHT20190116023', '2019-01-09 09:51:21', null, '91', '1', null, '0', '12.00', '12', null, '', null, '2019-01-16 09:51:51', null, '2019-01-16 09:52:12');
INSERT INTO `purchasecontract` VALUES ('9', 'CGHT20190116024', '2018-12-01 09:52:46', null, '91', '0', null, '0', '12.00', '12', '', '', null, '2019-01-16 09:53:15', null, '2019-01-16 10:53:41');

-- ----------------------------
-- Table structure for `purchaseorderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `purchaseorderinfo`;
CREATE TABLE `purchaseorderinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL,
  `PurchaseOrderId` int(11) DEFAULT NULL COMMENT '采购订单id',
  `PurchaseRequisitionId` int(11) DEFAULT NULL COMMENT '采购申请单编号id',
  `MaterielInfoId` int(11) DEFAULT NULL COMMENT '物料id',
  `Number` decimal(10,2) DEFAULT NULL COMMENT '预计数量',
  `ArrivalDate` datetime DEFAULT NULL COMMENT '预计到货时间',
  `UnitPrice` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `Money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `TaxRate` varchar(2) DEFAULT NULL COMMENT '税率',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='采购订单明细';

-- ----------------------------
-- Records of purchaseorderinfo
-- ----------------------------
INSERT INTO `purchaseorderinfo` VALUES ('1', 'CGMX201812172', '1', '1', '98', '434.00', '2018-12-17 00:00:00', '43.00', '20528.20', '1', '', '', null, '2018-12-17 16:04:00', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('2', 'CGMX201812175', '1', '2', '97', '4443.00', '2018-12-17 00:00:00', '32.00', '170611.20', '3', '', '', null, '2018-12-17 16:04:00', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('3', 'CGMX201812175', '1', '2', '97', '4443.00', '2018-12-17 00:00:00', '32.00', '170611.20', '3', '', '', null, '2018-12-17 16:04:00', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('4', 'CGMX2018121714', '2', '1', '98', '434.00', '2018-12-17 00:00:00', '43.00', '20528.20', '1', '', '', null, '2018-12-17 16:06:40', null, '2018-12-21 10:51:58');
INSERT INTO `purchaseorderinfo` VALUES ('5', 'CGMX2018121718', '2', '2', '97', '4443.00', '2018-12-17 00:00:00', '23.00', '117517.35', '2', '', '', null, '2018-12-17 16:07:26', null, '2018-12-21 10:54:36');
INSERT INTO `purchaseorderinfo` VALUES ('6', 'CGMX2018121932', '3', '1', '98', '434.00', '2018-12-17 00:00:00', '20.00', '9548.00', '1', '', '', null, '2018-12-19 13:59:20', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('7', 'CGMX2018122148', '4', '1', '98', '434.00', '2018-12-17 00:00:00', '23.00', '10481.10', '0', '', '', null, '2018-12-21 10:48:49', null, '2018-12-21 10:52:59');
INSERT INTO `purchaseorderinfo` VALUES ('8', 'CGMX2018122158', '2', '1', '98', '434.00', '2018-12-17 00:00:00', '34.00', '17707.20', '3', '', '', null, '2018-12-21 10:53:59', null, '2019-01-16 10:54:08');
INSERT INTO `purchaseorderinfo` VALUES ('9', 'CGMX2018122159', '5', '2', '97', '4443.00', '2018-12-17 00:00:00', '3243.00', '15849513.90', '1', '', '', null, '2018-12-21 10:54:17', null, '2018-12-21 10:54:48');
INSERT INTO `purchaseorderinfo` VALUES ('10', 'CGMX2018122163', '2', '2', '97', '4443.00', '2018-12-17 00:00:00', '2.00', '8886.00', '', '', '', null, '2018-12-21 10:55:15', null, '2018-12-21 11:02:16');
INSERT INTO `purchaseorderinfo` VALUES ('11', 'CGMX2018122172', '2', '2', '97', '4443.00', '2018-12-17 00:00:00', '45.00', '199935.00', '', '', '', null, '2018-12-21 11:03:42', null, '2019-01-16 10:54:08');
INSERT INTO `purchaseorderinfo` VALUES ('12', 'CGMX2018122173', '2', '3', '98', '23.00', '2018-12-19 00:00:00', '12.00', '303.60', '1', '', '', null, '2018-12-21 11:12:14', null, '2018-12-21 11:27:35');
INSERT INTO `purchaseorderinfo` VALUES ('13', 'CGMX2018122178', '6', '3', '98', '23.00', '2018-12-19 00:00:00', '342.00', '8652.60', '1', '', '', null, '2018-12-21 11:27:58', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('14', 'CGMX20190116134', '7', '3', '98', '23.00', '2018-12-19 00:00:00', '12.00', '289.80', '0', '', '', null, '2019-01-16 09:50:46', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('15', 'CGMX20190116138', '8', '3', '98', '23.00', '2018-12-19 00:00:00', '12.00', '276.00', '', '', '', null, '2019-01-16 09:51:51', null, null);
INSERT INTO `purchaseorderinfo` VALUES ('16', 'CGMX20190116146', '9', '3', '98', '23.00', '2018-12-19 00:00:00', '12.00', '276.00', '', '', '', null, '2019-01-16 09:53:15', null, '2019-01-16 10:53:41');

-- ----------------------------
-- Table structure for `purchaserequisition`
-- ----------------------------
DROP TABLE IF EXISTS `purchaserequisition`;
CREATE TABLE `purchaserequisition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL,
  `ApplyDate` datetime DEFAULT NULL,
  `Applicant` varchar(20) DEFAULT NULL,
  `ApplyDepartment` varchar(20) DEFAULT NULL,
  `GoodsName` int(11) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `ApplyNumber` decimal(10,2) DEFAULT NULL,
  `Purpose` varchar(50) DEFAULT NULL,
  `IsUrgentState` bit(1) DEFAULT NULL COMMENT '紧急状态 0:急 1:不急',
  `EstimatedTime` datetime DEFAULT NULL,
  `ApplicantRemarks` varchar(200) DEFAULT NULL,
  `EntryClerkApplicant` varchar(20) DEFAULT NULL,
  `PurchaseLevel` varchar(2) DEFAULT NULL COMMENT '物料采购级别 0:耗品 1:非耗品',
  `ConsumablesShow` varchar(50) DEFAULT NULL,
  `Inquirer` varchar(20) DEFAULT NULL,
  `Inquirer1` varchar(32) DEFAULT NULL,
  `Univalent1` decimal(10,2) DEFAULT NULL,
  `Money1` decimal(18,2) DEFAULT NULL,
  `OtherInfo1` varchar(200) DEFAULT NULL,
  `Assess1` varchar(200) DEFAULT NULL,
  `Inquirer2` varchar(32) DEFAULT NULL,
  `Univalent2` decimal(10,2) DEFAULT NULL,
  `Money2` decimal(18,2) DEFAULT NULL,
  `OtherInfo2` varchar(200) DEFAULT NULL,
  `Assess2` varchar(200) DEFAULT NULL,
  `Inquirer3` varchar(32) DEFAULT NULL,
  `Univalent3` decimal(10,2) DEFAULT NULL,
  `Money3` decimal(18,2) DEFAULT NULL,
  `OtherInfo3` varchar(200) DEFAULT NULL,
  `Assess3` varchar(200) DEFAULT NULL,
  `BuyerRemarks` varchar(200) DEFAULT NULL,
  `EntryClerkPurchaser` varchar(20) DEFAULT NULL,
  `EntryClerkDate` datetime DEFAULT NULL,
  `ApplySign` bit(1) DEFAULT NULL COMMENT '申请采购合同标识',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='采购申请单';

-- ----------------------------
-- Records of purchaserequisition
-- ----------------------------
INSERT INTO `purchaserequisition` VALUES ('1', 'CGSQ201812170', '2018-12-17 00:00:00', 'ssy', '采购', '98', '67', '434.00', null, '', '2018-12-17 00:00:00', null, 'ssy', '1', null, null, '超市', '25.00', '10850.00', '测试', '', '市场', '23.00', '9982.00', '测试', '', '原厂家', '20.00', '8680.00', '测试', '', '', 'ssy', '2018-12-17 00:00:00', '', '', '51', '2018-12-17 15:39:20', null, null);
INSERT INTO `purchaserequisition` VALUES ('2', 'CGSQ201812171', '2018-12-17 00:00:00', 'ssy', '采购', '97', '66', '4443.00', null, '', '2018-12-20 00:00:00', null, 'ssy', '0', null, null, '超市', '54.00', '239922.00', '测试', '', '市场', '40.00', '177720.00', '测试', '', '原厂家', '30.00', '133290.00', '测试', '', '', 'ssy', '2018-12-17 00:00:00', '', '', '51', '2018-12-17 15:40:12', null, null);
INSERT INTO `purchaserequisition` VALUES ('3', 'CGSQ201812212', '2018-12-19 00:00:00', '23', '23', '98', '67', '23.00', null, '', '2018-12-27 00:00:00', null, '23', '0', null, null, '', '0.00', '0.00', '', '', '', '0.00', '0.00', '', '', '', '0.00', '0.00', '', '', '23', '23', '2018-12-27 00:00:00', '', '', '51', '2018-12-21 11:11:41', null, null);

-- ----------------------------
-- Table structure for `salecompany`
-- ----------------------------
DROP TABLE IF EXISTS `salecompany`;
CREATE TABLE `salecompany` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `CompanyNumber` varchar(32) DEFAULT NULL COMMENT '销售公司编号',
  `CompanyName` varchar(50) DEFAULT NULL COMMENT '销售公司名称',
  `CompanyAddress` varchar(200) DEFAULT NULL COMMENT '销售公司地址',
  `Contacts` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='客户止运地';

-- ----------------------------
-- Records of salecompany
-- ----------------------------
INSERT INTO `salecompany` VALUES ('16', 'XS001', '辽宁瑞德', '锦州', '张', '15202365236', '', '', '51', '2018-12-17 15:27:20', null, null);
INSERT INTO `salecompany` VALUES ('17', 'XS002', '销售公司', '沈阳', '王', '15402365236', '', '', '51', '2018-12-17 15:28:06', null, null);

-- ----------------------------
-- Table structure for `salesorder`
-- ----------------------------
DROP TABLE IF EXISTS `salesorder`;
CREATE TABLE `salesorder` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `ContractId` int(11) DEFAULT NULL COMMENT '合同id',
  `CustomerId` int(11) DEFAULT NULL COMMENT '客户id',
  `CustomerAlias` varchar(50) DEFAULT NULL COMMENT '客户别称',
  `Address` varchar(128) DEFAULT NULL COMMENT '送货地址',
  `Contacts` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `OrderState` varchar(2) DEFAULT NULL COMMENT '订单状态（数据字典）',
  `CancellationCause` varchar(200) DEFAULT NULL COMMENT '作废原因',
  `SalesCompanyId` int(11) DEFAULT NULL COMMENT '销售公司id',
  `UserInfoId` int(11) DEFAULT NULL COMMENT '销售员id',
  `SealNumber1` int(11) DEFAULT NULL COMMENT '出厂封签号1',
  `SealNumber2` int(11) DEFAULT NULL COMMENT '出厂封签号2',
  `SealNumber3` int(11) DEFAULT NULL COMMENT '出厂封签号3',
  `SealNumber4` int(11) DEFAULT NULL COMMENT '出厂封签号4',
  `IsActualDelivery` bit(1) DEFAULT NULL COMMENT '是否实际发货',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='销售订单表';

-- ----------------------------
-- Records of salesorder
-- ----------------------------
INSERT INTO `salesorder` VALUES ('106', 'DT20181217205', '89', '189', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '0', null, '16', '51', null, null, null, null, null, '', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorder` VALUES ('107', 'DT20181217206', '90', '190', '吉林省-长春市-cs', '大连', '测试', '15202365236', '0', '', '17', '51', null, null, null, null, null, '', '', '51', '2018-12-17 16:11:21', '51', '2018-12-21 11:08:41');
INSERT INTO `salesorder` VALUES ('108', 'DT20181217207', '89', '189', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '1', '', '16', '51', null, null, null, null, null, '', '', '51', '2018-12-17 16:13:43', '51', '2018-12-19 16:40:57');
INSERT INTO `salesorder` VALUES ('113', 'DT20181224208', '90', '192', '辽宁省-大连市-cs', '中山区', '刘', '15420265522', '1', null, '19', '51', null, null, null, null, null, '', '', '51', '2018-12-24 15:13:17', '72', '2019-01-02 15:57:03');
INSERT INTO `salesorder` VALUES ('114', 'DT20190102208', '91', '189', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '0', null, '16', '51', null, null, null, null, null, '', '', '72', '2019-01-02 15:56:33', null, null);
INSERT INTO `salesorder` VALUES ('115', 'DT20190102209', '90', '190', '吉林省-长春市-cs', '大连', '测试', '15202365236', '1', null, '17', '51', null, null, null, null, null, '', '', '72', '2019-01-02 16:01:09', null, null);
INSERT INTO `salesorder` VALUES ('116', 'DT20190104210', '90', '190', '吉林省-长春市-cs', '大连', '测试', '15202365236', '0', '', '17', '51', null, null, null, null, null, '', '', '72', '2019-01-04 08:46:01', '72', '2019-01-04 08:47:51');
INSERT INTO `salesorder` VALUES ('117', 'DT20190104211', '91', '189', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '2', '', '16', '51', null, null, null, null, null, '', '', '72', '2019-01-04 08:49:25', '72', '2019-01-16 15:04:08');
INSERT INTO `salesorder` VALUES ('118', 'DT20190116212', '91', '189', '辽宁省-沈阳市-ssy', '沈阳', 'ssy', '13203256556', '1', null, '16', '51', null, null, null, null, null, '', '', '72', '2019-01-16 14:31:42', null, null);

-- ----------------------------
-- Table structure for `salesorderdemo`
-- ----------------------------
DROP TABLE IF EXISTS `salesorderdemo`;
CREATE TABLE `salesorderdemo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(255) DEFAULT NULL,
  `dType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesorderdemo
-- ----------------------------
INSERT INTO `salesorderdemo` VALUES ('1', 'a2322', '0');
INSERT INTO `salesorderdemo` VALUES ('2', '订单2', '2');
INSERT INTO `salesorderdemo` VALUES ('3', '123', '3');
INSERT INTO `salesorderdemo` VALUES ('4', '12333', '3');
INSERT INTO `salesorderdemo` VALUES ('5', '1231231231a2', '0');
INSERT INTO `salesorderdemo` VALUES ('6', '123123221231bh', '2');
INSERT INTO `salesorderdemo` VALUES ('7', '123123221231bh33', '2');
INSERT INTO `salesorderdemo` VALUES ('8', '13123', '2');
INSERT INTO `salesorderdemo` VALUES ('9', 'oooooo', '3');
INSERT INTO `salesorderdemo` VALUES ('10', 'oooooo1', '3');
INSERT INTO `salesorderdemo` VALUES ('11', 'aasfbashfbasj ', '0');
INSERT INTO `salesorderdemo` VALUES ('12', '1231231231a2222211', '0');
INSERT INTO `salesorderdemo` VALUES ('13', '订单56', '0');
INSERT INTO `salesorderdemo` VALUES ('14', '订单99', '2');
INSERT INTO `salesorderdemo` VALUES ('15', '1222', '1');

-- ----------------------------
-- Table structure for `salesorderdetailed`
-- ----------------------------
DROP TABLE IF EXISTS `salesorderdetailed`;
CREATE TABLE `salesorderdetailed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderDetailedNumber` varchar(32) DEFAULT NULL COMMENT '销售订单明细流水号',
  `SalesOrderId` int(11) DEFAULT NULL COMMENT '销售订单id',
  `MaterielId` int(11) DEFAULT NULL COMMENT '物料id',
  `ListModel` varchar(50) DEFAULT NULL COMMENT '磅单显示产品名称-型号',
  `UnitPrice` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `SaleNumber` decimal(10,2) DEFAULT NULL COMMENT '销售数量',
  `SalePrice` decimal(10,2) DEFAULT NULL COMMENT '销售单价',
  `SaleMoney` decimal(18,2) DEFAULT NULL COMMENT '销售金额',
  `TransportBalance` varchar(2) DEFAULT NULL,
  `ExpectedDeliveryDate` datetime DEFAULT NULL COMMENT '预计发货时间',
  `TaxRate` varchar(2) DEFAULT NULL COMMENT '税率',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsCancel` bit(1) DEFAULT NULL COMMENT '是否作废',
  `CancelPerson` varchar(10) DEFAULT NULL COMMENT '作废人',
  `CancelDate` datetime DEFAULT NULL COMMENT '作废时间',
  `IsExchange` bit(1) DEFAULT NULL COMMENT '是否兑换',
  `Proportion` decimal(10,2) DEFAULT NULL COMMENT '兑换比例',
  `ExchangeWeight` decimal(10,2) DEFAULT NULL COMMENT '兑换重量',
  `IsActualDelivery` bit(1) DEFAULT NULL COMMENT '是否实际发货',
  `StartAddress` varchar(200) DEFAULT NULL COMMENT '起运地',
  `Transports` varchar(200) DEFAULT NULL COMMENT '止运地点',
  `Distance` decimal(10,2) DEFAULT NULL COMMENT '运距',
  `ExchangeMaterielId` int(11) DEFAULT NULL COMMENT '兑换后物料id',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COMMENT='销售订单明细表';

-- ----------------------------
-- Records of salesorderdetailed
-- ----------------------------
INSERT INTO `salesorderdetailed` VALUES ('245', 'DDMX20181217114', '106', '95', '改性沥青-规格型号1', '5000.00', '423.00', '5000.00', '2326500.00', '0', '2018-12-19 15:22:43', '1', '', '', '', '2018-12-17 15:36:56', '', '32.00', '135.36', '', null, '上海', '888.00', '96', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorderdetailed` VALUES ('246', 'DDMX20181217115', '106', '96', '水泥-规格型号2', '4000.00', '32.00', '4000.00', '140800.00', '0', '2018-12-20 15:22:54', '1', '', '', '', '2018-12-17 15:36:56', '', null, null, '', null, '大连', '555.00', '0', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorderdetailed` VALUES ('247', 'DDMX20181217116', '106', '97', '乳化沥青-规格型号3', '8000.00', '124.00', '8000.00', '1091200.00', '1', '2018-12-12 15:23:06', '1', '', '', '', '2018-12-17 15:36:56', '', null, null, '', null, null, null, '0', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorderdetailed` VALUES ('248', 'DDMX20181217117', '106', '98', '乳化剂-规格型号4', '5000.00', '45.00', '5000.00', '258750.00', '0', '2018-12-12 15:23:29', '2', '', '', '', '2018-12-17 15:36:56', '', null, null, '', null, '湖南', '666.00', '0', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorderdetailed` VALUES ('249', 'DDMX20181217118', '106', '99', '混凝土-规格型号5', '4000.00', '7878.00', '4000.00', '34663200.00', '0', '2018-12-06 15:23:40', '1', '', '', '', '2018-12-17 15:36:56', '', '65.00', '5120.70', '', null, '四川', '777.00', '98', '', '51', '2018-12-17 15:36:56', null, null);
INSERT INTO `salesorderdetailed` VALUES ('250', 'DDMX20181217131', '107', '96', '水泥-规格型号2', '4000.00', '100.00', '4000.00', '460000.00', '0', '2018-12-04 15:12:35', '2', '', '', '', '2018-12-21 11:08:41', '', '34.00', '3400.00', '', null, '上海', '888.00', '95', '', '51', '2018-12-21 11:08:41', null, null);
INSERT INTO `salesorderdetailed` VALUES ('251', 'DDMX20181217132', '107', '95', '改性沥青-规格型号1', '5000.00', '5454.00', '5000.00', '28633500.00', '1', '2018-12-18 15:12:44', '0', '', '', '', '2018-12-21 11:08:41', '', null, null, '', null, null, null, '0', '', '51', '2018-12-21 11:08:41', null, null);
INSERT INTO `salesorderdetailed` VALUES ('252', 'DDMX20181217133', '107', '97', '乳化沥青-规格型号3', '8000.00', '232.00', '8000.00', '2041600.00', '0', '2018-12-19 15:12:04', '1', '', '', '', '2018-12-21 11:08:41', '', null, null, '', null, '大连', '444.00', '0', '', '51', '2018-12-21 11:08:41', null, null);
INSERT INTO `salesorderdetailed` VALUES ('253', 'DDMX20181217134', '107', '98', '乳化剂-规格型号4', '5000.00', '32.00', '5000.00', '176000.00', '0', '2018-12-20 15:12:14', '1', '', '', '', '2018-12-21 11:08:41', '', null, null, '', null, '上海', '888.00', '0', '', '51', '2018-12-21 11:08:41', null, null);
INSERT INTO `salesorderdetailed` VALUES ('254', 'DDMX20181217141', '108', '95', '改性沥青-规格型号1', '5000.00', '423.00', '5000.00', '2326500.00', '0', '2018-12-17 16:12:48', '1', '', '', '', '2018-12-19 16:40:57', '', null, null, '', null, '深圳', '999.00', '0', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('255', 'DDMX20181217142', '108', '96', '水泥-规格型号2', '4000.00', '32.00', '4000.00', '140800.00', '0', '2018-12-10 16:12:21', '1', '', '', '', '2018-12-19 16:40:57', '', '76.00', '2432.00', '', null, '上海', '888.00', '95', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('256', 'DDMX20181217143', '108', '97', '乳化沥青-规格型号3', '8000.00', '124.00', '8000.00', '1091200.00', '1', '2018-12-17 16:12:03', '1', '', '', '', '2018-12-19 16:40:57', '', null, null, '', null, null, null, '0', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('257', 'DDMX20181217144', '108', '98', '乳化剂-规格型号4', '5000.00', '45.00', '5000.00', '258750.00', '0', '2018-12-12 16:12:12', '2', '', '', '', '2018-12-19 16:40:57', '', '87.00', '3915.00', '', null, '四川', '777.00', '95', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('258', 'DDMX20181217145', '108', '99', '混凝土-规格型号5', '4000.00', '7878.00', '4000.00', '34663200.00', '0', '2018-12-17 16:12:33', '1', '', '', '', '2018-12-19 16:40:57', '', null, null, '', null, '上海', '888.00', '0', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('259', 'DDMX20181219172', '108', '99', '混凝土-规格型号5', '4000.00', '121.00', '4000.00', '508200.00', '0', '2018-12-19 16:27:09', '0', '', '', '', '2018-12-19 16:40:57', '', null, null, '', null, '深圳', '999.00', '0', '', '51', '2018-12-19 16:40:57', null, null);
INSERT INTO `salesorderdetailed` VALUES ('260', 'DDMX20190102190', '114', '95', '改性沥青-规格型号1', '5000.00', '32.00', '5000.00', '168000.00', '0', '2019-01-02 15:56:18', '0', '', '', '', '2019-01-02 15:56:33', '', null, null, '', null, '上海', '888.00', '0', '', '72', '2019-01-02 15:56:33', null, null);
INSERT INTO `salesorderdetailed` VALUES ('261', 'DDMX20190102198', '115', '95', '改性沥青-规格型号1', '5000.00', '5454.00', '5000.00', '28633500.00', '1', '2019-01-02 16:00:56', '0', '', '', '', '2019-01-02 16:01:09', '', null, null, '', null, null, null, '0', '', '72', '2019-01-02 16:01:09', null, null);
INSERT INTO `salesorderdetailed` VALUES ('262', 'DDMX20190102199', '115', '96', '水泥-规格型号2', '4000.00', '54.00', '4000.00', '248400.00', '1', '2019-01-02 16:00:58', '2', '', '', '', '2019-01-02 16:01:09', '', null, null, '', null, null, null, '0', '', '72', '2019-01-02 16:01:09', null, null);
INSERT INTO `salesorderdetailed` VALUES ('263', 'DDMX20190102200', '115', '97', '乳化沥青-规格型号3', '8000.00', '232.00', '8000.00', '2041600.00', '1', '2019-01-02 16:00:59', '1', '', '', '', '2019-01-02 16:01:09', '', null, null, '', null, null, null, '0', '', '72', '2019-01-02 16:01:09', null, null);
INSERT INTO `salesorderdetailed` VALUES ('264', 'DDMX20190102201', '115', '98', '乳化剂-规格型号4', '5000.00', '32.00', '5000.00', '176000.00', '1', '2019-01-02 16:01:01', '1', '', '', '', '2019-01-02 16:01:09', '', null, null, '', null, null, null, '0', '', '72', '2019-01-02 16:01:09', null, null);
INSERT INTO `salesorderdetailed` VALUES ('265', 'DDMX20190104395', '116', '95', '改性沥青-规格型号1', '5000.00', '5454.00', '5000.00', '28633500.00', '1', '2019-01-04 08:01:39', '0', '', '', '', '2019-01-04 08:47:51', '', null, null, '', null, null, null, '0', '', '72', '2019-01-04 08:47:51', null, null);
INSERT INTO `salesorderdetailed` VALUES ('266', 'DDMX20190104396', '116', '96', '水泥-规格型号2', '4000.00', '54.00', '4000.00', '248400.00', '1', '2019-01-04 08:01:41', '2', '', '', '', '2019-01-04 08:47:51', '', null, null, '', null, null, null, '0', '', '72', '2019-01-04 08:47:51', null, null);
INSERT INTO `salesorderdetailed` VALUES ('267', 'DDMX20190104397', '116', '97', '乳化沥青-规格型号3', '8000.00', '232.00', '8000.00', '2041600.00', '1', '2019-01-04 08:01:42', '1', '', '', '', '2019-01-04 08:47:51', '', null, null, '', null, null, null, '0', '', '72', '2019-01-04 08:47:51', null, null);
INSERT INTO `salesorderdetailed` VALUES ('268', 'DDMX20190104398', '116', '98', '乳化剂-规格型号4', '5000.00', '32.00', '5000.00', '176000.00', '1', '2019-01-04 08:45:43', '1', '', '', '', '2019-01-04 08:46:01', '', null, null, '', null, null, null, '0', '', '72', '2019-01-04 08:46:01', null, '2019-01-04 08:47:05');
INSERT INTO `salesorderdetailed` VALUES ('269', 'DDMX20190104399', '116', '95', '改性沥青-规格型号1', '5000.00', '10.00', '5000.00', '50000.00', '1', '2019-01-04 08:45:44', '', '', '', '', '2019-01-04 08:46:01', '', null, null, '', null, null, null, '0', '', '72', '2019-01-04 08:46:01', null, '2019-01-04 08:47:38');
INSERT INTO `salesorderdetailed` VALUES ('270', 'DDMX20190104400', '116', '98', '乳化剂-规格型号4', '5000.00', '50.00', '5000.00', '250000.00', '1', '2019-01-04 08:01:02', '', '', '', '', '2019-01-04 08:47:51', '', '10.00', '500.00', '', null, null, null, '95', '', '72', '2019-01-04 08:47:51', null, null);
INSERT INTO `salesorderdetailed` VALUES ('271', 'DDMX20190104412', '117', '95', '改性沥青-规格型号1', '5000.00', '32.00', '5000.00', '168000.00', '0', '2019-01-04 08:01:14', '0', '', '', '', '2019-01-16 15:04:08', '', null, null, '', null, '四川', '777.00', '0', '', '72', '2019-01-16 15:04:08', null, null);
INSERT INTO `salesorderdetailed` VALUES ('272', 'DDMX20190104427', '117', '95', '改性沥青-规格型号1', '5000.00', '123.00', '5000.00', '615000.00', '1', '2019-01-04 08:01:15', '', '', '', '', '2019-01-16 15:04:08', '', null, null, '', null, '大连', '555.00', '0', '', '72', '2019-01-16 15:04:08', null, null);
INSERT INTO `salesorderdetailed` VALUES ('273', 'DDMX20190116519', '118', '95', '改性沥青-规格型号1', '5000.00', '32.00', '5000.00', '168000.00', '1', '2019-01-16 14:31:31', '0', '', '', '', '2019-01-16 14:31:42', '', null, null, '', null, null, null, '0', '', '72', '2019-01-16 14:31:42', null, null);

-- ----------------------------
-- Table structure for `startaddress`
-- ----------------------------
DROP TABLE IF EXISTS `startaddress`;
CREATE TABLE `startaddress` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `StartAddress` varchar(200) DEFAULT NULL COMMENT '起运地点',
  `Deviation` decimal(10,2) DEFAULT NULL COMMENT '允许偏差',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='起运地';

-- ----------------------------
-- Records of startaddress
-- ----------------------------
INSERT INTO `startaddress` VALUES ('1', null, '20.00', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `storagemeasure`
-- ----------------------------
DROP TABLE IF EXISTS `storagemeasure`;
CREATE TABLE `storagemeasure` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL COMMENT '流水号',
  `IDCode` varchar(50) DEFAULT NULL COMMENT 'ID卡编号',
  `WeighType` varchar(2) DEFAULT '1' COMMENT '称量类型:1 自动称重；2手动称重；3手工归档',
  `ContractId` int(11) DEFAULT NULL COMMENT '销售合同id',
  `Client` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `CustomerAlias` varchar(50) DEFAULT NULL COMMENT '客户别称',
  `ProductID` int(11) DEFAULT NULL COMMENT '物料名称',
  `PlateNumber` varchar(20) DEFAULT NULL COMMENT '车牌号码',
  `DeliveryMan` varchar(10) DEFAULT NULL COMMENT '送货人',
  `DeliveryManPhone` varchar(15) DEFAULT NULL COMMENT '送货电话',
  `CarOwner` varchar(10) DEFAULT NULL COMMENT '车主',
  `CarOwnerTelephone` varchar(15) DEFAULT NULL COMMENT '车主电话',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `PurchaseContractId` int(11) DEFAULT NULL COMMENT '采购合同id',
  `SupplierId` int(11) DEFAULT NULL COMMENT '供应商id',
  `StartAddressId` int(11) DEFAULT NULL COMMENT '起运地Id',
  `SupplierDeviation` decimal(9,2) DEFAULT NULL COMMENT '供应物料允许偏差',
  `Suttle` decimal(10,2) DEFAULT NULL COMMENT '净重',
  `TareWeight` decimal(10,2) DEFAULT NULL COMMENT '皮重',
  `TareOperator` varchar(10) DEFAULT NULL COMMENT '皮重司磅员',
  `TareMeasureTime` datetime DEFAULT NULL COMMENT '皮重称重时间',
  `GrossWeight` decimal(10,2) DEFAULT NULL COMMENT '毛重',
  `GrossOperator` varchar(10) DEFAULT NULL COMMENT '毛重司磅员',
  `GrossMeasureTime` datetime DEFAULT NULL COMMENT '毛重称重时间',
  `SupplierSuttle` decimal(10,2) DEFAULT NULL COMMENT '实际净重',
  `BuckleLoss` decimal(10,2) DEFAULT NULL COMMENT '扣损',
  `RealityDeviation` decimal(7,2) DEFAULT NULL COMMENT '物料实际偏差',
  `RealityDeviationType` varchar(2) DEFAULT '0' COMMENT '物料实际偏差类型: 0 实际值,1 百分比',
  `SkillExplain` varchar(500) DEFAULT NULL COMMENT '技术说明',
  `Amount` decimal(10,2) DEFAULT NULL COMMENT '数量',
  `DeviationMark` varchar(10) DEFAULT NULL COMMENT '入库检测是否偏差过大标识\r\n            0：偏差\r\n            1：正常',
  `LbsNetWeight` decimal(10,2) DEFAULT NULL COMMENT '来料磅单净重',
  `LbsGrossWeight` decimal(10,2) DEFAULT NULL COMMENT '来料磅单重车重量',
  `IsPrint` bit(1) DEFAULT NULL COMMENT '是否打印',
  `FilingPerson` varchar(10) DEFAULT NULL COMMENT '归档人',
  `IsManualFiling` bit(1) DEFAULT NULL COMMENT '是否手工归档',
  `FileCause` varchar(200) DEFAULT NULL COMMENT '手工归档原因',
  `AbnormalFlag` bit(1) DEFAULT b'0' COMMENT '异常标识,0 正常,1异常 默认0',
  `AbnormalRemarks` varchar(200) DEFAULT NULL COMMENT '异常处理建议',
  `AbnormalOperator` varchar(20) DEFAULT NULL COMMENT '异常处理人',
  `AbnormalDatetime` datetime DEFAULT NULL COMMENT '异常处理时间',
  `AbnormalPhone` varchar(20) DEFAULT NULL,
  `CarType` varchar(2) DEFAULT '0' COMMENT '车辆类型 0:普通 1:大车 2:超大车',
  `Priority` varchar(2) DEFAULT '0' COMMENT '优先级 0正常, 1 优先',
  `Yardman` varchar(20) DEFAULT NULL,
  `CancellationCause` varchar(200) DEFAULT NULL COMMENT '作废原因, 作废标识使用 有效标识Valid_Flag',
  `EnterTypeMark` varchar(10) DEFAULT NULL COMMENT '入库单类型标识 0：入库单 1：未入厂出库单对应的入库单 2:来料加工 3：退货',
  `OutWarehouseId` int(11) DEFAULT NULL COMMENT '出库单id',
  `TestReportId` int(11) DEFAULT NULL COMMENT '检测报告id',
  `TransportListId` int(11) DEFAULT NULL COMMENT '运输单id',
  `LbsNumber` varchar(32) DEFAULT NULL COMMENT '磅单编号',
  `Upload` int(11) NOT NULL DEFAULT '0' COMMENT '上传标识',
  `ValidFlag` bit(1) NOT NULL DEFAULT b'1' COMMENT '有效标识,0无效,1有效',
  `CartWeighType` varchar(2) DEFAULT NULL COMMENT '车辆称重类型（数据字典） 0:普通 1:大车 2:超大车',
  `EnterDate` datetime DEFAULT NULL COMMENT '入厂时间',
  `UpdatePrice` decimal(10,2) DEFAULT NULL COMMENT '修改后价格',
  `OrderDetailedId` int(11) DEFAULT NULL COMMENT '销售订单明细流水号Id',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='调度入库单表';

-- ----------------------------
-- Records of storagemeasure
-- ----------------------------
INSERT INTO `storagemeasure` VALUES ('109', 'RKD20190108096', null, '1', '89', '辽宁省-沈阳市-ssy', '吉林省-长春市-cs', '95', '辽A23452', '张', '15425456552', null, null, '12', '0', '0', '0', '0.00', '86000.00', '16000.00', null, null, '102000.00', null, null, '0.00', null, null, '0', null, null, null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, null, '2', '0', null, '614', null, '0', '', '1', '2019-01-22 00:00:00', null, null, '', '72', '2019-01-08 10:03:45', null, null);
INSERT INTO `storagemeasure` VALUES ('110', 'RKD20190108097', null, '1', '0', null, null, '98', '辽A23454', '赵', '15842545254', null, null, '', '6', '91', '0', '0.00', '10200.00', null, null, null, null, null, null, '0.00', null, null, '0', null, '12.00', null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, null, '0', '0', null, null, null, '0', '', '0', '2019-01-21 00:00:00', null, null, '', '72', '2019-01-08 10:03:58', '72', '2019-01-09 10:54:42');
INSERT INTO `storagemeasure` VALUES ('111', 'RKD20190108098', null, '1', '0', null, null, '95', '辽A23451', '刘', '15236523651', null, null, '', '2', '91', '0', '0.00', '12.00', null, null, null, null, null, null, '12.00', null, null, '0', null, '12.00', null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, null, '1', '266', null, null, null, '0', '', null, null, null, null, '', '72', '2019-01-08 10:40:15', null, null);
INSERT INTO `storagemeasure` VALUES ('112', 'RKD20190109099', null, '1', '91', '辽宁省-沈阳市-ssy', '吉林省-长春市-cs', '95', '辽A23452', '张', '15425456552', null, null, '12', '0', '0', '0', '0.00', null, null, null, null, null, null, null, '0.00', null, null, '0', null, null, null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, '12', '2', '0', null, null, null, '0', '', '0', null, null, null, '', '72', '2019-01-09 10:54:56', '72', '2019-01-09 10:55:03');
INSERT INTO `storagemeasure` VALUES ('113', 'RKD20190109100', null, '1', '0', null, null, '97', '辽A23452', '张', '15425456552', null, null, '', '2', '91', '0', '0.00', '4000.00', '452000.00', null, null, '456000.00', null, null, '0.00', null, null, '0', null, '12.00', null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, null, '0', '0', null, null, null, '0', '', '0', null, null, null, '', '72', '2019-01-09 10:55:38', null, null);
INSERT INTO `storagemeasure` VALUES ('114', 'RKD20190114101', null, '1', '90', '吉林省-长春市-cs', '吉林省-长春市-cs', '95', '辽A23452', '张', '15425456552', null, null, '', '0', '0', '0', '0.00', null, null, null, null, null, null, null, '0.00', null, null, '0', null, null, null, null, null, null, null, null, null, '', null, null, null, null, '0', '0', null, null, '3', '269', null, null, null, '0', '', '0', null, null, '265', '', '72', '2019-01-14 10:49:06', null, null);

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierNumber` varchar(32) DEFAULT NULL COMMENT '供应商编号',
  `SupplierName` varchar(50) DEFAULT NULL COMMENT '供应商名称',
  `SupplierDeviation` decimal(9,2) DEFAULT NULL COMMENT '供应物料允许偏差',
  `Address` varchar(128) DEFAULT NULL COMMENT '地址',
  `Contacts` varchar(20) DEFAULT NULL COMMENT '联系人',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `OtherNumbers` varchar(30) DEFAULT NULL COMMENT '其他联系方式',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `ArrearsMoney` decimal(10,2) DEFAULT NULL COMMENT '期初我方欠款',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='供应商表';

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('91', 'KYS001', '供应商名称1', '20.00', '沈阳', 'cs', '15425623652', '15263256325', '', '56.00', '', null, '2018-12-17 14:06:26', null, '2018-12-17 14:06:26');

-- ----------------------------
-- Table structure for `testreport`
-- ----------------------------
DROP TABLE IF EXISTS `testreport`;
CREATE TABLE `testreport` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TestPersonnelId` int(11) DEFAULT NULL COMMENT '检测员',
  `TestDate` datetime DEFAULT NULL COMMENT '检测时间',
  `TestReportNumber` varchar(32) DEFAULT NULL COMMENT '检测报告编号',
  `SaleOrOut` varchar(2) DEFAULT NULL COMMENT '销售订单或出库单标识（数据字典）0：出库单 1：入库单 2：销售订单',
  `IsQualified` bit(1) DEFAULT NULL COMMENT '是否全部合格 0:是 1:否',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检测报告单';

-- ----------------------------
-- Records of testreport
-- ----------------------------

-- ----------------------------
-- Table structure for `testreportsaledetailed`
-- ----------------------------
DROP TABLE IF EXISTS `testreportsaledetailed`;
CREATE TABLE `testreportsaledetailed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TestReportId` int(11) DEFAULT NULL COMMENT '检测报告id',
  `MaterielId` int(11) DEFAULT NULL COMMENT '物料名称',
  `TestProject` varchar(2) DEFAULT NULL COMMENT '检测项目（数据字典）',
  `SkillIndex` varchar(32) DEFAULT NULL COMMENT '技术指标',
  `TestResult` varchar(32) DEFAULT NULL COMMENT '检测结果',
  `ResultDetermine` varchar(32) DEFAULT NULL COMMENT '结果判定',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检测报告单销售订单明细表';

-- ----------------------------
-- Records of testreportsaledetailed
-- ----------------------------

-- ----------------------------
-- Table structure for `trajectory`
-- ----------------------------
DROP TABLE IF EXISTS `trajectory`;
CREATE TABLE `trajectory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `x` text NOT NULL,
  `y` text NOT NULL,
  `
currentTime` datetime DEFAULT NULL,
  `carName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trajectory
-- ----------------------------

-- ----------------------------
-- Table structure for `transportlist`
-- ----------------------------
DROP TABLE IF EXISTS `transportlist`;
CREATE TABLE `transportlist` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DispatchOutWarehouseId` int(11) DEFAULT NULL COMMENT '出库/入库/未入厂出库单id',
  `SerialID` varchar(50) DEFAULT NULL COMMENT '出库/入库/未入厂出库单编号',
  `type` int(11) DEFAULT NULL COMMENT '区分',
  `TransportParty` varchar(20) DEFAULT NULL COMMENT '运输方',
  `SaleType` varchar(2) DEFAULT NULL COMMENT '结算类别（数据字典） 0:出厂运输 1:入厂运输 2:未进厂运输',
  `CarOwner` varchar(10) DEFAULT NULL COMMENT '车主',
  `CarOwnerTelephone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `BillNumber` varchar(32) DEFAULT NULL COMMENT '票据编号',
  `Company` varchar(50) DEFAULT NULL COMMENT '送达单位/采购单位',
  `MaterielId` int(11) DEFAULT NULL COMMENT '物料名称',
  `Model` int(11) DEFAULT NULL COMMENT '物料型号',
  `Weigh` decimal(10,2) DEFAULT NULL COMMENT '称重重量',
  `CollectWeigh` decimal(10,2) DEFAULT NULL COMMENT '收货重量',
  `RiseLoss` decimal(10,2) DEFAULT NULL COMMENT '涨亏吨',
  `Kilometre` decimal(10,2) DEFAULT NULL COMMENT '公里数',
  `StartAddress` varchar(200) DEFAULT NULL COMMENT '起运地',
  `EndAddress` varchar(200) DEFAULT NULL COMMENT '止运地',
  `SettlementKilometre` decimal(10,2) DEFAULT NULL COMMENT '结算公里数',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `FreightPrice` decimal(10,2) DEFAULT NULL COMMENT '运费单价',
  `FreightMoney` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
  `PlateNumber` varchar(20) DEFAULT NULL COMMENT '车牌号码',
  `EscortPrice` decimal(10,2) DEFAULT NULL COMMENT '押车单价',
  `EscortDays` int(11) DEFAULT NULL COMMENT '押车天数',
  `EscortMoney` decimal(18,2) DEFAULT NULL COMMENT '押车金额',
  `TransportRoute` varchar(500) DEFAULT NULL COMMENT '运输单附件（路径）',
  `SettleDate` datetime DEFAULT NULL COMMENT '结算时间',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=utf8 COMMENT='运输单表';

-- ----------------------------
-- Records of transportlist
-- ----------------------------
INSERT INTO `transportlist` VALUES ('609', '265', 'CKD2019010809403', '0', 'yu', null, '冯', '15825452565', 'YS20190108627', null, '105', '65', '23.00', '12.00', null, null, null, '大连', '555.00', '', '12.00', '6660.00', '辽A23455', '12.00', '12', '144.00', null, '2019-01-08 10:03:26', '', null, '2019-01-08 10:03:28', null, '2019-01-11 15:11:31');
INSERT INTO `transportlist` VALUES ('610', '109', 'RKD20190108096', '2', 'yu', null, '张', '15425456552', 'YS20190108629', null, '104', '64', '102.00', '86.00', null, null, null, '无', '0.00', '', '0.00', '0.00', '辽A23452', '12.00', '12', '144.00', null, '2019-01-08 10:04:32', '', null, '2019-01-08 10:04:39', null, '2019-01-09 10:37:19');
INSERT INTO `transportlist` VALUES ('611', '110', 'RKD20190108097', '2', 'yu', null, '赵', '15842545254', 'YS20190108634', null, '107', '67', '122.00', '112.00', null, null, null, '无', '0.00', '', '0.00', '0.00', '辽A23454', '25.00', '12', '300.00', null, '2019-01-08 10:23:06', '', null, '2019-01-08 10:23:11', null, '2019-01-08 10:29:17');
INSERT INTO `transportlist` VALUES ('612', '110', 'RKD20190108097', '2', 'yu', null, '赵', '15842545254', 'YS20190108635', null, '107', '67', '122.00', '112.00', null, null, null, '无', '0.00', '', '0.00', '0.00', '辽A23454', '12.00', '12', '144.00', null, '2019-01-08 10:29:26', '', null, '2019-01-08 10:29:33', null, '2019-01-09 10:37:11');
INSERT INTO `transportlist` VALUES ('613', '268', 'CKD2019010909406', '0', 'yu', null, '李', '13024565487', 'YS20190109650', null, '104', '64', '20.00', '20.00', null, null, null, '四川', '777.00', '', '10.00', '7770.00', '辽G55551', '12.00', '12', '144.00', null, '2019-01-09 09:28:10', '', null, '2019-01-09 09:28:13', null, '2019-01-09 10:40:17');
INSERT INTO `transportlist` VALUES ('614', '109', 'RKD20190108096', '2', 'yu', null, '张', '15425456552', 'YS20190109665', null, '104', '64', '102.00', '862.00', null, null, null, '无', '0.00', '', '0.00', '0.00', '辽A23452', '12.00', '12', '144.00', null, '2019-01-09 10:53:38', '', null, '2019-01-09 10:53:47', null, '2019-01-11 15:55:01');
INSERT INTO `transportlist` VALUES ('615', '267', 'CKD2019010810405', '0', 'yu', null, '冯', '15825452565', 'YS20190111676', null, '105', '65', '0.11', '0.00', null, null, null, '已自提', '0.00', '', '0.00', '0.00', '辽A23455', '12.00', '12', '144.00', null, '2019-01-11 14:52:51', '', null, '2019-01-11 14:52:57', null, '2019-01-11 15:21:11');
INSERT INTO `transportlist` VALUES ('616', '265', 'CKD2019010809403', '0', 'yu', null, '冯', '15825452565', 'YS20190111682', null, '105', '65', '23.00', '0.00', null, null, null, '大连', '555.00', '', '1.00', '555.00', '辽A23455', '12.00', '12', '144.00', null, '2019-01-11 15:17:58', '', null, '2019-01-11 15:18:10', null, '2019-01-11 15:47:31');
INSERT INTO `transportlist` VALUES ('617', '113', 'RKD20190109100', '2', 'yu', null, '张', '15425456552', 'YS20190111699', null, '106', '66', '456.00', '4.00', null, null, null, '无', '0.00', '12', '0.00', '0.00', '辽A23452', '4.00', '42', '168.00', null, '2019-01-11 16:11:23', '', null, '2019-01-11 16:11:25', null, '2019-01-14 10:24:37');

-- ----------------------------
-- Table structure for `uploadfile`
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SerialID` varchar(50) DEFAULT NULL COMMENT '流水号',
  `FileName` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `FileRoute` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传文件表';

-- ----------------------------
-- Records of uploadfile
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `PassWord` varchar(128) DEFAULT NULL COMMENT '用户密码',
  `RoleCode` varchar(32) DEFAULT NULL COMMENT '角色Code 0:管理员 1:销售人员 2:调度人员 3:检查员 4:财务 5:总经理',
  `Name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `Age` int(11) DEFAULT NULL COMMENT '年龄',
  `Sex` varchar(2) DEFAULT NULL COMMENT '性别 0:男 1:女',
  `Birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `Address` varchar(128) DEFAULT NULL COMMENT '地址',
  `Telephone` varchar(15) DEFAULT NULL COMMENT '电话',
  `OtherNumbers` varchar(15) DEFAULT NULL COMMENT '其他联系方式',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('51', 'ssy', 'e10adc3949ba59abbe56e057f20f883e', '0,1,12', 'ssy', '19', '0', '2000-09-06 00:00:00', 'cs', '13745685478', '19784562456', '', 'ssy', '2018-10-24 14:02:55', null, '2018-10-29 16:58:57');
INSERT INTO `userinfo` VALUES ('52', 'cs', 'e10adc3949ba59abbe56e057f20f883e', '0,1', 'sy', '1', '0', '2018-10-02 00:00:00', '测试', '15425463254', '0249561', '', 'cs', '2018-10-24 14:23:51', null, '2018-10-25 14:24:28');
INSERT INTO `userinfo` VALUES ('53', 'gy', '4297f44b13955235245b2497399d7a93', '0', '郭燕', '1', '0', '2018-10-24 00:00:00', '黄土高坡', '14740598989', '2665666', '', 'gy', '2018-10-24 14:35:06', null, null);
INSERT INTO `userinfo` VALUES ('54', 'yuShenL1ng', 'e10adc3949ba59abbe56e057f20f883e', '0,1', 'yu', '9', '0', '2010-10-01 00:00:00', '123', '13885421546', '31502061', '', 'yuShenL1ng', '2018-10-24 16:40:41', null, '2018-10-25 09:46:41');
INSERT INTO `userinfo` VALUES ('55', 'ttt', '4297f44b13955235245b2497399d7a93', '0', '测试用户', '1', '1', '2018-10-25 00:00:00', '888888', '14740588888', '888888', '', 'ttt', '2018-10-25 09:05:48', null, null);
INSERT INTO `userinfo` VALUES ('56', 'rrr', '96e79218965eb72c92a549dd5a330112', '1', '123123123', '1', '1', '2018-10-25 00:00:00', '123123', '14745599999', '1231123', '', 'rrr', '2018-10-25 09:41:16', null, null);
INSERT INTO `userinfo` VALUES ('57', 'yyy', '4297f44b13955235245b2497399d7a93', '0', '12313', '1', '1', '2018-10-25 00:00:00', '888', '14740588888', '8888', '', 'yyy', '2018-10-25 11:47:39', null, null);
INSERT INTO `userinfo` VALUES ('58', 'ggg', '96e79218965eb72c92a549dd5a330112', '0', 'ggg', '1', '1', '2018-10-25 00:00:00', 'ggg', '18842606371', '1234567', '', 'ggg', '2018-10-25 14:30:08', null, null);
INSERT INTO `userinfo` VALUES ('59', 'ygt', '96e79218965eb72c92a549dd5a330112', '0,1', 'ygt', '1', '0', '2018-10-26 00:00:00', '辽宁省沈阳市', '15940369021', '15940369021', '', 'ygt', '2018-10-26 08:52:57', null, '2018-11-16 11:18:13');
INSERT INTO `userinfo` VALUES ('60', 'gyy', '4297f44b13955235245b2497399d7a93', '0', '古言', '1', '0', '2018-10-10 00:00:00', '沈阳市', '13840597845', '13384421785', '', 'gyy', '2018-10-26 09:16:55', null, null);
INSERT INTO `userinfo` VALUES ('61', 'mengyue', '670b14728ad9902aecba32e22fa4f6bd', '2', '我最好看了', '24', '0', '1995-10-19 00:00:00', '沈阳市', '13845128956', '020-452-4481', '', 'mengyue', '2018-10-26 09:26:28', null, '2018-10-29 17:00:29');
INSERT INTO `userinfo` VALUES ('62', 'hhh', '670b14728ad9902aecba32e22fa4f6bd', '0', 'hh', '1', '1', '2018-10-02 00:00:00', '沈阳市大东区', '13021236546', '1', '', 'hhh', '2018-10-30 10:15:29', null, null);
INSERT INTO `userinfo` VALUES ('63', 'zzz', '4297f44b13955235245b2497399d7a93', '0', '测试', '1', '1', '2018-10-30 00:00:00', '123', '14740598888', '2', '', 'zzz', '2018-10-30 10:17:11', null, null);
INSERT INTO `userinfo` VALUES ('64', 'aaa', '670b14728ad9902aecba32e22fa4f6bd', '0', 'ggg', '2', '1', '2017-10-17 00:00:00', '测试', '13021236546', '4', '', 'aaa', '2018-10-30 10:17:55', null, null);
INSERT INTO `userinfo` VALUES ('65', 'bbb', '670b14728ad9902aecba32e22fa4f6bd', '0', 'jkljkl', '3', '1', '2016-10-05 00:00:00', '沈阳市和平区', '13021236546', '4', '', 'bbb', '2018-10-30 10:21:21', null, null);
INSERT INTO `userinfo` VALUES ('66', '123', '4297f44b13955235245b2497399d7a93', '0', '123', '1', '1', '2018-10-30 00:00:00', '213', '13654645858', '', '', '123', '2018-10-30 11:04:05', null, null);
INSERT INTO `userinfo` VALUES ('67', 'sss', '4297f44b13955235245b2497399d7a93', '1', '销售测试', '1', '1', '2018-10-31 00:00:00', '辽宁省沈阳市铁西区', '15425463254', '', '', 'sss', '2018-10-31 15:44:13', null, null);
INSERT INTO `userinfo` VALUES ('70', '999', '52c69e3a57331081823331c4e69d3f2e', '0', '999', '1', '1', '2018-11-08 00:00:00', '测试999', '13900000000', '', '', '999', '2018-11-08 09:37:01', null, null);
INSERT INTO `userinfo` VALUES ('71', 'hl1', 'e10adc3949ba59abbe56e057f20f883e', '0', 'hl', '3', '1', '2016-11-02 00:00:00', '沈阳市大东区', '13021236546', '', '', 'hl1', '2018-11-13 08:57:17', null, null);
INSERT INTO `userinfo` VALUES ('72', 'yuyu', '123456', '0,2,3', null, '0', '0', '2019-07-01 00:00:00', null, null, null, '', 'yuyu', '2018-12-28 16:29:05', 'yuyu', '2019-07-10 16:19:41');
INSERT INTO `userinfo` VALUES ('73', 'yuyu2', '123456', '0', 'yu2', null, null, null, null, null, null, '', null, null, null, null);
INSERT INTO `userinfo` VALUES ('74', 'css', '123456', '0', 'css', null, null, null, null, null, null, '', null, null, null, null);
INSERT INTO `userinfo` VALUES ('75', 'yuyu3', '123456', '0', null, '0', '0', '2019-07-22 00:00:00', null, null, null, '', 'yuyu3', '2019-07-08 10:50:23', null, null);
INSERT INTO `userinfo` VALUES ('76', 'yuyu4', '123456', '0,1', null, '0', '0', '2019-07-02 00:00:00', null, null, null, '', 'yuyu4', '2019-07-08 10:51:34', null, null);
INSERT INTO `userinfo` VALUES ('77', 'yuyu5', '123456', '0,1', null, '0', '0', '2019-07-15 00:00:00', null, null, null, '', 'yuyu5', '2019-07-08 10:52:06', null, null);
INSERT INTO `userinfo` VALUES ('78', 'yuyu6', '123456', '0,1,2', null, '0', '0', '2019-07-08 00:00:00', null, null, null, '', 'yuyu6', '2019-07-08 10:53:09', null, null);
INSERT INTO `userinfo` VALUES ('79', 'yuyu7', '123456', '0,3', null, '0', '0', '2019-07-02 00:00:00', null, null, null, '', 'yuyu7', '2019-07-10 15:48:13', null, null);

-- ----------------------------
-- Table structure for `visitinfo`
-- ----------------------------
DROP TABLE IF EXISTS `visitinfo`;
CREATE TABLE `visitinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) DEFAULT NULL COMMENT '客户id',
  `VisitDate` datetime DEFAULT NULL COMMENT '拜访日期',
  `VisitForm` varchar(2) DEFAULT NULL COMMENT '拜访形式（数据字典）0:电话拜访 1:上门拜访',
  `VisitContent` varchar(500) DEFAULT NULL COMMENT '拜访内容',
  `ReturnVisitDate` datetime DEFAULT NULL COMMENT '回访日期',
  `CustomerEvaluate` varchar(2) DEFAULT NULL COMMENT '客户评价（数据字典） 0:好评 1:其他',
  `ReturnVisitContent` varchar(500) DEFAULT NULL COMMENT '回访内容',
  `UserInfoId` int(11) DEFAULT NULL COMMENT '销售员id',
  `IsVisit` int(11) DEFAULT NULL COMMENT '拜访/回访区分 0:拜访 1:回访',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户拜访回访信息表';

-- ----------------------------
-- Records of visitinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `warehouseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `warehouseinfo`;
CREATE TABLE `warehouseinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `WarehouseNumber` varchar(32) DEFAULT NULL COMMENT '仓库编号',
  `WarehouseName` varchar(50) DEFAULT NULL COMMENT '仓库名称',
  `WarehouseType` varchar(2) DEFAULT NULL COMMENT '仓库类别（数据字典）',
  `Remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `IsDel` bit(1) DEFAULT NULL COMMENT '删除标记',
  `Creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreaterDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Reviser` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ReviserDate` datetime DEFAULT NULL COMMENT '修改日期',
  `TankHeight` decimal(10,2) DEFAULT NULL,
  `TankCapacity` decimal(10,2) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `LiquidHeight` decimal(10,2) DEFAULT NULL,
  `AlarmLow` decimal(10,2) DEFAULT NULL,
  `AlarmHigh` decimal(10,2) DEFAULT NULL,
  `Type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='仓库信息表';

-- ----------------------------
-- Records of warehouseinfo
-- ----------------------------
INSERT INTO `warehouseinfo` VALUES ('106', 'CK001', '仓库名称1', '1', '', '', null, null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `warehouseinfo` VALUES ('107', 'CK002', '仓库名称2', '2', '', '', null, null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `warehouseinfo` VALUES ('108', 'CK003', '仓库名称3', '3', '', '', null, null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `warehouseinfo` VALUES ('109', 'CK004', '储罐名称1', '', '', '', null, null, null, null, '100.00', '100.00', '100', '100.00', '100.00', '100.00', '7');
INSERT INTO `warehouseinfo` VALUES ('110', 'CK005', '储罐名称2', null, '', '', null, null, null, null, '100.00', '100.00', '100', '100.00', '100.00', '100.00', '7');
INSERT INTO `warehouseinfo` VALUES ('111', 'CK001', '仓库名称1', null, '', '', null, null, null, null, '100.00', '100.00', '100', '100.00', '100.00', '100.00', '7');
INSERT INTO `warehouseinfo` VALUES ('112', 'CK001', '仓库名称1', null, '', '', null, null, null, null, '100.00', '100.00', '100', '100.00', '100.00', '100.00', '7');
INSERT INTO `warehouseinfo` VALUES ('113', 'CK002', '仓库名称2', null, '', '', null, null, null, null, '100.00', '100.00', '100', '100.00', '100.00', '100.00', '7');
INSERT INTO `warehouseinfo` VALUES ('114', '11', '11', '1', '11', '', null, null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `warehouseinfo` VALUES ('115', '11', '11', '1', '11', '', null, null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `warehouseinfo` VALUES ('116', '11', '11', '1', '11', '', null, null, null, null, null, null, null, null, null, null, '6');

-- ----------------------------
-- Function structure for `getContentByCode`
-- ----------------------------
DROP FUNCTION IF EXISTS `getContentByCode`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `getContentByCode`(i_Type varchar(20),i_Code varchar(20)) RETURNS varchar(200) CHARSET utf8
BEGIN 
	declare i_Content varchar(200);

  select Content 
	into i_Content
	from datadictionary
	where  Type = i_Type
	and Code = i_Code;
	return i_Content;
END
;;
DELIMITER ;
