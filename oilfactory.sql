/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.7_3306
Source Server Version : 50639
Source Host           : 192.168.1.7:3306
Source Database       : oilfactory

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-07-25 08:44:46
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
-- Table structure for `richtextlist`
-- ----------------------------
DROP TABLE IF EXISTS `richtextlist`;
CREATE TABLE `richtextlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `html` longtext,
  `user` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of richtextlist
-- ----------------------------
INSERT INTO `richtextlist` VALUES ('4', '此乃富文本测试', '<p>123</p><p>213</p><p>123</p><p>13</p><p>123</p>', 'yuyu', '2019-07-24 11:39:40');
INSERT INTO `richtextlist` VALUES ('5', '此乃富文本测试带图片', '<p>123</p><p>213</p><p><img src=\"data:image/png;base64,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\"></p><p>123</p><p>13</p><p>123</p>', 'yuyu', '2019-07-24 11:40:00');
INSERT INTO `richtextlist` VALUES ('6', '此乃富文本测试带多张图片', '<p>123</p><p><strong>33333</strong></p><h2><strong>222222</strong></h2><p><img src=\"data:image/png;base64,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\"></p><p>2322222</p><p><img src=\"data:image/png;base64,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\"></p>', 'yuyu', '2019-07-24 11:41:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesorderdemo
-- ----------------------------
INSERT INTO `salesorderdemo` VALUES ('1', 'a2322', '0');
INSERT INTO `salesorderdemo` VALUES ('8', '13123', '2');
INSERT INTO `salesorderdemo` VALUES ('10', 'oooooo1', '3');
INSERT INTO `salesorderdemo` VALUES ('14', '订单99', '2');
INSERT INTO `salesorderdemo` VALUES ('15', '1222', '1');
INSERT INTO `salesorderdemo` VALUES ('16', '订单661', '1');
INSERT INTO `salesorderdemo` VALUES ('17', '订单名称669', '1');
INSERT INTO `salesorderdemo` VALUES ('18', '6666666666662', '0');
INSERT INTO `salesorderdemo` VALUES ('19', '123123', '2');
INSERT INTO `salesorderdemo` VALUES ('20', '订单文件', '2');
INSERT INTO `salesorderdemo` VALUES ('21', '订单测试999', '2');
INSERT INTO `salesorderdemo` VALUES ('22', '99999999121', '2');
INSERT INTO `salesorderdemo` VALUES ('23', '12388888888', '1');
INSERT INTO `salesorderdemo` VALUES ('24', '呆不久播放', '2');
INSERT INTO `salesorderdemo` VALUES ('25', '1238889', '2');
INSERT INTO `salesorderdemo` VALUES ('26', '新年大吉', '2');
INSERT INTO `salesorderdemo` VALUES ('27', '哦哦哦我', '0');
INSERT INTO `salesorderdemo` VALUES ('28', 'p8854s', '4');
INSERT INTO `salesorderdemo` VALUES ('29', '平稳期望', '2');
INSERT INTO `salesorderdemo` VALUES ('30', '123123122等等等', '2');
INSERT INTO `salesorderdemo` VALUES ('31', '安抚贺卡上部分骄傲被警方八九十不放假', '4');
INSERT INTO `salesorderdemo` VALUES ('32', '新年大大大 吉', '1');
INSERT INTO `salesorderdemo` VALUES ('33', '大萨达', '0');
INSERT INTO `salesorderdemo` VALUES ('34', '伤物语', '0');
INSERT INTO `salesorderdemo` VALUES ('37', '额娃儿', '1');

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
