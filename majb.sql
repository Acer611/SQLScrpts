
-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(10) NOT NULL DEFAULT '0' COMMENT '设计项代码',
  `name` varchar(10) DEFAULT NULL COMMENT '设置项名称',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '状态：0 停用 1启用 2废弃',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `age` int(2) DEFAULT '0' COMMENT '年龄',
  `sex` int(1) DEFAULT '0' COMMENT '0 女 1男',
  `phone` varchar(11) NOT NULL,
  `password` varchar(32) NOT NULL COMMENT '密码',
  `app_id` varchar(10) NOT NULL DEFAULT '0' COMMENT 'appId',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
