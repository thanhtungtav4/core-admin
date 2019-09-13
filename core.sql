/*
 Navicat Premium Data Transfer

 Source Server         : wao
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : core

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 25/08/2019 23:18:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_config
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_config_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_config
-- ----------------------------
INSERT INTO `admin_config` VALUES (1, 'Tittle', 'Demo Page Admin', NULL, '2019-08-25 04:46:03', '2019-08-25 04:46:03');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 9, 'BackUp', 'fa-database', 'backup', NULL, '2019-08-23 20:17:57', '2019-08-23 20:26:01');
INSERT INTO `admin_menu` VALUES (9, 0, 8, 'Config', 'fa-toggle-on', 'config', NULL, '2019-08-23 20:22:52', '2019-08-23 20:22:52');
INSERT INTO `admin_menu` VALUES (10, 0, 10, 'Config', 'fa-cogs', 'config', NULL, '2019-08-23 20:25:57', '2019-08-23 20:26:01');
INSERT INTO `admin_menu` VALUES (11, 0, 11, 'Media manager', 'fa-file', 'media', NULL, '2019-08-23 20:29:43', '2019-08-23 20:29:43');
INSERT INTO `admin_menu` VALUES (13, 0, 13, 'Scheduling', 'fa-clock-o', 'scheduling', NULL, '2019-08-24 04:06:42', '2019-08-24 04:06:42');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-23 19:29:12', '2019-08-23 19:29:12');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 19:29:50', '2019-08-23 19:29:50');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 19:29:51', '2019-08-23 19:29:51');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 19:29:55', '2019-08-23 19:29:55');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 19:30:00', '2019-08-23 19:30:00');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 19:31:17', '2019-08-23 19:31:17');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 19:31:26', '2019-08-23 19:31:26');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 19:33:45', '2019-08-23 19:33:45');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-23 19:35:35', '2019-08-23 19:35:35');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2019-08-23 19:43:06', '2019-08-23 19:43:06');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\"}', '2019-08-23 19:43:12', '2019-08-23 19:43:12');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:16:43', '2019-08-23 20:16:43');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:16:47', '2019-08-23 20:16:47');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"BackUp\",\"icon\":\"fa-database\",\"uri\":\"backup\",\"roles\":[null],\"permission\":null,\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\"}', '2019-08-23 20:17:56', '2019-08-23 20:17:56');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 20:17:57', '2019-08-23 20:17:57');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:18:03', '2019-08-23 20:18:03');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-23 20:18:06', '2019-08-23 20:18:06');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:18:08', '2019-08-23 20:18:08');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2019-08-23 20:23:23', '2019-08-23 20:23:23');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:23:51', '2019-08-23 20:23:51');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:23:54', '2019-08-23 20:23:54');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:23:58', '2019-08-23 20:23:58');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:24:14', '2019-08-23 20:24:14');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:24:34', '2019-08-23 20:24:34');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:25:10', '2019-08-23 20:25:10');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Config\",\"icon\":\"fa-cogs\",\"uri\":\"config\",\"roles\":[null],\"permission\":null,\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\"}', '2019-08-23 20:25:56', '2019-08-23 20:25:56');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 20:25:57', '2019-08-23 20:25:57');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":10}]\"}', '2019-08-23 20:26:01', '2019-08-23 20:26:01');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:26:02', '2019-08-23 20:26:02');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 20:26:19', '2019-08-23 20:26:19');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:26:22', '2019-08-23 20:26:22');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:26:46', '2019-08-23 20:26:46');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:26:46', '2019-08-23 20:26:46');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:29:55', '2019-08-23 20:29:55');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"media\",\"icon\":\"fa-film\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\"}', '2019-08-23 20:30:25', '2019-08-23 20:30:25');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-23 20:30:25', '2019-08-23 20:30:25');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"sJ1qUJvnXXKqEyiyfZFU4rFOw3gPzEqefVV7MZak\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]\"}', '2019-08-23 20:30:26', '2019-08-23 20:30:26');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 20:30:27', '2019-08-23 20:30:27');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-24 01:36:55', '2019-08-24 01:36:55');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 01:39:55', '2019-08-24 01:39:55');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 02:16:18', '2019-08-24 02:16:18');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 02:16:23', '2019-08-24 02:16:23');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 02:16:24', '2019-08-24 02:16:24');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 02:16:28', '2019-08-24 02:16:28');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:05:33', '2019-08-24 04:05:33');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:08:29', '2019-08-24 04:08:29');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Scheduling\",\"icon\":\"fa-clock-o\",\"uri\":\"scheduling\",\"roles\":[null],\"permission\":null,\"_token\":\"5GbbL1zVzsWN63uffkXhWHm9wo5P4jBRsYbUkfBX\"}', '2019-08-24 04:09:23', '2019-08-24 04:09:23');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-24 04:09:24', '2019-08-24 04:09:24');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5GbbL1zVzsWN63uffkXhWHm9wo5P4jBRsYbUkfBX\"}', '2019-08-24 04:09:35', '2019-08-24 04:09:35');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:09:35', '2019-08-24 04:09:35');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:09:42', '2019-08-24 04:09:42');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-24 04:09:44', '2019-08-24 04:09:44');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:09:47', '2019-08-24 04:09:47');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:10:02', '2019-08-24 04:10:02');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:11:45', '2019-08-24 04:11:45');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:11:48', '2019-08-24 04:11:48');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:17:59', '2019-08-24 04:17:59');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:18:13', '2019-08-24 04:18:13');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:18:34', '2019-08-24 04:18:34');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:18:47', '2019-08-24 04:18:47');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-24 04:22:10', '2019-08-24 04:22:10');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:22:12', '2019-08-24 04:22:12');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:22:17', '2019-08-24 04:22:17');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:22:17', '2019-08-24 04:22:17');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:22:20', '2019-08-24 04:22:20');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$8I0z12c\\/ENOVVvtqN9BpJOGlAgZD3XmEBYUBcipsVTpQkqPDyWU7C\",\"password_confirmation\":\"$2y$10$8I0z12c\\/ENOVVvtqN9BpJOGlAgZD3XmEBYUBcipsVTpQkqPDyWU7C\",\"_token\":\"5GbbL1zVzsWN63uffkXhWHm9wo5P4jBRsYbUkfBX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/core.com\\/admin\\/scheduling\"}', '2019-08-24 04:23:15', '2019-08-24 04:23:15');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 04:23:16', '2019-08-24 04:23:16');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 04:27:52', '2019-08-24 04:27:52');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 04:28:00', '2019-08-24 04:28:00');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 04:28:17', '2019-08-24 04:28:17');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 04:28:37', '2019-08-24 04:28:37');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 04:28:41', '2019-08-24 04:28:41');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 05:13:31', '2019-08-24 05:13:31');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$8I0z12c\\/ENOVVvtqN9BpJOGlAgZD3XmEBYUBcipsVTpQkqPDyWU7C\",\"password_confirmation\":\"$2y$10$8I0z12c\\/ENOVVvtqN9BpJOGlAgZD3XmEBYUBcipsVTpQkqPDyWU7C\",\"_token\":\"5GbbL1zVzsWN63uffkXhWHm9wo5P4jBRsYbUkfBX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/core.com\\/admin\\/auth\\/login\"}', '2019-08-24 05:13:42', '2019-08-24 05:13:42');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 05:13:42', '2019-08-24 05:13:42');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 05:15:56', '2019-08-24 05:15:56');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-24 05:18:05', '2019-08-24 05:18:05');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:08', '2019-08-24 05:18:08');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:10', '2019-08-24 05:18:10');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:13', '2019-08-24 05:18:13');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:17', '2019-08-24 05:18:17');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:18', '2019-08-24 05:18:18');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:21', '2019-08-24 05:18:21');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:18:23', '2019-08-24 05:18:23');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:10', '2019-08-24 06:16:10');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-25 04:41:57', '2019-08-25 04:41:57');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:42:09', '2019-08-25 04:42:09');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:42:11', '2019-08-25 04:42:11');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:42:14', '2019-08-25 04:42:14');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:42:16', '2019-08-25 04:42:16');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:42:37', '2019-08-25 04:42:37');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:45:11', '2019-08-25 04:45:11');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:45:15', '2019-08-25 04:45:15');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:45:23', '2019-08-25 04:45:23');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:45:26', '2019-08-25 04:45:26');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/config', 'POST', '127.0.0.1', '{\"name\":\"Tittle\",\"value\":\"Demo Page Admin\",\"description\":null,\"_token\":\"TfRknf8ckSR4iTQykKEwMXvlthDlQBTw3Alk99qy\",\"_previous_\":\"http:\\/\\/core.com\\/admin\\/config\"}', '2019-08-25 04:46:03', '2019-08-25 04:46:03');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2019-08-25 04:46:03', '2019-08-25 04:46:03');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:23', '2019-08-25 04:46:23');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:38', '2019-08-25 04:46:38');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:44', '2019-08-25 04:46:44');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:46', '2019-08-25 04:46:46');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:47', '2019-08-25 04:46:47');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:49', '2019-08-25 04:46:49');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:46:55', '2019-08-25 04:46:55');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/scheduling', 'GET', '127.0.0.1', '[]', '2019-08-25 04:47:52', '2019-08-25 04:47:52');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/scheduling', 'GET', '127.0.0.1', '[]', '2019-08-25 04:47:53', '2019-08-25 04:47:53');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-25 04:57:02', '2019-08-25 04:57:02');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:57:07', '2019-08-25 04:57:07');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 04:57:10', '2019-08-25 04:57:10');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"TfRknf8ckSR4iTQykKEwMXvlthDlQBTw3Alk99qy\"}', '2019-08-25 04:57:13', '2019-08-25 04:57:13');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"TfRknf8ckSR4iTQykKEwMXvlthDlQBTw3Alk99qy\"}', '2019-08-25 05:03:03', '2019-08-25 05:03:03');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:09:52', '2019-08-25 05:09:52');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:09:52', '2019-08-25 05:09:52');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:09:58', '2019-08-25 05:09:58');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-25 05:10:05', '2019-08-25 05:10:05');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:10:13', '2019-08-25 05:10:13');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-08-25 05:10:20', '2019-08-25 05:10:20');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:10:42', '2019-08-25 05:10:42');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:10:44', '2019-08-25 05:10:44');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:18:27', '2019-08-25 05:18:27');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:23:21', '2019-08-25 05:23:21');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/auth/menu/12', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"YNuuBV987XWamDjgYeVDqVjAQ7xq6Ez3cddRV5zk\"}', '2019-08-25 05:23:26', '2019-08-25 05:23:26');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:23:26', '2019-08-25 05:23:26');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-25 16:16:52', '2019-08-25 16:16:52');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 16:16:55', '2019-08-25 16:16:55');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 16:16:58', '2019-08-25 16:16:58');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 16:16:59', '2019-08-25 16:16:59');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Admin Config', 'ext.config', NULL, '/config*', '2019-08-23 20:22:52', '2019-08-23 20:22:52');
INSERT INTO `admin_permissions` VALUES (7, 'Media manager', 'ext.media-manager', NULL, '/media*', '2019-08-23 20:29:43', '2019-08-23 20:29:43');
INSERT INTO `admin_permissions` VALUES (8, 'Scheduling', 'ext.scheduling', NULL, '/scheduling*', '2019-08-24 04:06:42', '2019-08-24 04:06:42');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-08-23 19:28:43', '2019-08-23 19:28:43');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$8I0z12c/ENOVVvtqN9BpJOGlAgZD3XmEBYUBcipsVTpQkqPDyWU7C', 'Administrator', 'images/admin-settings-male.png', 'LFiDzdt30518bFbAFtIc6fgosnamoMCg77zPrwESrC05Ex1EkJ93ZsMraxUA', '2019-08-23 19:28:43', '2019-08-24 05:13:42');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2017_07_17_040159_create_config_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
