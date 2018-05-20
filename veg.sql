/*
Navicat MySQL Data Transfer

Source Server         : goods
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : veges

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-06 14:50:29
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
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for import
-- ----------------------------
DROP TABLE IF EXISTS `import`;
CREATE TABLE `import` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyer_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `totalprice` double(20,0) NOT NULL,
  `totalweight` double(20,2) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `keeper_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for importitem
-- ----------------------------
DROP TABLE IF EXISTS `importitem`;
CREATE TABLE `importitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) NOT NULL,
  `veges_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `number` double(10,2) NOT NULL,
  `total` double(10,2) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for instore
-- ----------------------------
DROP TABLE IF EXISTS `instore`;
CREATE TABLE `instore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `keeper_id` bigint(20) DEFAULT NULL,
  `driver_id` bigint(20) NOT NULL,
  `totalprice` double(11,2) DEFAULT NULL,
  `totalweight` double(11,2) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for instoreitem
-- ----------------------------
DROP TABLE IF EXISTS `instoreitem`;
CREATE TABLE `instoreitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instore_id` bigint(20) NOT NULL,
  `veges_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `number` double(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ord
-- ----------------------------
DROP TABLE IF EXISTS `ord`;
CREATE TABLE `ord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_id` bigint(20) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `totalprice` double(11,2) DEFAULT NULL,
  `totalweight` double(11,2) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `veges_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `number` double(11,2) DEFAULT NULL,
  `total` double(11,2) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for outstore
-- ----------------------------
DROP TABLE IF EXISTS `outstore`;
CREATE TABLE `outstore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `driver_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `keeper_id` bigint(20) NOT NULL,
  `totalprice` double(11,2) DEFAULT NULL,
  `totalweight` double(11,2) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for outstoreitem
-- ----------------------------
DROP TABLE IF EXISTS `outstoreitem`;
CREATE TABLE `outstoreitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `outstore_id` bigint(20) DEFAULT NULL,
  `veges_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `total` double(11,2) DEFAULT NULL,
  `number` double(11,2) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for storehouse
-- ----------------------------
DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE `storehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for storeitem
-- ----------------------------
DROP TABLE IF EXISTS `storeitem`;
CREATE TABLE `storeitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) DEFAULT NULL,
  `veges_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` double(20,0) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `role_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `dept_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '部门ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `state` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `buyer_id` bigint(20) DEFAULT NULL,
  `is_expired` tinyint(1) DEFAULT '0' COMMENT '是否过期',
  `is_locked` tinyint(1) DEFAULT '0' COMMENT '是否锁定',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否允许',
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for veges
-- ----------------------------
DROP TABLE IF EXISTS `veges`;
CREATE TABLE `veges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pth` varchar(255) DEFAULT NULL,
  `object_version_number` bigint(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT '-1',
  `last_update_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(20) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
