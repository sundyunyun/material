/*
Navicat MySQL Data Transfer

Source Server         : goods
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : veges

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-17 20:05:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a` (
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of a
-- ----------------------------

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of buyer
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of driver
-- ----------------------------

-- ----------------------------
-- Table structure for import
-- ----------------------------
DROP TABLE IF EXISTS `import`;
CREATE TABLE `import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `totalprice` decimal(10,0) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `keeper_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of import
-- ----------------------------

-- ----------------------------
-- Table structure for importitem
-- ----------------------------
DROP TABLE IF EXISTS `importitem`;
CREATE TABLE `importitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of importitem
-- ----------------------------

-- ----------------------------
-- Table structure for instore
-- ----------------------------
DROP TABLE IF EXISTS `instore`;
CREATE TABLE `instore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `keeper_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `totalprice` decimal(10,0) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of instore
-- ----------------------------

-- ----------------------------
-- Table structure for instoreitem
-- ----------------------------
DROP TABLE IF EXISTS `instoreitem`;
CREATE TABLE `instoreitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instore_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of instoreitem
-- ----------------------------

-- ----------------------------
-- Table structure for keeper
-- ----------------------------
DROP TABLE IF EXISTS `keeper`;
CREATE TABLE `keeper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of keeper
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `totalprice` decimal(10,0) DEFAULT NULL,
  `totalweight` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for outstore
-- ----------------------------
DROP TABLE IF EXISTS `outstore`;
CREATE TABLE `outstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `keeper_id` int(11) DEFAULT NULL,
  `totalprice` decimal(10,0) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of outstore
-- ----------------------------

-- ----------------------------
-- Table structure for outstoreitem
-- ----------------------------
DROP TABLE IF EXISTS `outstoreitem`;
CREATE TABLE `outstoreitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outstore_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of outstoreitem
-- ----------------------------

-- ----------------------------
-- Table structure for storehouse
-- ----------------------------
DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE `storehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of storehouse
-- ----------------------------

-- ----------------------------
-- Table structure for storeitem
-- ----------------------------
DROP TABLE IF EXISTS `storeitem`;
CREATE TABLE `storeitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of storeitem
-- ----------------------------

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_veges
-- ----------------------------
DROP TABLE IF EXISTS `supplier_veges`;
CREATE TABLE `supplier_veges` (
  `supplier_id` int(11) DEFAULT NULL,
  `veges_id` int(11) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of supplier_veges
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限表主键',
  `auth` varchar(255) NOT NULL COMMENT '权限',
  `auth_name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('1', 'ALL', '所有权限', '系统管理员的权限', null, null, '-1', null, '-1');
INSERT INTO `sys_auth` VALUES ('2', 'auth1', '权限1', null, null, null, '-1', null, '-1');
INSERT INTO `sys_auth` VALUES ('3', 'auth2', '权限2', null, null, null, '-1', null, '-1');
INSERT INTO `sys_auth` VALUES ('4', 'ahth3', '权限3', null, null, null, '-1', null, '-1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role` varchar(255) NOT NULL COMMENT '角色',
  `role_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '系统管理员', '拥有系统的所有权限', null, '2017-12-09 15:25:48', '1', '2017-12-09 15:25:52', '1');
INSERT INTO `sys_role` VALUES ('2', 'user', '普通用户', '测试用', null, null, '-1', null, '-1');
INSERT INTO `sys_role` VALUES ('3', 'test', '测试用户', '测试用', null, null, '-1', null, '-1');

-- ----------------------------
-- Table structure for sys_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_auth`;
CREATE TABLE `sys_role_auth` (
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `auth_id` bigint(20) unsigned NOT NULL COMMENT '权限ID',
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`role_id`,`auth_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_auth
-- ----------------------------
INSERT INTO `sys_role_auth` VALUES ('1', '1', null, '2017-12-09 15:27:23', '1', '2017-12-09 15:27:25', '1');
INSERT INTO `sys_role_auth` VALUES ('2', '3', null, null, '-1', null, '-1');
INSERT INTO `sys_role_auth` VALUES ('3', '2', null, null, '-1', null, '-1');
INSERT INTO `sys_role_auth` VALUES ('3', '3', null, null, '-1', null, '-1');
INSERT INTO `sys_role_auth` VALUES ('3', '4', null, null, '-1', null, '-1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `role_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `dept_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '部门ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `is_expired` tinyint(1) DEFAULT '0' COMMENT '是否过期',
  `is_locked` tinyint(1) DEFAULT '0' COMMENT '是否锁定',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否允许',
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '0', 'root', 'root', '谭杰', '1269003816@qq.com', '13818525341', '0', '0', '1', null, '2017-12-09 15:23:46', '1', '2017-12-09 15:23:51', '1');
INSERT INTO `sys_user` VALUES ('2', '3', '0', 'user', 'user', 'Tony', null, null, '0', '0', '1', null, null, '-1', null, '-1');
INSERT INTO `sys_user` VALUES ('3', '3', '0', 'test', 'test', 'Scott', null, null, '0', '0', '1', null, null, '-1', null, '-1');
INSERT INTO `sys_user` VALUES ('4', '0', '0', 'aaa', 'aaa', 'AAA', null, null, '0', '0', '1', null, null, '-1', null, '-1');
INSERT INTO `sys_user` VALUES ('5', '0', '0', 'abc', 'abc', '大幅', null, null, '0', '0', '1', null, null, '-1', null, '-1');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------

-- ----------------------------
-- Table structure for veges
-- ----------------------------
DROP TABLE IF EXISTS `veges`;
CREATE TABLE `veges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of veges
-- ----------------------------
