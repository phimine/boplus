
CREATE TABLE `bop_material` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int NOT NULL DEFAULT '1' COMMENT '类型1、图片；2、视频',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci  COMMENT '素材链接 ',
  `create_time` timestamp DEFAULT  CURRENT_TIMESTAMP  COMMENT '创建时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `creator_id` int unsigned COMMENT '创建者ID',
  `creator` varchar(50)  CHARACTER SET utf8 COLLATE utf8_general_ci  COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='素材表';

CREATE TABLE `bop_vip_price` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `price` DECIMAL(8, 2) UNSIGNED NOT NULL COMMENT '购买金额',
  `real_price` DECIMAL(8, 2) UNSIGNED NOT NULL COMMENT '实际金额',
  `period` int unsigned NOT NULL COMMENT 'VIP时效（天）',
  `addTime` int unsigned DEFAULT '0' COMMENT '创建时间',
  `isDel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='VIP价格表';

CREATE TABLE `bop_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账户',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `real_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '真实姓名',
  `birthday` int unsigned  DEFAULT   '0' COMMENT '生日',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '身份证号码',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户备注',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮箱',
  `city` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所在城市',
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作单位',
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职位',
  `concern` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关注领域',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '添加ip',
  `last_time` int unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后一次登录ip',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `vip_valid_date` int unsigned  DEFAULT  '0' COMMENT 'vip有效时间',
  `is_forever` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型',
  `login_type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';