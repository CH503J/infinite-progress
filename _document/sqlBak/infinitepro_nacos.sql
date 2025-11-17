/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : infinitepro_nacos

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 17/11/2025 10:04:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'group_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'configuration description',
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'configuration usage',
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置生效的描述',
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '配置的类型',
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '配置的模式',
  `encrypted_data_key` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密钥',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id` ASC, `group_id` ASC, `tenant_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (9, 'ip-gateway', 'DEFAULT_GROUP', 'server:\n  port: 23000\n\nspring:\n  application:\n    name: ip-gateway\n\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:20000\n      config:\n        server-addr: localhost:20000\n\n  config:\n    import:\n      - optional:nacos:ip-gateway.yaml\n', 'be5f6c84c6a24c0d7f6d63263db14c73', '2025-11-15 12:56:39', '2025-11-15 17:28:40', 'nacos_namespace_migrate', '0:0:0:0:0:0:0:1', '', '', '网关微服务配置', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info` VALUES (10, 'ip-gateway', 'DEFAULT_GROUP', 'server:\n  port: 23000\n\nspring:\n  application:\n    name: ip-gateway\n\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:20000\n      config:\n        server-addr: localhost:20000\n\n  config:\n    import:\n      - optional:nacos:ip-gateway.yaml\n', 'be5f6c84c6a24c0d7f6d63263db14c73', '2025-11-15 12:56:39', '2025-11-15 17:28:40', 'nacos', '0:0:0:0:0:0:0:1', '', 'public', '网关微服务配置', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info` VALUES (11, 'ip-auth-service', 'DEFAULT_GROUP', 'server:\r\n  port: 22000\r\n\r\nspring:\r\n  application:\r\n    name: ip-auth-service\r\n\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:20000\r\n      config:\r\n        server-addr: localhost:20000\r\n\r\n  config:\r\n    import:\r\n      - optional:nacos:ip-auth-service.yaml\r\n', 'ee3e96501c84f8a13c5393883bf83d23', '2025-11-15 16:13:10', '2025-11-15 16:13:10', 'nacos_namespace_migrate', '0:0:0:0:0:0:0:1', '', '', '鉴权中心微服务', NULL, NULL, 'yaml', NULL, '');
INSERT INTO `config_info` VALUES (12, 'ip-auth-service', 'DEFAULT_GROUP', 'server:\r\n  port: 22000\r\n\r\nspring:\r\n  application:\r\n    name: ip-auth-service\r\n\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:20000\r\n      config:\r\n        server-addr: localhost:20000\r\n\r\n  config:\r\n    import:\r\n      - optional:nacos:ip-auth-service.yaml\r\n', 'ee3e96501c84f8a13c5393883bf83d23', '2025-11-15 16:13:10', '2025-11-15 16:13:10', 'nacos', '0:0:0:0:0:0:0:1', '', 'public', '鉴权中心微服务', NULL, NULL, 'yaml', NULL, '');

-- ----------------------------
-- Table structure for config_info_gray
-- ----------------------------
DROP TABLE IF EXISTS `config_info_gray`;
CREATE TABLE `config_info_gray`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'group_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'src_user',
  `src_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'src_ip',
  `gmt_create` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT 'gmt_create',
  `gmt_modified` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT 'gmt_modified',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'app_name',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'tenant_id',
  `gray_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'gray_name',
  `gray_rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'gray_rule',
  `encrypted_data_key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'encrypted_data_key',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfogray_datagrouptenantgray`(`data_id` ASC, `group_id` ASC, `tenant_id` ASC, `gray_name` ASC) USING BTREE,
  INDEX `idx_dataid_gmt_modified`(`data_id` ASC, `gmt_modified` ASC) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'config_info_gray' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_info_gray
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
  `id` bigint NOT NULL COMMENT 'id',
  `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint NOT NULL AUTO_INCREMENT COMMENT 'nid, 自增长标识',
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `uk_configtagrelation_configidtag`(`id` ASC, `tag_name` ASC, `tag_type` ASC) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id`(`group_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_capacity
-- ----------------------------
INSERT INTO `group_capacity` VALUES (1, '', 0, 4, 0, 0, 0, 0, '2025-11-01 09:34:18', '2025-11-17 01:39:32');

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
  `id` bigint UNSIGNED NOT NULL COMMENT 'id',
  `nid` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'nid, 自增标识',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'operation type',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `encrypted_data_key` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密钥',
  `publish_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'formal' COMMENT 'publish type gray or formal',
  `gray_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'gray name',
  `ext_info` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'ext info',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `idx_gmt_create`(`gmt_create` ASC) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified` ASC) USING BTREE,
  INDEX `idx_did`(`data_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info` VALUES (0, 1, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'spring:\r\n  cloud:\r\n    gateway:\r\n      routes:\r\n        - id: service-example\r\n          uri: lb://service-example\r\n          predicates:\r\n            - Path=/api/example/**\r\n          filters:\r\n            - StripPrefix=2\r\n\r\n# 如果网关还有其他可动态管理的配置，也可以写在这里\r\n# 比如限流、熔断、负载均衡策略等\r\ncustom:\r\n  gateway:\r\n    request-timeout: 5000\r\n    max-connections: 100\r\n', '3227da08e20e1a940277563314c01265', '2025-11-01 17:34:18', '2025-11-01 09:34:18', 'nacos', '192.168.101.102', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (0, 2, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\r\nserver:\r\n  port: 21000\r\n\r\nspring:\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:8888\r\n        fail-fast: false\r\n        prefer-open-api: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n# 其他auth-service特有的配置可以放在这里\r\n# 比如数据库连接、Redis配置等\r\n', '56b53057bc1b5ba4c32da2cc655567b8', '2025-11-01 17:47:44', '2025-11-01 09:47:45', 'nacos', '192.168.101.102', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 3, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'spring:\r\n  cloud:\r\n    gateway:\r\n      routes:\r\n        - id: service-example\r\n          uri: lb://service-example\r\n          predicates:\r\n            - Path=/api/example/**\r\n          filters:\r\n            - StripPrefix=2\r\n\r\n# 如果网关还有其他可动态管理的配置，也可以写在这里\r\n# 比如限流、熔断、负载均衡策略等\r\ncustom:\r\n  gateway:\r\n    request-timeout: 5000\r\n    max-connections: 100\r\n', '3227da08e20e1a940277563314c01265', '2025-11-01 17:48:25', '2025-11-01 09:48:26', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 4, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', '# infinitepro-gateway的Nacos配置\nserver:\n  port: 22000\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:8888\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        # 示例路由配置，根据实际服务进行调整\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\n# 其他网关特有的配置\n', 'c7cc1566fc59988b71364b3308f93227', '2025-11-01 17:54:28', '2025-11-01 09:54:28', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 5, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', '# infinitepro-gateway的Nacos配置\nserver:\n  port: 22010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:8888\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        # 示例路由配置，根据实际服务进行调整\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\n# 其他网关特有的配置\n', 'd8172d604db1f155a1579cb530d0f55f', '2025-11-01 17:55:10', '2025-11-01 09:55:11', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 6, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\r\nserver:\r\n  port: 21000\r\n\r\nspring:\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:8888\r\n        fail-fast: false\r\n        prefer-open-api: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n# 其他auth-service特有的配置可以放在这里\r\n# 比如数据库连接、Redis配置等\r\n', '56b53057bc1b5ba4c32da2cc655567b8', '2025-11-01 17:56:04', '2025-11-01 09:56:05', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 7, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\nserver:\n  port: 21000\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n# 其他auth-service特有的配置可以放在这里\n# 比如数据库连接、Redis配置等\n', 'd6c152a7d8af4004eaf49d4f07b0a1d2', '2025-11-03 10:07:33', '2025-11-03 02:07:34', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 8, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\nserver:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n# 其他auth-service特有的配置可以放在这里\n# 比如数据库连接、Redis配置等\n', '4f7a100dfaa754699fe3880dcc6ddb47', '2025-11-03 10:29:42', '2025-11-03 02:29:42', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 9, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\nserver:\n  port: 21000\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n# 其他auth-service特有的配置可以放在这里\n# 比如数据库连接、Redis配置等\n', 'd6c152a7d8af4004eaf49d4f07b0a1d2', '2025-11-03 10:33:27', '2025-11-03 02:33:28', 'nacos', '192.168.101.102', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 10, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', '# infinitepro-gateway的Nacos配置\nserver:\n  port: 22010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        # 示例路由配置，根据实际服务进行调整\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\n# 其他网关特有的配置\n', 'cd500b0341cce2890de3c6020442e76b', '2025-11-06 09:52:49', '2025-11-06 01:52:50', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 11, 'auth-service.yaml', 'DEFAULT_GROUP', '', '# auth-service的Nacos配置\nserver:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n# 其他auth-service特有的配置可以放在这里\n# 比如数据库连接、Redis配置等\n', '4f7a100dfaa754699fe3880dcc6ddb47', '2025-11-06 09:58:21', '2025-11-06 01:58:21', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 12, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 22010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n', 'dbd9cbcf776602ab2c877010b0f3971e', '2025-11-06 16:53:16', '2025-11-06 08:53:16', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 13, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000', 'ebc36771f09928858f44f0b3a063cbb0', '2025-11-07 09:18:35', '2025-11-07 01:18:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 14, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhst:3306/infinitepro?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'', '694e4784245195300de84efbeb800058', '2025-11-07 09:28:36', '2025-11-07 01:28:36', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 15, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhst:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'', '3710094b5dccd6006bfb2165afa75810', '2025-11-07 17:51:34', '2025-11-07 09:51:34', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 16, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 22010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\ncors:\n  allowed-origins:\n    - http://localhost:29999\n    - http://192.168.101.102:29999\n  allowed-methods:\n    - GET\n    - POST\n    - PUT\n    - DELETE\n    - OPTIONS\n    - HEAD\n    - PATCH\n  allowed-headers:\n    - \"*\"\n  allowed-credentials: true', '277b3080fba94dd4061629bacf1d32d2', '2025-11-08 17:29:25', '2025-11-08 09:29:25', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 17, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'', 'db25d7a169f3e97f256e108c33bd3614', '2025-11-09 22:16:09', '2025-11-09 14:16:09', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (2, 18, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 22010\n  forward-headers-strategy: framework\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n    \n    gateway:\n      routes:\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\ncors:\n  allowed-origins:\n    - http://localhost:29999\n    - http://192.168.101.102:29999\n  allowed-methods:\n    - GET\n    - POST\n    - PUT\n    - DELETE\n    - OPTIONS\n    - HEAD\n    - PATCH\n  allowed-headers:\n    - \"*\"\n  allowed-credentials: true', '874a4599300b1ce26a83ae7871a78e84', '2025-11-09 22:17:32', '2025-11-09 14:17:33', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 19, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'\n\nlogging:\n  level:\n    org.springframework.security: DEBUG\n    org.springframework.security.oauth2: TRACE\n    org.springframework.security.web: DEBUG\n    org.springframework.security.oauth2.server.authorization: TRACE\n    org.springframework.security.oauth2.server.authorization.web: TRACE\n    org.springframework.security.oauth2.server.authorization.authentication: TRACE\n    org.springframework.security.oauth2.server.authorization.config.annotation.web.configurers: TRACE', '22c5edd81ac93db0ebdb08f3149c8075', '2025-11-10 14:08:03', '2025-11-10 06:08:04', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (0, 20, 'user-service', 'DEFAULT_GROUP', '', 'server:\r\n  port: 21020\r\n  forward-headers-strategy: framework\r\n\r\nspring:\r\n  data:\r\n    redis:\r\n      host: 127.0.0.1\r\n      port: 6379\r\n      database: 0\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:22000\r\n        fail-fast: false\r\n        prefer-open-api: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n  datasource:\r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\r\n    username: root\r\n    password: \'admin@123\'', '49a0a6533d71a35b1df081645a80d38e', '2025-11-10 14:30:37', '2025-11-10 06:30:38', 'nacos', '0:0:0:0:0:0:0:1', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\",\"c_desc\":\"用户中心微服务\"}');
INSERT INTO `his_config_info` VALUES (6, 21, 'user-service', 'DEFAULT_GROUP', '', 'server:\r\n  port: 21020\r\n  forward-headers-strategy: framework\r\n\r\nspring:\r\n  data:\r\n    redis:\r\n      host: 127.0.0.1\r\n      port: 6379\r\n      database: 0\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:22000\r\n        fail-fast: false\r\n        prefer-open-api: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n  datasource:\r\n    driver-class-name: com.mysql.cj.jdbc.Driver\r\n    url: jdbc:mysql://localhost:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\r\n    username: root\r\n    password: \'admin@123\'', '49a0a6533d71a35b1df081645a80d38e', '2025-11-10 14:56:06', '2025-11-10 06:56:06', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"用户中心微服务\"}');
INSERT INTO `his_config_info` VALUES (6, 22, 'user-service', 'DEFAULT_GROUP', '', 'server:\n  port: 21020\n  forward-headers-strategy: framework\n\nspring:\n  data:\n    redis:\n      host: 127.0.0.1\n      port: 6379\n      database: 0\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/infinitepro_user?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'', '997566edb65ed2a90a75adfb3975d2d4', '2025-11-15 10:51:02', '2025-11-15 02:51:03', 'nacos', '0:0:0:0:0:0:0:1', 'D', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"用户中心微服务\"}');
INSERT INTO `his_config_info` VALUES (4, 23, 'auth-service.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 21010\n  forward-headers-strategy: framework\n\nspring:\n  data:\n    redis:\n      host: 127.0.0.1\n      port: 6379\n      database: 0\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-open-api: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://localhost:3306/infinitepro_auth?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&serverTimezone=GMT%2B8&rewriteBatchedStatements=true\n    username: root\n    password: \'admin@123\'\n\n\nlogging:\n  level:\n    org.springframework.security: DEBUG\n    org.springframework.security.oauth2: TRACE\n    org.springframework.security.web: DEBUG\n    org.springframework.security.oauth2.server.authorization: TRACE\n    org.springframework.security.oauth2.server.authorization.web: TRACE\n    org.springframework.security.oauth2.server.authorization.authentication: TRACE\n    org.springframework.security.oauth2.server.authorization.config.annotation.web.configurers: TRACE', '6570efb08f3ee00c2ca9895f05141b47', '2025-11-15 10:51:06', '2025-11-15 02:51:07', 'nacos', '0:0:0:0:0:0:0:1', 'D', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"鉴权微服务\"}');
INSERT INTO `his_config_info` VALUES (0, 24, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\r\n  port: 22010\r\n  forward-headers-strategy: framework\r\n\r\nspring:\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:22000\r\n        fail-fast: false\r\n        prefer-ip-address: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n    gateway:\r\n      routes:\r\n        - id: auth-service\r\n          uri: lb://auth-service\r\n          predicates:\r\n            - Path=/api/auth/**\r\n          filters:\r\n            - StripPrefix=2\r\n\r\ncors:\r\n  allowed-origins:\r\n    - http://localhost:29999\r\n    - http://192.168.101.102:29999\r\n  allowed-methods:\r\n    - GET\r\n    - POST\r\n    - PUT\r\n    - DELETE\r\n    - OPTIONS\r\n    - HEAD\r\n    - PATCH\r\n  allowed-headers:\r\n    - \"*\"\r\n  allowed-credentials: true\r\n    \r\nlogging:\r\n  level:\r\n    org.springframework.cloud.gateway: DEBUG\r\n    reactor.netty.http.client: DEBUG\r\n   ', 'cb98a7e93fb260712527240751207808', '2025-11-15 10:52:35', '2025-11-15 02:52:35', 'nacos', '0:0:0:0:0:0:0:1', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\"}');
INSERT INTO `his_config_info` VALUES (8, 25, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\r\n  port: 22010\r\n  forward-headers-strategy: framework\r\n\r\nspring:\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:22000\r\n        fail-fast: false\r\n        prefer-ip-address: true\r\n        watch-delay: 30000\r\n        timeout: 30000\r\n        heart-beat-interval: 5000\r\n        heart-beat-timeout: 15000\r\n\r\n    gateway:\r\n      routes:\r\n        - id: auth-service\r\n          uri: lb://auth-service\r\n          predicates:\r\n            - Path=/api/auth/**\r\n          filters:\r\n            - StripPrefix=2\r\n\r\ncors:\r\n  allowed-origins:\r\n    - http://localhost:29999\r\n    - http://192.168.101.102:29999\r\n  allowed-methods:\r\n    - GET\r\n    - POST\r\n    - PUT\r\n    - DELETE\r\n    - OPTIONS\r\n    - HEAD\r\n    - PATCH\r\n  allowed-headers:\r\n    - \"*\"\r\n  allowed-credentials: true\r\n    \r\nlogging:\r\n  level:\r\n    org.springframework.cloud.gateway: DEBUG\r\n    reactor.netty.http.client: DEBUG\r\n   ', 'cb98a7e93fb260712527240751207808', '2025-11-15 10:52:57', '2025-11-15 02:52:58', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\"}');
INSERT INTO `his_config_info` VALUES (2, 26, 'infinitepro-gateway.yaml', 'DEFAULT_GROUP', '', 'server:\n  port: 22010\n  forward-headers-strategy: framework\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n    gateway:\n      routes:\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\ncors:\n  allowed-origins:\n    - http://localhost:29999\n    - http://192.168.101.102:29999\n  allowed-methods:\n    - GET\n    - POST\n    - PUT\n    - DELETE\n    - OPTIONS\n    - HEAD\n    - PATCH\n  allowed-headers:\n    - \"*\"\n  allowed-credentials: true\n    \nlogging:\n  level:\n    org.springframework.cloud.gateway: DEBUG\n    reactor.netty.http.client: DEBUG\n   ', '66cbe0cc51552d4a3e147cadd22fe2ba', '2025-11-15 10:53:06', '2025-11-15 02:53:06', 'nacos', '0:0:0:0:0:0:0:1', 'D', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (8, 27, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\n  port: 22010\n  forward-headers-strategy: framework\n\nspring:\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:22000\n        fail-fast: false\n        prefer-ip-address: true\n        watch-delay: 30000\n        timeout: 30000\n        heart-beat-interval: 5000\n        heart-beat-timeout: 15000\n\n    gateway:\n      routes:\n        - id: auth-service\n          uri: lb://auth-service\n          predicates:\n            - Path=/api/auth/**\n          filters:\n            - StripPrefix=2\n\ncors:\n  allowed-origins:\n    - http://localhost:29999\n    - http://192.168.101.102:29999\n  allowed-methods:\n    - GET\n    - POST\n    - PUT\n    - DELETE\n    - OPTIONS\n    - HEAD\n    - PATCH\n  allowed-headers:\n    - \"*\"\n  allowed-credentials: true\n    \nlogging:\n  level:\n    org.springframework.cloud.gateway: DEBUG\n    reactor.netty.http.client: DEBUG\n   ', '66cbe0cc51552d4a3e147cadd22fe2ba', '2025-11-15 11:41:43', '2025-11-15 03:41:44', 'nacos', '0:0:0:0:0:0:0:1', 'D', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务\"}');
INSERT INTO `his_config_info` VALUES (0, 28, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\r\n  port: 22000\r\n\r\nspring:\r\n  application:\r\n    name: ip-gateway\r\n\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:20000\r\n      config:\r\n        server-addr: localhost:20000\r\n\r\n  config:\r\n    import:\r\n      - optional:nacos:ip-gateway.yaml\r\n', 'cd1749d451d3558a7115684f951b4e69', '2025-11-15 12:56:38', '2025-11-15 04:56:39', 'nacos', '0:0:0:0:0:0:0:1', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\",\"c_desc\":\"网关微服务配置\"}');
INSERT INTO `his_config_info` VALUES (0, 29, 'ip-auth-service', 'DEFAULT_GROUP', '', 'server:\r\n  port: 22000\r\n\r\nspring:\r\n  application:\r\n    name: ip-auth-service\r\n\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:20000\r\n      config:\r\n        server-addr: localhost:20000\r\n\r\n  config:\r\n    import:\r\n      - optional:nacos:ip-auth-service.yaml\r\n', 'ee3e96501c84f8a13c5393883bf83d23', '2025-11-15 16:13:09', '2025-11-15 08:13:10', 'nacos', '0:0:0:0:0:0:0:1', 'I', 'public', '', 'formal', '', '{\"src_user\":\"nacos\",\"type\":\"yaml\",\"c_desc\":\"鉴权中心微服务\"}');
INSERT INTO `his_config_info` VALUES (10, 30, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\r\n  port: 22000\r\n\r\nspring:\r\n  application:\r\n    name: ip-gateway\r\n\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: localhost:20000\r\n      config:\r\n        server-addr: localhost:20000\r\n\r\n  config:\r\n    import:\r\n      - optional:nacos:ip-gateway.yaml\r\n', 'cd1749d451d3558a7115684f951b4e69', '2025-11-15 16:36:58', '2025-11-15 08:36:59', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务配置\"}');
INSERT INTO `his_config_info` VALUES (10, 31, 'ip-gateway', 'DEFAULT_GROUP', '', 'server:\n  port: 21000\n\nspring:\n  application:\n    name: ip-gateway\n\n  cloud:\n    nacos:\n      discovery:\n        server-addr: localhost:20000\n      config:\n        server-addr: localhost:20000\n\n  config:\n    import:\n      - optional:nacos:ip-gateway.yaml\n', 'f6d54084bdb9a2d4fffb0f4bcb4e2494', '2025-11-15 17:28:40', '2025-11-15 09:28:40', 'nacos', '0:0:0:0:0:0:0:1', 'U', 'public', '', 'formal', '', '{\"type\":\"yaml\",\"src_user\":\"nacos\",\"c_desc\":\"网关微服务配置\"}');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'role',
  `resource` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'resource',
  `action` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'action',
  UNIQUE INDEX `uk_role_permission`(`role` ASC, `resource` ASC, `action` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'username',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'role',
  UNIQUE INDEX `idx_user_role`(`username` ASC, `role` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
  `max_aggr_size` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_id`(`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------
INSERT INTO `tenant_capacity` VALUES (1, 'public', 0, 2, 0, 0, 0, 0, '2025-11-01 09:34:18', '2025-11-17 01:39:32');

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp` ASC, `tenant_id` ASC) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'username',
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'password',
  `enabled` tinyint(1) NOT NULL COMMENT 'enabled',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$nen9YdXCOjBXh9D5wpyUX.8dgh/yS3NUx81Jaby2La2vi0CTwRX..', 1);

SET FOREIGN_KEY_CHECKS = 1;
