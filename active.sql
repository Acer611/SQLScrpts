/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-10-17 17:35:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-J81B3JD1569726095502', '1569726174154', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1569726100000', '-1', '5', 'PAUSED', 'CRON', '1569726095000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1569726105000', '-1', '5', 'PAUSED', 'CRON', '1569726096000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1569726100000', '-1', '5', 'PAUSED', 'CRON', '1569726096000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-12 17:13:51', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '大转盘活动管理', '0', '4', '#', 'menuItem', 'M', '0', '', 'fa fa-sliders', 'admin', '2019-09-11 12:40:03', 'admin', '2019-09-27 16:42:31', '');
INSERT INTO `sys_menu` VALUES ('2001', '平台一抽奖用户管理', '2000', '1', '/active/tUser', 'menuItem', 'C', '0', 'active:tUser:view', '#', 'admin', '2019-09-11 12:57:10', 'admin', '2019-09-27 16:42:47', '');
INSERT INTO `sys_menu` VALUES ('2002', '抽奖奖品设置', '2000', '3', '/active/tBigturntable', 'menuItem', 'C', '0', 'active:tBigturntable:view', '#', 'admin', '2019-09-11 13:16:05', 'admin', '2019-09-27 17:01:13', '');
INSERT INTO `sys_menu` VALUES ('2003', '红包雨平台一活动管理', '0', '5', '#', 'menuItem', 'M', '0', '', 'fa fa-calendar-plus-o', 'admin', '2019-09-25 14:50:27', 'admin', '2019-09-27 15:17:54', '');
INSERT INTO `sys_menu` VALUES ('2004', '活动用户管理', '2003', '1', '/active/tUser1', 'menuItem', 'C', '0', 'active:tUser1:view', '#', 'admin', '2019-09-25 14:51:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '红包雨平台二活动管理', '0', '6', '#', 'menuItem', 'M', '0', '', 'fa fa-calendar-minus-o', 'admin', '2019-09-26 14:30:43', 'admin', '2019-09-27 15:18:08', '');
INSERT INTO `sys_menu` VALUES ('2006', '活动用户管理', '2005', '1', '/active/tUser2', 'menuItem', 'C', '0', 'active:tUser2:view', '#', 'admin', '2019-09-26 14:33:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2007', '平台二抽奖用户管理', '2000', '2', '/active/tUser3', 'menuItem', 'C', '0', 'active:tUser:review', '#', 'admin', '2019-09-27 17:01:03', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"活动管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-sliders\"],\"visible\":[\"0\"]}', '0', null, '2019-09-11 12:40:03');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"抽奖用户管理\"],\"url\":[\"/active/tUser\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tUser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-11 12:57:10');
INSERT INTO `sys_oper_log` VALUES ('102', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"12345678\"],\"password\":[\"123456\"],\"rollTimes\":[\"3\"]}', '0', null, '2019-09-11 13:03:54');
INSERT INTO `sys_oper_log` VALUES ('103', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"account\":[\"12345678\"],\"password\":[\"e10adc3949ba59abbe56e057f20f883e\"],\"rollTimes\":[\"5\"]}', '0', null, '2019-09-11 13:05:21');
INSERT INTO `sys_oper_log` VALUES ('104', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"account\":[\"123456\"],\"password\":[\"123456\"],\"rollTimes\":[\"3\"]}', '0', null, '2019-09-11 13:05:29');
INSERT INTO `sys_oper_log` VALUES ('105', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-09-11 13:06:28');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"抽奖奖品设置\"],\"url\":[\"/active/tBigturntable\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tBigturntable:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-11 13:16:05');
INSERT INTO `sys_oper_log` VALUES ('107', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"iphone11\"],\"weights\":[\"1\"]}', '0', null, '2019-09-11 13:18:15');
INSERT INTO `sys_oper_log` VALUES ('108', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"现金888\"],\"weights\":[\"2\"]}', '0', null, '2019-09-11 13:18:28');
INSERT INTO `sys_oper_log` VALUES ('109', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"彩金58\"],\"weights\":[\"3\"]}', '0', null, '2019-09-11 13:18:45');
INSERT INTO `sys_oper_log` VALUES ('110', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"彩金18\"],\"weights\":[\"10\"]}', '0', null, '2019-09-11 13:19:04');
INSERT INTO `sys_oper_log` VALUES ('111', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"彩金8\"],\"weights\":[\"15\"]}', '0', null, '2019-09-11 13:19:14');
INSERT INTO `sys_oper_log` VALUES ('112', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"谢谢参与\"],\"weights\":[\"25\"]}', '0', null, '2019-09-11 13:19:32');
INSERT INTO `sys_oper_log` VALUES ('113', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"测试彩种\"],\"weights\":[\"\"]}', '0', null, '2019-09-11 13:19:40');
INSERT INTO `sys_oper_log` VALUES ('114', '大转盘奖品信息', '3', 'com.ruoyi.project.system.active.controller.TBigturntableController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '0', null, '2019-09-11 13:19:43');
INSERT INTO `sys_oper_log` VALUES ('115', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"456\"],\"password\":[\"123\"],\"rollTimes\":[\"2\"]}', '0', null, '2019-09-11 13:20:28');
INSERT INTO `sys_oper_log` VALUES ('116', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1452\"],\"password\":[\"1223\"],\"rollTimes\":[\"3\"]}', '0', null, '2019-09-11 17:00:48');
INSERT INTO `sys_oper_log` VALUES ('117', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"12312312312\"],\"password\":[\"4444\"]}', '0', null, '2019-09-11 17:57:36');
INSERT INTO `sys_oper_log` VALUES ('118', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '0', null, '2019-09-11 17:57:42');
INSERT INTO `sys_oper_log` VALUES ('119', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1111222\"],\"password\":[\"1111\"]}', '0', null, '2019-09-11 17:57:52');
INSERT INTO `sys_oper_log` VALUES ('120', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1111\"],\"password\":[\"222222\"]}', '0', null, '2019-09-11 17:59:38');
INSERT INTO `sys_oper_log` VALUES ('121', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"456234\"],\"password\":[\"1111\"]}', '0', null, '2019-09-11 18:00:57');
INSERT INTO `sys_oper_log` VALUES ('122', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"333333\"],\"password\":[\"1111\"]}', '0', null, '2019-09-11 18:09:24');
INSERT INTO `sys_oper_log` VALUES ('123', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"123456789\"],\"password\":[\"123456\"]}', '0', null, '2019-09-11 18:10:47');
INSERT INTO `sys_oper_log` VALUES ('124', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"account\":[\"123456789\"],\"password\":[\"12345678\"]}', '0', null, '2019-09-11 18:10:57');
INSERT INTO `sys_oper_log` VALUES ('125', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"3333444\"],\"password\":[\"12345\"]}', '0', null, '2019-09-11 18:12:29');
INSERT INTO `sys_oper_log` VALUES ('126', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"account\":[\"3333444\"],\"password\":[\"123456\"]}', '0', null, '2019-09-11 18:12:36');
INSERT INTO `sys_oper_log` VALUES ('127', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"account\":[\"456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-12 15:57:30');
INSERT INTO `sys_oper_log` VALUES ('128', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"account\":[\"456\"],\"password\":[\"e10adc3949ba59abbe56e057f20f883e\"]}', '0', null, '2019-09-12 16:05:18');
INSERT INTO `sys_oper_log` VALUES ('129', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"account\":[\"456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-12 16:05:26');
INSERT INTO `sys_oper_log` VALUES ('130', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"111111\"],\"password\":[\"123456\"]}', '0', null, '2019-09-12 16:06:16');
INSERT INTO `sys_oper_log` VALUES ('131', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"2313123123213\"],\"password\":[\"11111111111111\"]}', '0', null, '2019-09-12 16:19:31');
INSERT INTO `sys_oper_log` VALUES ('132', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"manager\"],\"roleKey\":[\"manager\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2002\"]}', '0', null, '2019-09-12 17:02:49');
INSERT INTO `sys_oper_log` VALUES ('133', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"manager\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"123@qq.com\"],\"loginName\":[\"manager\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"\"]}', '0', null, '2019-09-12 17:03:25');
INSERT INTO `sys_oper_log` VALUES ('134', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', '1', 'admin', '研发部门', '/system/role/authDataScope', '192.168.10.4', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"manager\"],\"roleKey\":[\"manager\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,107,102,108,109\"]}', '0', null, '2019-09-12 17:08:54');
INSERT INTO `sys_oper_log` VALUES ('135', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '192.168.10.4', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"manager\"],\"roleKey\":[\"active:tUser:view,active:tBigturntable:view\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2002\"]}', '0', null, '2019-09-12 17:12:33');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '192.168.10.4', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"1\"]}', '0', null, '2019-09-12 17:13:51');
INSERT INTO `sys_oper_log` VALUES ('137', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"111\"],\"password\":[\"1111\"]}', '0', null, '2019-09-12 17:22:14');
INSERT INTO `sys_oper_log` VALUES ('138', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '0', null, '2019-09-12 17:22:21');
INSERT INTO `sys_oper_log` VALUES ('139', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"account\":[\"2313123123213\"],\"password\":[\"11111\"]}', '0', null, '2019-09-12 17:22:30');
INSERT INTO `sys_oper_log` VALUES ('140', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"2222\"],\"password\":[\"3333\"]}', '0', null, '2019-09-12 17:23:19');
INSERT INTO `sys_oper_log` VALUES ('141', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"account\":[\"2222\"],\"password\":[\"3333333\"]}', '0', null, '2019-09-12 17:23:27');
INSERT INTO `sys_oper_log` VALUES ('142', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '0', null, '2019-09-12 17:23:50');
INSERT INTO `sys_oper_log` VALUES ('143', '大转盘奖品信息', '1', 'com.ruoyi.project.system.active.controller.TBigturntableController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/add', '127.0.0.1', '内网IP', '{\"name\":[\"ceshsifsa\"],\"weights\":[\"1\"]}', '0', null, '2019-09-12 17:24:01');
INSERT INTO `sys_oper_log` VALUES ('144', '大转盘奖品信息', '2', 'com.ruoyi.project.system.active.controller.TBigturntableController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"name\":[\"ceshsifsa\"],\"weights\":[\"444\"]}', '0', null, '2019-09-12 17:24:06');
INSERT INTO `sys_oper_log` VALUES ('145', '大转盘奖品信息', '3', 'com.ruoyi.project.system.active.controller.TBigturntableController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '0', null, '2019-09-12 17:25:20');
INSERT INTO `sys_oper_log` VALUES ('146', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"888\"],\"password\":[\"777\"]}', '0', null, '2019-09-12 17:30:19');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_redbag', '127.0.0.1', '内网IP', '{}', '1', '', '2019-09-25 11:20:26');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_redbag', '127.0.0.1', '内网IP', '{}', '1', '', '2019-09-25 11:26:43');
INSERT INTO `sys_oper_log` VALUES ('149', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/t_redbag', '127.0.0.1', '内网IP', '{}', '1', '', '2019-09-25 11:27:32');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"平台一活动管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-calendar-plus-o\"],\"visible\":[\"0\"]}', '0', null, '2019-09-25 14:50:27');
INSERT INTO `sys_oper_log` VALUES ('151', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"活动用户管理\"],\"url\":[\"/active/tUser1\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tUser1:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-25 14:51:34');
INSERT INTO `sys_oper_log` VALUES ('152', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '127.0.0.1', '内网IP', '{\"account\":[\"123456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-25 14:52:04');
INSERT INTO `sys_oper_log` VALUES ('153', '平台1用户', '3', 'com.ruoyi.project.system.active.controller.TUser1Controller.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-09-25 14:54:12');
INSERT INTO `sys_oper_log` VALUES ('154', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '127.0.0.1', '内网IP', '{\"account\":[\"123456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-25 14:54:19');
INSERT INTO `sys_oper_log` VALUES ('155', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"account\":[\"123456\"],\"password\":[\"12345\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect datetime value: \'12345\' for column \'updateTime\' at row 1\r\n### The error may involve com.ruoyi.project.system.active.mapper.TUser1Mapper.updateTUser1-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update t_user1          SET account = ?,             password = ?,                                                                 updateTime = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect datetime value: \'12345\' for column \'updateTime\' at row 1\n; Data truncation: Incorrect datetime value: \'12345\' for column \'updateTime\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect datetime value: \'12345\' for column \'updateTime\' at row 1', '2019-09-25 14:56:12');
INSERT INTO `sys_oper_log` VALUES ('156', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"account\":[\"123456\"],\"password\":[\"11111\"]}', '0', null, '2019-09-25 14:58:53');
INSERT INTO `sys_oper_log` VALUES ('157', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"account\":[\"123456\"],\"password\":[\"1234567\"]}', '0', null, '2019-09-25 14:59:50');
INSERT INTO `sys_oper_log` VALUES ('158', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"states\":[\"1\"]}', '0', null, '2019-09-25 17:05:47');
INSERT INTO `sys_oper_log` VALUES ('159', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"states\":[\"0\"]}', '0', null, '2019-09-25 17:07:38');
INSERT INTO `sys_oper_log` VALUES ('160', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"states\":[\"1\"]}', '0', null, '2019-09-25 17:07:41');
INSERT INTO `sys_oper_log` VALUES ('161', '平台1用户抽奖记录', '3', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetRemove()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/remove', '127.0.0.1', '内网IP', '{\"id\":[\"2\"]}', '0', null, '2019-09-25 17:14:16');
INSERT INTO `sys_oper_log` VALUES ('162', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"states\":[\"1\"]}', '0', null, '2019-09-25 17:14:27');
INSERT INTO `sys_oper_log` VALUES ('163', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"states\":[\"0\"]}', '0', null, '2019-09-25 17:14:29');
INSERT INTO `sys_oper_log` VALUES ('164', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '127.0.0.1', '内网IP', '{\"account\":[\"121212\"],\"password\":[\"123456\"]}', '0', null, '2019-09-25 17:22:44');
INSERT INTO `sys_oper_log` VALUES ('165', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '127.0.0.1', '内网IP', '{\"account\":[\"12345678\"],\"password\":[\"123\"]}', '0', null, '2019-09-25 17:23:38');
INSERT INTO `sys_oper_log` VALUES ('166', '平台1用户抽奖记录', '3', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetRemove()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/remove', '127.0.0.1', '内网IP', '{\"id\":[\"7\"]}', '0', null, '2019-09-25 17:31:52');
INSERT INTO `sys_oper_log` VALUES ('167', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"account\":[\"12345678\"],\"password\":[\"123456\"]}', '0', null, '2019-09-25 17:57:11');
INSERT INTO `sys_oper_log` VALUES ('168', '平台1用户', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"account\":[\"123456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-25 17:57:18');
INSERT INTO `sys_oper_log` VALUES ('169', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '127.0.0.1', '内网IP', '{\"account\":[\"123456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-26 11:43:41');
INSERT INTO `sys_oper_log` VALUES ('170', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"states\":[\"1\"]}', '0', null, '2019-09-26 14:08:37');
INSERT INTO `sys_oper_log` VALUES ('171', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"states\":[\"0\"]}', '0', null, '2019-09-26 14:08:40');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"平台二活动管理\"],\"url\":[\"/active/tUser2\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-calendar-minus-o\"],\"visible\":[\"0\"]}', '0', null, '2019-09-26 14:30:43');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"活动用户管理\"],\"url\":[\"/active/tUser2\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tUser2:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-26 14:33:04');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"平台二活动管理\"],\"url\":[\"/active/tUser2\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-calendar-minus-o\"],\"visible\":[\"0\"]}', '0', null, '2019-09-26 14:33:17');
INSERT INTO `sys_oper_log` VALUES ('175', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser2Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/add', '127.0.0.1', '内网IP', '{\"account\":[\"123456\"],\"password\":[\"123456\"]}', '0', null, '2019-09-26 14:34:22');
INSERT INTO `sys_oper_log` VALUES ('176', '平台2用户', '2', 'com.ruoyi.project.system.active.controller.TUser2Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"account\":[\"123456\"],\"password\":[\"1234567\"]}', '0', null, '2019-09-26 14:37:06');
INSERT INTO `sys_oper_log` VALUES ('177', '平台2用户', '1', 'com.ruoyi.project.system.active.controller.TUser2Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/add', '127.0.0.1', '内网IP', '{\"account\":[\"111\"],\"password\":[\"111\"]}', '0', null, '2019-09-26 14:37:14');
INSERT INTO `sys_oper_log` VALUES ('178', '平台2用户', '3', 'com.ruoyi.project.system.active.controller.TUser2Controller.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '1', 'Invalid bound statement (not found): com.ruoyi.project.system.active.mapper.TUser2Mapper.deleteTUser2ByIds', '2019-09-26 14:37:17');
INSERT INTO `sys_oper_log` VALUES ('179', '平台2用户', '3', 'com.ruoyi.project.system.active.controller.TUser2Controller.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-09-26 14:38:35');
INSERT INTO `sys_oper_log` VALUES ('180', '平台2用户抽奖记录', '3', 'com.ruoyi.project.system.active.controller.TUser2Controller.rollSetRemove()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/rollSet/remove', '127.0.0.1', '内网IP', '{\"id\":[\"2\"]}', '0', null, '2019-09-26 14:38:59');
INSERT INTO `sys_oper_log` VALUES ('181', '平台2用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser2Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"states\":[\"1\"]}', '0', null, '2019-09-26 14:39:05');
INSERT INTO `sys_oper_log` VALUES ('182', '平台2用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser2Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/rollSet/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"states\":[\"0\"]}', '0', null, '2019-09-26 14:39:10');
INSERT INTO `sys_oper_log` VALUES ('183', '平台1用户抽奖记录', '3', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetRemove()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/remove', '192.168.10.6', '内网IP', '{\"id\":[\"10\"]}', '0', null, '2019-09-26 16:52:34');
INSERT INTO `sys_oper_log` VALUES ('184', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '192.168.10.6', '内网IP', '{\"id\":[\"8\"],\"states\":[\"1\"]}', '0', null, '2019-09-26 16:52:36');
INSERT INTO `sys_oper_log` VALUES ('185', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '192.168.10.6', '内网IP', '{\"id\":[\"8\"],\"states\":[\"0\"]}', '0', null, '2019-09-26 16:52:38');
INSERT INTO `sys_oper_log` VALUES ('186', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '192.168.10.6', '内网IP', '{\"id\":[\"8\"],\"states\":[\"1\"]}', '0', null, '2019-09-26 16:52:42');
INSERT INTO `sys_oper_log` VALUES ('187', '平台1用户', '1', 'com.ruoyi.project.system.active.controller.TUser1Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/add', '192.168.10.6', '内网IP', '{\"account\":[\"123123\"],\"password\":[\"123123\"]}', '0', null, '2019-09-26 16:52:50');
INSERT INTO `sys_oper_log` VALUES ('188', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '192.168.10.6', '内网IP', '{\"id\":[\"11\"],\"states\":[\"1\"]}', '0', null, '2019-09-26 16:53:23');
INSERT INTO `sys_oper_log` VALUES ('189', '平台1用户抽奖记录', '2', 'com.ruoyi.project.system.active.controller.TUser1Controller.rollSetEdit()', 'POST', '1', 'admin', '研发部门', '/active/tUser1/rollSet/edit', '192.168.10.6', '内网IP', '{\"id\":[\"11\"],\"states\":[\"0\"]}', '0', null, '2019-09-26 16:53:24');
INSERT INTO `sys_oper_log` VALUES ('190', '平台2用户', '1', 'com.ruoyi.project.system.active.controller.TUser2Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser2/add', '192.168.10.6', '内网IP', '{\"account\":[\"444\"],\"password\":[\"444\"]}', '0', null, '2019-09-26 16:53:34');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"红包雨平台一活动管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-calendar-plus-o\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 15:17:54');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"红包雨平台二活动管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-calendar-minus-o\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 15:18:08');
INSERT INTO `sys_oper_log` VALUES ('193', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"123\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 15:44:47');
INSERT INTO `sys_oper_log` VALUES ('194', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '1', 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-09-27 15:46:53');
INSERT INTO `sys_oper_log` VALUES ('195', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '1', 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-09-27 15:49:34');
INSERT INTO `sys_oper_log` VALUES ('196', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '1', 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2019-09-27 15:52:12');
INSERT INTO `sys_oper_log` VALUES ('197', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 15:55:07');
INSERT INTO `sys_oper_log` VALUES ('198', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '0', null, '2019-09-27 15:57:39');
INSERT INTO `sys_oper_log` VALUES ('199', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '0', null, '2019-09-27 15:57:41');
INSERT INTO `sys_oper_log` VALUES ('200', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 15:57:48');
INSERT INTO `sys_oper_log` VALUES ('201', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"123\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 15:59:11');
INSERT INTO `sys_oper_log` VALUES ('202', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"54\"],\"states\":[\"1\"]}', '0', null, '2019-09-27 16:41:16');
INSERT INTO `sys_oper_log` VALUES ('203', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"54\"],\"states\":[\"0\"]}', '0', null, '2019-09-27 16:41:23');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"大转盘活动管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-sliders\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 16:42:31');
INSERT INTO `sys_oper_log` VALUES ('205', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"平台一抽奖用户管理\"],\"url\":[\"/active/tUser\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tUser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 16:42:47');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"平台二抽奖用户管理\"],\"url\":[\"/active/tUser3\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tUser:review\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 17:01:03');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"抽奖奖品设置\"],\"url\":[\"/active/tBigturntable\"],\"target\":[\"menuItem\"],\"perms\":[\"active:tBigturntable:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-09-27 17:01:13');
INSERT INTO `sys_oper_log` VALUES ('208', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUser3Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 17:01:32');
INSERT INTO `sys_oper_log` VALUES ('209', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUser3Controller.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/edit', '127.0.0.1', '内网IP', '{\"id\":[\"21\"],\"account\":[\"1\"],\"password\":[\"123\"]}', '0', null, '2019-09-27 17:01:45');
INSERT INTO `sys_oper_log` VALUES ('210', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUser3Controller.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '0', null, '2019-09-27 17:01:53');
INSERT INTO `sys_oper_log` VALUES ('211', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUser3Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/add', '127.0.0.1', '内网IP', '{\"account\":[\"12\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 17:02:05');
INSERT INTO `sys_oper_log` VALUES ('212', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUser3Controller.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"55\"],\"states\":[\"1\"]}', '0', null, '2019-09-27 17:02:44');
INSERT INTO `sys_oper_log` VALUES ('213', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"20\"]}', '0', null, '2019-09-27 17:15:31');
INSERT INTO `sys_oper_log` VALUES ('214', '抽奖用户', '3', 'com.ruoyi.project.system.active.controller.TUserController.remove()', 'POST', '1', 'admin', '研发部门', '/active/tUser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"19\"]}', '0', null, '2019-09-27 17:15:33');
INSERT INTO `sys_oper_log` VALUES ('215', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"1\"],\"password\":[\"123\"]}', '0', null, '2019-09-27 17:16:15');
INSERT INTO `sys_oper_log` VALUES ('216', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"55\"],\"states\":[\"1\"]}', '0', null, '2019-09-27 17:20:53');
INSERT INTO `sys_oper_log` VALUES ('217', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"56\"],\"states\":[\"1\"]}', '0', null, '2019-09-27 17:21:03');
INSERT INTO `sys_oper_log` VALUES ('218', '大转盘奖品信息', '2', 'com.ruoyi.project.system.active.controller.TBigturntableController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"劳力士绿水鬼\"],\"weights\":[\"1\"]}', '0', null, '2019-09-27 17:21:52');
INSERT INTO `sys_oper_log` VALUES ('219', '大转盘奖品信息', '2', 'com.ruoyi.project.system.active.controller.TBigturntableController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"iPhone 11 Pro Max\"],\"weights\":[\"2\"]}', '0', null, '2019-09-27 17:22:10');
INSERT INTO `sys_oper_log` VALUES ('220', '大转盘奖品信息', '2', 'com.ruoyi.project.system.active.controller.TBigturntableController.editSave()', 'POST', '1', 'admin', '研发部门', '/active/tBigturntable/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"彩金88\"],\"weights\":[\"3\"]}', '0', null, '2019-09-27 17:22:35');
INSERT INTO `sys_oper_log` VALUES ('221', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser/add', '127.0.0.1', '内网IP', '{\"account\":[\"123\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 17:23:59');
INSERT INTO `sys_oper_log` VALUES ('222', '抽奖用户', '1', 'com.ruoyi.project.system.active.controller.TUser3Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/active/tUser3/add', '127.0.0.1', '内网IP', '{\"account\":[\"123\"],\"password\":[\"123456\"]}', '0', null, '2019-09-27 17:27:22');
INSERT INTO `sys_oper_log` VALUES ('223', '抽奖用户', '2', 'com.ruoyi.project.system.active.controller.TUserController.prizeSet()', 'POST', '1', 'admin', '研发部门', '/active/tUser/addPrized/prizeSet', '127.0.0.1', '内网IP', '{\"id\":[\"57\"],\"states\":[\"1\"]}', '0', null, '2019-09-27 17:29:42');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
INSERT INTO `sys_role` VALUES ('100', 'manager', 'active:tUser:view,active:tBigturntable:view', '3', '2', '0', '0', 'admin', '2019-09-12 17:02:49', 'admin', '2019-09-12 17:12:33', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');
INSERT INTO `sys_role_dept` VALUES ('100', '100');
INSERT INTO `sys_role_dept` VALUES ('100', '101');
INSERT INTO `sys_role_dept` VALUES ('100', '102');
INSERT INTO `sys_role_dept` VALUES ('100', '103');
INSERT INTO `sys_role_dept` VALUES ('100', '104');
INSERT INTO `sys_role_dept` VALUES ('100', '105');
INSERT INTO `sys_role_dept` VALUES ('100', '106');
INSERT INTO `sys_role_dept` VALUES ('100', '107');
INSERT INTO `sys_role_dept` VALUES ('100', '108');
INSERT INTO `sys_role_dept` VALUES ('100', '109');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('100', '2000');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2019-09-29 11:01:48', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-29 11:01:48', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2019-09-12 17:01:23', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-12 17:01:22', '测试员');
INSERT INTO `sys_user` VALUES ('100', '103', 'manager', 'manager', '00', '123@qq.com', '13888888888', '0', '', '6331c50c8005d74b35efe3563682c4b5', 'cc3a30', '0', '0', '127.0.0.1', '2019-09-12 17:13:07', 'admin', '2019-09-12 17:03:25', '', '2019-09-12 17:13:07', null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('31222152-7800-4a4f-8058-9a2a3b1fb251', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-09-29 11:01:42', '2019-09-29 11:01:49', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '100');

-- ----------------------------
-- Table structure for t_bigturntable
-- ----------------------------
DROP TABLE IF EXISTS `t_bigturntable`;
CREATE TABLE `t_bigturntable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '奖品名称',
  `weights` int(11) DEFAULT NULL COMMENT '奖品权重',
  `isEnable` smallint(1) DEFAULT NULL COMMENT '是否启用',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='大转盘活动内容';

-- ----------------------------
-- Records of t_bigturntable
-- ----------------------------
INSERT INTO `t_bigturntable` VALUES ('1', '劳力士绿水鬼', '1', null, null);
INSERT INTO `t_bigturntable` VALUES ('2', 'iPhone 11 Pro Max', '2', null, null);
INSERT INTO `t_bigturntable` VALUES ('3', '彩金88', '3', null, null);
INSERT INTO `t_bigturntable` VALUES ('4', '彩金38', '10', null, null);
INSERT INTO `t_bigturntable` VALUES ('5', '彩金18.8', '15', null, null);
INSERT INTO `t_bigturntable` VALUES ('6', '彩金8.8', '25', null, null);

-- ----------------------------
-- Table structure for t_redbag
-- ----------------------------
DROP TABLE IF EXISTS `t_redbag`;
CREATE TABLE `t_redbag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `money` double(10,3) DEFAULT '0.000' COMMENT '红包金额',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='固定红包表';

-- ----------------------------
-- Records of t_redbag
-- ----------------------------
INSERT INTO `t_redbag` VALUES ('73', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('74', '0.200', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('75', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('76', '0.200', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('77', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('78', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('79', '0.400', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('80', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('81', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('82', '0.500', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('83', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('84', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('85', '0.200', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('86', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('87', '0.200', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('88', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('89', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('90', '0.400', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('91', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('92', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('93', '0.500', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('94', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('95', '0.300', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('96', '0.200', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('97', '0.100', '2019-09-25 18:21:04');
INSERT INTO `t_redbag` VALUES ('98', '0.200', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('99', '0.300', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('100', '0.100', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('101', '0.400', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('102', '0.300', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('103', '0.100', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('104', '0.500', '2019-09-25 18:21:05');
INSERT INTO `t_redbag` VALUES ('105', '0.100', '2019-09-25 18:21:05');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `rollTimes` int(11) DEFAULT '0' COMMENT '抽奖次数',
  `isEnable` tinyint(2) DEFAULT NULL COMMENT '用户是否可用',
  `prizeId` bigint(2) DEFAULT NULL COMMENT '中奖ID',
  `displayPwd` varchar(255) DEFAULT NULL COMMENT '可见的面膜',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户抽奖中奖信息';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('21', '1', '202cb962ac59075b964b07152d234b70', '0', null, null, '123', '2019-09-27 17:16:16');
INSERT INTO `t_user` VALUES ('22', '123', 'e10adc3949ba59abbe56e057f20f883e', '0', null, null, '123456', '2019-09-27 17:24:00');

-- ----------------------------
-- Table structure for t_user1
-- ----------------------------
DROP TABLE IF EXISTS `t_user1`;
CREATE TABLE `t_user1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键唯一标识',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `times` int(11) DEFAULT '0' COMMENT '总次数',
  `rolltimes` int(11) DEFAULT '0' COMMENT '已经抽奖次数',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `displayPwd` varchar(255) DEFAULT NULL COMMENT '显示密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='平台1的用户信息';

-- ----------------------------
-- Records of t_user1
-- ----------------------------
INSERT INTO `t_user1` VALUES ('5', '123456', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '2019-09-26 11:43:41', '2019-09-26 11:43:41', '123456');
INSERT INTO `t_user1` VALUES ('6', '123123', '4297f44b13955235245b2497399d7a93', '1', '0', '2019-09-26 16:52:51', '2019-09-26 16:52:51', '123123');
INSERT INTO `t_user1` VALUES ('7', '123', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', null, null, '123456');

-- ----------------------------
-- Table structure for t_user1_rolllog
-- ----------------------------
DROP TABLE IF EXISTS `t_user1_rolllog`;
CREATE TABLE `t_user1_rolllog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` bigint(20) DEFAULT NULL COMMENT '用户表ID',
  `account` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `money` decimal(10,3) DEFAULT '0.000',
  `states` tinyint(2) DEFAULT '0' COMMENT '是否派奖   0 为派奖  1 已派奖',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isRoll` tinyint(2) DEFAULT '0' COMMENT '是否抽奖 0 为抽奖  1 以抽奖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='红包抽奖记录';

-- ----------------------------
-- Records of t_user1_rolllog
-- ----------------------------
INSERT INTO `t_user1_rolllog` VALUES ('8', '5', '123456', '0.800', '1', '2019-09-26 11:44:40', '1');
INSERT INTO `t_user1_rolllog` VALUES ('9', '5', '123456', '0.800', '0', '2019-09-26 11:47:55', '1');
INSERT INTO `t_user1_rolllog` VALUES ('11', '6', '123123', '0.000', '0', null, '0');

-- ----------------------------
-- Table structure for t_user2
-- ----------------------------
DROP TABLE IF EXISTS `t_user2`;
CREATE TABLE `t_user2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键唯一标识',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `times` int(11) DEFAULT '0' COMMENT '总次数',
  `rolltimes` int(11) DEFAULT '0' COMMENT '已经抽奖次数',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `displayPwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='平台1的用户信息';

-- ----------------------------
-- Records of t_user2
-- ----------------------------
INSERT INTO `t_user2` VALUES ('1', '123456', 'fcea920f7412b5da7be0cf42b8c93759', '0', '0', '2019-09-26 14:34:23', '2019-09-26 14:34:23', '1234567');
INSERT INTO `t_user2` VALUES ('3', '444', '550a141f12de6341fba65b0ad0433500', '0', '0', '2019-09-26 16:53:35', '2019-09-26 16:53:35', '444');

-- ----------------------------
-- Table structure for t_user2_rolllog
-- ----------------------------
DROP TABLE IF EXISTS `t_user2_rolllog`;
CREATE TABLE `t_user2_rolllog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` bigint(20) DEFAULT NULL COMMENT '用户表ID',
  `account` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `money` decimal(10,0) DEFAULT '0',
  `states` tinyint(2) DEFAULT '0' COMMENT '是否派奖   0 为派奖  1 已派奖',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `isRoll` tinyint(2) DEFAULT NULL COMMENT '是否抽奖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='红包抽奖记录';

-- ----------------------------
-- Records of t_user2_rolllog
-- ----------------------------
INSERT INTO `t_user2_rolllog` VALUES ('1', '1', '123456', '1', '0', '2019-09-26 15:12:06', '1');

-- ----------------------------
-- Table structure for t_user3
-- ----------------------------
DROP TABLE IF EXISTS `t_user3`;
CREATE TABLE `t_user3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `rollTimes` int(11) DEFAULT '0' COMMENT '抽奖次数',
  `isEnable` tinyint(2) DEFAULT NULL COMMENT '用户是否可用',
  `prizeId` bigint(2) DEFAULT NULL COMMENT '中奖ID',
  `displayPwd` varchar(255) DEFAULT NULL COMMENT '可见的面膜',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='用户抽奖中奖信息';

-- ----------------------------
-- Records of t_user3
-- ----------------------------
INSERT INTO `t_user3` VALUES ('23', '123', 'e10adc3949ba59abbe56e057f20f883e', '0', null, null, '123456', '2019-09-27 17:27:23');

-- ----------------------------
-- Table structure for t_user3_prized
-- ----------------------------
DROP TABLE IF EXISTS `t_user3_prized`;
CREATE TABLE `t_user3_prized` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userID` bigint(20) DEFAULT NULL COMMENT '用户id',
  `prizedID` bigint(20) DEFAULT NULL COMMENT '奖品ID',
  `prizedName` varchar(255) DEFAULT NULL COMMENT '奖品名称',
  `userAccount` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `create_time` datetime DEFAULT NULL,
  `isUsed` smallint(2) DEFAULT '0' COMMENT '是否已经抽过  0  为抽过  1 已经抽过',
  `states` smallint(2) DEFAULT '0' COMMENT '是否派奖  0 为派奖  1 已派奖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user3_prized
-- ----------------------------
INSERT INTO `t_user3_prized` VALUES ('56', '23', '1', '劳力士绿水鬼', '123', null, '1', '0');
INSERT INTO `t_user3_prized` VALUES ('57', '23', '2', 'iPhone 11 Pro Max', '123', null, '1', '0');

-- ----------------------------
-- Table structure for t_user_prized
-- ----------------------------
DROP TABLE IF EXISTS `t_user_prized`;
CREATE TABLE `t_user_prized` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userID` bigint(20) DEFAULT NULL COMMENT '用户id',
  `prizedID` bigint(20) DEFAULT NULL COMMENT '奖品ID',
  `prizedName` varchar(255) DEFAULT NULL COMMENT '奖品名称',
  `userAccount` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `create_time` datetime DEFAULT NULL,
  `isUsed` smallint(2) DEFAULT '0' COMMENT '是否已经抽过  0  为抽过  1 已经抽过',
  `states` smallint(2) DEFAULT '0' COMMENT '是否派奖  0 为派奖  1 已派奖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_prized
-- ----------------------------
INSERT INTO `t_user_prized` VALUES ('55', '21', '1', 'iphone11', '1', null, '1', '1');
INSERT INTO `t_user_prized` VALUES ('56', '21', '2', '现金888', '1', null, '1', '1');
INSERT INTO `t_user_prized` VALUES ('57', '22', '1', '劳力士绿水鬼', '123', null, '1', '1');
