# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.20)
# Database: boplus
# Generation Time: 2020-06-06 09:10:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table alipay_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alipay_config`;

CREATE TABLE `alipay_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='支付宝配置类';

LOCK TABLES `alipay_config` WRITE;
/*!40000 ALTER TABLE `alipay_config` DISABLE KEYS */;

INSERT INTO `alipay_config` (`id`, `app_id`, `charset`, `format`, `gateway_url`, `notify_url`, `private_key`, `public_key`, `return_url`, `sign_type`, `sys_service_provider_id`)
VALUES
	(1,'2016091700532697','utf-8','JSON','https://openapi.alipaydev.com/gateway.do','http://api.auauz.net/api/aliPay/notify','MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==','MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB','http://api.auauz.net/api/aliPay/return','RSA2','2088102176044281');

/*!40000 ALTER TABLE `alipay_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bop_material
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bop_material`;

CREATE TABLE `bop_material` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int NOT NULL DEFAULT '1' COMMENT '类型1、图片；2、视频',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '素材链接 ',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `creator_id` int unsigned DEFAULT NULL COMMENT '创建者ID',
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='素材表';



# Dump of table bop_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bop_user`;

CREATE TABLE `bop_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账户',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `real_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '真实姓名',
  `birthday` int unsigned DEFAULT '0' COMMENT '生日',
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
  `vip_valid_date` int unsigned DEFAULT '0' COMMENT 'vip有效时间',
  `is_forever` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型',
  `login_type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `nickname` (`nickname`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';



# Dump of table bop_vip_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bop_vip_price`;

CREATE TABLE `bop_vip_price` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '购买金额',
  `real_price` decimal(8,2) unsigned NOT NULL COMMENT '实际金额',
  `period` int unsigned NOT NULL COMMENT 'VIP时效（天）',
  `add_time` int unsigned DEFAULT '0' COMMENT '创建时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='VIP价格表';

LOCK TABLES `bop_vip_price` WRITE;
/*!40000 ALTER TABLE `bop_vip_price` DISABLE KEYS */;

INSERT INTO `bop_vip_price` (`id`, `name`, `price`, `real_price`, `period`, `add_time`, `is_del`)
VALUES
	(1,'永久VIP',9999.00,8999.00,0,0,0),
	(2,'年度VIP',1999.00,1999.00,365,0,0),
	(3,'季度VIP',499.00,499.00,90,0,0),
	(4,'月度VIP',199.00,199.00,30,0,0),
	(5,'一日VIP',8.00,8.00,1,0,0);

/*!40000 ALTER TABLE `bop_vip_price` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table column_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `column_config`;

CREATE TABLE `column_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

LOCK TABLES `column_config` WRITE;
/*!40000 ALTER TABLE `column_config` DISABLE KEYS */;

INSERT INTO `column_config` (`id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`)
VALUES
	(1,'gen_test','id','int',NULL,'auto_increment',b'0',NULL,'PRI',b'0',b'1',NULL,'ID',NULL),
	(2,'gen_test','sex','int',NULL,'',b'1',NULL,'',b'1',b'0','NotNull','性别',NULL),
	(3,'gen_test','create_time','datetime',NULL,'',b'0',NULL,'',b'1',b'0','BetWeen','',NULL),
	(139,'users_roles','user_id','bigint',NULL,'',b'1',NULL,'PRI',b'1',b'1',NULL,'用户ID',NULL),
	(140,'users_roles','role_id','bigint',NULL,'',b'1',NULL,'PRI',b'1',b'1',NULL,'角色ID',NULL),
	(141,'user_avatar','id','bigint',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'',NULL),
	(142,'user_avatar','real_name','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'真实文件名',NULL),
	(143,'user_avatar','path','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'路径',NULL),
	(144,'user_avatar','size','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'大小',NULL),
	(145,'user_avatar','create_time','datetime',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'创建时间',NULL),
	(146,'yx_material_group','id','varchar',NULL,'',b'1',NULL,'PRI',b'1',b'1',NULL,'PK',NULL),
	(147,'yx_material_group','user_id','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'所属租户',NULL),
	(148,'yx_material_group','del_flag','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'逻辑删除标记（0：显示；1：隐藏）',NULL),
	(149,'yx_material_group','create_time','datetime',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'创建时间',NULL),
	(150,'yx_material_group','update_time','timestamp',NULL,'on update CURRENT_TIMESTAMP',b'1',NULL,'',b'1',b'1',NULL,'最后更新时间',NULL),
	(151,'yx_material_group','create_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'创建者ID',NULL),
	(152,'yx_material_group','name','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'分组名',NULL),
	(153,'yx_material','id','varchar',NULL,'',b'1',NULL,'PRI',b'1',b'1',NULL,'PK',NULL),
	(154,'yx_material','user_id','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'所属租户',NULL),
	(155,'yx_material','del_flag','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'逻辑删除标记（0：显示；1：隐藏）',NULL),
	(156,'yx_material','create_time','datetime',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'创建时间',NULL),
	(157,'yx_material','update_time','timestamp',NULL,'on update CURRENT_TIMESTAMP',b'1',NULL,'',b'1',b'1',NULL,'最后更新时间',NULL),
	(158,'yx_material','create_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'创建者ID',NULL),
	(159,'yx_material','type','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'类型1、图片；2、视频',NULL),
	(160,'yx_material','group_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'分组ID',NULL),
	(161,'yx_material','name','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'素材名',NULL),
	(162,'yx_material','url','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'素材链接',NULL),
	(163,'yx_user','uid','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'用户id',NULL),
	(164,'yx_user','username','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'用户账户(跟accout一样)',NULL),
	(165,'yx_user','account','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'用户账号',NULL),
	(166,'yx_user','password','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户密码（跟pwd）',NULL),
	(167,'yx_user','pwd','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户密码',NULL),
	(168,'yx_user','real_name','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'真实姓名',NULL),
	(169,'yx_user','birthday','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'生日',NULL),
	(170,'yx_user','card_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'身份证号码',NULL),
	(171,'yx_user','mark','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户备注',NULL),
	(172,'yx_user','partner_id','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'合伙人id',NULL),
	(173,'yx_user','group_id','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户分组id',NULL),
	(174,'yx_user','nickname','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户昵称',NULL),
	(175,'yx_user','avatar','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户头像',NULL),
	(176,'yx_user','phone','char',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'手机号码',NULL),
	(177,'yx_user','add_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'添加时间',NULL),
	(178,'yx_user','add_ip','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'添加ip',NULL),
	(179,'yx_user','last_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'最后一次登录时间',NULL),
	(180,'yx_user','last_ip','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'最后一次登录ip',NULL),
	(181,'yx_user','now_money','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户余额',NULL),
	(182,'yx_user','brokerage_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'佣金金额',NULL),
	(183,'yx_user','integral','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户剩余积分',NULL),
	(184,'yx_user','sign_num','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'连续签到天数',NULL),
	(185,'yx_user','status','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'1为正常，0为禁止',NULL),
	(186,'yx_user','level','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'等级',NULL),
	(187,'yx_user','spread_uid','int',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'推广元id',NULL),
	(188,'yx_user','spread_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'推广员关联时间',NULL),
	(189,'yx_user','user_type','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户类型',NULL),
	(190,'yx_user','is_promoter','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'是否为推广员',NULL),
	(191,'yx_user','pay_count','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户购买次数',NULL),
	(192,'yx_user','spread_count','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'下级人数',NULL),
	(193,'yx_user','clean_time','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'清理会员时间',NULL),
	(194,'yx_user','addres','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'详细地址',NULL),
	(195,'yx_user','adminid','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'管理员编号 ',NULL),
	(196,'yx_user','login_type','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户登陆类型，h5,wechat,routine',NULL),
	(197,'yx_wechat_media','id','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'微信视频音频id',NULL),
	(198,'yx_wechat_media','type','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'回复类型',NULL),
	(199,'yx_wechat_media','path','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'文件路径',NULL),
	(200,'yx_wechat_media','media_id','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'微信服务器返回的id',NULL),
	(201,'yx_wechat_media','url','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'地址',NULL),
	(202,'yx_wechat_media','temporary','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'是否永久或者临时 0永久1临时',NULL),
	(203,'yx_wechat_media','add_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'添加时间',NULL),
	(204,'yx_store_order','id','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'订单ID',NULL),
	(205,'yx_store_order','order_id','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'订单号',NULL),
	(206,'yx_store_order','extend_order_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'额外订单号',NULL),
	(207,'yx_store_order','uid','int',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'用户id',NULL),
	(208,'yx_store_order','real_name','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户姓名',NULL),
	(209,'yx_store_order','user_phone','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户电话',NULL),
	(210,'yx_store_order','user_address','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'详细地址',NULL),
	(211,'yx_store_order','cart_id','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'购物车id',NULL),
	(212,'yx_store_order','freight_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'运费金额',NULL),
	(213,'yx_store_order','total_num','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'订单商品总数',NULL),
	(214,'yx_store_order','total_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'订单总价',NULL),
	(215,'yx_store_order','total_postage','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'邮费',NULL),
	(216,'yx_store_order','pay_price','decimal',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'实际支付金额',NULL),
	(217,'yx_store_order','pay_postage','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'支付邮费',NULL),
	(218,'yx_store_order','deduction_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'抵扣金额',NULL),
	(219,'yx_store_order','coupon_id','int',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'优惠券id',NULL),
	(220,'yx_store_order','coupon_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'优惠券金额',NULL),
	(221,'yx_store_order','paid','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'支付状态',NULL),
	(222,'yx_store_order','pay_time','int',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'支付时间',NULL),
	(223,'yx_store_order','pay_type','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'支付方式',NULL),
	(224,'yx_store_order','add_time','int',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'创建时间',NULL),
	(225,'yx_store_order','status','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',NULL),
	(226,'yx_store_order','refund_status','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'0 未退款 1 申请中 2 已退款',NULL),
	(227,'yx_store_order','refund_reason_wap_img','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'退款图片',NULL),
	(228,'yx_store_order','refund_reason_wap_explain','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'退款用户说明',NULL),
	(229,'yx_store_order','refund_reason_time','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'退款时间',NULL),
	(230,'yx_store_order','refund_reason_wap','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'前台退款原因',NULL),
	(231,'yx_store_order','refund_reason','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'不退款的理由',NULL),
	(232,'yx_store_order','refund_price','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'退款金额',NULL),
	(233,'yx_store_order','delivery_sn','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'快递公司编号',NULL),
	(234,'yx_store_order','delivery_name','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'快递名称/送货人姓名',NULL),
	(235,'yx_store_order','delivery_type','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'发货类型',NULL),
	(236,'yx_store_order','delivery_id','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'快递单号/手机号',NULL),
	(237,'yx_store_order','gain_integral','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'消费赚取积分',NULL),
	(238,'yx_store_order','use_integral','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'使用积分',NULL),
	(239,'yx_store_order','back_integral','decimal',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'给用户退了多少积分',NULL),
	(240,'yx_store_order','mark','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'备注',NULL),
	(241,'yx_store_order','is_del','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'是否删除',NULL),
	(242,'yx_store_order','unique','char',NULL,'',b'1',NULL,'UNI',b'1',b'1',NULL,'唯一id(md5加密)类似id',NULL),
	(243,'yx_store_order','remark','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'管理员备注',NULL),
	(244,'yx_store_order','mer_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'商户ID',NULL),
	(245,'yx_store_order','is_mer_check','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'',NULL),
	(246,'yx_store_order','combination_id','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'拼团产品id0一般产品',NULL),
	(247,'yx_store_order','pink_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'拼团id 0没有拼团',NULL),
	(248,'yx_store_order','cost','decimal',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'成本价',NULL),
	(249,'yx_store_order','seckill_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'秒杀产品ID',NULL),
	(250,'yx_store_order','bargain_id','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'砍价id',NULL),
	(251,'yx_store_order','verify_code','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'核销码',NULL),
	(252,'yx_store_order','store_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'门店id',NULL),
	(253,'yx_store_order','shipping_type','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'配送方式 1=快递 ，2=门店自提',NULL),
	(254,'yx_store_order','is_channel','tinyint',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'支付渠道(0微信公众号1微信小程序)',NULL),
	(255,'yx_store_order','is_remind','tinyint',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'',NULL),
	(256,'yx_store_order','is_system_del','tinyint',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'',NULL),
	(257,'yx_user_recharge','id','int',NULL,'auto_increment',b'0',NULL,'PRI',b'1',b'0',NULL,'',NULL),
	(258,'yx_user_recharge','uid','int',NULL,'',b'0',NULL,'MUL',b'0',b'0',NULL,'充值用户UID',NULL),
	(259,'yx_user_recharge','order_id','varchar',NULL,'',b'0',NULL,'UNI',b'1',b'0',NULL,'订单号',NULL),
	(260,'yx_user_recharge','price','decimal',NULL,'',b'0',NULL,'',b'1',b'0',NULL,'充值金额',NULL),
	(261,'yx_user_recharge','recharge_type','varchar',NULL,'',b'0',NULL,'MUL',b'1',b'0',NULL,'充值类型',NULL),
	(262,'yx_user_recharge','paid','tinyint',NULL,'',b'0',NULL,'MUL',b'1',b'0',NULL,'是否充值',NULL),
	(263,'yx_user_recharge','pay_time','int',NULL,'',b'0',NULL,'',b'1',b'0',NULL,'充值支付时间',NULL),
	(264,'yx_user_recharge','add_time','int',NULL,'',b'0',NULL,'',b'1',b'0',NULL,'充值时间',NULL),
	(265,'yx_user_recharge','refund_price','decimal',NULL,'',b'0',NULL,'',b'0',b'0',NULL,'退款金额',NULL),
	(266,'yx_user_recharge','nickname','varchar',NULL,'',b'0',NULL,'',b'1',b'0','Like','昵称',NULL),
	(267,'yx_system_store','id','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'',NULL),
	(268,'yx_system_store','name','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'门店名称',NULL),
	(269,'yx_system_store','introduction','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'简介',NULL),
	(270,'yx_system_store','phone','char',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'手机号码',NULL),
	(271,'yx_system_store','address','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'省市区',NULL),
	(272,'yx_system_store','detailed_address','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'详细地址',NULL),
	(273,'yx_system_store','image','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'门店logo',NULL),
	(274,'yx_system_store','latitude','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'纬度',NULL),
	(275,'yx_system_store','longitude','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'经度',NULL),
	(276,'yx_system_store','valid_time','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'核销有效日期',NULL),
	(277,'yx_system_store','day_time','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'每日营业开关时间',NULL),
	(278,'yx_system_store','add_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'添加时间',NULL),
	(279,'yx_system_store','is_show','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'是否显示',NULL),
	(280,'yx_system_store','is_del','tinyint',NULL,'',b'1',NULL,'',b'0',b'1',NULL,'是否删除',NULL),
	(281,'yx_system_store_staff','id','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'',NULL),
	(282,'yx_system_store_staff','uid','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'微信用户id',NULL),
	(283,'yx_system_store_staff','avatar','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'店员头像',NULL),
	(284,'yx_system_store_staff','store_id','int',NULL,'',b'1','Select','',b'1',b'1',NULL,'门店id',NULL),
	(285,'yx_system_store_staff','staff_name','varchar',NULL,'',b'1',NULL,'',b'1',b'1','Like','店员名称',NULL),
	(286,'yx_system_store_staff','phone','char',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'手机号码',NULL),
	(287,'yx_system_store_staff','verify_status','tinyint',NULL,'',b'1','Radio','',b'1',b'1',NULL,'核销开关',NULL),
	(288,'yx_system_store_staff','status','tinyint',NULL,'',b'1','Radio','',b'1',b'0',NULL,'状态',NULL),
	(289,'yx_system_store_staff','add_time','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'添加时间',NULL),
	(290,'yx_system_store_staff','nickname','varchar',NULL,'',b'1',NULL,'',b'1',b'1','Like','微信昵称',NULL),
	(291,'yx_system_store_staff','store_name','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'所属门店',NULL),
	(292,'yx_wechat_user','uid','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'微信用户id',NULL),
	(293,'yx_wechat_user','unionid','varchar',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',NULL),
	(294,'yx_wechat_user','openid','varchar',NULL,'',b'1',NULL,'UNI',b'1',b'0',NULL,'用户的标识，对当前公众号唯一',NULL),
	(295,'yx_wechat_user','routine_openid','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'小程序唯一身份ID',NULL),
	(296,'yx_wechat_user','nickname','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户的昵称',NULL),
	(297,'yx_wechat_user','headimgurl','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户头像',NULL),
	(298,'yx_wechat_user','sex','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',NULL),
	(299,'yx_wechat_user','city','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户所在城市',NULL),
	(300,'yx_wechat_user','language','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户的语言，简体中文为zh_CN',NULL),
	(301,'yx_wechat_user','province','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户所在省份',NULL),
	(302,'yx_wechat_user','country','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户所在国家',NULL),
	(303,'yx_wechat_user','remark','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',NULL),
	(304,'yx_wechat_user','groupid','smallint',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'用户所在的分组ID（兼容旧的用户分组接口）',NULL),
	(305,'yx_wechat_user','tagid_list','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户被打上的标签ID列表',NULL),
	(306,'yx_wechat_user','subscribe','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'用户是否订阅该公众号标识',NULL),
	(307,'yx_wechat_user','subscribe_time','int',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'关注公众号时间',NULL),
	(308,'yx_wechat_user','add_time','int',NULL,'',b'1',NULL,'MUL',b'1',b'0',NULL,'添加时间',NULL),
	(309,'yx_wechat_user','stair','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'一级推荐人',NULL),
	(310,'yx_wechat_user','second','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'二级推荐人',NULL),
	(311,'yx_wechat_user','order_stair','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'一级推荐人订单',NULL),
	(312,'yx_wechat_user','order_second','int',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'二级推荐人订单',NULL),
	(313,'yx_wechat_user','now_money','decimal',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'佣金',NULL),
	(314,'yx_wechat_user','session_key','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'小程序用户会话密匙',NULL),
	(315,'yx_wechat_user','user_type','varchar',NULL,'',b'1',NULL,'',b'1',b'0',NULL,'用户类型',NULL),
	(316,'yx_express','id','mediumint',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'快递公司id',NULL),
	(317,'yx_express','code','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'快递公司简称',NULL),
	(318,'yx_express','name','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'快递公司全称',NULL),
	(319,'yx_express','sort','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'排序',NULL),
	(320,'yx_express','is_show','tinyint',NULL,'',b'1',NULL,'MUL',b'1',b'1',NULL,'是否显示',NULL),
	(321,'yx_user_level','id','int',NULL,'auto_increment',b'1',NULL,'PRI',b'1',b'0',NULL,'',NULL),
	(322,'yx_user_level','uid','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'用户uid',NULL),
	(323,'yx_user_level','level_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'等级vip',NULL),
	(324,'yx_user_level','grade','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'会员等级',NULL),
	(325,'yx_user_level','valid_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'过期时间',NULL),
	(326,'yx_user_level','is_forever','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'是否永久',NULL),
	(327,'yx_user_level','mer_id','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'商户id',NULL),
	(328,'yx_user_level','status','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'0:禁止,1:正常',NULL),
	(329,'yx_user_level','mark','varchar',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'备注',NULL),
	(330,'yx_user_level','remind','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'是否已通知',NULL),
	(331,'yx_user_level','is_del','tinyint',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'是否删除,0=未删除,1=删除',NULL),
	(332,'yx_user_level','add_time','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'添加时间',NULL),
	(333,'yx_user_level','discount','int',NULL,'',b'1',NULL,'',b'1',b'1',NULL,'享受折扣',NULL);

/*!40000 ALTER TABLE `column_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `pid` bigint NOT NULL COMMENT '上级部门',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门';

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;

INSERT INTO `dept` (`id`, `name`, `pid`, `enabled`, `create_time`)
VALUES
	(1,'BOPLUS',0,b'1','2019-03-01 12:07:37'),
	(2,'研发部',7,b'1','2019-03-25 09:15:32'),
	(5,'运维部',7,b'1','2019-03-25 09:20:44'),
	(6,'测试部',8,b'1','2019-03-25 09:52:18'),
	(7,'华南分部',1,b'1','2019-03-25 11:04:50'),
	(8,'华北分部',1,b'1','2019-03-25 11:04:53'),
	(11,'人事部',8,b'1','2019-03-25 11:07:58'),
	(12,'7773',1,b'1','2020-05-18 19:43:53');

/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dict
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dict`;

CREATE TABLE `dict` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

LOCK TABLES `dict` WRITE;
/*!40000 ALTER TABLE `dict` DISABLE KEYS */;

INSERT INTO `dict` (`id`, `name`, `remark`, `create_time`)
VALUES
	(1,'user_status','用户状态','2019-10-27 20:31:36'),
	(4,'dept_status','部门状态','2019-10-27 20:31:36'),
	(5,'job_status','岗位状态','2019-10-27 20:31:36'),
	(6,'33','3','2020-05-18 19:55:49');

/*!40000 ALTER TABLE `dict` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dict_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dict_detail`;

CREATE TABLE `dict_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排序',
  `dict_id` bigint DEFAULT NULL COMMENT '字典id',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE,
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

LOCK TABLES `dict_detail` WRITE;
/*!40000 ALTER TABLE `dict_detail` DISABLE KEYS */;

INSERT INTO `dict_detail` (`id`, `label`, `value`, `sort`, `dict_id`, `create_time`)
VALUES
	(1,'激活','true','1',1,'2019-10-27 20:31:36'),
	(2,'禁用','false','2',1,NULL),
	(3,'启用','true','1',4,NULL),
	(4,'停用','false','2',4,'2019-10-27 20:31:36'),
	(5,'启用2','true','1',5,NULL),
	(6,'停用','false','2',5,'2019-10-27 20:31:36'),
	(7,'8','8','999',NULL,'2020-05-18 19:44:05'),
	(8,'99','999','999',NULL,'2020-05-18 19:44:31');

/*!40000 ALTER TABLE `dict_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table email_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱配置';

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;

INSERT INTO `email_config` (`id`, `from_user`, `host`, `pass`, `port`, `user`)
VALUES
	(1,'111@qq.com','111','111','111','1');

/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gen_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_config`;

CREATE TABLE `gen_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成器配置';

LOCK TABLES `gen_config` WRITE;
/*!40000 ALTER TABLE `gen_config` DISABLE KEYS */;

INSERT INTO `gen_config` (`id`, `table_name`, `author`, `cover`, `module_name`, `pack`, `path`, `api_path`, `prefix`, `api_alias`)
VALUES
	(3,'gen_test','Zheng Jie',b'1','eladmin-system','me.zhengjie.gen','E:\\workspace\\me\\front\\eladmin-web\\src\\views\\gen','E:\\workspace\\me\\front\\eladmin-web\\src\\api',NULL,'测试生成'),
	(4,'yx_material_group','mingming',b'0','boplus-shop','com.boplus.modules.shop','E:\\output','E:\\output\\',NULL,'素材'),
	(5,'yx_material','mingming',b'0','boplus-shop','com.boplus.modules.shop','E:\\output','E:\\output\\',NULL,'素材管理'),
	(6,'yx_user','mingming',b'0','boplus-system','com.boplus.modules','aa','aa\\',NULL,'用户'),
	(7,'yx_wechat_media','mingming',b'0','boplus-system','com.boplus.modules','E:\\book\\img','E:\\book\\img\\',NULL,'ceshi'),
	(8,'yx_user_recharge','mingming',b'0','boplus-shop','com.boplus.modules.shop','E:\\java\\boplus-private\\boplus-web\\src\\views\\shop\\recharge','E:\\java\\boplus-private\\boplus-web\\src\\api','','充值管理'),
	(9,'yx_system_store','mingming',b'0','boplus-shop','com.boplus.modules.shop','E:\\java\\boplus-private\\boplus-web\\src\\views\\shop\\store','E:\\java\\boplus-private\\boplus-web\\src\\api',NULL,'门店'),
	(10,'yx_system_store_staff','mingming',b'1','boplus-shop','com.boplus.modules.shop','E:\\java\\boplus-private\\boplus-web\\src\\views\\shop\\storestaff','E:\\java\\boplus-private\\boplus-web\\src\\api',NULL,'门店店员');

/*!40000 ALTER TABLE `gen_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gen_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_test`;

CREATE TABLE `gen_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int DEFAULT NULL COMMENT '性别',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成测试';



# Dump of table job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `sort` bigint NOT NULL COMMENT '岗位排序',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKmvhj0rogastlctflsxf1d6k3i` (`dept_id`) USING BTREE,
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位';

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;

INSERT INTO `job` (`id`, `name`, `enabled`, `sort`, `dept_id`, `create_time`)
VALUES
	(8,'人事专员',b'1',3,11,'2019-03-29 14:52:28'),
	(10,'产品经理',b'1',4,2,'2019-03-29 14:55:51'),
	(11,'全栈开发2',b'1',2,2,'2019-03-31 13:39:30'),
	(12,'软件测试',b'1',5,2,'2019-03-31 13:39:43');

/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table local_storage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `local_storage`;

CREATE TABLE `local_storage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大小',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='本地存储';

LOCK TABLES `local_storage` WRITE;
/*!40000 ALTER TABLE `local_storage` DISABLE KEYS */;

INSERT INTO `local_storage` (`id`, `real_name`, `name`, `suffix`, `path`, `type`, `size`, `operate`, `create_time`)
VALUES
	(1,'list_30-20200107120524671.png','list_30','png','E:\\boplus\\file\\图片\\list_30-20200107120524671.png','图片','28.57KB   ','admin','2020-01-07 12:05:25'),
	(2,'list_34-20200109071140374.png','list_34','png','E:\\boplus\\file\\图片\\list_34-20200109071140374.png','图片','27.05KB   ','admin','2020-01-09 19:11:40'),
	(3,'list_22-20200109072256534.png','list_22','png','E:\\boplus\\file\\pic\\list_22-20200109072256534.png','pic','28.23KB   ','admin','2020-01-09 19:22:57'),
	(4,'list_32-20200109093407741.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109093407741.png','pic','27.65KB   ','admin','2020-01-09 21:34:08'),
	(5,'list_32-20200109094223500.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109094223500.png','pic','27.65KB   ','admin','2020-01-09 21:42:24'),
	(6,'list_32-20200109094413459.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109094413459.png','pic','27.65KB   ','admin','2020-01-09 21:44:13'),
	(7,'list_32-20200109094652138.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109094652138.png','pic','27.65KB   ','admin','2020-01-09 21:46:52'),
	(8,'list_34-20200109095146476.png','list_34','png','E:\\boplus\\file\\pic\\list_34-20200109095146476.png','pic','27.05KB   ','admin','2020-01-09 21:51:47'),
	(9,'list_32-20200109095700685.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109095700685.png','pic','27.65KB   ','admin','2020-01-09 21:57:01'),
	(10,'list_20-20200109095936988.png','list_20','png','E:\\boplus\\file\\pic\\list_20-20200109095936988.png','pic','22.92KB   ','admin','2020-01-09 21:59:37'),
	(11,'list_32-20200109100213309.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200109100213309.png','pic','27.65KB   ','admin','2020-01-09 22:02:13'),
	(12,'list_30-20200109104513493.png','list_30','png','E:\\boplus\\file\\pic\\list_30-20200109104513493.png','pic','28.57KB   ','admin','2020-01-09 22:45:13'),
	(13,'list_16-20200110120838173.png','list_16','png','E:\\boplus\\file\\pic\\list_16-20200110120838173.png','pic','28.93KB   ','admin','2020-01-10 12:08:38'),
	(14,'list_32-20200110035831202.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200110035831202.png','pic','27.65KB   ','admin','2020-01-10 15:58:31'),
	(15,'list_32-2020011004054091.png','list_32','png','E:\\boplus\\file\\pic\\list_32-2020011004054091.png','pic','27.65KB   ','admin','2020-01-10 16:05:40'),
	(16,'list_30-20200110053337209.png','list_30','png','E:\\boplus\\file\\pic\\list_30-20200110053337209.png','pic','28.57KB   ','admin','2020-01-10 17:33:37'),
	(17,'list_32-20200110064436937.png','list_32','png','E:\\boplus\\file\\pic\\list_32-20200110064436937.png','pic','27.65KB   ','admin','2020-01-10 18:44:37'),
	(18,'list_22-20200110104217508.png','list_22','png','E:\\boplus\\file\\pic\\list_22-20200110104217508.png','pic','28.23KB   ','admin','2020-01-10 22:42:18'),
	(19,'list_18-20200111051038569.png','list_18','png','E:\\boplus\\file\\pic\\list_18-20200111051038569.png','pic','29.62KB   ','15136175246','2020-01-11 17:10:39'),
	(20,'list_30-2020011105115469.png','list_30','png','E:\\boplus\\file\\pic\\list_30-2020011105115469.png','pic','28.57KB   ','15136175246','2020-01-11 17:11:54'),
	(21,'list_30-20200111051343335.png','list_30','png','E:\\boplus\\file\\pic\\list_30-20200111051343335.png','pic','28.57KB   ','15136175246','2020-01-11 17:13:43'),
	(22,'list_16-20200111051622984.png','list_16','png','E:\\boplus\\file\\pic\\list_16-20200111051622984.png','pic','28.93KB   ','15136175246','2020-01-11 17:16:23'),
	(23,'list_24-20200111051630227.png','list_24','png','E:\\boplus\\file\\pic\\list_24-20200111051630227.png','pic','27.31KB   ','15136175246','2020-01-11 17:16:30'),
	(24,'logo-20200131103905417.png','logo','png','E:\\boplus\\file\\pic\\logo-20200131103905417.png','pic','48.39KB   ','admin','2020-01-31 10:39:05'),
	(25,'avatar-20200131103928688.png','avatar','png','E:\\boplus\\file\\pic\\avatar-20200131103928688.png','pic','1.82KB   ','admin','2020-01-31 10:39:29'),
	(26,'list_13-2020013110394473.png','list_13','png','E:\\boplus\\file\\pic\\list_13-2020013110394473.png','pic','23.05KB   ','admin','2020-01-31 10:39:44'),
	(27,'list_18-2020013110394988.png','list_18','png','E:\\boplus\\file\\pic\\list_18-2020013110394988.png','pic','29.62KB   ','admin','2020-01-31 10:39:49'),
	(28,'list_22-20200131103952926.png','list_22','png','E:\\boplus\\file\\pic\\list_22-20200131103952926.png','pic','28.23KB   ','admin','2020-01-31 10:39:53'),
	(29,'list_26-20200131103956836.png','list_26','png','E:\\boplus\\file\\pic\\list_26-20200131103956836.png','pic','28.36KB   ','admin','2020-01-31 10:39:57'),
	(30,'list_28-20200131104001169.png','list_28','png','E:\\boplus\\file\\pic\\list_28-20200131104001169.png','pic','28.38KB   ','admin','2020-01-31 10:40:01'),
	(31,'list_16-20200207061544740.png','list_16','png','E:\\boplus\\file\\pic\\list_16-20200207061544740.png','pic','28.93KB   ','mingming','2020-02-07 18:15:45'),
	(32,'list_30-2020020706162996.png','list_30','png','E:\\boplus\\file\\pic\\list_30-2020020706162996.png','pic','28.57KB   ','mingming','2020-02-07 18:16:29'),
	(33,'list_16-20200207061714702.png','list_16','png','E:\\boplus\\file\\pic\\list_16-20200207061714702.png','pic','28.93KB   ','mingming','2020-02-07 18:17:15'),
	(34,'list_18-20200207061743361.png','list_18','png','E:\\boplus\\file\\pic\\list_18-20200207061743361.png','pic','29.62KB   ','mingming','2020-02-07 18:17:43'),
	(35,'list_30-20200207062920744.png','list_30','png','E:\\boplus\\file\\pic\\list_30-20200207062920744.png','pic','28.57KB   ','mingming','2020-02-07 18:29:21'),
	(36,'05ea40b831858a8cf423aa709840507c-20200228083801500.png','05ea40b831858a8cf423aa709840507c','png','E:\\boplus\\file\\pic\\05ea40b831858a8cf423aa709840507c-20200228083801500.png','pic','5.19KB   ','admin','2020-02-28 20:38:02'),
	(37,'05ea40b831858a8cf423aa709840507c-20200311043711341.png','05ea40b831858a8cf423aa709840507c','png','E:\\boplus\\file\\pic\\05ea40b831858a8cf423aa709840507c-20200311043711341.png','pic','5.19KB   ','admin','2020-03-11 16:37:11'),
	(38,'秒杀-2020031104371672.png','秒杀','png','E:\\boplus\\file\\pic\\秒杀-2020031104371672.png','pic','6.07KB   ','admin','2020-03-11 16:37:16'),
	(39,'砍价-20200311043720679.png','砍价','png','E:\\boplus\\file\\pic\\砍价-20200311043720679.png','pic','6.13KB   ','admin','2020-03-11 16:37:21'),
	(40,'优惠券-20200311043724709.png','优惠券','png','E:\\boplus\\file\\pic\\优惠券-20200311043724709.png','pic','5.45KB   ','admin','2020-03-11 16:37:25'),
	(41,'资讯-20200311043727918.png','资讯','png','E:\\boplus\\file\\pic\\资讯-20200311043727918.png','pic','5.19KB   ','admin','2020-03-11 16:37:28'),
	(42,'list_16-20200322071324803.png','list_16','png','E:\\boplus\\file\\pic\\list_16-20200322071324803.png','pic','28.93KB   ','admin','2020-03-22 19:13:25'),
	(43,'list_22-20200322071348844.png','list_22','png','E:\\boplus\\file\\pic\\list_22-20200322071348844.png','pic','28.23KB   ','admin','2020-03-22 19:13:49'),
	(44,'list_34-2020032207154023.png','list_34','png','E:\\boplus\\file\\pic\\list_34-2020032207154023.png','pic','27.05KB   ','admin','2020-03-22 19:15:40'),
	(45,'钻石-20200328094531898.jpg','钻石','jpg','E:\\boplus\\file\\pic\\钻石-20200328094531898.jpg','pic','32.42KB   ','admin','2020-03-28 21:45:32');

/*!40000 ALTER TABLE `local_storage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT '0',
  `uid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志';

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;

INSERT INTO `log` (`id`, `create_time`, `description`, `exception_detail`, `log_type`, `method`, `params`, `request_ip`, `time`, `username`, `address`, `browser`, `type`, `uid`)
VALUES
	(416611,'2020-05-18 15:21:05','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416612,'2020-05-18 15:21:06','查询素材管理','org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/MaterialMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id, create_time, create_id, group_id, name, type, del_flag, url FROM yx_material WHERE del_flag = 0 order by createTime DESC LIMIT ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy112.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:223)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForMany(MybatisMapperMethod.java:158)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:76)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy236.selectList(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor670.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy237.selectList(Unknown Source)\r\n	at YxMaterialServiceImpl.queryAll(YxMaterialServiceImpl.java:62)\r\n	at YxMaterialServiceImpl.queryAll(YxMaterialServiceImpl.java:51)\r\n	at YxMaterialServiceImpl$$FastClassBySpringCGLIB$$be7e45f4.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at YxMaterialServiceImpl$$EnhancerBySpringCGLIB$$b5f819e9.queryAll(<generated>)\r\n	at MaterialController.getYxMaterials(MaterialController.java:43)\r\n	at MaterialController$$FastClassBySpringCGLIB$$15d9f983.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:59)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MaterialController$$EnhancerBySpringCGLIB$$a984501c.getYxMaterials(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:890)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:59)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:136)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy362.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at sun.reflect.GeneratedMethodAccessor247.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 137 more\r\n','ERROR','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: createTime: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416613,'2020-05-18 15:30:49','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416614,'2020-05-18 15:30:49','查询素材管理','org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/MaterialMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id, create_time, create_id, group_id, name, type, del_flag, url FROM yx_material WHERE del_flag = 0 order by createTime DESC LIMIT ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy112.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:223)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForMany(MybatisMapperMethod.java:158)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:76)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy236.selectList(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor670.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy237.selectList(Unknown Source)\r\n	at YxMaterialServiceImpl.queryAll(YxMaterialServiceImpl.java:62)\r\n	at YxMaterialServiceImpl.queryAll(YxMaterialServiceImpl.java:51)\r\n	at YxMaterialServiceImpl$$FastClassBySpringCGLIB$$be7e45f4.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at YxMaterialServiceImpl$$EnhancerBySpringCGLIB$$b5f819e9.queryAll(<generated>)\r\n	at MaterialController.getYxMaterials(MaterialController.java:43)\r\n	at MaterialController$$FastClassBySpringCGLIB$$15d9f983.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:59)\r\n	at sun.reflect.GeneratedMethodAccessor672.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MaterialController$$EnhancerBySpringCGLIB$$a984501c.getYxMaterials(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:890)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:59)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'createTime\' in \'order clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:136)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy362.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at sun.reflect.GeneratedMethodAccessor247.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 136 more\r\n','ERROR','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: createTime: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416615,'2020-05-18 15:30:54','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416616,'2020-05-18 15:30:54','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',16,'admin','内网IP',NULL,0,NULL),
	(416617,'2020-05-18 15:30:54','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416618,'2020-05-18 15:30:54','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416619,'2020-05-18 15:30:57','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416620,'2020-05-18 15:30:59','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416621,'2020-05-18 15:30:59','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',20,'admin','内网IP',NULL,0,NULL),
	(416622,'2020-05-18 15:35:01','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',118,'admin','内网IP',NULL,0,NULL),
	(416623,'2020-05-18 15:35:01','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',117,'admin','内网IP',NULL,0,NULL),
	(416624,'2020-05-18 15:35:01','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',100,'admin','内网IP',NULL,0,NULL),
	(416625,'2020-05-18 15:35:01','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',116,'admin','内网IP',NULL,0,NULL),
	(416626,'2020-05-18 15:35:04','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416627,'2020-05-18 15:35:05','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416628,'2020-05-18 15:35:05','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',35,'admin','内网IP',NULL,0,NULL),
	(416629,'2020-05-18 15:36:20','新增素材管理','org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/MaterialMapper.java (best guess)\r\n### The error may involve MaterialMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO yx_material  ( create_time, create_id,  name, type, del_flag, url )  VALUES  ( ?, ?,  ?, ?, ?, ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:246)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy112.insert(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:271)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:58)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy236.insert(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy237.insert(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.save(ServiceImpl.java:104)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl$$FastClassBySpringCGLIB$$76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at YxMaterialServiceImpl$$EnhancerBySpringCGLIB$$9a52d5b9.save(<generated>)\r\n	at MaterialController.create(MaterialController.java:51)\r\n	at MaterialController$$FastClassBySpringCGLIB$$15d9f983.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:59)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MaterialController$$EnhancerBySpringCGLIB$$23351d36.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:59)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy362.update(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.insert(DefaultSqlSession.java:184)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 131 more\r\n','ERROR','MaterialController.create()','{ resources: YxMaterial(id=null, delFlag=false, createTime=2020-05-18 15:36:19.763, createId=admin, type=1, groupId=null, name=list_34.png, url=http://localhost:8000/file/pic/list_34-20200518033618938.png) }','192.168.0.100',98,'admin','内网IP',NULL,0,NULL),
	(416630,'2020-05-18 16:17:03','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',85,'admin','内网IP',NULL,0,NULL),
	(416631,'2020-05-18 16:18:05','查询',NULL,'INFO','StoreProductReplyController.getYxStoreProductReplys()','{ criteria: YxStoreProductReplyQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',44,'admin','内网IP',NULL,0,NULL),
	(416632,'2020-05-18 16:18:09','删除',NULL,'INFO','StoreProductReplyController.delete()','{ id: 5 }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416633,'2020-05-18 16:18:09','查询',NULL,'INFO','StoreProductReplyController.getYxStoreProductReplys()','{ criteria: YxStoreProductReplyQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416634,'2020-05-18 16:18:11','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416635,'2020-05-18 16:18:19','修改快递',NULL,'INFO','ExpressController.update()','{ resources: YxExpress(id=429, code=YTO, name=圆通速递, sort=0, isShow=0) }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416636,'2020-05-18 16:18:19','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416637,'2020-05-18 16:18:23','修改快递',NULL,'INFO','ExpressController.update()','{ resources: YxExpress(id=429, code=YTO, name=圆通速递2, sort=0, isShow=0) }','192.168.0.100',48,'admin','内网IP',NULL,0,NULL),
	(416638,'2020-05-18 16:18:24','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416639,'2020-05-18 16:18:27','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(416640,'2020-05-18 16:18:32','修改数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.update()','{ jsonStr: {\"id\":177,\"groupName\":\"boplus_home_banner\",\"name\":\"banner\",\"url\":\"wwww\",\"pic\":\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\",\"imageArr\":[\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\"],\"sort\":1,\"status\":1} }','192.168.0.100',81,'admin','内网IP',NULL,0,NULL),
	(416641,'2020-05-18 16:18:32','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(416642,'2020-05-18 16:18:38','修改数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.update()','{ jsonStr: {\"id\":177,\"groupName\":\"boplus_home_banner\",\"name\":\"banner2\",\"url\":\"wwww\",\"pic\":\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\",\"imageArr\":[\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\"],\"sort\":1,\"status\":1} }','192.168.0.100',43,'admin','内网IP',NULL,0,NULL),
	(416643,'2020-05-18 16:18:38','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416644,'2020-05-18 16:18:46','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416645,'2020-05-18 16:18:54','修改',NULL,'INFO','StoreCouponController.update()','{ resources: YxStoreCoupon(id=6, title=44, integral=0, couponPrice=4, useMinPrice=4, couponTime=1, sort=0, status=1, addTime=1582894183, isDel=0) }','192.168.0.100',52,'admin','内网IP',NULL,0,NULL),
	(416646,'2020-05-18 16:18:55','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416647,'2020-05-18 16:18:59','查询',NULL,'INFO','UserExtractController.getYxUserExtracts()','{ criteria: YxUserExtractQueryCriteria(realName=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416648,'2020-05-18 16:19:04','查询充值管理',NULL,'INFO','UserRechargeController.getYxUserRecharges()','{ criteria: YxUserRechargeQueryCriteria(nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',27,'admin','内网IP',NULL,0,NULL),
	(416649,'2020-05-18 16:19:10','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416650,'2020-05-18 16:19:11','新增或修改','org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'key = \'store_self_mention\')\' at line 3\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/SystemConfigMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  id,menu_name,sort,value,status  FROM yx_system_config     WHERE (key = ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'key = \'store_self_mention\')\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'key = \'store_self_mention\')\' at line 3\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy112.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:159)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:89)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy242.selectOne(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy243.selectOne(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getOne(ServiceImpl.java:254)\r\n	at com.baomidou.mybatisplus.extension.service.IService.getOne(IService.java:192)\r\n	at com.baomidou.mybatisplus.extension.service.IService$$FastClassBySpringCGLIB$$f8525d18.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at com.boplus.modules.shop.service.impl.YxSystemConfigServiceImpl$$EnhancerBySpringCGLIB$$d835836.getOne(<generated>)\r\n	at com.boplus.modules.shop.rest.SystemConfigController.lambda$create$0(SystemConfigController.java:63)\r\n	at java.util.Map.forEach(Map.java:630)\r\n	at com.boplus.modules.shop.rest.SystemConfigController.create(SystemConfigController.java:61)\r\n	at com.boplus.modules.shop.rest.SystemConfigController$$FastClassBySpringCGLIB$$29383a2d.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:59)\r\n	at sun.reflect.GeneratedMethodAccessor285.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.SystemConfigController$$EnhancerBySpringCGLIB$$ed0bbe21.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:59)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'key = \'store_self_mention\')\' at line 3\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:143)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy362.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:76)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 141 more\r\n','ERROR','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"store_self_mention\":1,\"tengxun_map_key\":\"OGABZ-Y5OCF-5UWJ5-N7DHH-VFIG7-DHFEB\"} }','192.168.0.100',115,'admin','内网IP',NULL,0,NULL),
	(416651,'2020-05-18 16:19:14','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416652,'2020-05-18 16:19:18','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416653,'2020-05-18 16:19:18','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',43,'admin','内网IP',NULL,0,NULL),
	(416654,'2020-05-18 16:19:19','修改门店店员',NULL,'INFO','SystemStoreStaffController.update()','{ resources: YxSystemStoreStaff(id=4, uid=19, avatar=https://image.dayouqiantu.cn/5dc2c7f3a104c.png, storeId=5, staffName=111, phone=15136175246, verifyStatus=1, status=1, addTime=1586180635, nickname=15136175528, storeName=郑州门店) }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(416655,'2020-05-18 16:19:19','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416656,'2020-05-18 16:20:37','查询定时任务',NULL,'INFO','QuartzJobController.getJobs()','{ criteria: QuartzJobQueryCriteria(jobName=null, isSuccess=null, isPause=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(416657,'2020-05-18 16:20:42','查询文件',NULL,'INFO','LocalStorageController.getLocalStorages()','{ criteria: LocalStorageQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(416658,'2020-05-18 16:20:43','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(key=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',103,'admin','内网IP',NULL,0,NULL),
	(416659,'2020-05-18 17:04:30','用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@5a5d0552]] }','192.168.0.100',1489,'admin','内网IP',NULL,0,1),
	(416660,'2020-05-18 17:04:35','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416661,'2020-05-18 17:04:37','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',95,'admin','内网IP',NULL,0,NULL),
	(416662,'2020-05-18 17:04:37','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',91,'admin','内网IP',NULL,0,NULL),
	(416663,'2020-05-18 17:04:37','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',92,'admin','内网IP',NULL,0,NULL),
	(416664,'2020-05-18 17:04:37','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',90,'admin','内网IP',NULL,0,NULL),
	(416665,'2020-05-18 17:04:47','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416666,'2020-05-18 17:04:52','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416667,'2020-05-18 17:04:59','新增商品分类',NULL,'INFO','StoreCategoryController.create()','{ resources: YxStoreCategory(id=6, pid=0, cateName=666, sort=1, pic=, isShow=1, addTime=1589792698, isDel=null) }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(416668,'2020-05-18 17:04:59','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416669,'2020-05-18 17:05:02','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416670,'2020-05-18 17:05:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416671,'2020-05-18 17:05:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416672,'2020-05-18 17:05:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(416673,'2020-05-18 17:05:06','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416674,'2020-05-18 17:05:11','修改商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=24, merId=0, image=https://image.dayouqiantu.cn/5ca011a1cd487.jpg, sliderImage=https://image.dayouqiantu.cn/5ca011a1cd487.jpg, storeName=彩色打印, storeInfo=彩色打印, keyword=彩色打印, barCode=, cateId=null, price=1, vipPrice=0, otPrice=1, postage=0, unitName=张, sort=0, sales=10, stock=9989, isShow=1, isHot=1, isBenefit=1, isBest=1, isNew=1, description=<p>彩色打印</p>, addTime=1582894605, isPostage=0, isDel=1, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=1, ficti=0, browse=0, codePath=, soureLink=) }','192.168.0.100',54,'admin','内网IP',NULL,0,NULL),
	(416675,'2020-05-18 17:05:11','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416676,'2020-05-18 17:05:18','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416677,'2020-05-18 17:05:32','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416678,'2020-05-18 17:05:40','修改商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=25, merId=0, image=http://localhost:8000/file/pic/list_34-2020032207154023.png, sliderImage=http://localhost:8000/file/pic/list_22-20200322071348844.png, storeName=照片打印, storeInfo=照片打印, keyword=照片打印, barCode=, cateId=null, price=1, vipPrice=0, otPrice=2, postage=0, unitName=张, sort=0, sales=0, stock=1000, isShow=1, isHot=1, isBenefit=1, isBest=1, isNew=1, description=<p>照片打印</p>, addTime=1585278846, isPostage=1, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=1, ficti=0, browse=0, codePath=, soureLink=) }','192.168.0.100',52,'admin','内网IP',NULL,0,NULL),
	(416679,'2020-05-18 17:05:40','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416680,'2020-05-18 17:07:04','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416681,'2020-05-18 17:07:11','新增商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.create()','{ resources: YxStoreProduct(id=26, merId=0, image=, sliderImage=, storeName=555, storeInfo=, keyword=55, barCode=, cateId=1, price=0, vipPrice=0, otPrice=0, postage=0, unitName=5, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=, addTime=1589792831, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=null) }','192.168.0.100',44,'admin','内网IP',NULL,0,NULL),
	(416682,'2020-05-18 17:07:12','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416683,'2020-05-18 17:07:19','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416684,'2020-05-18 17:07:37','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416685,'2020-05-18 17:09:03','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416686,'2020-05-18 17:09:10','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',37,'admin','内网IP',NULL,0,NULL),
	(416687,'2020-05-18 17:09:11','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(416688,'2020-05-18 17:10:22','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',103,'admin','内网IP',NULL,0,NULL),
	(416689,'2020-05-18 17:10:22','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',104,'admin','内网IP',NULL,0,NULL),
	(416690,'2020-05-18 17:10:22','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',103,'admin','内网IP',NULL,0,NULL),
	(416691,'2020-05-18 17:10:22','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',89,'admin','内网IP',NULL,0,NULL),
	(416692,'2020-05-18 17:10:24','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',36,'admin','内网IP',NULL,0,NULL),
	(416693,'2020-05-18 17:10:25','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416694,'2020-05-18 17:10:25','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(416695,'2020-05-18 17:10:40','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416696,'2020-05-18 17:10:41','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416697,'2020-05-18 17:10:58','新增商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.create()','{ resources: YxStoreProduct(id=27, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=999, keyword=99, barCode=, cateId=1, price=11, vipPrice=0, otPrice=1, postage=0, unitName=9, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589793058, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=) }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416698,'2020-05-18 17:10:58','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',51,'admin','内网IP',NULL,0,NULL),
	(416699,'2020-05-18 17:11:03','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416700,'2020-05-18 17:11:06','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416701,'2020-05-18 17:11:08','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',18,'admin','内网IP',NULL,0,NULL),
	(416702,'2020-05-18 17:11:11','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416703,'2020-05-18 17:11:13','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416704,'2020-05-18 17:11:15','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416705,'2020-05-18 17:11:16','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416706,'2020-05-18 17:13:58','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416707,'2020-05-18 17:14:09','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416708,'2020-05-18 17:14:19','修改用户',NULL,'INFO','MemberController.update()','{ resources: YxUser(uid=20, username=null, account=15136171112, password=null, pwd=$2a$10$62PLFod7JnPPmW8Hx0MZ9uhkGXmXZZ2N3ZixnvUzfBTZ157oiFCSm, realName=, birthday=0, cardId=, mark=, partnerId=0, groupId=0, nickname=15136171112, avatar=https://image.dayouqiantu.cn/5e79f6cfd33b6.png, phone=15136171112, addTime=1585385387, addIp=, lastTime=1585385387, lastIp=, nowMoney=99, brokeragePrice=0, integral=0, signNum=0, status=1, level=0, spreadUid=11, spreadTime=1585385387, userType=h5, isPromoter=1, payCount=0, spreadCount=0, cleanTime=0, addres=, adminid=0, loginType=) }','192.168.0.100',39,'admin','内网IP',NULL,0,NULL),
	(416709,'2020-05-18 17:14:19','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',19,'admin','内网IP',NULL,0,NULL),
	(416710,'2020-05-18 17:14:25','查询',NULL,'INFO','SystemUserLevelController.getYxSystemUserLevels()','{ criteria: YxSystemUserLevelQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416711,'2020-05-18 17:14:35','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416712,'2020-05-18 17:14:35','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416713,'2020-05-18 17:14:40','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416714,'2020-05-18 17:14:40','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416715,'2020-05-18 17:14:44','新增',NULL,'INFO','SystemUserLevelController.create()','{ resources: YxSystemUserLevel(id=8, merId=null, name=444, money=null, validDate=4, isForever=1, isPay=null, isShow=1, grade=4, discount=4, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, icon=http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png, explain=, addTime=1589793284, isDel=null) }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416716,'2020-05-18 17:14:44','查询',NULL,'INFO','SystemUserLevelController.getYxSystemUserLevels()','{ criteria: YxSystemUserLevelQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416717,'2020-05-18 17:14:47','查询',NULL,'INFO','SystemUserTaskController.getYxSystemUserTasks()','{ criteria: YxSystemUserTaskQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(416718,'2020-05-18 17:14:51','查询',NULL,'INFO','UserBillController.getYxUserBills()','{ criteria: YxUserBillQueryCriteria(nickname=, category=, type=) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(416719,'2020-05-18 17:15:03','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416720,'2020-05-18 17:15:07','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"wechat_name\":\"\",\"wechat_id\":\"\",\"wechat_sourceid\":\"\",\"wechat_appid\":\"11112\",\"wechat_appsecret\":\"222266\",\"wechat_token\":\"999\",\"wechat_encode\":\"\",\"wechat_encodingaeskey\":\"6666\",\"wechat_share_img\":\"https://image.dayouqiantu.cn/list_34.png\",\"imageArr\":[\"https://image.dayouqiantu.cn/list_34.png\"],\"wechat_qrcode\":\"\",\"wechat_type\":\"\",\"wechat_share_title\":\"4444\",\"wechat_share_synopsis\":\"4444444\",\"api\":\"http://你的H5端域名/api/wechat/serve\",\"wechat_avatar\":\"\"} }','192.168.0.100',507,'admin','内网IP',NULL,0,NULL),
	(416721,'2020-05-18 17:15:13','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"wechat_name\":\"\",\"wechat_id\":\"\",\"wechat_sourceid\":\"\",\"wechat_appid\":\"1111299\",\"wechat_appsecret\":\"222266\",\"wechat_token\":\"999\",\"wechat_encode\":\"\",\"wechat_encodingaeskey\":\"6666\",\"wechat_share_img\":\"https://image.dayouqiantu.cn/list_34.png\",\"imageArr\":[\"https://image.dayouqiantu.cn/list_34.png\"],\"wechat_qrcode\":\"\",\"wechat_type\":\"\",\"wechat_share_title\":\"4444\",\"wechat_share_synopsis\":\"4444444\",\"api\":\"http://你的H5端域名/api/wechat/serve\",\"wechat_avatar\":\"\"} }','192.168.0.100',538,'admin','内网IP',NULL,0,NULL),
	(416722,'2020-05-18 17:15:18','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416723,'2020-05-18 17:15:32','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416724,'2020-05-18 17:15:36','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416725,'2020-05-18 17:15:39','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"wx_native_app_appId\":\"11111\",\"wxpay_mchId\":\"2222\",\"wxpay_mchKey\":\"55555\",\"wxpay_keyPath\":\"http://localhost:8000/file/pic/list_30-20200110053337209.png\"} }','192.168.0.100',126,'admin','内网IP',NULL,0,NULL),
	(416726,'2020-05-18 17:15:40','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416727,'2020-05-18 17:15:46','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',27,'admin','内网IP',NULL,0,NULL),
	(416728,'2020-05-18 17:15:51','新增快递',NULL,'INFO','ExpressController.create()','{ resources: YxExpress(id=430, code=, name=, sort=0, isShow=null) }','192.168.0.100',36,'admin','内网IP',NULL,0,NULL),
	(416729,'2020-05-18 17:15:51','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416730,'2020-05-18 17:52:47','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',395,'admin','内网IP',NULL,0,NULL),
	(416731,'2020-05-18 17:52:49','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416732,'2020-05-18 17:52:51','新增商品分类','org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: java.sql.SQLException: Field \'cate_name\' doesn\'t have a default value\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/StoreCategoryMapper.java (best guess)\r\n### The error may involve StoreCategoryMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO yx_store_category  ( add_time, pid, pic, sort,   is_show )  VALUES  ( ?, ?, ?, ?,   ? )\r\n### Cause: java.sql.SQLException: Field \'cate_name\' doesn\'t have a default value\n; Field \'cate_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'cate_name\' doesn\'t have a default value\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:246)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.insert(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:271)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:58)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy244.insert(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy245.insert(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.save(ServiceImpl.java:104)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl$$FastClassBySpringCGLIB$$76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at com.boplus.modules.shop.service.impl.YxStoreCategoryServiceImpl$$EnhancerBySpringCGLIB$$a5e40abd.save(<generated>)\r\n	at StoreCategoryController.create(StoreCategoryController.java:79)\r\n	at StoreCategoryController$$FastClassBySpringCGLIB$$9be9789b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at StoreCategoryController$$EnhancerBySpringCGLIB$$44143889.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLException: Field \'cate_name\' doesn\'t have a default value\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy357.update(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.insert(DefaultSqlSession.java:184)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 133 more\r\n','ERROR','StoreCategoryController.create()','{ resources: YxStoreCategory(id=null, pid=0, cateName=null, sort=1, pic=, isShow=1, addTime=1589795570, isDel=null) }','192.168.0.100',88,'admin','内网IP',NULL,0,NULL),
	(416733,'2020-05-18 17:54:40','新增商品分类',NULL,'INFO','StoreCategoryController.create()','{ resources: YxStoreCategory(id=7, pid=0, cateName=9999, sort=1, pic=, isShow=1, addTime=1589795680, isDel=null) }','192.168.0.100',58,'admin','内网IP',NULL,0,NULL),
	(416734,'2020-05-18 17:54:41','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',340,'admin','内网IP',NULL,0,NULL),
	(416735,'2020-05-18 17:54:44','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416736,'2020-05-18 17:54:57','新增商品分类','BadRequestException: 子分类图片必传\r\n	at StoreCategoryController.create(StoreCategoryController.java:75)\r\n	at StoreCategoryController$$FastClassBySpringCGLIB$$9be9789b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at StoreCategoryController$$EnhancerBySpringCGLIB$$7c35bf86.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','StoreCategoryController.create()','{ resources: YxStoreCategory(id=null, pid=7, cateName=8888, sort=1, pic=, isShow=1, addTime=null, isDel=null) }','192.168.0.100',1,'admin','内网IP',NULL,0,NULL),
	(416737,'2020-05-18 17:54:59','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',65,'admin','内网IP',NULL,0,NULL),
	(416738,'2020-05-18 17:54:59','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416739,'2020-05-18 17:55:06','新增商品分类',NULL,'INFO','StoreCategoryController.create()','{ resources: YxStoreCategory(id=8, pid=7, cateName=8888, sort=1, pic=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, isShow=1, addTime=1589795706, isDel=null) }','192.168.0.100',37,'admin','内网IP',NULL,0,NULL),
	(416740,'2020-05-18 17:55:06','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416741,'2020-05-18 17:56:02','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',50,'admin','内网IP',NULL,0,NULL),
	(416742,'2020-05-18 17:56:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',68,'admin','内网IP',NULL,0,NULL),
	(416743,'2020-05-18 17:56:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',69,'admin','内网IP',NULL,0,NULL),
	(416744,'2020-05-18 17:56:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',71,'admin','内网IP',NULL,0,NULL),
	(416745,'2020-05-18 17:56:07','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416746,'2020-05-18 18:03:59','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',385,'admin','内网IP',NULL,0,NULL),
	(416747,'2020-05-18 18:03:59','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416748,'2020-05-18 18:04:22','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416749,'2020-05-18 18:04:23','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416750,'2020-05-18 18:04:39','新增商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.create()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=1, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=) }','192.168.0.100',58,'admin','内网IP',NULL,0,NULL),
	(416751,'2020-05-18 18:04:39','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',42,'admin','内网IP',NULL,0,NULL),
	(416752,'2020-05-18 18:05:02','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416753,'2020-05-18 18:05:22','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',20,'admin','内网IP',NULL,0,NULL),
	(416754,'2020-05-18 18:06:01','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',18,'admin','内网IP',NULL,0,NULL),
	(416755,'2020-05-18 18:08:06','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416756,'2020-05-18 18:08:26','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416757,'2020-05-18 18:08:32','修改用户',NULL,'INFO','MemberController.update()','{ resources: YxUser(uid=20, username=null, account=15136171112, password=null, pwd=$2a$10$62PLFod7JnPPmW8Hx0MZ9uhkGXmXZZ2N3ZixnvUzfBTZ157oiFCSm, realName=, birthday=0, cardId=, mark=, partnerId=0, groupId=0, nickname=15136171112, avatar=https://image.dayouqiantu.cn/5e79f6cfd33b6.png, phone=15136171112, addTime=1585385387, addIp=, lastTime=1585385387, lastIp=, nowMoney=99, brokeragePrice=0, integral=0, signNum=0, status=1, level=0, spreadUid=11, spreadTime=1585385387, userType=h5, isPromoter=1, payCount=0, spreadCount=0, cleanTime=0, addres=, adminid=0, loginType=) }','192.168.0.100',56,'admin','内网IP',NULL,0,NULL),
	(416758,'2020-05-18 18:08:32','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416759,'2020-05-18 18:08:36','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',18,'admin','内网IP',NULL,0,NULL),
	(416760,'2020-05-18 18:09:04','查询',NULL,'INFO','SystemUserLevelController.getYxSystemUserLevels()','{ criteria: YxSystemUserLevelQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416761,'2020-05-18 18:10:21','修改',NULL,'INFO','SystemUserLevelController.update()','{ resources: YxSystemUserLevel(id=8, merId=0, name=444, money=0, validDate=4, isForever=1, isPay=0, isShow=1, grade=4, discount=4, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, icon=http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png, explain=, addTime=1589793284, isDel=0) }','192.168.0.100',52,'admin','内网IP',NULL,0,NULL),
	(416762,'2020-05-18 18:10:21','查询',NULL,'INFO','SystemUserLevelController.getYxSystemUserLevels()','{ criteria: YxSystemUserLevelQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416763,'2020-05-18 18:14:44','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',354,'admin','内网IP',NULL,0,NULL),
	(416764,'2020-05-18 18:14:44','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416765,'2020-05-18 18:14:58','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416766,'2020-05-18 18:14:58','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416767,'2020-05-18 18:15:09','新增',NULL,'INFO','SystemUserLevelController.create()','{ resources: YxSystemUserLevel(id=9, merId=null, name=777, money=null, validDate=null, isForever=1, isPay=null, isShow=1, grade=33, discount=8, image=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, icon=http://localhost:8000/file/pic/资讯-20200311043727918.png, explain=, addTime=1589796908, isDel=null) }','192.168.0.100',51,'admin','内网IP',NULL,0,NULL),
	(416768,'2020-05-18 18:15:09','查询',NULL,'INFO','SystemUserLevelController.getYxSystemUserLevels()','{ criteria: YxSystemUserLevelQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(416769,'2020-05-18 18:15:14','查询',NULL,'INFO','SystemUserTaskController.getYxSystemUserTasks()','{ criteria: YxSystemUserTaskQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',48,'admin','内网IP',NULL,0,NULL),
	(416770,'2020-05-18 18:15:18','修改',NULL,'INFO','SystemUserTaskController.update()','{ resources: YxSystemUserTask(id=1, name=满足积分20分, realName=积分数, taskType=SatisfactionIntegral, number=20, levelId=1, sort=0, isShow=1, isMust=1, illustrate=, addTime=1553827616) }','192.168.0.100',55,'admin','内网IP',NULL,0,NULL),
	(416771,'2020-05-18 18:15:19','查询',NULL,'INFO','SystemUserTaskController.getYxSystemUserTasks()','{ criteria: YxSystemUserTaskQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416772,'2020-05-18 18:18:11','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',351,'admin','内网IP',NULL,0,NULL),
	(416773,'2020-05-18 18:18:11','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',39,'admin','内网IP',NULL,0,NULL),
	(416774,'2020-05-18 18:23:18','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416775,'2020-05-18 18:23:19','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416776,'2020-05-18 18:24:06','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416777,'2020-05-18 18:24:07','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416778,'2020-05-18 18:24:53','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416779,'2020-05-18 18:24:53','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416780,'2020-05-18 18:25:07','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416781,'2020-05-18 18:25:14','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416782,'2020-05-18 18:25:19','查询',NULL,'INFO','StoreProductReplyController.getYxStoreProductReplys()','{ criteria: YxStoreProductReplyQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',19,'admin','内网IP',NULL,0,NULL),
	(416783,'2020-05-18 18:25:22','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416784,'2020-05-18 18:27:01','新增快递',NULL,'INFO','ExpressController.create()','{ resources: YxExpress(id=431, code=555, name=5555, sort=0, isShow=null) }','192.168.0.100',53,'admin','内网IP',NULL,0,NULL),
	(416785,'2020-05-18 18:27:01','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',344,'admin','内网IP',NULL,0,NULL),
	(416786,'2020-05-18 18:27:10','修改快递','org.springframework.dao.DuplicateKeyException: \r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'555\' for key \'code\'\r\n### The error may exist in co/yixiang/modules/shop/service/mapper/ExpressMapper.java (best guess)\r\n### The error may involve ExpressMapper.updateById-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE yx_express  SET code=?, name=?, sort=?, is_show=?  WHERE id=?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'555\' for key \'code\'\n; Duplicate entry \'555\' for key \'code\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'555\' for key \'code\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:242)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.update(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.update(SqlSessionTemplate.java:287)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:63)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy232.updateById(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy233.updateById(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.updateById(ServiceImpl.java:207)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.saveOrUpdate(ServiceImpl.java:148)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl$$FastClassBySpringCGLIB$$76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.service.impl.YxExpressServiceImpl$$EnhancerBySpringCGLIB$$67b43713.saveOrUpdate(<generated>)\r\n	at ExpressController.update(ExpressController.java:63)\r\n	at ExpressController$$FastClassBySpringCGLIB$$7d583dcc.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at ExpressController$$EnhancerBySpringCGLIB$$f5fe6a17.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'555\' for key \'code\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:117)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy359.update(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 139 more\r\n','ERROR','ExpressController.update()','{ resources: YxExpress(id=430, code=555, name=555555, sort=0, isShow=0) }','192.168.0.100',207,'admin','内网IP',NULL,0,NULL),
	(416787,'2020-05-18 18:31:13','修改快递',NULL,'INFO','ExpressController.update()','{ resources: YxExpress(id=430, code=555, name=555555, sort=0, isShow=0) }','192.168.0.100',53,'admin','内网IP',NULL,0,NULL),
	(416788,'2020-05-18 18:31:13','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416789,'2020-05-18 18:31:18','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',58,'admin','内网IP',NULL,0,NULL),
	(416790,'2020-05-18 18:31:21','新增数据配置','BadRequestException: 名称必须填写\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController.create(SystemGroupDataController.java:72)\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController$$FastClassBySpringCGLIB$$bbefe736.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController$$EnhancerBySpringCGLIB$$96dc972d.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','com.boplus.modules.shop.rest.SystemGroupDataController.create()','{ jsonStr: {\"id\":\"\",\"groupName\":\"boplus_home_banner\",\"name\":\"\",\"url\":\"\",\"wxapp_url\":\"\",\"uniapp_url\":\"\",\"pic\":\"\",\"imageArr\":[],\"sort\":0,\"status\":1} }','192.168.0.100',1,'admin','内网IP',NULL,0,NULL),
	(416791,'2020-05-18 18:32:03','新增数据配置','BadRequestException: 图片必须上传\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController.create(SystemGroupDataController.java:90)\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController$$FastClassBySpringCGLIB$$bbefe736.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.SystemGroupDataController$$EnhancerBySpringCGLIB$$96dc972d.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','com.boplus.modules.shop.rest.SystemGroupDataController.create()','{ jsonStr: {\"id\":\"\",\"groupName\":\"boplus_home_banner\",\"name\":\"55\",\"url\":\"5\",\"wxapp_url\":\"5\",\"uniapp_url\":\"5\",\"pic\":\"\",\"imageArr\":[],\"sort\":0,\"status\":1} }','192.168.0.100',1,'admin','内网IP',NULL,0,NULL),
	(416792,'2020-05-18 18:32:04','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',36,'admin','内网IP',NULL,0,NULL),
	(416793,'2020-05-18 18:32:05','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(416794,'2020-05-18 18:32:09','新增数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.create()','{ jsonStr: {\"id\":\"\",\"groupName\":\"boplus_home_banner\",\"name\":\"55\",\"url\":\"5\",\"wxapp_url\":\"5\",\"uniapp_url\":\"5\",\"pic\":\"http://localhost:8000/file/pic/资讯-20200311043727918.png\",\"imageArr\":[\"http://localhost:8000/file/pic/资讯-20200311043727918.png\"],\"sort\":0,\"status\":1} }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416795,'2020-05-18 18:32:09','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416796,'2020-05-18 18:32:25','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_menus) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416797,'2020-05-18 18:32:28','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',42,'admin','内网IP',NULL,0,NULL),
	(416798,'2020-05-18 18:32:30','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"integral_ratio\":\"1\",\"integral_full\":\"0\",\"integral_max\":\"0\"} }','192.168.0.100',121,'admin','内网IP',NULL,0,NULL),
	(416799,'2020-05-18 18:32:35','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"integral_ratio\":\"2\",\"integral_full\":\"0\",\"integral_max\":\"0\"} }','192.168.0.100',84,'admin','内网IP',NULL,0,NULL),
	(416800,'2020-05-18 18:32:39','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"integral_ratio\":\"1\",\"integral_full\":\"0\",\"integral_max\":\"0\"} }','192.168.0.100',112,'admin','内网IP',NULL,0,NULL),
	(416801,'2020-05-18 18:34:26','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',35,'admin','内网IP',NULL,0,NULL),
	(416802,'2020-05-18 18:37:20','新增',NULL,'INFO','StoreCouponController.create()','{ resources: YxStoreCoupon(id=7, title=7777, integral=0, couponPrice=1, useMinPrice=11, couponTime=1, sort=0, status=1, addTime=1589798239, isDel=null) }','192.168.0.100',66,'admin','内网IP',NULL,0,NULL),
	(416803,'2020-05-18 18:37:21','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',391,'admin','内网IP',NULL,0,NULL),
	(416804,'2020-05-18 18:37:25','查询已发布',NULL,'INFO','StoreCouponIssueController.getYxStoreCouponIssues()','{ criteria: YxStoreCouponIssueQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',35,'admin','内网IP',NULL,0,NULL),
	(416805,'2020-05-18 18:37:27','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416806,'2020-05-18 18:38:11','发布','org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: java.sql.SQLException: Field \'end_time_date\' doesn\'t have a default value\r\n### The error may exist in co/yixiang/modules/activity/service/mapper/YxStoreCouponIssueMapper.java (best guess)\r\n### The error may involve YxStoreCouponIssueMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO yx_store_coupon_issue  ( is_permanent,  add_time,  cname,   total_count, is_del, remain_count, status, cid )  VALUES  ( ?,  ?,  ?,   ?, ?, ?, ?, ? )\r\n### Cause: java.sql.SQLException: Field \'end_time_date\' doesn\'t have a default value\n; Field \'end_time_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'end_time_date\' doesn\'t have a default value\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:246)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.insert(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:271)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:58)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy208.insert(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy209.insert(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.save(ServiceImpl.java:104)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl$$FastClassBySpringCGLIB$$76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at com.boplus.modules.activity.service.impl.YxStoreCouponIssueServiceImpl$$EnhancerBySpringCGLIB$$4a230acb.save(<generated>)\r\n	at StoreCouponIssueController.create(StoreCouponIssueController.java:67)\r\n	at StoreCouponIssueController$$FastClassBySpringCGLIB$$f660e867.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at StoreCouponIssueController$$EnhancerBySpringCGLIB$$99ee97a5.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLException: Field \'end_time_date\' doesn\'t have a default value\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy359.update(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.insert(DefaultSqlSession.java:184)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 133 more\r\n','ERROR','StoreCouponIssueController.create()','{ resources: YxStoreCouponIssue(id=null, cname=7777, cid=7, startTime=null, endTime=null, totalCount=0, remainCount=0, isPermanent=0, status=1, isDel=0, addTime=1589798290, endTimeDate=null, startTimeDate=null) }','192.168.0.100',93,'admin','内网IP',NULL,0,NULL),
	(416807,'2020-05-18 18:39:52','发布',NULL,'INFO','StoreCouponIssueController.create()','{ resources: YxStoreCouponIssue(id=15, cname=7777, cid=7, startTime=1589731200, endTime=1590595200, totalCount=99, remainCount=99, isPermanent=0, status=1, isDel=0, addTime=1589798391, endTimeDate=2020-05-28 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',63,'admin','内网IP',NULL,0,NULL),
	(416808,'2020-05-18 18:39:53','查询',NULL,'INFO','StoreCouponController.getYxStoreCoupons()','{ criteria: YxStoreCouponQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',405,'admin','内网IP',NULL,0,NULL),
	(416809,'2020-05-18 18:40:16','查询已发布',NULL,'INFO','StoreCouponIssueController.getYxStoreCouponIssues()','{ criteria: YxStoreCouponIssueQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',27,'admin','内网IP',NULL,0,NULL),
	(416810,'2020-05-18 18:40:33','修改状态',NULL,'INFO','StoreCouponIssueController.update()','{ resources: YxStoreCouponIssue(id=14, cname=null, cid=3, startTime=1582530746, endTime=1585039774, totalCount=100, remainCount=100, isPermanent=0, status=1, isDel=1, addTime=1582530755, endTimeDate=2020-02-29 00:00:00.0, startTimeDate=2020-02-24 15:52:26.0) }','192.168.0.100',75,'admin','内网IP',NULL,0,NULL),
	(416811,'2020-05-18 18:40:33','查询已发布',NULL,'INFO','StoreCouponIssueController.getYxStoreCouponIssues()','{ criteria: YxStoreCouponIssueQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(416812,'2020-05-18 18:40:35','查询Y',NULL,'INFO','StoreCouponUserController.getYxStoreCouponUsers()','{ criteria: YxStoreCouponUserQueryCriteria(couponTitle=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(416813,'2020-05-18 18:40:39','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',60,'admin','内网IP',NULL,0,NULL),
	(416814,'2020-05-18 18:40:46','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416815,'2020-05-18 18:40:47','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',90,'admin','内网IP',NULL,0,NULL),
	(416816,'2020-05-18 18:40:47','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',89,'admin','内网IP',NULL,0,NULL),
	(416817,'2020-05-18 18:40:47','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',88,'admin','内网IP',NULL,0,NULL),
	(416818,'2020-05-18 18:50:54','修改砍价',NULL,'INFO','StoreBargainController.update()','{ resources: YxStoreBargain(id=4, productId=28, title=9999, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, unitName=张, stock=0, sales=0, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, startTime=1589731200, stopTime=1590768000, storeName=null, price=0.01, minPrice=null, num=1, bargainMaxPrice=null, bargainMinPrice=null, bargainNum=null, status=1, description=<p>999999</p>, giveIntegral=0, info=333, cost=0, sort=0, isHot=0, isDel=0, addTime=1589799053, isPostage=0, postage=0, rule=<p>33333</p>, look=null, share=null, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',68,'admin','内网IP',NULL,0,NULL),
	(416819,'2020-05-18 18:50:54','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',438,'admin','内网IP',NULL,0,NULL),
	(416820,'2020-05-18 19:01:49','修改砍价',NULL,'INFO','StoreBargainController.update()','{ resources: YxStoreBargain(id=5, productId=28, title=9999, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, unitName=张, stock=1, sales=0, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, startTime=1589731200, stopTime=1590595200, storeName=null, price=0.01, minPrice=1, num=1, bargainMaxPrice=1, bargainMinPrice=1, bargainNum=1, status=1, description=<p>999999</p>, giveIntegral=0, info=, cost=0, sort=0, isHot=0, isDel=0, addTime=1589799708, isPostage=0, postage=0, rule=<p>7777</p>, look=null, share=null, endTimeDate=2020-05-28 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',63,'admin','内网IP',NULL,0,NULL),
	(416821,'2020-05-18 19:01:49','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',423,'admin','内网IP',NULL,0,NULL),
	(416822,'2020-05-18 19:02:12','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416823,'2020-05-18 19:09:01','修改拼团',NULL,'INFO','StoreCombinationController.update()','{ resources: YxStoreCombination(id=4, productId=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, attr=null, people=1, info=, price=0, sort=0, sales=0, stock=1, addTime=1589800141, isHost=0, isShow=1, isDel=0, combination=1, merUse=null, isPostage=0, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, effectiveTime=24, cost=0, browse=0, unitName=张, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',67,'admin','内网IP',NULL,0,NULL),
	(416824,'2020-05-18 19:09:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',378,'admin','内网IP',NULL,0,NULL),
	(416825,'2020-05-18 19:13:35','发布',NULL,'INFO','StoreSeckillController.update()','{ resources: YxStoreSeckill(id=3, productId=28, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, info=, price=0.01, cost=0, otPrice=0, giveIntegral=0, sort=0, stock=1, sales=0, unitName=张, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, addTime=1589800415, status=1, isPostage=0, isHot=0, isDel=0, num=1, isShow=1, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0, timeId=215) }','192.168.0.100',76,'admin','内网IP',NULL,0,NULL),
	(416826,'2020-05-18 19:13:36','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',406,'admin','内网IP',NULL,0,NULL),
	(416827,'2020-05-18 19:13:39','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',47,'admin','内网IP',NULL,0,NULL),
	(416828,'2020-05-18 19:13:58','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',107,'admin','内网IP',NULL,0,NULL),
	(416829,'2020-05-18 19:14:07','修改拼团',NULL,'INFO','StoreCombinationController.update()','{ resources: YxStoreCombination(id=4, productId=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, attr=null, people=1, info=, price=0, sort=0, sales=0, stock=1, addTime=1589800141, isHost=0, isShow=1, isDel=0, combination=1, merUse=null, isPostage=0, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, effectiveTime=24, cost=0, browse=0, unitName=张, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',52,'admin','内网IP',NULL,0,NULL),
	(416830,'2020-05-18 19:14:08','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',45,'admin','内网IP',NULL,0,NULL),
	(416831,'2020-05-18 19:14:10','查询记录',NULL,'INFO','StorePinkController.getYxStorePinks()','{ criteria: YxStorePinkQueryCriteria(kId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416832,'2020-05-18 19:14:15','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',27,'admin','内网IP',NULL,0,NULL),
	(416833,'2020-05-18 19:14:19','修改拼团',NULL,'INFO','StoreCombinationController.update()','{ resources: YxStoreCombination(id=4, productId=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, attr=null, people=1, info=, price=0, sort=0, sales=0, stock=1, addTime=1589800141, isHost=0, isShow=1, isDel=0, combination=1, merUse=null, isPostage=0, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, effectiveTime=24, cost=0, browse=0, unitName=张, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',40,'admin','内网IP',NULL,0,NULL),
	(416834,'2020-05-18 19:14:19','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',47,'admin','内网IP',NULL,0,NULL),
	(416835,'2020-05-18 19:14:21','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',35,'admin','内网IP',NULL,0,NULL),
	(416836,'2020-05-18 19:14:22','列表',NULL,'INFO','StoreSeckillController.getYxStoreSeckills()','{ criteria: YxStoreSeckillQueryCriteria(title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',24,'admin','内网IP',NULL,0,NULL),
	(416837,'2020-05-18 19:14:25','发布',NULL,'INFO','StoreSeckillController.update()','{ resources: YxStoreSeckill(id=3, productId=28, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, info=, price=0.01, cost=0, otPrice=0, giveIntegral=0, sort=0, stock=1, sales=0, unitName=张, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, addTime=1589800415, status=1, isPostage=0, isHot=0, isDel=0, num=1, isShow=1, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0, timeId=215) }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(416838,'2020-05-18 19:14:25','列表',NULL,'INFO','StoreSeckillController.getYxStoreSeckills()','{ criteria: YxStoreSeckillQueryCriteria(title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(416839,'2020-05-18 19:14:27','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416840,'2020-05-18 19:14:30','查询砍价',NULL,'INFO','StoreBargainController.getYxStoreBargains()','{ criteria: YxStoreBargainQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416841,'2020-05-18 19:14:34','修改砍价',NULL,'INFO','StoreBargainController.update()','{ resources: YxStoreBargain(id=5, productId=28, title=9999, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, unitName=张, stock=1, sales=0, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, startTime=1589731200, stopTime=1590595200, storeName=null, price=0.01, minPrice=1, num=1, bargainMaxPrice=1, bargainMinPrice=1, bargainNum=1, status=1, description=<p>999999</p>, giveIntegral=0, info=, cost=0, sort=0, isHot=0, isDel=0, addTime=1589799708, isPostage=0, postage=0, rule=<p>7777</p>, look=0, share=0, endTimeDate=2020-05-28 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',45,'admin','内网IP',NULL,0,NULL),
	(416842,'2020-05-18 19:14:35','查询砍价',NULL,'INFO','StoreBargainController.getYxStoreBargains()','{ criteria: YxStoreBargainQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416843,'2020-05-18 19:14:39','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416844,'2020-05-18 19:14:41','新增或修改',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.create()','{ jsonStr: {\"store_brokerage_open\":1,\"store_brokerage_statu\":2,\"store_brokerage_ratio\":\"70\",\"store_brokerage_two\":\"30\",\"user_extract_min_price\":\"1\",\"site_url\":\"http://localhost:8080\",\"api_url\":\"http://127.0.0.1:8009\"} }','192.168.0.100',257,'admin','内网IP',NULL,0,NULL),
	(416845,'2020-05-18 19:14:44','查询',NULL,'INFO','UserExtractController.getYxUserExtracts()','{ criteria: YxUserExtractQueryCriteria(realName=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(416846,'2020-05-18 19:14:48','修改',NULL,'INFO','UserExtractController.update()','{ resources: YxUserExtract(id=1, uid=11, realName=会敲代码的喵, extractType=weixin, bankCode=0, bankAddress=, alipayCode=, extractPrice=1, mark=null, balance=5, failMsg=失败了, failTime=1589800488, addTime=1573648445, status=-1, wechat=hu) }','192.168.0.100',132,'admin','内网IP',NULL,0,NULL),
	(416847,'2020-05-18 19:14:49','查询',NULL,'INFO','UserExtractController.getYxUserExtracts()','{ criteria: YxUserExtractQueryCriteria(realName=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416848,'2020-05-18 19:14:51','查询充值管理',NULL,'INFO','UserRechargeController.getYxUserRecharges()','{ criteria: YxUserRechargeQueryCriteria(nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(416849,'2020-05-18 19:14:53','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416850,'2020-05-18 19:14:55','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(416851,'2020-05-18 19:18:14','获取经纬度',NULL,'INFO','SystemStoreController.create()','{ jsonStr: {\"addr\":\"河南信阳\"} }','192.168.0.100',1776,'admin','内网IP',NULL,0,NULL),
	(416852,'2020-05-18 19:18:18','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',357,'admin','内网IP',NULL,0,NULL),
	(416853,'2020-05-18 19:18:18','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416854,'2020-05-18 19:18:24','新增门店',NULL,'INFO','SystemStoreController.create()','{ resources: YxSystemStore(id=6, name=444, introduction=44, phone=4, address=河南信阳, detailedAddress=null, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, latitude=32.11683, longitude=114.05857, validTime=null, dayTime=null, addTime=1589800703, isShow=1, isDel=null) }','192.168.0.100',51,'admin','内网IP',NULL,0,NULL),
	(416855,'2020-05-18 19:18:24','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',24,'admin','内网IP',NULL,0,NULL),
	(416856,'2020-05-18 19:22:05','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',68,'admin','内网IP',NULL,0,NULL),
	(416857,'2020-05-18 19:22:45','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416858,'2020-05-18 19:22:49','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416859,'2020-05-18 19:22:50','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416860,'2020-05-18 19:25:44','新增门店店员',NULL,'INFO','SystemStoreStaffController.create()','{ resources: YxSystemStoreStaff(id=5, uid=20, avatar=https://image.dayouqiantu.cn/5e79f6cfd33b6.png, storeId=5, staffName=444, phone=44444, verifyStatus=1, status=null, addTime=null, nickname=15136171112, storeName=null) }','192.168.0.100',57,'admin','内网IP',NULL,0,NULL),
	(416861,'2020-05-18 19:25:45','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',349,'admin','内网IP',NULL,0,NULL),
	(416862,'2020-05-18 19:25:48','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416863,'2020-05-18 19:26:11','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416864,'2020-05-18 19:26:15','修改门店店员',NULL,'INFO','SystemStoreStaffController.update()','{ resources: YxSystemStoreStaff(id=5, uid=20, avatar=https://image.dayouqiantu.cn/5e79f6cfd33b6.png, storeId=4, staffName=444, phone=44444, verifyStatus=1, status=1, addTime=null, nickname=15136171112, storeName=null) }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(416865,'2020-05-18 19:26:15','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416866,'2020-05-18 19:40:49','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',16,'admin','内网IP',NULL,0,NULL),
	(416867,'2020-05-18 19:40:55','修改门店',NULL,'INFO','SystemStoreController.update()','{ resources: YxSystemStore(id=5, name=郑州门店, introduction=郑州门店, phone=15136175246, address=河南省郑州, detailedAddress=, image=http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png, latitude=34.72468, longitude=113.6401, validTime=2020-03-21 - 2020-03-31, dayTime=17:11:13 - 20:11:15, addTime=1584782199, isShow=1, isDel=0) }','192.168.0.100',57,'admin','内网IP',NULL,0,NULL),
	(416868,'2020-05-18 19:40:55','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',17,'admin','内网IP',NULL,0,NULL),
	(416869,'2020-05-18 19:41:37','所有门店',NULL,'INFO','SystemStoreController.getAll()','{ criteria: YxSystemStoreQueryCriteria() }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416870,'2020-05-18 19:41:37','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',45,'admin','内网IP',NULL,0,NULL),
	(416871,'2020-05-18 19:41:41','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416872,'2020-05-18 19:41:41','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',123,'admin','内网IP',NULL,0,NULL),
	(416873,'2020-05-18 19:41:41','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',139,'admin','内网IP',NULL,0,NULL),
	(416874,'2020-05-18 19:41:41','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',140,'admin','内网IP',NULL,0,NULL),
	(416875,'2020-05-18 19:41:47','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',22,'admin','内网IP',NULL,0,NULL),
	(416876,'2020-05-18 19:42:25','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=7, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416877,'2020-05-18 19:42:27','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=2, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416878,'2020-05-18 19:42:52','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416879,'2020-05-18 19:42:52','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=null, deptIds=[], createTime=null) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',42,'admin','内网IP',NULL,0,NULL),
	(416880,'2020-05-18 19:43:00','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416881,'2020-05-18 19:43:00','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416882,'2020-05-18 19:43:00','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(416883,'2020-05-18 19:43:00','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(416884,'2020-05-18 19:43:02','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',17,'admin','内网IP',NULL,0,NULL),
	(416885,'2020-05-18 19:43:04','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=7, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416886,'2020-05-18 19:43:08','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=8, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(416887,'2020-05-18 19:43:31','新增用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.create()','{ resources: User(id=6, avatarId=null, email=666@qq.com, enabled=false, userAvatar=null, roles=[Role(id=2, name=null, remark=null, dataScope=null, level=null, menus=null, depts=null, createTime=null, permission=null)], job=Job(id=8, name=null, enabled=null, dept=null, sort=null, deptId=null, createTime=null), dept=Dept(id=8, name=null, pid=null, enabled=null, createTime=null), password=$2a$10$3Vlo24eOmHHW7.3vAjqPSusfIINNo4JiujzxgqsaoWLx/d5de/jEm, username=7777, deptId=8, phone=15136175246, jobId=8, createTime=2020-05-18 19:43:30.467, lastPasswordResetTime=null, nickName=777, sex=男) }','192.168.0.100',175,'admin','内网IP',NULL,0,NULL),
	(416888,'2020-05-18 19:43:31','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',83,'admin','内网IP',NULL,0,NULL),
	(416889,'2020-05-18 19:43:35','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416890,'2020-05-18 19:43:35','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=8, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',16,'admin','内网IP',NULL,0,NULL),
	(416891,'2020-05-18 19:43:42','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416892,'2020-05-18 19:43:42','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(416893,'2020-05-18 19:43:45','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416894,'2020-05-18 19:43:53','新增部门',NULL,'INFO','DeptController.create()','{ resources: Dept(id=12, name=777, pid=1, enabled=true, createTime=2020-05-18 19:43:53.096) }','192.168.0.100',40,'admin','内网IP',NULL,0,NULL),
	(416895,'2020-05-18 19:43:53','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416896,'2020-05-18 19:43:56','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416897,'2020-05-18 19:43:57','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=null, deptIds=[], createTime=null) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(416898,'2020-05-18 19:43:57','查询字典',NULL,'INFO','DictController.getDicts()','{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',25,'admin','内网IP',NULL,0,NULL),
	(416899,'2020-05-18 19:43:59','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416900,'2020-05-18 19:44:05','新增字典详情',NULL,'INFO','DictDetailController.create()','{ resources: DictDetail(id=7, label=8, value=8, sort=999, dictId=null, createTime=2020-05-18 19:44:04.755) }','192.168.0.100',21,'admin','内网IP',NULL,0,NULL),
	(416901,'2020-05-18 19:44:05','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416902,'2020-05-18 19:44:09','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=dept_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416903,'2020-05-18 19:44:11','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416904,'2020-05-18 19:44:11','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416905,'2020-05-18 19:44:31','新增字典详情',NULL,'INFO','DictDetailController.create()','{ resources: DictDetail(id=8, label=99, value=999, sort=999, dictId=null, createTime=2020-05-18 19:44:30.917) }','192.168.0.100',33,'admin','内网IP',NULL,0,NULL),
	(416906,'2020-05-18 19:44:31','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416907,'2020-05-18 19:45:01','修改字典详情',NULL,'INFO','DictDetailController.update()','{ resources: DictDetail(id=5, label=启用2, value=true, sort=1, dictId=5, createTime=null) }','192.168.0.100',58,'admin','内网IP',NULL,0,NULL),
	(416908,'2020-05-18 19:45:01','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(416909,'2020-05-18 19:45:12','查询定时任务',NULL,'INFO','QuartzJobController.getJobs()','{ criteria: QuartzJobQueryCriteria(jobName=null, isSuccess=null, isPause=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',23,'admin','内网IP',NULL,0,NULL),
	(416910,'2020-05-18 19:45:23','修改定时任务',NULL,'INFO','QuartzJobController.update()','{ resources: QuartzJob(id=3, beanName=testTask, cronExpression=0/5 * * * * ?, isPause=true, jobName=测试4, methodName=run, params=44, remark=不带参测试, createTime=2019-09-26 16:44:39.0) }','192.168.0.100',51,'admin','内网IP',NULL,0,NULL),
	(416911,'2020-05-18 19:45:23','查询定时任务',NULL,'INFO','QuartzJobController.getJobs()','{ criteria: QuartzJobQueryCriteria(jobName=null, isSuccess=null, isPause=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416912,'2020-05-18 19:45:35','修改定时任务',NULL,'INFO','QuartzJobController.update()','{ resources: QuartzJob(id=3, beanName=testTask, cronExpression=0/5 * * * * ?, isPause=true, jobName=测试43, methodName=run, params=44, remark=不带参测试, createTime=2019-09-26 16:44:39.0) }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(416913,'2020-05-18 19:45:36','查询定时任务',NULL,'INFO','QuartzJobController.getJobs()','{ criteria: QuartzJobQueryCriteria(jobName=null, isSuccess=null, isPause=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',2,'admin','内网IP',NULL,0,NULL),
	(416914,'2020-05-18 19:45:42','查询文件',NULL,'INFO','LocalStorageController.getLocalStorages()','{ criteria: LocalStorageQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416915,'2020-05-18 19:45:42','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',37,'admin','内网IP',NULL,0,NULL),
	(416916,'2020-05-18 19:45:45','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416917,'2020-05-18 19:45:48','配置七牛云存储',NULL,'INFO','QiniuController.emailConfig()','{ qiniuConfig: QiniuConfig(id=1, accessKey=111111, bucket=yixiang, host=https://image.dayouqiantu.cn, secretKey=22222, type=公开, zone=华东) }','192.168.0.100',50,'admin','内网IP',NULL,0,NULL),
	(416918,'2020-05-18 19:45:48','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416919,'2020-05-18 19:45:55','配置七牛云存储',NULL,'INFO','QiniuController.emailConfig()','{ qiniuConfig: QiniuConfig(id=1, accessKey=1111114444, bucket=yixiang, host=https://image.dayouqiantu.cn, secretKey=22222, type=公开, zone=华东) }','192.168.0.100',54,'admin','内网IP',NULL,0,NULL),
	(416920,'2020-05-18 19:45:55','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416921,'2020-05-18 19:46:02','查询图片',NULL,'INFO','PictureController.getRoles()','{ criteria: PictureQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416922,'2020-05-18 19:46:29','查询图片',NULL,'INFO','PictureController.getRoles()','{ criteria: PictureQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',1,'admin','内网IP',NULL,0,NULL),
	(416923,'2020-05-18 19:46:36','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',23,'admin','内网IP',NULL,0,NULL),
	(416924,'2020-05-18 19:46:36','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',331,'admin','内网IP',NULL,0,NULL),
	(416925,'2020-05-18 19:46:37','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(416926,'2020-05-18 19:47:07','修改菜单','org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n### The error may exist in co/yixiang/modules/system/service/mapper/MenuMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  id,cache,hidden,icon,permission,pid,sort,type,path,component,create_time,name,i_frame,component_name  FROM menu     WHERE (componentName = ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:159)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:89)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy135.selectOne(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor421.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy136.selectOne(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getOne(ServiceImpl.java:254)\r\n	at com.baomidou.mybatisplus.extension.service.IService.getOne(IService.java:192)\r\n	at MenuServiceImpl.update(MenuServiceImpl.java:312)\r\n	at MenuServiceImpl$$FastClassBySpringCGLIB$$786e7b02.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MenuServiceImpl$$EnhancerBySpringCGLIB$$6fc84df4.update(<generated>)\r\n	at MenuController.update(MenuController.java:135)\r\n	at MenuController$$FastClassBySpringCGLIB$$df40f4f4.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.GeneratedMethodAccessor281.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MenuController$$EnhancerBySpringCGLIB$$3559c78b.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:143)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy359.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:76)\r\n	at sun.reflect.GeneratedMethodAccessor259.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 138 more\r\n','ERROR','MenuController.update()','{ resources: Menu(id=16, iFrame=false, name=图床管理, component=tools/picture/index, pid=36, sort=25, icon=image, path=pictures, cache=false, hidden=true, componentName=Pictures, createTime=2018-12-28 09:36:53.0, permission=pictures:list, type=1) }','192.168.0.100',90,'admin','内网IP',NULL,0,NULL);

INSERT INTO `log` (`id`, `create_time`, `description`, `exception_detail`, `log_type`, `method`, `params`, `request_ip`, `time`, `username`, `address`, `browser`, `type`, `uid`)
VALUES
	(416927,'2020-05-18 19:47:25','修改菜单',NULL,'INFO','MenuController.update()','{ resources: Menu(id=145, iFrame=false, name=图片上传, component=null, pid=16, sort=2, icon=null, path=null, cache=false, hidden=false, componentName=null, createTime=2020-02-14 21:52:31.0, permission=pictures:add, type=2) }','192.168.0.100',38,'admin','内网IP',NULL,0,NULL),
	(416928,'2020-05-18 19:47:25','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416929,'2020-05-18 19:47:32','修改菜单','org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n### The error may exist in co/yixiang/modules/system/service/mapper/MenuMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  id,cache,hidden,icon,permission,pid,sort,type,path,component,create_time,name,i_frame,component_name  FROM menu     WHERE (componentName = ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:74)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:159)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:89)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy135.selectOne(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor421.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy136.selectOne(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getOne(ServiceImpl.java:254)\r\n	at com.baomidou.mybatisplus.extension.service.IService.getOne(IService.java:192)\r\n	at MenuServiceImpl.update(MenuServiceImpl.java:312)\r\n	at MenuServiceImpl$$FastClassBySpringCGLIB$$786e7b02.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MenuServiceImpl$$EnhancerBySpringCGLIB$$6fc84df4.update(<generated>)\r\n	at MenuController.update(MenuController.java:135)\r\n	at MenuController$$FastClassBySpringCGLIB$$df40f4f4.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.GeneratedMethodAccessor281.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MenuController$$EnhancerBySpringCGLIB$$3559c78b.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'componentName\' in \'where clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:974)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:391)\r\n	at net.sf.log4jdbc.sql.jdbcapi.PreparedStatementSpy.execute(PreparedStatementSpy.java:443)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3409)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3407)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:143)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.$Proxy359.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:76)\r\n	at sun.reflect.GeneratedMethodAccessor259.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 138 more\r\n','ERROR','MenuController.update()','{ resources: Menu(id=16, iFrame=false, name=图床管理, component=tools/picture/index, pid=36, sort=25, icon=image, path=pictures, cache=false, hidden=false, componentName=Pictures, createTime=2018-12-28 09:36:53.0, permission=pictures:list, type=1) }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(416930,'2020-05-18 19:48:00','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416931,'2020-05-18 19:48:00','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416932,'2020-05-18 19:48:04','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416933,'2020-05-18 19:48:10','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416934,'2020-05-18 19:48:12','修改部门',NULL,'INFO','DeptController.update()','{ resources: Dept(id=12, name=7773, pid=1, enabled=true, createTime=2020-05-18 19:43:53.0) }','192.168.0.100',43,'admin','内网IP',NULL,0,NULL),
	(416935,'2020-05-18 19:48:12','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416936,'2020-05-18 19:48:14','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416937,'2020-05-18 19:48:14','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=null, deptIds=[], createTime=null) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(416938,'2020-05-18 19:48:17','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416939,'2020-05-18 19:48:19','修改岗位',NULL,'INFO','JobController.update()','{ resources: Job(id=11, name=全栈开发2, enabled=true, dept=Dept(id=2, name=研发部, pid=7, enabled=true, createTime=2019-03-25 09:15:32.0), sort=2, deptId=null, createTime=2019-03-31 13:39:30.0) }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(416940,'2020-05-18 19:48:19','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=null, deptIds=[], createTime=null) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416941,'2020-05-18 19:48:21','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416942,'2020-05-18 19:48:26','查询字典',NULL,'INFO','DictController.getDicts()','{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',2,'admin','内网IP',NULL,0,NULL),
	(416943,'2020-05-18 19:48:27','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(416944,'2020-05-18 19:48:27','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',17,'admin','内网IP',NULL,0,NULL),
	(416945,'2020-05-18 19:48:42','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',2,'admin','内网IP',NULL,0,NULL),
	(416946,'2020-05-18 19:48:42','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(416947,'2020-05-18 19:48:44','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416948,'2020-05-18 19:48:44','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=null, deptIds=[], createTime=null) pageable: Page request [number: 0, size 10, sort: sort: ASC,id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(416949,'2020-05-18 19:48:46','查询字典',NULL,'INFO','DictController.getDicts()','{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',2,'admin','内网IP',NULL,0,NULL),
	(416950,'2020-05-18 19:50:54','查询字典',NULL,'INFO','DictController.all()','{ }','192.168.0.100',1,'admin','内网IP',NULL,0,NULL),
	(416951,'2020-05-18 19:53:43','查询文件',NULL,'INFO','QiniuController.getRoles()','{ criteria: QiniuQueryCriteria(name=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(416952,'2020-05-18 19:53:43','查询文件',NULL,'INFO','LocalStorageController.getLocalStorages()','{ criteria: LocalStorageQueryCriteria(blurry=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(416953,'2020-05-18 19:53:44','查询定时任务',NULL,'INFO','QuartzJobController.getJobs()','{ criteria: QuartzJobQueryCriteria(jobName=null, isSuccess=null, isPause=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(416954,'2020-05-18 19:55:38','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(416955,'2020-05-18 19:55:38','查询字典',NULL,'INFO','DictController.getDicts()','{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416956,'2020-05-18 19:55:42','导出字典数据',NULL,'INFO','DictController.download()','{ response: com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper@4d681c79 criteria: DictQueryCriteria(blurry=null) }','192.168.0.100',1069,'admin','内网IP',NULL,0,NULL),
	(416957,'2020-05-18 19:55:49','新增字典',NULL,'INFO','DictController.create()','{ resources: Dict(id=6, name=33, remark=3, createTime=2020-05-18 19:55:49.242) }','192.168.0.100',61,'admin','内网IP',NULL,0,NULL),
	(416958,'2020-05-18 19:55:50','查询字典',NULL,'INFO','DictController.getDicts()','{ resources: DictQueryCriteria(blurry=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(416959,'2020-05-18 20:06:30','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',32,'admin','内网IP',NULL,0,NULL),
	(416960,'2020-05-18 20:06:33','删除数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.delete()','{ id: 237 }','192.168.0.100',39,'admin','内网IP',NULL,0,NULL),
	(416961,'2020-05-18 20:06:34','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_home_banner) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',4,'admin','内网IP',NULL,0,NULL),
	(1262353944998133761,'2020-05-18 20:06:49','H5/APP用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=mingming, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@7a9c68f9]] }','192.168.0.100',406,'mingming','内网IP',NULL,0,11),
	(1262354042125631489,'2020-05-18 20:07:12','查看优惠券',NULL,'INFO','com.boplus.modules.shop.web.controller.CouponController.getList()','{ queryParam: YxStoreCouponQueryParam() }','192.168.0.100',41,'mingming','内网IP',NULL,1,11),
	(1262354042427621377,'2020-05-18 20:07:12','查看商品详情',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreProductController.detail()','{ id: 19 latitude: 33.54528 longitude: 113.9202 from: null }','192.168.0.100',124,'mingming','内网IP',NULL,1,11),
	(1262354067484393473,'2020-05-18 20:07:18','添加购物车',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreCartController.add()','{ jsonStr: {\"productId\":\"19\",\"cartNum\":1,\"new\":1,\"uniqueId\":\"\"} }','192.168.0.100',41,'mingming','内网IP',NULL,1,11),
	(1262354078314086402,'2020-05-18 20:07:20','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262354076197191680 }','192.168.0.100',13,'mingming','内网IP',NULL,1,11),
	(1262354078314086403,'2020-05-18 20:07:29','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',3,'admin','内网IP',NULL,0,NULL),
	(1262358097661083649,'2020-05-18 20:23:19','进入用户中心',NULL,'INFO','com.boplus.modules.user.web.controller.UserController.userMenu()','{ }','192.168.0.100',8,'mingming','内网IP',NULL,1,11),
	(1262358107781939201,'2020-05-18 20:23:21','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=2) }','192.168.0.100',24,'mingming','内网IP',NULL,1,11),
	(1262358138266140674,'2020-05-18 20:23:28','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262354076197191680 }','192.168.0.100',18,'mingming','内网IP',NULL,1,11),
	(1262358200123736066,'2020-05-18 20:23:43','订单收货',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderTake()','{ jsonStr: {\"uni\":\"1262354076197191680\"} }','192.168.0.100',116,'mingming','内网IP',NULL,1,11),
	(1262358200245370882,'2020-05-18 20:23:43','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262354076197191680 }','192.168.0.100',10,'mingming','内网IP',NULL,1,11),
	(1262358212320772098,'2020-05-18 20:23:46','查看优惠券',NULL,'INFO','com.boplus.modules.shop.web.controller.CouponController.getList()','{ queryParam: YxStoreCouponQueryParam() }','192.168.0.100',21,'mingming','内网IP',NULL,1,11),
	(1262358212434018306,'2020-05-18 20:23:46','查看商品详情',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreProductController.detail()','{ id: 19 latitude: 33.54528 longitude: 113.9202 from: null }','192.168.0.100',49,'mingming','内网IP',NULL,1,11),
	(1262358218629005313,'2020-05-18 20:23:47','添加购物车',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreCartController.add()','{ jsonStr: {\"productId\":\"19\",\"cartNum\":1,\"new\":1,\"uniqueId\":\"\"} }','192.168.0.100',81,'mingming','内网IP',NULL,1,11),
	(1262358223414706177,'2020-05-18 20:23:49','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262358222757429248 }','192.168.0.100',9,'mingming','内网IP',NULL,1,11),
	(1262358239634079745,'2020-05-18 20:23:52','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262358222757429248 }','192.168.0.100',10,'mingming','内网IP',NULL,1,11),
	(1262358261939388417,'2020-05-18 20:23:58','提交订单退款',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.refundVerify()','{ param: RefundParam(refund_reason_wap_explain=777777, refund_reason_wap_img=, text=收货地址填错了, uni=1262358222757429248) }','192.168.0.100',48,'mingming','内网IP',NULL,1,11),
	(1262358262128132098,'2020-05-18 20:23:58','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262358222757429248 }','192.168.0.100',9,'mingming','内网IP',NULL,1,11),
	(1262359088544432130,'2020-05-18 20:27:15','查看优惠券',NULL,'INFO','com.boplus.modules.shop.web.controller.CouponController.getList()','{ queryParam: YxStoreCouponQueryParam() }','192.168.0.100',13,'mingming','内网IP',NULL,1,11),
	(1262359088611540994,'2020-05-18 20:27:15','查看商品详情',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreProductController.detail()','{ id: 19 latitude: 33.54528 longitude: 113.9202 from: null }','192.168.0.100',28,'mingming','内网IP',NULL,1,11),
	(1262359097948061698,'2020-05-18 20:27:17','添加购物车',NULL,'INFO','com.boplus.modules.shop.web.controller.StoreCartController.add()','{ jsonStr: {\"productId\":\"19\",\"cartNum\":1,\"new\":1,\"uniqueId\":\"\"} }','192.168.0.100',42,'mingming','内网IP',NULL,1,11),
	(1262359146702651394,'2020-05-18 20:27:29','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262359144682225664 }','192.168.0.100',269,'mingming','内网IP',NULL,1,11),
	(1262359146702651395,'2020-05-18 20:27:37','所有门店',NULL,'INFO','SystemStoreController.getAll()','{ criteria: YxSystemStoreQueryCriteria() }','192.168.0.100',21,'admin','内网IP',NULL,0,NULL),
	(1262359146702651396,'2020-05-18 20:27:37','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',50,'admin','内网IP',NULL,0,NULL),
	(1262361008143134721,'2020-05-18 20:34:53','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262359144682225664 }','192.168.0.100',60,'mingming','内网IP',NULL,1,11),
	(1262361008143134722,'2020-05-18 20:45:59','查询',NULL,'INFO','com.boplus.modules.shop.rest.SystemConfigController.getYxSystemConfigs()','{ criteria: YxSystemConfigQueryCriteria() pageable: Page request [number: 0, size 50, sort: UNSORTED] }','192.168.0.100',45,'admin','内网IP',NULL,0,NULL),
	(1262361008143134723,'2020-05-18 20:45:59','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(1262361008143134724,'2020-05-18 20:55:06','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',81,'admin','内网IP',NULL,0,NULL),
	(1262361008143134725,'2020-05-18 20:55:25','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(1262361008143134726,'2020-05-18 20:58:29','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',85,'admin','内网IP',NULL,0,NULL),
	(1262361008143134727,'2020-05-18 21:00:45','修改门店',NULL,'INFO','SystemStoreController.update()','{ resources: YxSystemStore(id=5, name=郑州门店, introduction=郑州门店, phone=15136175246, address=河南省郑州, detailedAddress=, image=http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png, latitude=34.72468, longitude=113.6401, validTime=2020-03-21 - 2020-03-31, dayTime=17:11:13 - 20:11:15, addTime=1584782199, isShow=1, isDel=0, validTimeEnd=Tue Mar 31 00:00:00 CST 2020, validTimeStart=Sat Mar 21 00:00:00 CST 2020, dayTimeStart=Sat Mar 21 17:11:13 CST 2020, dayTimeEnd=Sat Mar 21 20:11:15 CST 2020) }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(1262361008143134728,'2020-05-18 21:00:45','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(1262361008143134729,'2020-05-18 21:01:26','获取经纬度',NULL,'INFO','SystemStoreController.create()','{ jsonStr: {\"addr\":null} }','192.168.0.100',1548,'admin','内网IP',NULL,0,NULL),
	(1262361008143134730,'2020-05-18 21:01:39','获取经纬度',NULL,'INFO','SystemStoreController.create()','{ jsonStr: {\"addr\":\"河南信阳\"} }','192.168.0.100',709,'admin','内网IP',NULL,0,NULL),
	(1262361008143134731,'2020-05-18 21:01:42','查询素材分组',NULL,'INFO','MaterialGroupController.getYxMaterialGroups()','{ criteria: YxMaterialGroupQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(1262361008143134732,'2020-05-18 21:01:42','查询素材管理',NULL,'INFO','MaterialController.getYxMaterials()','{ criteria: YxMaterialQueryCriteria() pageable: Page request [number: 0, size 12, sort: create_time: DESC] }','192.168.0.100',27,'admin','内网IP',NULL,0,NULL),
	(1262361008143134733,'2020-05-18 21:01:56','新增门店',NULL,'INFO','SystemStoreController.create()','{ resources: YxSystemStore(id=7, name=44, introduction=44, phone=11111, address=河南信阳, detailedAddress=null, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, latitude=32.11683, longitude=114.05857, validTime=2020-05-18 - 2020-06-30, dayTime=08:00:00 - 22:58:28, addTime=1589806916, isShow=1, isDel=0, validTimeEnd=Tue Jun 30 00:00:00 CST 2020, validTimeStart=Mon May 18 00:00:00 CST 2020, dayTimeStart=Mon May 18 08:00:00 CST 2020, dayTimeEnd=Mon May 18 22:58:28 CST 2020) }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(1262361008143134734,'2020-05-18 21:01:57','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(1262361008143134735,'2020-05-18 21:02:00','删除门店',NULL,'INFO','SystemStoreController.deleteAll()','{ ids: [Ljava.lang.Integer;@54831f87 }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(1262361008143134736,'2020-05-18 21:02:00','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(1262361008143134737,'2020-05-18 21:09:30','用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@34c1bbfd]] }','192.168.0.100',1481,'admin','内网IP',NULL,0,1),
	(1262361008143134738,'2020-05-18 21:09:31','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',76,'admin','内网IP',NULL,0,NULL),
	(1262361008143134739,'2020-05-18 21:09:35','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(1262361008143134740,'2020-05-18 21:09:37','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(1262361008143134741,'2020-05-18 21:09:37','查询用户',NULL,'INFO','MemberController.getYxUsers()','{ criteria: YxUserQueryCriteria(nickname=null, phone=null, isPromoter=null, userType=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.0.100',42,'admin','内网IP',NULL,0,NULL),
	(1262361008143134742,'2020-05-18 21:09:40','修改门店店员',NULL,'INFO','SystemStoreStaffController.update()','{ resources: YxSystemStoreStaff(id=5, uid=20, avatar=https://image.dayouqiantu.cn/5e79f6cfd33b6.png, storeId=4, staffName=444, phone=44444, verifyStatus=1, status=1, addTime=null, nickname=15136171112, storeName=信阳门店) }','192.168.0.100',106,'admin','内网IP',NULL,0,NULL),
	(1262361008143134743,'2020-05-18 21:09:40','查询门店店员',NULL,'INFO','SystemStoreStaffController.getYxSystemStoreStaffs()','{ criteria: YxSystemStoreStaffQueryCriteria(staffName=null, nickname=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(1262361008143134744,'2020-05-18 21:09:49','查询门店',NULL,'INFO','SystemStoreController.getYxSystemStores()','{ criteria: YxSystemStoreQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(1262361008143134745,'2020-05-19 10:06:50','用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@77581068]] }','192.168.0.100',2225,'admin','内网IP',NULL,0,1),
	(1262361008143134746,'2020-05-19 10:07:01','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 10, sort: sort: DESC] }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(1262361008143134747,'2020-05-19 10:07:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',86,'admin','内网IP',NULL,0,NULL),
	(1262361008143134748,'2020-05-19 10:07:02','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',123,'admin','内网IP',NULL,0,NULL),
	(1262361008143134749,'2020-05-19 10:07:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=1, isShow=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',141,'admin','内网IP',NULL,0,NULL),
	(1262361008143134750,'2020-05-19 10:07:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',139,'admin','内网IP',NULL,0,NULL),
	(1262361008143134751,'2020-05-19 10:07:08','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(1262361008143134752,'2020-05-19 10:10:02','修改商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=3, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=3, pid=null, cateName=图文广告, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',64,'admin','内网IP',NULL,0,NULL),
	(1262361008143134753,'2020-05-19 10:10:02','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',421,'admin','内网IP',NULL,0,NULL),
	(1262361008143134754,'2020-05-19 10:10:10','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(1262361008143134755,'2020-05-19 10:10:13','修改商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=5, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=5, pid=null, cateName=平面设计, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',41,'admin','内网IP',NULL,0,NULL),
	(1262361008143134756,'2020-05-19 10:10:14','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(1262361008143134757,'2020-05-19 10:11:12','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',320,'admin','内网IP',NULL,0,NULL),
	(1262361008143134758,'2020-05-19 10:11:20','修改商品','java.lang.NullPointerException\r\n	at YxStoreProductServiceImpl.updateProduct(YxStoreProductServiceImpl.java:269)\r\n	at YxStoreProductServiceImpl$$FastClassBySpringCGLIB$$cbfb4ced.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at YxStoreProductServiceImpl$$EnhancerBySpringCGLIB$$a9d851b9.updateProduct(<generated>)\r\n	at com.boplus.modules.shop.rest.StoreProductController.update(StoreProductController.java:76)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$FastClassBySpringCGLIB$$7f5f9c6a.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$EnhancerBySpringCGLIB$$874f5d87.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=null, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=null, pid=null, cateName=名片, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(1262361008143134759,'2020-05-19 10:14:32','修改商品','java.lang.NullPointerException\r\n	at YxStoreProductServiceImpl.updateProduct(YxStoreProductServiceImpl.java:270)\r\n	at YxStoreProductServiceImpl$$FastClassBySpringCGLIB$$cbfb4ced.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at YxStoreProductServiceImpl$$EnhancerBySpringCGLIB$$cc068e83.updateProduct(<generated>)\r\n	at com.boplus.modules.shop.rest.StoreProductController.update(StoreProductController.java:76)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$FastClassBySpringCGLIB$$7f5f9c6a.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$EnhancerBySpringCGLIB$$2e907eaa.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=null, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=null, pid=null, cateName=名片, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(1262361008143134760,'2020-05-19 10:16:47','修改商品','BadRequestException: 请选择分类\r\n	at YxStoreProductServiceImpl.updateProduct(YxStoreProductServiceImpl.java:269)\r\n	at YxStoreProductServiceImpl$$FastClassBySpringCGLIB$$cbfb4ced.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at YxStoreProductServiceImpl$$EnhancerBySpringCGLIB$$d0dab694.updateProduct(<generated>)\r\n	at com.boplus.modules.shop.rest.StoreProductController.update(StoreProductController.java:76)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$FastClassBySpringCGLIB$$7f5f9c6a.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\r\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\r\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.boplus.modules.shop.rest.StoreProductController$$EnhancerBySpringCGLIB$$691ae57d.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n','ERROR','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=null, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=null, pid=null, cateName=名片, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(1262361008143134761,'2020-05-19 10:17:50','修改商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.update()','{ resources: YxStoreProduct(id=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, sliderImage=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, storeName=9999, storeInfo=, keyword=, barCode=, cateId=2, price=0, vipPrice=0, otPrice=0, postage=0, unitName=张, sort=0, sales=0, stock=0, isShow=1, isHot=0, isBenefit=0, isBest=0, isNew=0, description=<p>999999</p>, addTime=1589796278, isPostage=0, isDel=0, merUse=0, giveIntegral=0, cost=0, isSeckill=0, isBargain=0, isGood=0, ficti=0, browse=0, codePath=, soureLink=, storeCategory=YxStoreCategory(id=2, pid=null, cateName=名片, sort=null, pic=null, isShow=null, addTime=null, isDel=null)) }','192.168.0.100',62,'admin','内网IP',NULL,0,NULL),
	(1262361008143134762,'2020-05-19 10:17:50','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',473,'admin','内网IP',NULL,0,NULL),
	(1262361008143134763,'2020-05-19 10:18:22','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',34,'admin','内网IP',NULL,0,NULL),
	(1262361008143134764,'2020-05-19 10:18:30','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',20,'admin','内网IP',NULL,0,NULL),
	(1262361008143134765,'2020-05-19 10:18:31','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=1, isShow=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',11,'admin','内网IP',NULL,0,NULL),
	(1262361008143134766,'2020-05-19 10:18:33','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',60,'admin','内网IP',NULL,0,NULL),
	(1262361008143134767,'2020-05-19 10:18:37','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',39,'admin','内网IP',NULL,0,NULL),
	(1262361008143134768,'2020-05-19 10:18:38','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(1262361008143134769,'2020-05-19 10:18:40','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',26,'admin','内网IP',NULL,0,NULL),
	(1262361008143134770,'2020-05-19 10:18:49','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',64,'admin','内网IP',NULL,0,NULL),
	(1262361008143134771,'2020-05-19 10:20:09','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',66,'admin','内网IP',NULL,0,NULL),
	(1262361008143134772,'2020-05-19 10:20:09','列表',NULL,'INFO','StoreSeckillController.getYxStoreSeckills()','{ criteria: YxStoreSeckillQueryCriteria(title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',63,'admin','内网IP',NULL,0,NULL),
	(1262361008143134773,'2020-05-19 10:20:44','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',80,'admin','内网IP',NULL,0,NULL),
	(1262361008143134774,'2020-05-19 10:22:22','修改拼团',NULL,'INFO','StoreCombinationController.update()','{ resources: YxStoreCombination(id=4, productId=28, merId=0, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, title=9999, attr=null, people=1, info=, price=0, sort=0, sales=0, stock=1, addTime=1589800141, isHost=0, isShow=1, isDel=0, combination=1, merUse=null, isPostage=0, postage=0, description=<p>999999</p>, startTime=1589731200, stopTime=1590768000, effectiveTime=24, cost=0, browse=0, unitName=张, endTimeDate=2020-05-30 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',31,'admin','内网IP',NULL,0,NULL),
	(1262361008143134775,'2020-05-19 10:22:22','查询拼团',NULL,'INFO','StoreCombinationController.getYxStoreCombinations()','{ criteria: YxStoreCombinationQueryCriteria(title=null, isDel=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',49,'admin','内网IP',NULL,0,NULL),
	(1262361008143134776,'2020-05-19 10:22:28','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(1262361008143134777,'2020-05-19 10:22:28','列表',NULL,'INFO','StoreSeckillController.getYxStoreSeckills()','{ criteria: YxStoreSeckillQueryCriteria(title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(1262361008143134778,'2020-05-19 10:22:49','查询砍价',NULL,'INFO','StoreBargainController.getYxStoreBargains()','{ criteria: YxStoreBargainQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',36,'admin','内网IP',NULL,0,NULL),
	(1262361008143134779,'2020-05-19 10:25:02','修改砍价',NULL,'INFO','StoreBargainController.update()','{ resources: YxStoreBargain(id=5, productId=28, title=9999, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, unitName=张, stock=1, sales=0, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, startTime=1589731200, stopTime=1590595200, storeName=null, price=0.01, minPrice=1, num=1, bargainMaxPrice=1, bargainMinPrice=1, bargainNum=1, status=1, description=<p>999999</p>, giveIntegral=0, info=, cost=0, sort=0, isHot=0, isDel=0, addTime=1589799708, isPostage=0, postage=0, rule=<p>7777</p>, look=0, share=0, endTimeDate=2020-05-28 00:00:00.0, startTimeDate=2020-05-18 00:00:00.0) }','192.168.0.100',49,'admin','内网IP',NULL,0,NULL),
	(1262361008143134780,'2020-05-19 10:25:02','查询砍价',NULL,'INFO','StoreBargainController.getYxStoreBargains()','{ criteria: YxStoreBargainQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(1262361008143134781,'2020-05-19 10:25:11','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(1262361008143134782,'2020-05-19 10:25:12','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=1, isShow=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(1262361008143134783,'2020-05-19 10:25:12','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',19,'admin','内网IP',NULL,0,NULL),
	(1262361008143134784,'2020-05-19 10:25:12','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',19,'admin','内网IP',NULL,0,NULL),
	(1262361008143134785,'2020-05-19 10:27:24','查询数据配置',NULL,'INFO','com.boplus.modules.shop.rest.SystemGroupDataController.getYxSystemGroupDatas()','{ criteria: YxSystemGroupDataQueryCriteria(groupName=boplus_seckill_time) pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',7,'admin','内网IP',NULL,0,NULL),
	(1262361008143134786,'2020-05-19 10:27:24','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=1, isShow=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(1262361008143134787,'2020-05-19 10:27:24','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',17,'admin','内网IP',NULL,0,NULL),
	(1262361008143134788,'2020-05-19 10:27:24','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',19,'admin','内网IP',NULL,0,NULL),
	(1262361008143134789,'2020-05-19 10:28:20','修改砍价',NULL,'INFO','StoreBargainController.update()','{ resources: YxStoreBargain(id=6, productId=27, title=9999, image=http://localhost:8000/file/pic/资讯-20200311043727918.png, unitName=9, stock=2, sales=0, images=http://localhost:8000/file/pic/钻石-20200328094531898.jpg, startTime=1589855271, stopTime=1590422400, storeName=null, price=0.01, minPrice=1, num=1, bargainMaxPrice=1, bargainMinPrice=1, bargainNum=1, status=1, description=<p>999999</p>, giveIntegral=0, info=999, cost=0, sort=0, isHot=0, isDel=0, addTime=1589855299, isPostage=0, postage=0, rule=<p>666</p>, look=null, share=null, endTimeDate=2020-05-26 00:00:00.0, startTimeDate=2020-05-19 10:27:51.0) }','192.168.0.100',46,'admin','内网IP',NULL,0,NULL),
	(1262361008143134790,'2020-05-19 10:28:20','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',15,'admin','内网IP',NULL,0,NULL),
	(1262361008143134791,'2020-05-19 10:28:25','查询商品分类',NULL,'INFO','StoreCategoryController.getYxStoreCategorys()','{ criteria: YxStoreCategoryQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',29,'admin','内网IP',NULL,0,NULL),
	(1262361008143134792,'2020-05-19 10:28:40','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',9,'admin','内网IP',NULL,0,NULL),
	(1262361008143134793,'2020-05-19 10:28:44','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',8,'admin','内网IP',NULL,0,NULL),
	(1262361008143134794,'2020-05-19 10:28:44','查询商品',NULL,'INFO','com.boplus.modules.shop.rest.StoreProductController.getYxStoreProducts()','{ criteria: YxStoreProductQueryCriteria(storeName=null, isDel=0, isShow=1) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',10,'admin','内网IP',NULL,0,NULL),
	(1262361008143134795,'2020-05-19 10:30:09','查询',NULL,'INFO','UserBillController.getYxUserBills()','{ criteria: YxUserBillQueryCriteria(nickname=, category=, type=) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',22,'admin','内网IP',NULL,0,NULL),
	(1262361008143134796,'2020-05-19 10:30:18','查询',NULL,'INFO','UserBillController.getYxUserBills()','{ criteria: YxUserBillQueryCriteria(nickname=, category=, type=) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(1262361008143134797,'2020-05-19 10:30:35','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',22,'admin','内网IP',NULL,0,NULL),
	(1262361008143134798,'2020-05-19 10:30:55','删除菜单','org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:78)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:440)\r\n	at com.sun.proxy.$Proxy111.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:159)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:89)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy136.selectOne(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:343)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:139)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy137.selectOne(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getOne(ServiceImpl.java:254)\r\n	at com.baomidou.mybatisplus.extension.service.IService.getOne(IService.java:192)\r\n	at com.baomidou.mybatisplus.extension.service.IService$$FastClassBySpringCGLIB$$f8525d18.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at MenuServiceImpl$$EnhancerBySpringCGLIB$$446335f3.getOne(<generated>)\r\n	at MenuController.delete(MenuController.java:148)\r\n	at MenuController$$FastClassBySpringCGLIB$$df40f4f4.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at LogAspect.logAround(LogAspect.java:62)\r\n	at sun.reflect.GeneratedMethodAccessor433.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at MenuController$$EnhancerBySpringCGLIB$$869ed6e8.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at TokenFilter.doFilter(TokenFilter.java:62)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:80)\r\n	at sun.reflect.GeneratedMethodAccessor200.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:426)\r\n	... 133 more\r\n','ERROR','MenuController.delete()','{ ids: [16] }','192.168.0.100',12,'admin','内网IP',NULL,0,NULL),
	(1262361008143134799,'2020-05-19 10:36:38','删除菜单',NULL,'INFO','MenuController.delete()','{ ids: [16] }','192.168.0.100',154,'admin','内网IP',NULL,0,NULL),
	(1262361008143134800,'2020-05-19 10:36:39','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',399,'admin','内网IP',NULL,0,NULL),
	(1262361008143134801,'2020-05-19 10:36:45','查询',NULL,'INFO','UserBillController.getYxUserBills()','{ criteria: YxUserBillQueryCriteria(nickname=, category=, type=) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',85,'admin','内网IP',NULL,0,NULL),
	(1262361008143134802,'2020-05-19 10:37:59','查询',NULL,'INFO','UserBillController.getYxUserBills()','{ criteria: YxUserBillQueryCriteria(nickname=, category=, type=) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',13,'admin','内网IP',NULL,0,NULL),
	(1262361008143134803,'2020-05-19 10:38:34','查询菜单',NULL,'INFO','MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.0.100',23,'admin','内网IP',NULL,0,NULL),
	(1262361008143134804,'2020-05-19 10:39:50','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',37,'admin','内网IP',NULL,0,NULL),
	(1262361008143134805,'2020-05-19 10:39:50','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',45,'admin','内网IP',NULL,0,NULL),
	(1262361008143134806,'2020-05-19 10:39:50','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',61,'admin','内网IP',NULL,0,NULL),
	(1262361008143134807,'2020-05-19 10:39:51','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(1262361008143134808,'2020-05-19 10:40:33','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',53,'admin','内网IP',NULL,0,NULL),
	(1262361008143134809,'2020-05-19 10:40:33','查询角色',NULL,'INFO','RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.0.100',25,'admin','内网IP',NULL,0,NULL),
	(1262361008143134810,'2020-05-19 10:40:40','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',6,'admin','内网IP',NULL,0,NULL),
	(1262361008143134811,'2020-05-19 10:40:40','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',14,'admin','内网IP',NULL,0,NULL),
	(1262361008143134812,'2020-05-19 10:40:40','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',30,'admin','内网IP',NULL,0,NULL),
	(1262361008143134813,'2020-05-19 10:40:41','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',24,'admin','内网IP',NULL,0,NULL),
	(1262361008143134814,'2020-05-19 10:40:57','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[], name=null, enabled=true, pid=null, createTime=null) }','192.168.0.100',28,'admin','内网IP',NULL,0,NULL),
	(1262361008143134815,'2020-05-19 10:40:57','查询岗位',NULL,'INFO','JobController.getJobs()','{ criteria: JobQueryCriteria(name=null, enabled=null, deptId=2, deptIds=[], createTime=null) pageable: Page request [number: 0, size 2000, sort: UNSORTED] }','192.168.0.100',18,'admin','内网IP',NULL,0,NULL),
	(1262361008143134816,'2020-05-19 10:41:11','用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=test2, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@503d3349]] }','192.168.0.100',732,'test2','内网IP',NULL,0,4),
	(1262361008143134817,'2020-05-19 10:41:11','查询字典详情',NULL,'INFO','DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.0.100',17,'test2','内网IP',NULL,0,NULL),
	(1262361008143134818,'2020-05-19 10:41:11','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[2], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',14,'test2','内网IP',NULL,0,NULL),
	(1262361008143134819,'2020-05-19 10:41:11','查询部门',NULL,'INFO','DeptController.getDepts()','{ criteria: DeptQueryCriteria(ids=[2], name=null, enabled=null, pid=null, createTime=null) }','192.168.0.100',28,'test2','内网IP',NULL,0,NULL),
	(1262361008143134820,'2020-05-19 10:41:11','查询用户',NULL,'INFO','com.boplus.modules.system.rest.SysUserController.getUsers()','{ criteria: UserQueryCriteria(id=null, deptIds=[2], blurry=null, enabled=null, deptId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',73,'test2','内网IP',NULL,0,NULL),
	(1262361008143134821,'2020-05-19 10:41:54','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',33,'test2','内网IP',NULL,0,NULL),
	(1262361008143134822,'2020-05-19 10:42:11','用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@a199ebc]] }','192.168.0.100',99,'admin','内网IP',NULL,0,1),
	(1262361008143134823,'2020-05-19 10:42:12','查询快递',NULL,'INFO','ExpressController.getYxExpresss()','{ criteria: YxExpressQueryCriteria() pageable: Page request [number: 0, size 20, sort: UNSORTED] }','192.168.0.100',5,'admin','内网IP',NULL,0,NULL),
	(1262361008143134824,'2020-05-19 10:42:39','查询',NULL,'INFO','StoreProductReplyController.getYxStoreProductReplys()','{ criteria: YxStoreProductReplyQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',17,'admin','内网IP',NULL,0,NULL),
	(1262575210858401794,'2020-05-19 10:46:02','H5/APP用户登录',NULL,'INFO','AuthController.login()','{ authUser: {username=mingming, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@757aea00]] }','192.168.0.100',510,'mingming','内网IP',NULL,0,11),
	(1262575215421804545,'2020-05-19 10:46:04','进入用户中心',NULL,'INFO','com.boplus.modules.user.web.controller.UserController.userMenu()','{ }','192.168.0.100',11,'mingming','内网IP',NULL,1,11),
	(1262575250670735361,'2020-05-19 10:46:12','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=3) }','192.168.0.100',50,'mingming','内网IP',NULL,1,11),
	(1262575255536128001,'2020-05-19 10:46:13','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262359144682225664 }','192.168.0.100',30,'mingming','内网IP',NULL,1,11),
	(1262575318031257601,'2020-05-19 10:46:28','评价商品',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.comment()','{ productReply: YxStoreProductReply(id=6, uid=11, oid=157, unique=f4d6e6a9cb86411c85fe87dbf2b1eb6b, productId=19, replyType=product, productScore=5, serviceScore=5, comment=8888, pics=http://localhost:8009/api/file/pic/list_16-20200519104626560.png, addTime=1589856387, merchantReplyContent=null, merchantReplyTime=null, isDel=null, isReply=null) }','192.168.0.100',112,'mingming','内网IP',NULL,1,11),
	(1262575318303887361,'2020-05-19 10:46:28','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262359144682225664 }','192.168.0.100',22,'mingming','内网IP',NULL,1,11),
	(1262575350172209153,'2020-05-19 10:46:36','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=-3) }','192.168.0.100',17,'mingming','内网IP',NULL,1,11),
	(1262575362839007233,'2020-05-19 10:46:39','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=3) }','192.168.0.100',15,'mingming','内网IP',NULL,1,11),
	(1262575368979468289,'2020-05-19 10:46:40','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=4) }','192.168.0.100',12,'mingming','内网IP',NULL,1,11),
	(1262575377938501634,'2020-05-19 10:46:42','查看订单列表',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.orderList()','{ queryParam: YxStoreOrderQueryParam(type=3) }','192.168.0.100',21,'mingming','内网IP',NULL,1,11),
	(1262575380937428994,'2020-05-19 10:46:43','查看订单详情',NULL,'INFO','com.boplus.modules.order.web.controller.StoreOrderController.detail()','{ key: 1262354076197191680 }','192.168.0.100',10,'mingming','内网IP',NULL,1,11),
	(1262575380937428995,'2020-05-19 10:46:50','查询',NULL,'INFO','StoreProductReplyController.getYxStoreProductReplys()','{ criteria: YxStoreProductReplyQueryCriteria(isDel=0) pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.0.100',66,'admin','内网IP',NULL,0,NULL),
	(1262575380937428996,'2020-06-06 16:50:54','用户登录',NULL,'INFO','com.boplus.modules.security.rest.AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@503252fc]] }','192.168.1.7',3800,'admin',' 局域网',NULL,0,1),
	(1262575380937428997,'2020-06-06 16:50:54','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937428998,'2020-06-06 16:51:07','删除菜单','java.lang.NullPointerException\n	at com.boplus.modules.system.service.impl.MenuServiceImpl.delete(MenuServiceImpl.java:287)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$FastClassBySpringCGLIB$$5218db3f.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$EnhancerBySpringCGLIB$$c7d4007d.delete(<generated>)\n	at com.boplus.modules.system.rest.MenuController.delete(MenuController.java:135)\n	at com.boplus.modules.system.rest.MenuController$$FastClassBySpringCGLIB$$e166ec17.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	at com.boplus.logging.aspect.LogAspect.logAround(LogAspect.java:59)\n	at sun.reflect.GeneratedMethodAccessor283.invoke(Unknown Source)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$61322e3e.delete(<generated>)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at com.boplus.modules.security.security.TokenFilter.doFilter(TokenFilter.java:60)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:748)\n','ERROR','com.boplus.modules.system.rest.MenuController.delete()','{ ids: [185] }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937428999,'2020-06-06 16:52:52','用户登录',NULL,'INFO','com.boplus.modules.security.rest.AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@503252fc]] }','192.168.1.7',3264,'admin',' 局域网',NULL,0,1),
	(1262575380937429000,'2020-06-06 16:52:53','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',13,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429001,'2020-06-06 16:53:08','删除菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.delete()','{ ids: [48, 49, 50, 51, 52, 75, 76] }','192.168.1.7',144,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429002,'2020-06-06 16:53:08','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429003,'2020-06-06 16:53:38','新增菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.create()','{ resources: Menu(id=184, iFrame=false, name=素材管理, component=null, pid=0, sort=3, icon=banner, path=material, cache=false, hidden=false, componentName=null, createTime=2020-06-06 16:53:32.907, permission=null, type=1) }','192.168.1.7',13,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429004,'2020-06-06 16:53:43','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',9,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429005,'2020-06-06 16:54:35','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',7,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429006,'2020-06-06 16:54:35','新增菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.create()','{ resources: Menu(id=185, iFrame=false, name=素材, component=/shop/material/index, pid=184, sort=31, icon=banner, path=material, cache=false, hidden=false, componentName=Material, createTime=2020-06-06 16:54:32.471, permission=bopMaterial:list, type=1) }','192.168.1.7',11,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429007,'2020-06-06 16:54:44','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',28,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429008,'2020-06-06 16:54:49','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',23,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429009,'2020-06-06 16:55:04','修改角色菜单',NULL,'INFO','com.boplus.modules.system.rest.RoleController.updateMenu()','{ resources: Role(id=1, name=null, remark=null, dataScope=null, level=null, menus=[Menu(id=2, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=88, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=1, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=30, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=77, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=39, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=19, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=87, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=116, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=184, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=9, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=28, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=124, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=185, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=121, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=6, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=7, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=36, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=35, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=46, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=37, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=18, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=47, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=123, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=3, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=32, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=5, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null), Menu(id=14, iFrame=null, name=null, component=null, pid=null, sort=null, icon=null, path=null, cache=null, hidden=null, componentName=null, createTime=null, permission=null, type=null)], depts=null, createTime=null, permission=null) }','192.168.1.7',70,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429010,'2020-06-06 16:55:13','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',27,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429011,'2020-06-06 16:55:18','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',20,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429012,'2020-06-06 16:55:35','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.getBopVipPrices()','{ criteria: BopVipPriceQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.1.7',7,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429013,'2020-06-06 16:55:35','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.listSummary()','{ }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429014,'2020-06-06 16:55:35','查询会员列表',NULL,'INFO','com.boplus.modules.shop.rest.BopUserController.getBopUsers()','{ criteria: BopUserQueryCriteria(nickname=null, phone=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429015,'2020-06-06 16:55:35','查询字典详情',NULL,'INFO','com.boplus.modules.system.rest.DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.1.7',6,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429016,'2020-06-06 16:55:44','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',5,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429017,'2020-06-06 16:55:56','删除菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.delete()','{ ids: [124] }','192.168.1.7',20,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429018,'2020-06-06 16:55:56','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',10,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429019,'2020-06-06 16:56:22','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',10,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429020,'2020-06-06 16:56:22','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=47, iFrame=false, name=会员, component=shop/user/index, pid=46, sort=21, icon=peoples, path=member, cache=false, hidden=false, componentName=Member, createTime=2019-10-06 16:20:17.0, permission=bopUser:list, type=1) }','192.168.1.7',15,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429021,'2020-06-06 16:56:38','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=156, iFrame=false, name=修改会员, component=null, pid=47, sort=2, icon=null, path=null, cache=false, hidden=false, componentName=null, createTime=2020-02-14 22:03:40.0, permission=bopUser:edit, type=2) }','192.168.1.7',14,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429022,'2020-06-06 16:56:38','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',10,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429023,'2020-06-06 16:56:50','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=77, iFrame=false, name=会员等级, component=shop/userlevel/index, pid=46, sort=22, icon=dengji, path=userlevel, cache=false, hidden=false, componentName=Userlevel, createTime=2019-12-04 16:35:41.0, permission=bopVipPrice:list, type=1) }','192.168.1.7',17,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429024,'2020-06-06 16:56:56','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429025,'2020-06-06 16:57:07','查询字典详情',NULL,'INFO','com.boplus.modules.system.rest.DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429026,'2020-06-06 16:57:12','查询会员列表',NULL,'INFO','com.boplus.modules.shop.rest.BopUserController.getBopUsers()','{ criteria: BopUserQueryCriteria(nickname=null, phone=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429027,'2020-06-06 16:57:17','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.listSummary()','{ }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429028,'2020-06-06 16:57:22','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.getBopVipPrices()','{ criteria: BopVipPriceQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.1.7',7,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429029,'2020-06-06 16:58:53','用户登录',NULL,'INFO','com.boplus.modules.security.rest.AuthController.login()','{ authUser: {username=admin, password= ******} request: SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@503252fc]] }','192.168.1.7',3038,'admin',' 局域网',NULL,0,1),
	(1262575380937429030,'2020-06-06 16:58:53','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.listSummary()','{ }','192.168.1.7',3,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429031,'2020-06-06 16:58:53','查询会员列表',NULL,'INFO','com.boplus.modules.shop.rest.BopUserController.getBopUsers()','{ criteria: BopUserQueryCriteria(nickname=null, phone=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429032,'2020-06-06 16:59:03','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',5,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429033,'2020-06-06 16:59:33','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=184, iFrame=false, name=素材管理, component=null, pid=0, sort=3, icon=banner, path=member, cache=false, hidden=false, componentName=-, createTime=2020-06-06 16:53:33.0, permission=null, type=1) }','192.168.1.7',17,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429034,'2020-06-06 16:59:33','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429035,'2020-06-06 16:59:50','修改菜单','com.boplus.exception.EntityExistException: Menu with componentName Member existed\n	at com.boplus.modules.system.service.impl.MenuServiceImpl.update(MenuServiceImpl.java:317)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$FastClassBySpringCGLIB$$5218db3f.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$EnhancerBySpringCGLIB$$c7d4007d.update(<generated>)\n	at com.boplus.modules.system.rest.MenuController.update(MenuController.java:119)\n	at com.boplus.modules.system.rest.MenuController$$FastClassBySpringCGLIB$$e166ec17.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	at com.boplus.logging.aspect.LogAspect.logAround(LogAspect.java:59)\n	at sun.reflect.GeneratedMethodAccessor283.invoke(Unknown Source)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$61322e3e.update(<generated>)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at com.boplus.modules.security.security.TokenFilter.doFilter(TokenFilter.java:60)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:748)\n','ERROR','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=/shop/material/index, pid=184, sort=31, icon=banner, path=member, cache=false, hidden=false, componentName=Member, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',9,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429036,'2020-06-06 16:59:55','修改菜单','com.boplus.exception.EntityExistException: Menu with componentName Member existed\n	at com.boplus.modules.system.service.impl.MenuServiceImpl.update(MenuServiceImpl.java:317)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$FastClassBySpringCGLIB$$5218db3f.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.cache.interceptor.CacheInterceptor.lambda$invoke$0(CacheInterceptor.java:53)\n	at org.springframework.cache.interceptor.CacheAspectSupport.invokeOperation(CacheAspectSupport.java:365)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:420)\n	at org.springframework.cache.interceptor.CacheAspectSupport.execute(CacheAspectSupport.java:345)\n	at org.springframework.cache.interceptor.CacheInterceptor.invoke(CacheInterceptor.java:61)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.service.impl.MenuServiceImpl$$EnhancerBySpringCGLIB$$c7d4007d.update(<generated>)\n	at com.boplus.modules.system.rest.MenuController.update(MenuController.java:119)\n	at com.boplus.modules.system.rest.MenuController$$FastClassBySpringCGLIB$$e166ec17.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\n	at com.boplus.logging.aspect.LogAspect.logAround(LogAspect.java:59)\n	at sun.reflect.GeneratedMethodAccessor283.invoke(Unknown Source)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\n	at com.boplus.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$61322e3e.update(<generated>)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.ProductionSecurityFilter.doFilter(ProductionSecurityFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.github.xiaoymin.knife4j.spring.filter.SecurityBasicAuthFilter.doFilter(SecurityBasicAuthFilter.java:90)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at com.boplus.modules.security.security.TokenFilter.doFilter(TokenFilter.java:60)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:96)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:748)\n','ERROR','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=/shop/material/index, pid=184, sort=31, icon=banner, path=member, cache=false, hidden=false, componentName=Member, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429037,'2020-06-06 17:00:09','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',29,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429038,'2020-06-06 17:00:09','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',24,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429039,'2020-06-06 17:00:22','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',5,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429040,'2020-06-06 17:00:36','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=184, iFrame=false, name=素材管理, component=null, pid=0, sort=3, icon=banner, path=meterial, cache=false, hidden=false, componentName=-, createTime=2020-06-06 16:53:33.0, permission=null, type=1) }','192.168.1.7',17,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429041,'2020-06-06 17:00:41','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',9,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429042,'2020-06-06 17:01:23','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=/shop/user/index, pid=184, sort=31, icon=banner, path=material, cache=false, hidden=false, componentName=Material, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',19,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429043,'2020-06-06 17:01:25','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429044,'2020-06-06 17:01:34','查询会员列表',NULL,'INFO','com.boplus.modules.shop.rest.BopUserController.getBopUsers()','{ criteria: BopUserQueryCriteria(nickname=null, phone=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.1.7',2,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429045,'2020-06-06 17:01:39','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.listSummary()','{ }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429046,'2020-06-06 17:01:55','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',30,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429047,'2020-06-06 17:02:00','查询角色',NULL,'INFO','com.boplus.modules.system.rest.RoleController.getRoles()','{ criteria: RoleQueryCriteria() pageable: Page request [number: 0, size 10, sort: level: ASC] }','192.168.1.7',24,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429048,'2020-06-06 17:02:05','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',5,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429049,'2020-06-06 17:02:49','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',9,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429050,'2020-06-06 17:02:49','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=/shop/material/index, pid=184, sort=31, icon=banner, path=material, cache=false, hidden=false, componentName=Material, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',16,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429051,'2020-06-06 17:03:03','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=shop/material/index, pid=184, sort=31, icon=banner, path=material, cache=false, hidden=false, componentName=Material, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',16,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429052,'2020-06-06 17:03:08','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',9,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429053,'2020-06-06 17:03:52','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.listSummary()','{ }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429054,'2020-06-06 17:03:52','查询会员列表',NULL,'INFO','com.boplus.modules.shop.rest.BopUserController.getBopUsers()','{ criteria: BopUserQueryCriteria(nickname=null, phone=null) pageable: Page request [number: 0, size 10, sort: uid: DESC] }','192.168.1.7',4,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429055,'2020-06-06 17:04:01','查询字典详情',NULL,'INFO','com.boplus.modules.system.rest.DictDetailController.getDictDetails()','{ criteria: DictDetailQueryCriteria(label=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }','192.168.1.7',8,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429056,'2020-06-06 17:04:06','查询BopVipPrice',NULL,'INFO','com.boplus.modules.shop.rest.BopVipPriceController.getBopVipPrices()','{ criteria: BopVipPriceQueryCriteria() pageable: Page request [number: 0, size 10, sort: id: DESC] }','192.168.1.7',6,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429057,'2020-06-06 17:04:42','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',5,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429058,'2020-06-06 17:04:56','修改菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.update()','{ resources: Menu(id=185, iFrame=false, name=素材, component=shop/material/index, pid=184, sort=31, icon=banner, path=material, cache=false, hidden=false, componentName=Material, createTime=2020-06-06 16:54:32.0, permission=bopMaterial:list, type=1) }','192.168.1.7',12,'admin',' 局域网',NULL,0,NULL),
	(1262575380937429059,'2020-06-06 17:05:01','查询菜单',NULL,'INFO','com.boplus.modules.system.rest.MenuController.getMenus()','{ criteria: MenuQueryCriteria() }','192.168.1.7',18,'admin',' 局域网',NULL,0,NULL);

/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件',
  `pid` bigint NOT NULL COMMENT '上级菜单ID',
  `sort` bigint NOT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接地址',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '是否隐藏',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '-' COMMENT '组件名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限',
  `type` int DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKqcf9gem97gqa5qjm4d3elcqt5` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;

INSERT INTO `menu` (`id`, `i_frame`, `name`, `component`, `pid`, `sort`, `icon`, `path`, `cache`, `hidden`, `component_name`, `create_time`, `permission`, `type`)
VALUES
	(1,b'0','系统管理',NULL,0,99,'system','system',b'0',b'0',NULL,'2018-12-18 15:11:29',NULL,1),
	(2,b'0','用户管理','system/user/index',1,2,'peoples','user',b'0',b'0','User','2018-12-18 15:14:44',NULL,1),
	(3,b'0','角色管理','system/role/index',1,3,'role','role',b'0',b'0','Role','2018-12-18 15:16:07',NULL,1),
	(5,b'0','菜单管理','system/menu/index',1,5,'menu','menu',b'0',b'0','Menu','2018-12-18 15:17:28','admin,menu:list,roles:list',1),
	(6,b'0','系统监控',NULL,0,100,'monitor','monitor',b'0',b'0',NULL,'2018-12-18 15:17:48',NULL,1),
	(7,b'0','操作日志','monitor/log/index',6,11,'log','logs',b'1',b'0','Log','2018-12-18 15:18:26',NULL,1),
	(9,b'0','SQL监控','monitor/sql/index',6,14,'sqlMonitor','druid',b'0',b'0','Sql','2018-12-18 15:19:34',NULL,1),
	(14,b'0','邮件工具','tools/email/index',36,24,'email','email',b'0',b'0','Email','2018-12-27 10:13:09',NULL,1),
	(18,b'0','存储管理','tools/storage/index',36,23,'qiniu','storage',b'0',b'0','Storage','2018-12-31 11:12:15','storage:list',1),
	(19,b'0','支付宝工具','tools/aliPay/index',36,27,'alipay','aliPay',b'0',b'0','AliPay','2018-12-31 14:52:38',NULL,1),
	(28,b'0','定时任务','system/timing/index',36,21,'timing','timing',b'0',b'0','Timing','2019-01-07 20:34:40','timing:list',1),
	(30,b'0','代码生成','generator/index',36,22,'dev','generator',b'0',b'0','GeneratorIndex','2019-01-11 15:45:55',NULL,1),
	(32,b'0','异常日志','monitor/log/errorLog',6,12,'error','errorLog',b'0',b'0','ErrorLog','2019-01-13 13:49:03',NULL,1),
	(35,b'0','部门管理','system/dept/index',1,6,'dept','dept',b'0',b'0','Dept','2019-03-25 09:46:00',NULL,1),
	(36,b'0','系统工具','',0,101,'sys-tools','sys-tools',b'0',b'0',NULL,'2019-03-29 10:57:35',NULL,1),
	(37,b'0','岗位管理','system/job/index',1,7,'Steve-Jobs','job',b'0',b'0','Job','2019-03-29 13:51:18',NULL,1),
	(39,b'0','字典管理','system/dict/index',1,8,'dictionary','dict',b'0',b'0','Dict','2019-04-10 11:49:04',NULL,1),
	(46,b'0','会员管理','',0,2,'peoples','member',b'0',b'0','','2019-10-06 16:18:05',NULL,1),
	(47,b'0','会员','shop/user/index',46,21,'peoples','member',b'0',b'0','Member','2019-10-06 16:20:17','bopUser:list',1),
	(77,b'0','会员等级','shop/userlevel/index',46,22,'dengji','userlevel',b'0',b'0','Userlevel','2019-12-04 16:35:41','bopVipPrice:list',1),
	(87,b'0','生成配置','generator/config',36,33,'dev','generator/config/:tableName',b'1',b'1','GeneratorConfig','2019-11-17 20:08:56','',1),
	(88,b'0','生成预览','generator/preview',36,999,'java','generator/preview/:tableName',b'1',b'1','Preview','2019-11-26 14:54:36',NULL,1),
	(116,b'0','生成配置','generator/config',36,33,'dev','generator/config/:tableName',b'1',b'1','GeneratorConfig','2019-11-17 20:08:56','',1),
	(117,b'0','图表库','components/Echarts',10,50,'chart','echarts',b'1',b'0','Echarts','2019-11-21 09:04:32','',1),
	(118,b'0','新增',NULL,45,1,NULL,NULL,b'0',b'0',NULL,'2019-12-24 13:00:47','YXSTOREPRODUCT_EDIT',2),
	(119,b'0','修改',NULL,45,3,NULL,NULL,b'0',b'0',NULL,'2019-12-24 13:02:23','YXSTOREPRODUCT_CREATE',2),
	(120,b'0','删除',NULL,45,4,NULL,NULL,b'0',b'0',NULL,'2019-12-24 13:03:51','YXSTOREPRODUCT_DELETE',2),
	(121,b'0','在线用户','monitor/online/index',6,10,'Steve-Jobs','online',b'0',b'0','OnlineUser','2020-01-06 22:46:43',NULL,1),
	(122,b'0','浏览记录','monitor/log/mlog',40,13,'log','viewlog',b'0',b'0','Viewlog','2020-01-07 13:17:21',NULL,1),
	(123,b'0','后台接口文档','tools/swagger/index',36,31,'swagger','swagger2',b'0',b'0','Swagger','2020-01-07 18:05:52',NULL,1),
	(125,b'0','邮费配置','wechat/config/postage',55,58,'configure','postageConfig',b'0',b'0','PostageConfig','2020-02-13 15:38:24',NULL,1),
	(126,b'0','编辑',NULL,54,1,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:05:28','YXSTOREORDER_EDIT',2),
	(127,b'0','用户新增',NULL,2,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:12:21','user:add',2),
	(128,b'0','用户编辑',NULL,2,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:12:47','user:edit',2),
	(129,b'0','用户删除',NULL,2,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:13:08','user:del',2),
	(130,b'0','角色创建',NULL,3,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:13:49','roles:add',2),
	(131,b'0','角色修改',NULL,3,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:14:11','roles:edit',2),
	(132,b'0','角色删除',NULL,3,999,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:14:38','4',2),
	(133,b'0','菜单新增',NULL,5,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:15:05','menu:add',2),
	(134,b'0','菜单编辑',NULL,5,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:18:44','menu:edit',2),
	(135,b'0','菜单删除',NULL,5,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:19:05','menu:del',2),
	(136,b'0','部门新增',NULL,35,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:21:07','dept:add',2),
	(137,b'0','部门编辑',NULL,35,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:21:33','dept:edit',2),
	(138,b'0','部门删除',NULL,35,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:21:53','dept:del',2),
	(139,b'0','岗位新增',NULL,37,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:29:04','job:add',2),
	(140,b'0','岗位编辑',NULL,37,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:48:38','job:edit',2),
	(141,b'0','岗位删除',NULL,37,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:49:00','job:del',2),
	(142,b'0','字典新增',NULL,39,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:49:26','dict:add',2),
	(143,b'0','字典编辑',NULL,39,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:49:39','dict:edit',2),
	(144,b'0','字典删除',NULL,39,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:49:56','dict:del',2),
	(147,b'0','上传文件',NULL,18,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:53:49','storage:add',2),
	(148,b'0','文件编辑',NULL,18,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:54:06','storage:edit',2),
	(149,b'0','文件删除',NULL,18,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:54:27','storage:del',2),
	(150,b'0','任务新增',NULL,28,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:55:58','timing:add',2),
	(151,b'0','任务编辑',NULL,28,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:56:54','timing:edit',2),
	(152,b'0','任务删除',NULL,28,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 21:57:10','timing:del',2),
	(153,b'0','新增分类',NULL,41,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 22:00:41','YXSTORECATEGORY_CREATE',2),
	(154,b'0','分类编辑',NULL,41,3,NULL,NULL,b'0',b'0',NULL,'2020-02-14 22:01:15','YXSTORECATEGORY_EDIT',2),
	(155,b'0','分类删除',NULL,41,4,NULL,NULL,b'0',b'0',NULL,'2020-02-14 22:01:37','YXSTORECATEGORY_DELETE',2),
	(156,b'0','修改会员',NULL,47,2,NULL,NULL,b'0',b'0',NULL,'2020-02-14 22:03:40','bopUser:edit',2),
	(184,b'0','素材管理',NULL,0,3,'banner','meterial',b'0',b'0','-','2020-06-06 16:53:33',NULL,1),
	(185,b'0','素材','shop/material/index',184,31,'banner','material',b'0',b'0','Material','2020-06-06 16:54:32','bopMaterial:list',1);

/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table monitor_server
# ------------------------------------------------------------

DROP TABLE IF EXISTS `monitor_server`;

CREATE TABLE `monitor_server` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpu_core` int DEFAULT NULL COMMENT 'CPU内核数',
  `cpu_rate` double DEFAULT NULL COMMENT 'CPU使用率',
  `disk_total` double DEFAULT NULL COMMENT '磁盘总量',
  `disk_used` double DEFAULT NULL COMMENT '磁盘使用量',
  `mem_total` double DEFAULT NULL COMMENT '内存总数',
  `mem_used` double DEFAULT NULL COMMENT '内存使用量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `port` int DEFAULT NULL COMMENT '访问端口',
  `sort` int DEFAULT NULL COMMENT '排序',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `swap_total` double DEFAULT NULL COMMENT '交换区总量',
  `swap_used` double DEFAULT NULL COMMENT '交换区使用量',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务监控';

LOCK TABLES `monitor_server` WRITE;
/*!40000 ALTER TABLE `monitor_server` DISABLE KEYS */;

INSERT INTO `monitor_server` (`id`, `cpu_core`, `cpu_rate`, `disk_total`, `disk_used`, `mem_total`, `mem_used`, `name`, `port`, `sort`, `state`, `swap_total`, `swap_used`, `address`)
VALUES
	(1,8,0.05924018,465.12402,91.66521,7.849415,7.6052284,'本地',8777,999,'0',14.599415,11.263367,'localhost');

/*!40000 ALTER TABLE `monitor_server` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table picture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片宽度',
  `md5code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件的MD5值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Sm.Ms图床';



# Dump of table qiniu_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qiniu_config`;

CREATE TABLE `qiniu_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云配置';

LOCK TABLES `qiniu_config` WRITE;
/*!40000 ALTER TABLE `qiniu_config` DISABLE KEYS */;

INSERT INTO `qiniu_config` (`id`, `access_key`, `bucket`, `host`, `secret_key`, `type`, `zone`)
VALUES
	(1,'1111114444','yixiang','https://image.dayouqiantu.cn','22222','公开','华东');

/*!40000 ALTER TABLE `qiniu_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table qiniu_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qiniu_content`;

CREATE TABLE `qiniu_content` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云文件存储';

LOCK TABLES `qiniu_content` WRITE;
/*!40000 ALTER TABLE `qiniu_content` DISABLE KEYS */;

INSERT INTO `qiniu_content` (`id`, `bucket`, `name`, `size`, `type`, `update_time`, `url`, `suffix`)
VALUES
	(1,'yixiang','list_34','27.05KB   ','公开','2020-01-07 12:05:41','https://pic.dayouqiantu.cn/list_34.png','png'),
	(2,'yixiang','list_32','27.65KB   ','公开','2020-01-07 12:11:15','https://pic.dayouqiantu.cn/list_32.png','png'),
	(3,'yixiang','list_30','28.57KB   ','公开','2020-01-07 12:13:26','https://image.dayouqiantu.cn/list_30.png','png'),
	(4,'yixiang','list_34','27.05KB   ','公开','2020-01-07 12:32:15','https://image.dayouqiantu.cn/list_34.png','png'),
	(5,'yixiang','list_32','27.65KB   ','公开','2020-01-07 12:53:11','https://image.dayouqiantu.cn/list_32.png','png'),
	(6,'yixiang','list_34','27.05KB   ','公开','2020-01-07 13:05:55','https://image.dayouqiantu.cn/list_34.png','png'),
	(7,'yixiang','list_32','27.65KB   ','公开','2020-01-07 13:08:32','https://image.dayouqiantu.cn/list_32.png','png'),
	(8,'yixiang','list_22','28.23KB   ','公开','2020-01-07 13:08:38','https://image.dayouqiantu.cn/list_22.png','png'),
	(9,'yixiang','list_32','27.65KB   ','公开','2020-01-07 13:08:49','https://image.dayouqiantu.cn/list_32.png','png'),
	(10,'yixiang','list_34','27.05KB   ','公开','2020-01-10 12:02:24','https://image.dayouqiantu.cn/list_34.png','png'),
	(11,'yixiang','list_32','27.65KB   ','公开','2020-01-10 16:49:48','https://image.dayouqiantu.cn/list_32.png','png'),
	(12,'yixiang','list_20','22.92KB   ','公开','2020-01-10 22:43:47','https://image.dayouqiantu.cn/list_20.png','png'),
	(13,'yixiang','list_24','27.31KB   ','公开','2020-01-10 22:44:21','https://image.dayouqiantu.cn/list_24.png','png'),
	(14,'yixiang','list_28','28.38KB   ','公开','2020-01-11 17:06:00','https://image.dayouqiantu.cn/list_28.png','png');

/*!40000 ALTER TABLE `qiniu_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quartz_job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quartz_job`;

CREATE TABLE `quartz_job` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务';

LOCK TABLES `quartz_job` WRITE;
/*!40000 ALTER TABLE `quartz_job` DISABLE KEYS */;

INSERT INTO `quartz_job` (`id`, `bean_name`, `cron_expression`, `is_pause`, `job_name`, `method_name`, `params`, `remark`, `create_time`)
VALUES
	(1,'visitsTask','0 0 0 * * ?',b'0','更新访客记录','run',NULL,'每日0点创建新的访客记录','2019-01-08 14:53:31'),
	(2,'testTask','0/5 * * * * ?',b'1','测试1','run1','test','带参测试，多参使用json','2019-08-22 14:08:29'),
	(3,'testTask','0/5 * * * * ?',b'1','测试43','run','44','不带参测试','2019-09-26 16:44:39');

/*!40000 ALTER TABLE `quartz_job` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quartz_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quartz_log`;

CREATE TABLE `quartz_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务日志';

LOCK TABLES `quartz_log` WRITE;
/*!40000 ALTER TABLE `quartz_log` DISABLE KEYS */;

INSERT INTO `quartz_log` (`id`, `baen_name`, `create_time`, `cron_expression`, `exception_detail`, `is_success`, `job_name`, `method_name`, `params`, `time`)
VALUES
	(1,'visitsTask','2020-01-10 00:00:00','0 0 0 * * ?',NULL,b'1','更新访客记录','run',NULL,160),
	(2,'visitsTask','2020-03-10 00:00:00','0 0 0 * * ?',NULL,b'1','更新访客记录','run',NULL,42),
	(3,'visitsTask','2020-04-02 00:00:00','0 0 0 * * ?',NULL,b'1','更新访客记录','run',NULL,60);

/*!40000 ALTER TABLE `quartz_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据权限',
  `level` int DEFAULT NULL COMMENT '角色级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '功能权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;

INSERT INTO `role` (`id`, `name`, `remark`, `data_scope`, `level`, `create_time`, `permission`)
VALUES
	(1,'超级管理员','-','全部',1,'2018-11-23 11:04:37','admin'),
	(2,'普通用户','-','本级',2,'2018-11-23 13:09:06','common'),
	(3,'管理员2','222','全部',3,'2020-01-31 16:53:25','22');

/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles_depts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_depts`;

CREATE TABLE `roles_depts` (
  `role_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE,
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色部门关联';



# Dump of table roles_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_menus`;

CREATE TABLE `roles_menus` (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE,
  CONSTRAINT `FKo7wsmlrrxb2osfaoavp46rv2r` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtag324maketmxffly3pdyh193` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

LOCK TABLES `roles_menus` WRITE;
/*!40000 ALTER TABLE `roles_menus` DISABLE KEYS */;

INSERT INTO `roles_menus` (`menu_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(5,1),
	(6,1),
	(7,1),
	(9,1),
	(14,1),
	(18,1),
	(19,1),
	(28,1),
	(30,1),
	(32,1),
	(35,1),
	(36,1),
	(37,1),
	(39,1),
	(46,1),
	(47,1),
	(77,1),
	(87,1),
	(88,1),
	(116,1),
	(121,1),
	(123,1),
	(184,1),
	(185,1),
	(1,2),
	(2,2),
	(3,2),
	(5,2),
	(6,2),
	(9,2),
	(10,2),
	(11,2),
	(14,2),
	(15,2),
	(18,2),
	(19,2),
	(21,2),
	(23,2),
	(24,2),
	(27,2),
	(28,2),
	(30,2),
	(33,2),
	(34,2),
	(35,2),
	(36,2),
	(37,2),
	(38,2),
	(39,2),
	(40,2),
	(41,2),
	(44,2),
	(45,2),
	(53,2),
	(54,2),
	(77,2),
	(78,2),
	(79,2),
	(118,2),
	(119,2),
	(126,2),
	(154,2);

/*!40000 ALTER TABLE `roles_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar_id` bigint DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint DEFAULT NULL COMMENT '部门名称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `job_id` bigint DEFAULT NULL COMMENT '岗位名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` datetime DEFAULT NULL COMMENT '最后修改密码的日期',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKfftoc2abhot8f2wu6cl9a5iky` (`job_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_id`) USING BTREE,
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpq2dhypk2qgt68nauh2by22jb` FOREIGN KEY (`avatar_id`) REFERENCES `user_avatar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `avatar_id`, `email`, `enabled`, `password`, `username`, `dept_id`, `phone`, `job_id`, `create_time`, `last_password_reset_time`, `nick_name`, `sex`)
VALUES
	(1,NULL,'boplus@qq.com',1,'$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky','admin',2,'18888888888',11,'2018-08-23 09:11:56','2019-05-18 17:34:21','管理员','男'),
	(3,NULL,'test@boplusnet',1,'$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.','test',2,'17777777777',12,'2018-12-27 20:05:26','2019-04-01 09:15:24','测试','男'),
	(4,NULL,'test2@qq.com',1,'$2a$10$IjehtV8MiXb8ni.Qz0wBteE7FjVn49cEcsSj2.ZBUqqHjnC3umSh.','test2',2,'15136175247',11,'2020-02-15 20:39:16',NULL,'test2','男'),
	(5,NULL,'444@qq.com',0,'$2a$10$f/VH35NBOBszycV9KEA1HenQ0qVjazDm8LacQU9PO.A4UizFxLMuq','qqqqq',11,'15136175249',8,'2020-02-17 11:12:01',NULL,'eeeeee','男'),
	(6,NULL,'666@qq.com',0,'$2a$10$3Vlo24eOmHHW7.3vAjqPSusfIINNo4JiujzxgqsaoWLx/d5de/jEm','7777',8,'15136175246',8,'2020-05-18 19:43:30',NULL,'777','男');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_avatar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_avatar`;

CREATE TABLE `user_avatar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户头像';



# Dump of table users_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;

INSERT INTO `users_roles` (`user_id`, `role_id`)
VALUES
	(1,1),
	(3,2),
	(4,2),
	(5,2),
	(6,2);

/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verification_code
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verification_code`;

CREATE TABLE `verification_code` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='验证码';



# Dump of table visits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `visits`;

CREATE TABLE `visits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_counts` bigint DEFAULT NULL,
  `pv_counts` bigint DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_11aksgq87euk9bcyeesfs4vtp` (`date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='访客记录';

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;

INSERT INTO `visits` (`id`, `create_time`, `date`, `ip_counts`, `pv_counts`, `week_day`)
VALUES
	(21,'2019-12-31 11:40:24','2019-12-31',2,4,'Tue'),
	(22,'2020-01-06 16:55:15','2020-01-06',4,25,'Mon'),
	(23,'2020-01-07 11:32:57','2020-01-07',4,8,'Tue'),
	(24,'2020-01-08 00:04:57','2020-01-08',2,17,'Wed'),
	(25,'2020-01-09 14:28:38','2020-01-09',3,3,'Thu'),
	(26,'2020-01-10 00:00:00','2020-01-10',6,16,'Fri'),
	(27,'2020-01-11 11:06:01','2020-01-11',1,2,'Sat'),
	(28,'2020-01-12 17:19:42','2020-01-12',1,1,'Sun'),
	(29,'2020-01-13 10:18:00','2020-01-13',1,2,'Mon'),
	(30,'2020-01-14 17:34:40','2020-01-14',1,3,'Tue'),
	(31,'2020-01-15 11:23:03','2020-01-15',1,1,'Wed'),
	(32,'2020-01-16 10:45:22','2020-01-16',1,1,'Thu'),
	(33,'2020-01-17 18:07:10','2020-01-17',1,1,'Fri'),
	(34,'2020-01-18 18:19:03','2020-01-18',1,2,'Sat'),
	(35,'2020-01-19 09:53:20','2020-01-19',1,1,'Sun'),
	(36,'2020-01-20 14:01:00','2020-01-20',1,1,'Mon'),
	(37,'2020-01-31 10:38:18','2020-01-31',1,2,'Fri'),
	(38,'2020-02-02 14:27:41','2020-02-02',1,2,'Sun'),
	(39,'2020-02-03 14:11:42','2020-02-03',1,1,'Mon'),
	(40,'2020-02-04 10:27:33','2020-02-04',1,1,'Tue'),
	(41,'2020-02-05 10:40:14','2020-02-05',1,2,'Wed'),
	(42,'2020-02-07 10:17:32','2020-02-07',1,1,'Fri'),
	(43,'2020-02-09 13:31:49','2020-02-09',1,1,'Sun'),
	(44,'2020-02-10 10:07:12','2020-02-10',1,3,'Mon'),
	(45,'2020-02-11 21:31:13','2020-02-11',1,1,'Tue'),
	(46,'2020-02-13 14:47:22','2020-02-13',1,3,'Thu'),
	(47,'2020-02-14 13:32:26','2020-02-14',3,5,'Fri'),
	(48,'2020-02-15 20:37:36','2020-02-15',1,4,'Sat'),
	(49,'2020-02-16 20:11:40','2020-02-16',1,4,'Sun'),
	(50,'2020-02-17 09:48:36','2020-02-17',1,2,'Mon'),
	(51,'2020-02-19 10:34:18','2020-02-19',1,3,'Wed'),
	(52,'2020-02-20 21:19:04','2020-02-20',1,1,'Thu'),
	(53,'2020-02-21 10:25:10','2020-02-21',1,1,'Fri'),
	(54,'2020-02-23 16:34:09','2020-02-23',1,2,'Sun'),
	(55,'2020-02-24 14:30:06','2020-02-24',1,2,'Mon'),
	(56,'2020-02-26 15:24:09','2020-02-26',1,1,'Wed'),
	(57,'2020-02-27 12:55:34','2020-02-27',2,3,'Thu'),
	(58,'2020-02-28 15:31:37','2020-02-28',2,4,'Fri'),
	(59,'2020-02-29 14:37:48','2020-02-29',2,3,'Sat'),
	(60,'2020-03-01 13:43:01','2020-03-01',2,5,'Sun'),
	(61,'2020-03-02 18:36:56','2020-03-02',2,7,'Mon'),
	(62,'2020-03-03 02:51:42','2020-03-03',2,9,'Tue'),
	(63,'2020-03-04 12:55:53','2020-03-04',1,11,'Wed'),
	(64,'2020-03-05 12:55:28','2020-03-05',1,2,'Thu'),
	(65,'2020-03-06 02:48:11','2020-03-06',2,2,'Fri'),
	(66,'2020-03-07 09:58:45','2020-03-07',1,2,'Sat'),
	(67,'2020-03-08 10:24:41','2020-03-08',1,1,'Sun'),
	(68,'2020-03-09 22:57:23','2020-03-09',1,2,'Mon'),
	(69,'2020-03-10 00:00:00','2020-03-10',1,2,'Tue'),
	(70,'2020-03-11 16:10:12','2020-03-11',2,10,'Wed'),
	(71,'2020-03-12 12:37:42','2020-03-12',1,1,'Thu'),
	(72,'2020-03-13 13:13:48','2020-03-13',1,5,'Fri'),
	(73,'2020-03-14 09:59:04','2020-03-14',1,7,'Sat'),
	(74,'2020-03-15 12:38:59','2020-03-15',1,5,'Sun'),
	(75,'2020-03-18 20:37:00','2020-03-18',1,1,'Wed'),
	(76,'2020-03-19 14:19:16','2020-03-19',1,2,'Thu'),
	(77,'2020-03-21 13:23:28','2020-03-21',1,4,'Sat'),
	(78,'2020-03-22 14:01:05','2020-03-22',1,6,'Sun'),
	(79,'2020-03-23 13:08:06','2020-03-23',1,2,'Mon'),
	(80,'2020-03-24 13:52:07','2020-03-24',1,6,'Tue'),
	(81,'2020-03-25 11:18:01','2020-03-25',1,2,'Wed'),
	(82,'2020-03-26 13:40:28','2020-03-26',1,2,'Thu'),
	(83,'2020-03-27 11:11:32','2020-03-27',1,2,'Fri'),
	(84,'2020-03-28 15:24:09','2020-03-28',1,3,'Sat'),
	(85,'2020-03-29 21:56:39','2020-03-29',1,1,'Sun'),
	(86,'2020-03-31 16:50:56','2020-03-31',1,2,'Tue'),
	(87,'2020-04-01 13:52:04','2020-04-01',1,3,'Wed'),
	(88,'2020-04-02 00:00:00','2020-04-02',1,8,'Thu'),
	(89,'2020-04-03 10:50:28','2020-04-03',1,29,'Fri'),
	(90,'2020-04-04 17:56:12','2020-04-04',1,1,'Sat'),
	(91,'2020-04-05 09:24:56','2020-04-05',1,3,'Sun'),
	(92,'2020-04-06 21:38:54','2020-04-06',1,2,'Mon'),
	(93,'2020-04-07 15:06:27','2020-04-07',1,2,'Tue'),
	(94,'2020-05-18 15:34:23','2020-05-18',1,1,'Mon'),
	(97,'2020-05-19 10:01:41','2020-05-19',1,1,'Tue');

/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_article`;

CREATE TABLE `yx_article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章简介',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览次数',
  `sort` int unsigned DEFAULT '0' COMMENT '排序',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原文链接',
  `status` tinyint unsigned DEFAULT NULL COMMENT '状态',
  `add_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '添加时间',
  `hide` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int unsigned DEFAULT '0' COMMENT '管理员id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户id',
  `product_id` int DEFAULT '0' COMMENT '产品关联id',
  `is_hot` tinyint unsigned DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint unsigned DEFAULT '0' COMMENT '是否轮播图(小程序)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章管理表';

LOCK TABLES `yx_article` WRITE;
/*!40000 ALTER TABLE `yx_article` DISABLE KEYS */;

INSERT INTO `yx_article` (`id`, `cid`, `title`, `author`, `image_input`, `synopsis`, `content`, `share_title`, `share_synopsis`, `visit`, `sort`, `url`, `status`, `add_time`, `hide`, `admin_id`, `mer_id`, `product_id`, `is_hot`, `is_banner`)
VALUES
	(2,'','boplus1.3版本上线了','boplus','http://localhost:8000/file/pic/list_16-20200110120838173.png','boplus1.3版本上线了','<h3 data-v-01881cfc=\"\" style=\"text-align: center;\"><p>boplus1.3版本上线了</p></h3>','','','4',NULL,'',NULL,'2019-08-22 12:26',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `yx_article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_express
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_express`;

CREATE TABLE `yx_express` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递公司简称',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递公司全称',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='快递公司表';

LOCK TABLES `yx_express` WRITE;
/*!40000 ALTER TABLE `yx_express` DISABLE KEYS */;

INSERT INTO `yx_express` (`id`, `code`, `name`, `sort`, `is_show`)
VALUES
	(426,'STO','申通快递',0,0),
	(427,'SF','顺丰速运',0,0),
	(428,'ZTO','中通快递',0,0),
	(429,'YTO','圆通速递2',0,0),
	(430,'555','555555',0,0),
	(431,'555','5555',0,0);

/*!40000 ALTER TABLE `yx_express` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_material
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_material`;

CREATE TABLE `yx_material` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'PK',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者ID',
  `type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '类型1、图片；2、视频',
  `group_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '分组ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '素材名',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '素材链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='素材库';



# Dump of table yx_material_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_material_group`;

CREATE TABLE `yx_material_group` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'PK',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '分组名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='素材分组';



# Dump of table yx_store_bargain
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_bargain`;

CREATE TABLE `yx_store_bargain` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',
  `product_id` int unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名称',
  `stock` int unsigned DEFAULT NULL COMMENT '库存',
  `sales` int unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `is_postage` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费',
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '砍价规则',
  `look` int unsigned DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int unsigned DEFAULT '0' COMMENT '砍价产品分享量',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='砍价表';

LOCK TABLES `yx_store_bargain` WRITE;
/*!40000 ALTER TABLE `yx_store_bargain` DISABLE KEYS */;

INSERT INTO `yx_store_bargain` (`id`, `product_id`, `title`, `image`, `unit_name`, `stock`, `sales`, `images`, `start_time`, `stop_time`, `store_name`, `price`, `min_price`, `num`, `bargain_max_price`, `bargain_min_price`, `bargain_num`, `status`, `description`, `give_integral`, `info`, `cost`, `sort`, `is_hot`, `is_del`, `add_time`, `is_postage`, `postage`, `rule`, `look`, `share`, `end_time_date`, `start_time_date`)
VALUES
	(2,24,'砍价测试01','https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','张',100,1,'https://image.dayouqiantu.cn/5ca05103ad634.jpg,https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg',1577090495,1608660000,'70gA4彩色打印复印',10.00,0.01,1,2.00,0.01,1,1,'<p style=\"text-align: center;\">7<strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: center;\"><img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width:100%;\"><strong><br></strong></p><p style=\"text-align: center;\"><br></p>',0.00,'70gA4彩色打印复印',0.50,0,0,0,1577090553,1,0.00,'<p>这里是规则</p>',90,2,'2020-12-23 02:00:00','2019-12-23 16:41:35'),
	(3,24,'砍价活动2','https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','张',99,2,'https://image.dayouqiantu.cn/5ca05103ad634.jpg,https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg,http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200228083801500.png',1578412800,1603900800,'70gA4彩色打印复印',0.01,0.01,1,10.00,0.01,1,1,'<p style=\"text-align: center;\">7<strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: center;\"><img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width:100%;\"><strong><br></strong></p><p style=\"text-align: center;\"><br></p>',0.00,'70gA4彩色打印复印',0.50,0,0,0,1577101179,1,0.00,'<p>444444</p>',34,1,'2020-10-29 00:00:00','2020-01-08 00:00:00'),
	(4,28,'9999','http://localhost:8000/file/pic/资讯-20200311043727918.png','张',0,0,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg',1589731200,1590768000,NULL,0.01,NULL,1,NULL,NULL,1,1,'<p>999999</p>',0.00,'333',0.00,0,0,0,1589799053,0,0.00,'<p>33333</p>',0,0,'2020-05-30 00:00:00','2020-05-18 00:00:00'),
	(5,28,'9999','http://localhost:8000/file/pic/资讯-20200311043727918.png','张',1,0,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg',1589731200,1590595200,NULL,0.01,1.00,1,1.00,1.00,1,1,'<p>999999</p>',0.00,'',0.00,0,0,0,1589799708,0,0.00,'<p>7777</p>',0,0,'2020-05-28 00:00:00','2020-05-18 00:00:00'),
	(6,27,'9999','http://localhost:8000/file/pic/资讯-20200311043727918.png','9',2,0,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg',1589855271,1590422400,NULL,0.01,1.00,1,1.00,1.00,1,1,'<p>999999</p>',0.00,'999',0.00,0,0,0,1589855299,0,0.00,'<p>666</p>',0,0,'2020-05-26 00:00:00','2020-05-19 10:27:51');

/*!40000 ALTER TABLE `yx_store_bargain` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_bargain_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_bargain_user`;

CREATE TABLE `yx_store_bargain_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',
  `uid` int unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int unsigned DEFAULT NULL COMMENT '参与时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否取消',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户参与砍价表';



# Dump of table yx_store_bargain_user_help
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_bargain_user_help`;

CREATE TABLE `yx_store_bargain_user_help` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',
  `uid` int unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='砍价用户帮助表';



# Dump of table yx_store_cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_cart`;

CREATE TABLE `yx_store_cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',
  `uid` int unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int unsigned DEFAULT '0' COMMENT '拼团id',
  `seckill_id` int unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int unsigned NOT NULL DEFAULT '0' COMMENT '砍价id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`uid`) USING BTREE,
  KEY `goods_id` (`product_id`) USING BTREE,
  KEY `uid` (`uid`,`is_pay`) USING BTREE,
  KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

LOCK TABLES `yx_store_cart` WRITE;
/*!40000 ALTER TABLE `yx_store_cart` DISABLE KEYS */;

INSERT INTO `yx_store_cart` (`id`, `uid`, `type`, `product_id`, `product_attr_unique`, `cart_num`, `add_time`, `is_pay`, `is_del`, `is_new`, `combination_id`, `seckill_id`, `bargain_id`)
VALUES
	(123,11,'product',19,'',2,1582885462,1,0,1,0,0,0),
	(124,12,'product',19,'',1,1582897654,0,0,1,0,0,0),
	(125,11,'product',19,'',2,1582970873,1,0,1,0,0,0),
	(126,11,'product',19,'',1,1582971001,1,0,1,0,0,0),
	(127,11,'product',19,'',1,1582971278,1,0,1,0,0,0),
	(128,11,'product',19,'',1,1582990627,1,0,1,0,0,0),
	(129,11,'product',19,'',1,1583330733,1,0,1,0,0,0),
	(130,11,'product',19,'',1,1583393646,1,0,1,0,0,0),
	(131,11,'product',19,'',1,1583394583,1,0,1,0,0,0),
	(132,11,'product',19,'',1,1583399181,1,0,1,0,0,0),
	(133,11,'product',19,'',1,1583403251,1,0,1,0,0,0),
	(134,11,'product',19,'',1,1583410813,1,0,1,0,0,0),
	(135,11,'product',19,'',1,1583416029,1,0,1,0,0,0),
	(136,11,'product',20,'2e51e5d2d86a44748f81cdd5bf7a51c0',1,1583422305,0,0,1,0,0,0),
	(137,11,'product',19,'',1,1583479387,1,0,1,0,0,0),
	(138,11,'product',19,'',1,1583486497,1,0,0,0,0,0),
	(139,11,'product',20,'2e51e5d2d86a44748f81cdd5bf7a51c0',1,1583486504,1,0,0,0,0,0),
	(140,11,'product',19,'',1,1584171669,1,0,1,0,0,0),
	(141,11,'product',20,'',1,1584175842,1,0,1,0,2,0),
	(142,11,'product',19,'',1,1584177295,1,0,1,0,0,0),
	(143,11,'product',24,'',1,1585051721,1,0,1,0,0,0),
	(144,11,'product',19,'',1,1585144729,0,0,0,0,0,0),
	(145,12,'product',24,'',1,1585224558,0,0,1,0,0,0),
	(146,11,'product',19,'',1,1585293362,1,0,1,0,0,0),
	(147,11,'product',19,'',1,1585385719,1,0,1,0,0,0),
	(148,11,'product',24,'',1,1585899825,1,0,1,0,0,0),
	(149,11,'product',24,'',1,1585900220,1,0,1,0,0,0),
	(150,11,'product',24,'',1,1585900404,1,0,1,0,0,0),
	(151,11,'product',24,'',1,1585900426,1,0,1,0,0,0),
	(152,11,'product',24,'',1,1585900444,1,0,1,0,0,0),
	(153,11,'product',24,'',1,1585900487,1,0,1,0,0,0),
	(154,11,'product',24,'',1,1585900506,1,0,1,0,0,0),
	(155,11,'product',24,'',1,1585901825,1,0,1,0,0,0),
	(156,11,'product',24,'',1,1585901980,1,0,1,0,0,0),
	(157,11,'product',24,'',1,1585907975,1,0,1,0,0,3),
	(158,11,'product',24,'',1,1586065022,1,0,1,0,1,0),
	(159,11,'product',19,'',1,1586065167,1,0,1,0,0,0),
	(160,11,'product',19,'',1,1586066223,0,0,1,2,0,0),
	(161,11,'product',19,'',1,1589803637,1,0,1,0,0,0),
	(162,11,'product',19,'',1,1589804627,1,0,1,0,0,0),
	(163,11,'product',19,'',1,1589804837,1,0,1,0,0,0);

/*!40000 ALTER TABLE `yx_store_cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_category`;

CREATE TABLE `yx_store_category` (
  `id` mediumint NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',
  `pid` mediumint NOT NULL COMMENT '父id',
  `cate_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `sort` mediumint DEFAULT NULL COMMENT '排序',
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否推荐',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  `is_del` tinyint unsigned DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_base` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品分类表';

LOCK TABLES `yx_store_category` WRITE;
/*!40000 ALTER TABLE `yx_store_category` DISABLE KEYS */;

INSERT INTO `yx_store_category` (`id`, `pid`, `cate_name`, `sort`, `pic`, `is_show`, `add_time`, `is_del`)
VALUES
	(1,0,'图文广告',1,'',1,1584876792,0),
	(2,1,'写真',1,'http://localhost:8000/file/pic/资讯-20200311043727918.png',1,1586244998,1),
	(3,1,'平面设计',1,'http://localhost:8000/file/pic/资讯-20200311043727918.png',1,1584945190,0),
	(5,1,'名片',1,'http://localhost:8000/file/pic/砍价-20200311043720679.png',1,1586245178,0),
	(6,0,'666',1,'',1,1589792698,0),
	(7,0,'9999',1,'',1,1589795680,0),
	(8,7,'8888',1,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg',1,1589795706,0);

/*!40000 ALTER TABLE `yx_store_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_combination
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_combination`;

CREATE TABLE `yx_store_combination` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '推荐图',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动属性',
  `people` int unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int unsigned NOT NULL COMMENT '排序',
  `sales` int unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加时间',
  `is_host` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0',
  `combination` tinyint unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint unsigned DEFAULT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拼团内容',
  `start_time` int unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int unsigned NOT NULL COMMENT '拼团结束时间',
  `effective_time` int NOT NULL DEFAULT '0' COMMENT '拼团订单有效时间',
  `cost` int unsigned NOT NULL DEFAULT '0' COMMENT '拼图产品成本',
  `browse` int DEFAULT '0' COMMENT '浏览量',
  `unit_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单位名',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团产品表';



# Dump of table yx_store_coupon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_coupon`;

CREATE TABLE `yx_store_coupon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券名称',
  `integral` int unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `state` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `coupon_time` (`coupon_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';



# Dump of table yx_store_coupon_issue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_coupon_issue`;

CREATE TABLE `yx_store_coupon_issue` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `cid` int DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0',
  `add_time` int DEFAULT NULL COMMENT '优惠券添加时间',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  KEY `remain_count` (`remain_count`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券前台领取表';



# Dump of table yx_store_coupon_issue_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_coupon_issue_user`;

CREATE TABLE `yx_store_coupon_issue_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int DEFAULT NULL COMMENT '领取时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券前台用户领取记录表';



# Dump of table yx_store_coupon_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_coupon_user`;

CREATE TABLE `yx_store_coupon_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `cid` int unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `end_time` (`end_time`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_fail` (`is_fail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券发放记录表';



# Dump of table yx_store_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_order`;

CREATE TABLE `yx_store_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `extend_order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '额外订单号',
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `freight_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `total_num` int unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付方式',
  `add_time` int unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '快递公司编号',
  `delivery_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint unsigned NOT NULL DEFAULT '0',
  `combination_id` int unsigned DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int unsigned DEFAULT '0' COMMENT '砍价id',
  `verify_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核销码',
  `store_id` int NOT NULL DEFAULT '0' COMMENT '门店id',
  `shipping_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配送方式 1=快递 ，2=门店自提',
  `is_channel` tinyint unsigned DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)',
  `is_remind` tinyint unsigned DEFAULT '0',
  `is_system_del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  UNIQUE KEY `unique` (`unique`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pay_price` (`pay_price`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `pay_time` (`pay_time`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单表';



# Dump of table yx_store_order_cart_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_order_cart_info`;

CREATE TABLE `yx_store_order_cart_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `oid` int unsigned NOT NULL COMMENT '订单id',
  `cart_id` int unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买东西的详细信息',
  `unique` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  KEY `cart_id` (`cart_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单购物详情表';



# Dump of table yx_store_order_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_order_status`;

CREATE TABLE `yx_store_order_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `oid` int unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作备注',
  `change_time` int unsigned NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`change_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单操作记录表';



# Dump of table yx_store_pink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_pink`;

CREATE TABLE `yx_store_pink` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id 生成',
  `order_id_key` int unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int unsigned NOT NULL COMMENT '产品id',
  `people` int unsigned NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `k_id` int unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团表';



# Dump of table yx_store_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product`;

CREATE TABLE `yx_store_product` (
  `id` mediumint NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `slider_image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `bar_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '产品条码（一维码）',
  `cate_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名',
  `sort` smallint DEFAULT '0' COMMENT '排序',
  `sales` mediumint unsigned DEFAULT '0' COMMENT '销量',
  `stock` mediumint unsigned DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否新品',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '产品描述',
  `add_time` int unsigned DEFAULT '0' COMMENT '添加时间',
  `is_postage` tinyint unsigned DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint unsigned DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint unsigned DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `is_seckill` tinyint unsigned DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint unsigned DEFAULT NULL COMMENT '砍价状态 0未开启 1开启',
  `is_good` tinyint(1) DEFAULT '0' COMMENT '是否优品推荐',
  `ficti` mediumint DEFAULT '100' COMMENT '虚拟销量',
  `browse` int DEFAULT '0' COMMENT '浏览量',
  `code_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '产品二维码地址(用户小程序海报)',
  `soure_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '淘宝京东1688类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_benefit` (`is_benefit`) USING BTREE,
  KEY `is_best` (`is_best`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE,
  KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  KEY `price` (`price`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `sales` (`sales`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品表';

LOCK TABLES `yx_store_product` WRITE;
/*!40000 ALTER TABLE `yx_store_product` DISABLE KEYS */;

INSERT INTO `yx_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `bar_code`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`, `is_good`, `ficti`, `browse`, `code_path`, `soure_link`)
VALUES
	(19,NULL,'https://image.dayouqiantu.cn/5ca011a1cd487.jpg','https://image.dayouqiantu.cn/5ca01c7fc9238.jpg,https://image.dayouqiantu.cn/5ca01c7676042.jpg','70gA4黑白打印复印','打印复印资料A4黑白彩色印刷画册书本装订图文数码快印服务','打印复印','','3',120.00,0.20,0.50,0.00,'张',1,52,72,1,1,1,1,1,'<p style=\"text-align: center;\"><strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: left;\"><strong><br></strong></p><p><br></p><p>&nbsp; &nbsp;&nbsp;<img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width: 100%;\"><br></p>',NULL,1,0,0,1.00,0.20,0,0,1,NULL,NULL,'',''),
	(24,0,'https://image.dayouqiantu.cn/5ca011a1cd487.jpg','https://image.dayouqiantu.cn/5ca011a1cd487.jpg','彩色打印','彩色打印','彩色打印','','2',1.00,0.00,1.00,0.00,'张',0,10,9989,1,1,1,1,1,'<p>彩色打印</p>',1582894605,0,1,0,0.00,0.00,0,0,1,0,0,'','');

/*!40000 ALTER TABLE `yx_store_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_product_attr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product_attr`;

CREATE TABLE `yx_store_product_attr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性表';

LOCK TABLES `yx_store_product_attr` WRITE;
/*!40000 ALTER TABLE `yx_store_product_attr` DISABLE KEYS */;

INSERT INTO `yx_store_product_attr` (`id`, `product_id`, `attr_name`, `attr_values`)
VALUES
	(14,20,'纸张','A3,A4'),
	(15,20,'颜色','白色,红色');

/*!40000 ALTER TABLE `yx_store_product_attr` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_product_attr_result
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product_attr_result`;

CREATE TABLE `yx_store_product_attr_result` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `result` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品属性参数',
  `change_time` int unsigned NOT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性详情表';

LOCK TABLES `yx_store_product_attr_result` WRITE;
/*!40000 ALTER TABLE `yx_store_product_attr_result` DISABLE KEYS */;

INSERT INTO `yx_store_product_attr_result` (`id`, `product_id`, `result`, `change_time`)
VALUES
	(8,20,'{\"attr\":[{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"A3\",\"A4\"],\"value\":\"纸张\"},{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"白色\",\"红色\"],\"value\":\"颜色\"}],\"value\":[{\"cost\":0.5,\"price\":0.5,\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"白色\",\"纸张\":\"A3\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":0.5,\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"红色\",\"纸张\":\"A3\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":\"0.2\",\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"白色\",\"纸张\":\"A4\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":\"0.2\",\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"红色\",\"纸张\":\"A4\"},\"check\":false,\"sales\":\"999\"}]}',1578320995),
	(9,28,'{\"attr\":[{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"黑色\",\"白色\"],\"value\":\"颜色\"},{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"11\"],\"value\":\"尺寸\"}],\"value\":[{\"cost\":0,\"price\":0,\"pic\":\"http://localhost:8000/file/pic/资讯-20200311043727918.png\",\"detail\":{\"颜色\":\"黑色\",\"尺寸\":\"11\"},\"check\":false,\"sales\":0},{\"cost\":0,\"price\":0,\"pic\":\"http://localhost:8000/file/pic/资讯-20200311043727918.png\",\"detail\":{\"颜色\":\"白色\",\"尺寸\":\"11\"},\"check\":false,\"sales\":0}]}',1589854701);

/*!40000 ALTER TABLE `yx_store_product_attr_result` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_product_attr_value
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product_attr_value`;

CREATE TABLE `yx_store_product_attr_value` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int unsigned DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `unique` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性值表';

LOCK TABLES `yx_store_product_attr_value` WRITE;
/*!40000 ALTER TABLE `yx_store_product_attr_value` DISABLE KEYS */;

INSERT INTO `yx_store_product_attr_value` (`id`, `product_id`, `suk`, `stock`, `sales`, `price`, `image`, `unique`, `cost`)
VALUES
	(26,20,'A3,白色',996,NULL,0.50,'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','2e51e5d2d86a44748f81cdd5bf7a51c0',0.50),
	(27,20,'A3,红色',999,NULL,0.50,'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','fd545718bbdb4634aa54228ecca6febe',0.50),
	(28,20,'A4,白色',999,NULL,0.20,'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','5e0ae3241d8c4ea793368666f862dd3b',0.50),
	(29,20,'A4,红色',999,NULL,0.20,'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg','4b4b306134434832885a52f3a85955ce',0.50),
	(30,28,'11,黑色',0,0,0.00,'http://localhost:8000/file/pic/资讯-20200311043727918.png','b8f3e4936b294a8a9fb433f1324eabe4',0.00),
	(31,28,'11,白色',0,0,0.00,'http://localhost:8000/file/pic/资讯-20200311043727918.png','42b4b10585f14d6c96f07372e46fb63b',0.00);

/*!40000 ALTER TABLE `yx_store_product_attr_value` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_store_product_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product_relation`;

CREATE TABLE `yx_store_product_relation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '用户ID',
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`product_id`,`type`,`category`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品点赞和收藏表';



# Dump of table yx_store_product_reply
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_product_reply`;

CREATE TABLE `yx_store_product_reply` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int NOT NULL COMMENT '用户ID',
  `oid` int NOT NULL COMMENT '订单ID',
  `unique` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `product_id` int NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `pics` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论图片',
  `add_time` int NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int DEFAULT NULL COMMENT '管理员回复时间',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `parent_id` (`reply_type`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `product_score` (`product_score`) USING BTREE,
  KEY `service_score` (`service_score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';



# Dump of table yx_store_seckill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_seckill`;

CREATE TABLE `yx_store_seckill` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',
  `product_id` int unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '推荐图',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int unsigned NOT NULL COMMENT '排序',
  `stock` int unsigned NOT NULL COMMENT '库存',
  `sales` int unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `start_time` int NOT NULL DEFAULT '0' COMMENT '开始时间',
  `stop_time` int NOT NULL DEFAULT '0' COMMENT '结束时间',
  `add_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加时间',
  `status` tinyint unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '显示',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  `time_id` int unsigned DEFAULT '0' COMMENT '时间段id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `start_time` (`start_time`,`stop_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_show` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品秒杀产品表';



# Dump of table yx_store_visit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_store_visit`;

CREATE TABLE `yx_store_visit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品类型',
  `cate_id` int DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品类型',
  `uid` int DEFAULT NULL COMMENT '用户ID',
  `count` int DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注描述',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品浏览分析表';



# Dump of table yx_system_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_attachment`;

CREATE TABLE `yx_system_attachment` (
  `att_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件名称',
  `att_dir` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件路径',
  `satt_dir` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件大小',
  `att_type` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件类型',
  `pid` int NOT NULL DEFAULT '0' COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int NOT NULL DEFAULT '0' COMMENT '上传时间',
  `image_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '图片上传类型 1本地 2七牛云 3OSS 4COS ',
  `module_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '图片上传模块类型 1 后台上传 2 用户生成',
  `uid` int unsigned DEFAULT '0' COMMENT '用户id',
  `invite_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件管理表';



# Dump of table yx_system_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_config`;

CREATE TABLE `yx_system_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `value` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '默认值',
  `sort` int unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置表';

LOCK TABLES `yx_system_config` WRITE;
/*!40000 ALTER TABLE `yx_system_config` DISABLE KEYS */;

INSERT INTO `yx_system_config` (`id`, `menu_name`, `value`, `sort`, `status`)
VALUES
	(162,'wechat_share_img','https://image.dayouqiantu.cn/list_34.png',NULL,NULL),
	(165,'wechat_avatar','',NULL,NULL),
	(172,'wechat_share_synopsis','4444444',NULL,NULL),
	(174,'api','http://你的H5端域名/api/wechat/serve',NULL,NULL),
	(175,'wechat_share_title','4444',NULL,NULL),
	(177,'store_postage','1',0,0),
	(178,'store_free_postage','200',0,0),
	(179,'integral_ratio','1',0,0),
	(180,'store_brokerage_ratio','70',NULL,NULL),
	(181,'store_brokerage_statu','2',NULL,NULL),
	(182,'user_extract_min_price','1',NULL,NULL),
	(183,'store_brokerage_two','30',NULL,NULL),
	(184,'site_url','http://localhost:8080',0,0),
	(185,'api_url','http://127.0.0.1:8009',0,0),
	(186,'order_cancel_job_time','20',0,0),
	(187,'wechat_appid','1111299',NULL,NULL),
	(188,'wechat_appsecret','222266',NULL,NULL),
	(189,'wechat_encodingaeskey','6666',NULL,NULL),
	(190,'wechat_token','999',NULL,NULL),
	(191,'wxpay_mchId','2222',NULL,NULL),
	(192,'wxpay_appId','111111',NULL,NULL),
	(193,'wxpay_mchKey','55555',NULL,NULL),
	(194,'wxapp_appId','22222',NULL,NULL),
	(195,'wxapp_secret','22222222',NULL,NULL),
	(196,'wxpay_keyPath','http://localhost:8000/file/pic/list_30-20200110053337209.png',0,0),
	(197,'imageArr','[\"https://image.dayouqiantu.cn/list_34.png\"]',NULL,NULL),
	(198,'store_brokerage_open','1',0,0),
	(199,'integral_full','0',NULL,NULL),
	(200,'integral_max','0',NULL,NULL),
	(201,'store_user_min_recharge','1',0,0),
	(203,'store_self_mention','1',NULL,NULL),
	(204,'tengxun_map_key','OGABZ-Y5OCF-5UWJ5-N7DHH-VFIG7-DHFEB',NULL,NULL),
	(205,'wechat_id','',NULL,NULL),
	(206,'wechat_type','',NULL,NULL),
	(207,'wechat_encode','',NULL,NULL),
	(208,'wechat_sourceid','',NULL,NULL),
	(209,'wechat_name','',NULL,NULL),
	(210,'wechat_qrcode','',NULL,NULL),
	(211,'wx_native_app_appId','11111',NULL,NULL);

/*!40000 ALTER TABLE `yx_system_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_system_group_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_group_data`;

CREATE TABLE `yx_system_group_data` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',
  `group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对应的数据名称',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加数据时间',
  `sort` int DEFAULT '0' COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组合数据详情表';

LOCK TABLES `yx_system_group_data` WRITE;
/*!40000 ALTER TABLE `yx_system_group_data` DISABLE KEYS */;

INSERT INTO `yx_system_group_data` (`id`, `group_name`, `value`, `add_time`, `sort`, `status`)
VALUES
	(177,'boplus_home_banner','{\"imageArr\":[\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\"],\"name\":\"banner2\",\"id\":177,\"pic\":\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\",\"sort\":1,\"url\":\"wwww\",\"status\":1}',1571387677,1,1),
	(180,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e85bfa61251d.png\"],\"uniapp_url\":\"/pages/shop/GoodsClass/index\",\"name\":\"全部商品\",\"id\":180,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa61251d.png\",\"sort\":9,\"url\":\"/goods_list\",\"wxapp_url\":\"/pages/shop/GoodsClass/main\",\"status\":1}',1571390842,9,1),
	(182,'boplus_home_roll_news','{\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"id\":182,\"pic\":\"https://i.loli.net/2019/10/18/DqOUgNf7wjuFpPT.png\",\"sort\":2,\"title\":\"分销、拼团、商户功能上线啦！\",\"url\":\"/news_list\",\"info\":\"boplus2.0上线啦\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}',0,2,1),
	(183,'boplus_hot_search','{\"id\":183,\"title\":\"照片\"}',0,0,1),
	(184,'boplus_hot_search','{\"id\":184,\"title\":\"springboot\"}',0,0,1),
	(187,'boplus_home_roll_news','{\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"id\":187,\"sort\":1,\"url\":\"/news_list\",\"info\":\"springboot2+JPA+Mybatisplus商城系统\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}',1572086163,1,1),
	(188,'boplus_hot_search','{\"id\":188,\"title\":\"打印\"}',1572086172,0,1),
	(189,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5dec896eeb25a.png\"],\"uniapp_url\":\"/pages/user/UserVip/index\",\"name\":\"会员中心\",\"id\":189,\"pic\":\"https://image.dayouqiantu.cn/5dec896eeb25a.png\",\"sort\":9,\"url\":\"/user/vip\",\"wxapp_url\":\"/pages/user/UserVip/main\",\"status\":1}',1572087722,9,1),
	(190,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428984d64d.png\"],\"uniapp_url\":\"/pages/user/coupon/UserCoupon/index\",\"name\":\"优惠券\",\"id\":190,\"pic\":\"https://image.dayouqiantu.cn/5db428984d64d.png\",\"sort\":8,\"url\":\"/user/get_coupon\",\"wxapp_url\":\"/pages/user/coupon/UserCoupon/main\",\"status\":1}',0,8,1),
	(191,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428a8d3ab0.png\"],\"uniapp_url\":\"/pages/shop/GoodsCollection/index\",\"name\":\"收藏商品\",\"id\":191,\"pic\":\"https://image.dayouqiantu.cn/5db428a8d3ab0.png\",\"sort\":7,\"url\":\"/collection\",\"wxapp_url\":\"/pages/shop/GoodsCollection/main\",\"status\":1}',0,7,1),
	(192,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428bd61b73.png\"],\"uniapp_url\":\"/pages/user/address/AddressManagement/index\",\"name\":\"地址管理\",\"id\":192,\"pic\":\"https://image.dayouqiantu.cn/5db428bd61b73.png\",\"sort\":6,\"url\":\"/user/add_manage\",\"wxapp_url\":\"/pages/user/address/AddressManagement/main\",\"status\":1}',0,6,1),
	(193,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428e28dd48.png\"],\"uniapp_url\":\"/pages/user/promotion/UserPromotion/index\",\"name\":\"我的推广\",\"id\":193,\"pic\":\"https://image.dayouqiantu.cn/5db428e28dd48.png\",\"sort\":5,\"url\":\"/user/user_promotion\",\"wxapp_url\":\"/pages/user/promotion/UserPromotion/main\",\"status\":1}',0,5,1),
	(194,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db42a4208c55.png\"],\"uniapp_url\":\"/pages/user/UserAccount/index\",\"name\":\"我的余额\",\"id\":194,\"pic\":\"https://image.dayouqiantu.cn/5db42a4208c55.png\",\"sort\":4,\"url\":\"/user/account\",\"wxapp_url\":\"/pages/user/UserAccount/main\",\"status\":1}',0,4,1),
	(195,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428f410462.png\"],\"uniapp_url\":\"/pages/user/signIn/Integral/index\",\"name\":\"我的积分\",\"id\":195,\"pic\":\"https://image.dayouqiantu.cn/5db428f410462.png\",\"sort\":3,\"url\":\"/user/integral\",\"wxapp_url\":\"/pages/user/signIn/Integral/main\",\"status\":1}',0,3,1),
	(196,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93f004713.png\"],\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"name\":\"图文资讯\",\"id\":196,\"pic\":\"https://image.dayouqiantu.cn/5e85bfea151b7.png\",\"sort\":8,\"url\":\"/news_list\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}',1573109648,8,1),
	(197,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e939507b5e.png\"],\"uniapp_url\":\"/pages/shop/GoodsCollection/index\",\"name\":\"我的收藏\",\"id\":197,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa55f352.png\",\"sort\":7,\"url\":\"/collection\",\"wxapp_url\":\"/pages/shop/GoodsCollection/main\",\"status\":1}',1573109723,7,1),
	(199,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93c9a8304.png\"],\"uniapp_url\":\"/pages/user/coupon/GetCoupon/index\",\"name\":\"优惠券\",\"id\":199,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa6621ca.png\",\"sort\":6,\"url\":\"/user/get_coupon\",\"wxapp_url\":\"/pages/user/coupon/GetCoupon/main\",\"status\":1}',1573387422,6,1),
	(200,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e925140b57.png\"],\"uniapp_url\":\"/pages/activity/GoodsGroup/index\",\"name\":\"拼团专区\",\"id\":200,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa4b273f.png\",\"sort\":5,\"url\":\"/activity/group\",\"wxapp_url\":\"/pages/activity/GoodsGroup/main\",\"status\":1}',0,5,1),
	(201,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5ddb7a37d58d9.png\"],\"uniapp_url\":\"/pages/orderAdmin/OrderIndex/index\",\"name\":\"商户管理\",\"id\":201,\"pic\":\"https://image.dayouqiantu.cn/5ddb7a37d58d9.png\",\"sort\":2,\"url\":\"/customer/index\",\"wxapp_url\":\"/pages/orderAdmin/OrderIndex/main\",\"status\":1}',0,2,1),
	(202,'boplus_sign_day_num','{\"sign_num\":\"10\",\"id\":205,\"day\":\"第一天\"}',0,9,1),
	(203,'boplus_sign_day_num','{\"sign_num\":\"20\",\"id\":\"\",\"day\":\"第二天\"}',0,8,1),
	(204,'boplus_sign_day_num','{\"sign_num\":\"30\",\"id\":\"\",\"day\":\"第三天\"}',0,7,1),
	(205,'boplus_sign_day_num','{\"addTime\":\"\",\"sign_num\":\"40\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第四天\",\"status\":\"\"}',0,6,1),
	(206,'boplus_sign_day_num','{\"addTime\":\"\",\"sign_num\":\"50\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第五天\",\"status\":\"\"}',0,5,1),
	(207,'boplus_sign_day_num','{\"addTime\":\"\",\"sign_num\":\"60\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第六天\",\"status\":\"\"}',0,4,1),
	(208,'boplus_sign_day_num','{\"addTime\":\"\",\"sign_num\":\"100\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"奖励\",\"status\":\"\"}',0,3,1),
	(209,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93010a248.png\"],\"uniapp_url\":\"/pages/user/signIn/Sign/index\",\"name\":\"积分签到\",\"id\":209,\"pic\":\"https://image.dayouqiantu.cn/5e85bf8e494f2.png\",\"sort\":4,\"url\":\"/user/sign\",\"wxapp_url\":\"/pages/user/signIn/Sign/main\",\"status\":1}',0,4,1),
	(210,'boplus_seckill_time','{\"continued\":2,\"id\":\"\",\"time\":5}',0,0,1),
	(211,'boplus_seckill_time','{\"addTime\":\"\",\"continued\":\"3\",\"id\":\"\",\"sort\":\"\",\"time\":\"7\",\"value\":\"\",\"status\":\"\"}',0,0,1),
	(212,'boplus_seckill_time','{\"addTime\":\"\",\"continued\":\"2\",\"id\":\"\",\"sort\":\"\",\"time\":\"10\",\"value\":\"\",\"status\":\"\"}',0,0,1),
	(213,'boplus_seckill_time','{\"addTime\":\"\",\"continued\":\"3\",\"id\":\"\",\"sort\":\"\",\"time\":\"12\",\"value\":\"\",\"status\":\"\"}',0,0,1),
	(214,'boplus_seckill_time','{\"addTime\":\"\",\"continued\":\"4\",\"id\":\"\",\"sort\":\"\",\"time\":\"15\",\"value\":\"\",\"status\":\"\"}',0,0,1),
	(215,'boplus_seckill_time','{\"continued\":\"2\",\"id\":223,\"time\":\"19\"}',0,0,1),
	(216,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e929f9be59.png\"],\"uniapp_url\":\"/pages/activity/GoodsSeckill/index\",\"name\":\"秒杀专区\",\"id\":216,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa5a9f85.png\",\"sort\":3,\"url\":\"/activity/goods_seckill\",\"wxapp_url\":\"/pages/activity/GoodsSeckill/main\",\"status\":1}',0,3,1),
	(217,'boplus_home_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e9276c608f.png\"],\"uniapp_url\":\"/pages/activity/GoodsBargain/index\",\"name\":\"砍价专区\",\"id\":217,\"pic\":\"https://image.dayouqiantu.cn/5e85bfe9b1da8.png\",\"sort\":2,\"url\":\"/activity/bargain\",\"wxapp_url\":\"/pages/activity/GoodsBargain/main\",\"status\":1}',0,2,1),
	(218,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5dfd7b748e053.png\"],\"uniapp_url\":\"/pages/activity/BargainRecord/index\",\"name\":\"砍价记录\",\"id\":218,\"pic\":\"https://image.dayouqiantu.cn/5dfd7b748e053.png\",\"sort\":1,\"url\":\"/activity/bargain/record\",\"wxapp_url\":\"/pages/activity/BargainRecord/main\",\"status\":1}',0,1,1),
	(219,'boplus_home_banner','{\"name\":\"222\",\"id\":\"\",\"pic\":\"https://image.dayouqiantu.cn/5c9f117f624ee.jpg\",\"sort\":\"\",\"url\":\"/\",\"status\":\"\"}',0,0,1),
	(221,'boplus_my_menus','{\"imageArr\":[\"https://image.dayouqiantu.cn/5e60da498cfdd.png\"],\"name\":\"订单核销\",\"id\":230,\"pic\":\"https://image.dayouqiantu.cn/5e60da498cfdd.png\",\"sort\":0,\"url\":\"/order/order_cancellation\",\"wxapp_url\":\"\",\"status\":1}',0,0,1),
	(222,'boplus_recharge_price_ways','{\"give_price\":\"10\",\"price\":\"100\",\"id\":\"\",\"sort\":0,\"status\":1}',0,1,1),
	(223,'boplus_recharge_price_ways','{\"give_price\":\"1\",\"price\":1,\"id\":\"\",\"sort\":0,\"status\":1}',0,0,1);

/*!40000 ALTER TABLE `yx_system_group_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_system_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_store`;

CREATE TABLE `yx_system_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '门店名称',
  `introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `phone` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市区',
  `detailed_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '门店logo',
  `latitude` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '纬度',
  `longitude` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `valid_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核销有效日期',
  `day_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '每日营业开关时间',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `day_time_end` datetime DEFAULT NULL,
  `day_time_start` datetime DEFAULT NULL,
  `valid_time_end` datetime DEFAULT NULL,
  `valid_time_start` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店自提';

LOCK TABLES `yx_system_store` WRITE;
/*!40000 ALTER TABLE `yx_system_store` DISABLE KEYS */;

INSERT INTO `yx_system_store` (`id`, `name`, `introduction`, `phone`, `address`, `detailed_address`, `image`, `latitude`, `longitude`, `valid_time`, `day_time`, `add_time`, `is_show`, `is_del`, `day_time_end`, `day_time_start`, `valid_time_end`, `valid_time_start`)
VALUES
	(3,'boplus店铺','springboot商城','15136175234','河南省漯河市','','https://image.dayouqiantu.cn/noMeal_tt.png','33.54528','113.9202','2020-03-09 - 2020-04-30','11:33:49 - 19:33:49',1583300059,0,0,'2020-03-04 19:33:49','2020-03-04 11:33:49','2020-04-30 00:00:00','2020-03-09 00:00:00'),
	(4,'信阳门店','信阳门店','15136275234','河南省信阳市','','http://localhost:8000/file/pic/砍价-20200311043720679.png','32.11683','114.05857','2020-03-21 - 2020-03-31','17:11:13 - 20:11:13',1584781880,1,0,'2020-03-21 20:11:13','2020-03-21 17:11:13','2020-03-31 00:00:00','2020-03-21 00:00:00'),
	(5,'郑州门店','郑州门店','15136175246','河南省郑州','','http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png','34.72468','113.6401','2020-03-21 - 2020-03-31','17:11:13 - 20:11:15',1584782199,1,0,'2020-03-21 20:11:15','2020-03-21 17:11:13','2020-03-31 00:00:00','2020-03-21 00:00:00'),
	(7,'44','44','11111','河南信阳','','http://localhost:8000/file/pic/资讯-20200311043727918.png','32.11683','114.05857','2020-05-18 - 2020-06-30','08:00:00 - 22:58:28',1589806916,1,0,'2020-05-18 22:58:28','2020-05-18 08:00:00','2020-06-30 00:00:00','2020-05-18 00:00:00');

/*!40000 ALTER TABLE `yx_system_store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_system_store_staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_store_staff`;

CREATE TABLE `yx_system_store_staff` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '微信用户id',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店员头像',
  `store_id` int NOT NULL COMMENT '门店id',
  `store_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staff_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '店员名称',
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `verify_status` tinyint NOT NULL DEFAULT '0' COMMENT '核销开关',
  `status` tinyint DEFAULT '1' COMMENT '状态',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店店员表';

LOCK TABLES `yx_system_store_staff` WRITE;
/*!40000 ALTER TABLE `yx_system_store_staff` DISABLE KEYS */;

INSERT INTO `yx_system_store_staff` (`id`, `uid`, `nickname`, `avatar`, `store_id`, `store_name`, `staff_name`, `phone`, `verify_status`, `status`, `add_time`)
VALUES
	(2,12,'会敲代码的喵2','https://image.dayouqiantu.cn/5dc2c7f3a104c.png',4,'信阳门店','tttt','15136175423',1,1,1584868920),
	(3,11,'会敲代码的喵88','https://image.dayouqiantu.cn/5dc2c7f3a104c.png',5,'郑州门店','tttt','16136175234',1,1,1585213920),
	(4,19,'15136175528','https://image.dayouqiantu.cn/5dc2c7f3a104c.png',5,'郑州门店','111','15136175246',1,1,1586180635),
	(5,20,'15136171112','https://image.dayouqiantu.cn/5e79f6cfd33b6.png',4,'信阳门店','444','44444',1,1,NULL);

/*!40000 ALTER TABLE `yx_system_store_staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_system_user_level
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_user_level`;

CREATE TABLE `yx_system_user_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mer_id` int NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员名称',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额',
  `valid_date` int NOT NULL DEFAULT '0' COMMENT '有效时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为永久会员',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否购买,1=购买,0=不购买',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1=显示,0=隐藏',
  `grade` int NOT NULL DEFAULT '0' COMMENT '会员等级',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '享受折扣',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员卡背景',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员图标',
  `explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '说明',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='设置用户等级表';

LOCK TABLES `yx_system_user_level` WRITE;
/*!40000 ALTER TABLE `yx_system_user_level` DISABLE KEYS */;

INSERT INTO `yx_system_user_level` (`id`, `mer_id`, `name`, `money`, `valid_date`, `is_forever`, `is_pay`, `is_show`, `grade`, `discount`, `image`, `icon`, `explain`, `add_time`, `is_del`)
VALUES
	(1,0,'普通会员',20.00,0,1,0,1,1,99.00,'http://pic.dayouqiantu.cn/5c9ccca8cd632.jpg','http://pic.dayouqiantu.cn/5c9ccca8bc1e0.png','普通会员',1553824559,0),
	(2,0,'青铜会员',0.00,0,1,0,1,2,98.00,'http://pic.dayouqiantu.cn/5c9ccca904016.jpg','http://pic.dayouqiantu.cn/5c9ccca8f0a30.png','青铜会员',1553824639,0),
	(3,0,'黄铜会员',0.00,0,1,0,1,3,95.00,'http://pic.dayouqiantu.cn/5c9ccca8b27f1.jpg','http://pic.dayouqiantu.cn/5c9ccca8e9365.png','黄铜会员',1553824742,0),
	(4,0,'白银会员',0.00,0,1,0,1,4,94.00,'http://pic.dayouqiantu.cn/5c9ccca8d6ae1.jpg','http://pic.dayouqiantu.cn/5c9ccca8a27f0.png','白银会员',1553824797,0),
	(5,0,'黄金会员',0.00,0,1,0,1,5,90.00,'http://pic.dayouqiantu.cn/5c9ccca8b27f1.jpg','http://pic.dayouqiantu.cn/5c9ccca8aa5b9.png','黄金会员',1553824837,0),
	(6,0,'钻石会员',0.00,0,1,0,1,6,88.00,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg','http://pic.dayouqiantu.cn/5c9ccca90d2d3.png','钻石会员',1553824871,1),
	(8,0,'444',0.00,4,1,0,1,4,4.00,'http://localhost:8000/file/pic/资讯-20200311043727918.png','http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png','',1589793284,0),
	(9,0,'777',0.00,0,1,0,1,33,8.00,'http://localhost:8000/file/pic/钻石-20200328094531898.jpg','http://localhost:8000/file/pic/资讯-20200311043727918.png','',1589796908,0);

/*!40000 ALTER TABLE `yx_system_user_level` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_system_user_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_system_user_task`;

CREATE TABLE `yx_system_user_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置原名',
  `task_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务类型',
  `number` int NOT NULL DEFAULT '0' COMMENT '限定数',
  `level_id` int NOT NULL DEFAULT '0' COMMENT '等级id',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_must` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否务必达成任务,1务必达成,0=满足其一',
  `illustrate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务说明',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='等级任务设置';

LOCK TABLES `yx_system_user_task` WRITE;
/*!40000 ALTER TABLE `yx_system_user_task` DISABLE KEYS */;

INSERT INTO `yx_system_user_task` (`id`, `name`, `real_name`, `task_type`, `number`, `level_id`, `sort`, `is_show`, `is_must`, `illustrate`, `add_time`)
VALUES
	(1,'满足积分20分','积分数','SatisfactionIntegral',20,1,0,1,1,'',1553827616),
	(2,'消费满100元','消费金额','ConsumptionAmount',100,1,0,1,1,'',1553827625),
	(3,'满足积分200分','积分数','SatisfactionIntegral',200,2,0,1,1,'',1553827638),
	(4,'累计签到20天','累计签到','CumulativeAttendance',20,2,0,1,1,'',1553827681),
	(5,'满足积分500分','积分数','SatisfactionIntegral',500,3,0,1,1,'',1553827695),
	(6,'累计签到30天','累计签到','CumulativeAttendance',30,3,0,1,1,'',1553827703),
	(7,'满足积分1000分','积分数','SatisfactionIntegral',1000,4,0,1,1,'',1553827731),
	(8,'累计签到10天','累计签到','CumulativeAttendance',10,4,0,1,1,'',1553827740),
	(9,'满足积分1200分','积分数','SatisfactionIntegral',1200,5,0,1,1,'',1553827759),
	(10,'累计签到60天','累计签到','CumulativeAttendance',60,5,0,1,1,'',1553827768),
	(11,'消费满10000元','消费次数','ConsumptionAmount',10000,5,0,1,1,'',1553827776),
	(12,'满足积分2000分','积分数','SatisfactionIntegral',2000,6,0,1,1,'',1553827791),
	(13,'消费满10000元','消费次数','ConsumptionAmount',10000,6,0,1,1,'',1553827803),
	(14,'累计签到100天','累计签到','CumulativeAttendance',100,6,0,1,1,'',1553827814),
	(15,'消费满1000元','消费金额','ConsumptionAmount',1000,4,0,1,1,'',1575456513),
	(16,'累计签到2天','累计签到','CumulativeAttendance',2,1,0,1,1,'',1575456576),
	(17,'消费满100元','消费次数','ConsumptionAmount',100,2,0,1,1,'',1575456612),
	(18,'消费满1000元','消费金额','ConsumptionAmount',1000,3,0,1,1,'',1575456692);

/*!40000 ALTER TABLE `yx_system_user_task` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user`;

CREATE TABLE `yx_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账户(跟accout一样)',
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码（跟pwd）',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `real_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '真实姓名',
  `birthday` int DEFAULT '0' COMMENT '生日',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '身份证号码',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户备注',
  `partner_id` int DEFAULT '0' COMMENT '合伙人id',
  `group_id` int DEFAULT '0' COMMENT '用户分组id',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '添加ip',
  `last_time` int unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `brokerage_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `sign_num` int NOT NULL DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `spread_time` int unsigned NOT NULL DEFAULT '0' COMMENT '推广员关联时间',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int unsigned DEFAULT '0' COMMENT '用户购买次数',
  `spread_count` int DEFAULT '0' COMMENT '下级人数',
  `clean_time` int DEFAULT '0' COMMENT '清理会员时间',
  `addres` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `adminid` int unsigned DEFAULT '0' COMMENT '管理员编号 ',
  `login_type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `spreaduid` (`spread_uid`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_promoter` (`is_promoter`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

LOCK TABLES `yx_user` WRITE;
/*!40000 ALTER TABLE `yx_user` DISABLE KEYS */;

INSERT INTO `yx_user` (`uid`, `username`, `account`, `password`, `pwd`, `real_name`, `birthday`, `card_id`, `mark`, `partner_id`, `group_id`, `nickname`, `avatar`, `phone`, `add_time`, `add_ip`, `last_time`, `last_ip`, `now_money`, `brokerage_price`, `integral`, `sign_num`, `status`, `level`, `spread_uid`, `spread_time`, `user_type`, `is_promoter`, `pay_count`, `spread_count`, `clean_time`, `addres`, `adminid`, `login_type`)
VALUES
	(11,'mingming','mingming','$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky','e10adc3949ba59abbe56e057f20f883e','',0,'','',0,0,'会敲代码的喵88','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175246',1573120584,'',1573120584,'',7381.31,27.86,990.06,1,1,1,0,1,'h5',0,42,4,0,'',1,''),
	(12,'15136175246','mingming2','$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky','e10adc3949ba59abbe56e057f20f883e','',0,'','',0,0,'会敲代码的喵2','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175246',1573120881,'',1573120881,'',8766.20,28.00,70.51,2,1,1,11,1582896799,'h5',0,20,0,0,'',1,''),
	(14,'15136175247','15136175247','$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky','e10adc3949ba59abbe56e057f20f883e','',0,'','',0,0,'15136175247','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175247',1573612696,'',1573612696,'',9200.00,0.00,2.00,0,1,0,11,1584189298,'h5',0,5,0,0,'',0,''),
	(15,'15136175249','15136175249','$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky','$2a$10$IG/fc8idkW35ezw7VtiM.OjUU1fvS2d/Bw7TmU76UUTbd5/4eCd9a','',0,'','',0,0,'15136175249','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175249',1578839477,'',1578839477,'',0.00,0.00,0.00,0,1,0,0,0,'h5',0,0,0,0,'',0,''),
	(18,'15136175523','15136175523','$2a$10$kMjK.K8lezzqiHfPjJCAUuSYajA7dAZhtUdtEyKd5RilPi8sWf4gC','$2a$10$DhiQooA85GOl2Z4tZrAwAejwgf8O6SrMsv8jaVwQsXkR1VcyTp0eC','',0,'','',0,0,'15136175523','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175523',1584171347,'',1584171347,'',0.00,0.00,0.00,0,1,0,0,0,'h5',0,0,0,0,'',0,''),
	(19,'15136175528','15136175528','$2a$10$8d4xZEX3x7jaojPTv0WDheEG8syzV1br2z1RpZ0ceV/p0OTaKOq1u','$2a$10$zLLJrrxGKbikzbAiP34N/Od5nlNgREMtoaih7rlqSzk7oOnurFneO','',0,'','',0,0,'15136175528','https://image.dayouqiantu.cn/5dc2c7f3a104c.png','15136175528',1584535079,'',1584535079,'',0.00,0.00,0.00,0,1,0,11,1584535081,'h5',0,0,0,0,'',0,''),
	(20,'15136171112','15136171112','$2a$10$MsTr57nPX9bSOLvlA4C/Z.MaUGTJM/anEzDasPucezf4GVfPpmmji','$2a$10$62PLFod7JnPPmW8Hx0MZ9uhkGXmXZZ2N3ZixnvUzfBTZ157oiFCSm','',0,'','',0,0,'15136171112','https://image.dayouqiantu.cn/5e79f6cfd33b6.png','15136171112',1585385387,'',1585385387,'',99.00,0.00,0.00,0,1,0,11,1585385387,'h5',1,0,0,0,'',0,'');

/*!40000 ALTER TABLE `yx_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_address`;

CREATE TABLE `yx_user_address` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人电话',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在市',
  `district` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在区',
  `detail` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `post_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮编',
  `longitude` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `is_default` (`is_default`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址表';

LOCK TABLES `yx_user_address` WRITE;
/*!40000 ALTER TABLE `yx_user_address` DISABLE KEYS */;

INSERT INTO `yx_user_address` (`id`, `uid`, `real_name`, `phone`, `province`, `city`, `district`, `detail`, `post_code`, `longitude`, `latitude`, `is_default`, `is_del`, `add_time`)
VALUES
	(9,8,'胡鹏','15136175246','山西','大同市','灵丘县','999','','0','0',1,0,1573119435),
	(10,11,'胡鹏','15139175246','重庆','荣昌县','广顺镇','999','','0','0',1,0,1573120628),
	(11,12,'hu','15136175246','上海','闸北区','城区','99999','','0','0',1,0,1573123595),
	(12,14,'zhang','15136175247','上海','静安区','城区','999','','0','0',1,0,1573612804);

/*!40000 ALTER TABLE `yx_user_address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user_bill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_bill`;

CREATE TABLE `yx_user_bill` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账单标题',
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '明细种类',
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pm` (`pm`) USING BTREE,
  KEY `type` (`category`,`type`,`link_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账单表';



# Dump of table yx_user_enter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_enter`;

CREATE TABLE `yx_user_enter` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在省',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在市',
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在区',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户详细地址',
  `merchant_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户名称',
  `link_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户电话',
  `charter` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户证书',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `apply_time` int unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `success_time` int NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '未通过原因',
  `fail_time` int unsigned NOT NULL DEFAULT '0' COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  KEY `province` (`province`,`city`,`district`) USING BTREE,
  KEY `is_lock` (`is_lock`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商户申请表';



# Dump of table yx_user_extract
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_extract`;

CREATE TABLE `yx_user_extract` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned DEFAULT NULL,
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '无效原因',
  `fail_time` int unsigned DEFAULT NULL,
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `extract_type` (`extract_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `fail_time` (`fail_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户提现表';

LOCK TABLES `yx_user_extract` WRITE;
/*!40000 ALTER TABLE `yx_user_extract` DISABLE KEYS */;

INSERT INTO `yx_user_extract` (`id`, `uid`, `real_name`, `extract_type`, `bank_code`, `bank_address`, `alipay_code`, `extract_price`, `mark`, `balance`, `fail_msg`, `fail_time`, `add_time`, `status`, `wechat`)
VALUES
	(1,11,'会敲代码的喵','weixin','0','','',1.00,NULL,5.00,'失败了',1589800488,1573648445,-1,'hu');

/*!40000 ALTER TABLE `yx_user_extract` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_group`;

CREATE TABLE `yx_user_group` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户分组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户分组表';



# Dump of table yx_user_level
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_level`;

CREATE TABLE `yx_user_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户uid',
  `level_id` int NOT NULL DEFAULT '0' COMMENT '等级vip',
  `grade` int NOT NULL DEFAULT '0' COMMENT '会员等级',
  `valid_time` int NOT NULL DEFAULT '0' COMMENT '过期时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否永久',
  `mer_id` int NOT NULL DEFAULT '0' COMMENT '商户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:禁止,1:正常',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已通知',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除,1=删除',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `discount` int NOT NULL DEFAULT '0' COMMENT '享受折扣',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户等级记录表';

LOCK TABLES `yx_user_level` WRITE;
/*!40000 ALTER TABLE `yx_user_level` DISABLE KEYS */;

INSERT INTO `yx_user_level` (`id`, `uid`, `level_id`, `grade`, `valid_time`, `is_forever`, `mer_id`, `status`, `mark`, `remind`, `is_del`, `add_time`, `discount`)
VALUES
	(4,11,1,1,0,1,0,1,'恭喜你成为了普通会员',0,0,1585297281,99);

/*!40000 ALTER TABLE `yx_user_level` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user_recharge
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_recharge`;

CREATE TABLE `yx_user_recharge` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL COMMENT '充值用户UID',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `give_price` decimal(8,2) DEFAULT '0.00' COMMENT '购买赠送金额',
  `recharge_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `recharge_type` (`recharge_type`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户充值表';

LOCK TABLES `yx_user_recharge` WRITE;
/*!40000 ALTER TABLE `yx_user_recharge` DISABLE KEYS */;

INSERT INTO `yx_user_recharge` (`id`, `uid`, `nickname`, `order_id`, `price`, `give_price`, `recharge_type`, `paid`, `pay_time`, `add_time`, `refund_price`)
VALUES
	(1,11,'mingming','1234428298159718400',200.00,0.00,'weixin',0,NULL,1583145615,0.00),
	(2,11,'会敲代码的喵88','1235853569362493440',110.00,0.00,'weixin',0,NULL,1583485426,0.00),
	(3,11,'会敲代码的喵88','1235874304738983936',111.00,0.00,'weixin',0,NULL,1583490370,0.00),
	(4,11,'会敲代码的喵88','1235874561447165952',111.00,0.00,'weixin',0,NULL,1583490431,0.00),
	(5,11,'会敲代码的喵88','1235874725738053632',111.00,0.00,'weixin',0,NULL,1583490470,0.00),
	(6,11,'会敲代码的喵88','1235875114126409728',1111.00,0.00,'weixin',0,NULL,1583490563,0.00),
	(7,11,'会敲代码的喵88','1235876251080589312',1111.00,0.00,'weixin',0,NULL,1583490834,0.00),
	(8,11,'会敲代码的喵88','1242024244678754304',100.00,10.00,'weixin',0,NULL,1584956630,0.00),
	(9,11,'会敲代码的喵88','1242024501730869248',111.00,111.00,'weixin',0,NULL,1584956691,0.00),
	(10,11,'会敲代码的喵88','1242025322262560768',222.00,0.00,'weixin',0,NULL,1584956887,0.00),
	(11,11,'会敲代码的喵88','1246020207407792128',1.00,1.00,'weixin',0,NULL,1585909342,0.00),
	(12,11,'会敲代码的喵88','1246379540565983232',10.00,100.00,'weixin',0,NULL,1585995013,0.00),
	(13,11,'会敲代码的喵88','1246379584941719552',1.00,1.00,'weixin',0,NULL,1585995024,0.00),
	(14,11,'会敲代码的喵88','1246383201052524544',10.00,100.00,'weixin',0,NULL,1585995886,0.00),
	(15,11,'会敲代码的喵88','1246383225413042176',10.00,100.00,'weixin',0,NULL,1585995892,0.00);

/*!40000 ALTER TABLE `yx_user_recharge` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_user_sign
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_sign`;

CREATE TABLE `yx_user_sign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户uid',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '签到说明',
  `number` int NOT NULL DEFAULT '0' COMMENT '获得积分',
  `balance` int NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='签到记录表';



# Dump of table yx_user_task_finish
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_user_task_finish`;

CREATE TABLE `yx_user_task_finish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL DEFAULT '0' COMMENT '任务id',
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户任务完成记录表';



# Dump of table yx_wechat_media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_wechat_media`;

CREATE TABLE `yx_wechat_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复类型',
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `media_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信服务器返回的id',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `temporary` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  KEY `type_2` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信回复表';



# Dump of table yx_wechat_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_wechat_menu`;

CREATE TABLE `yx_wechat_menu` (
  `key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '缓存数据',
  `add_time` int DEFAULT NULL COMMENT '缓存时间',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信缓存表';

LOCK TABLES `yx_wechat_menu` WRITE;
/*!40000 ALTER TABLE `yx_wechat_menu` DISABLE KEYS */;

INSERT INTO `yx_wechat_menu` (`key`, `result`, `add_time`)
VALUES
	('wechat_menus','[{\"subButtons\":[{\"name\":\"公众号演示\",\"type\":\"view\",\"url\":\"https://h5.dayouqiantu.cn\"}],\"name\":\"boplus商城3\",\"type\":\"click\",\"key\":\"boplus\"},{\"subButtons\":[{\"appId\":\"wxa82b5b7fcb0ec161\",\"name\":\"小程序演示\",\"pagePath\":\"pages/index\",\"type\":\"miniprogram\",\"url\":\"pages/index\"}],\"name\":\"供货商城\",\"type\":\"click\",\"key\":\"supply\"},{\"subButtons\":[],\"name\":\"3333\",\"type\":\"click\",\"key\":\"2222\"}]',1570435277);

/*!40000 ALTER TABLE `yx_wechat_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_wechat_reply
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_wechat_reply`;

CREATE TABLE `yx_wechat_reply` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复类型',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复数据',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `hide` (`hide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信关键字回复表';

LOCK TABLES `yx_wechat_reply` WRITE;
/*!40000 ALTER TABLE `yx_wechat_reply` DISABLE KEYS */;

INSERT INTO `yx_wechat_reply` (`id`, `key`, `type`, `data`, `status`, `hide`)
VALUES
	(1,'subscribe','text','{\"content\":\"22222222222444499990000\"}',1,NULL);

/*!40000 ALTER TABLE `yx_wechat_reply` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_wechat_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_wechat_template`;

CREATE TABLE `yx_wechat_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板编号',
  `name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复内容',
  `tempid` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信模板';

LOCK TABLES `yx_wechat_template` WRITE;
/*!40000 ALTER TABLE `yx_wechat_template` DISABLE KEYS */;

INSERT INTO `yx_wechat_template` (`id`, `tempkey`, `name`, `content`, `tempid`, `add_time`, `status`)
VALUES
	(3,'OPENTM200565259','订单发货提醒','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}','KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM','1515052638',1),
	(13,'OPENTM207791277','订单支付成功通知','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}','hJV1d1OwWB_lbPrSaRHi9RGr5CFAF4PJcZdYeg73Mtg','1528966759',1),
	(14,'OPENTM405847076','帐户资金变动提醒','{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}','ePF4RS3ONCEuS9AuPyqZ2Th_B-HZ6E1CIpnJRt7ACwI','1528966759',1);

/*!40000 ALTER TABLE `yx_wechat_template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yx_wechat_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yx_wechat_user`;

CREATE TABLE `yx_wechat_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',
  `unionid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户头像',
  `sex` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` decimal(8,2) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'wechat' COMMENT '用户类型',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `openid` (`openid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `subscribe` (`subscribe`) USING BTREE,
  KEY `unionid` (`unionid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信用户表';

LOCK TABLES `yx_wechat_user` WRITE;
/*!40000 ALTER TABLE `yx_wechat_user` DISABLE KEYS */;

INSERT INTO `yx_wechat_user` (`uid`, `unionid`, `openid`, `routine_openid`, `nickname`, `headimgurl`, `sex`, `city`, `language`, `province`, `country`, `remark`, `groupid`, `tagid_list`, `subscribe`, `subscribe_time`, `add_time`, `stair`, `second`, `order_stair`, `order_second`, `now_money`, `session_key`, `user_type`)
VALUES
	(1,NULL,NULL,NULL,'mingming','',0,'','','','',NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wechat');

/*!40000 ALTER TABLE `yx_wechat_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
