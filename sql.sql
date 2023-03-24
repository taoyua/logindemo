
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uid` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.jpg' COMMENT '用户头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 1, 'java1234', '$2a$10$Kib4zuVhTzg3I1CoqJfd0unuY9G9ysI7cfbhyT3fi7k7Z/4pr3bGW', '20220727112556000000325.jpg', 'caofeng4017@126.com', '18862857417', '2022-08-29 22:10:52', '0', '2022-06-09 08:47:52', '2022-06-22 08:47:54', '备注');
INSERT INTO `admin` VALUES (2, 3, 'common', '$2a$10$tiArwm0GxChyEP5k0JGzsOuzyY15IKA.ZTl8S2aj3haYlKAfpwfl.', '222.jpg', '', '', '2022-08-22 21:34:39', '0', NULL, NULL, NULL);
INSERT INTO `admin` VALUES (3, 2, 'test', '$2a$10$tiArwm0GxChyEP5k0JGzsOuzyY15IKA.ZTl8S2aj3haYlKAfpwfl.', '333.jpg', '', '', '2022-07-24 17:36:07', '0', NULL, NULL, NULL);
INSERT INTO `admin` VALUES (4, 1, 'admin', '$2a$10$.y6yRGGU6uXyrq0Ftmdb9.WSZTZPZJmnoisz0IxaiRqvjPKUcywjq', 'default.jpg', 'admin@qq.com', '18000010002', NULL, '1', NULL, NULL, NULL);
INSERT INTO `admin` VALUES (5, 3, '2', NULL, 'default.jpg', '', '', NULL, '1', NULL, NULL, NULL);
INSERT INTO `admin` VALUES (15, 3, 'fdsfs', '$2a$10$AQVcp4hQ7REc5o7ztVnI7eX.sJdcYy3d1x2jm5CfrcCoMZMPacfpi', 'default.jpg', 'fdfa4@qq.com', '18862851414', '2022-08-02 02:22:45', '1', '2022-08-02 02:21:24', '2022-08-01 18:23:16', 'fdfds4');
INSERT INTO `admin` VALUES (28, 3, 'sdfss2', '$2a$10$7aNJxwVmefI0XAk64vrzYuOqeeImYJUQnoBrtKP9pLTGTWO2CXQ/y', 'default.jpg', 'dfds3@qq.com', '18862857413', NULL, '1', '2022-08-07 00:42:46', '2022-08-06 16:43:04', 'ddd33');
INSERT INTO `admin` VALUES (29, 3, 'ccc', '$2a$10$7cbWeVwDWO9Hh3qbJrvTHOn0E/DLYXxnIZpxZei0jY4ChfQbJuhi.', '20220829080150000000341.jpg', '3242@qq.com', '18862584120', '2022-08-29 19:52:27', '0', '2022-08-29 17:04:58', NULL, 'xxx');
INSERT INTO `admin` VALUES (30, NULL, 'ccc666', '$2a$10$Tmw5VCM/K2vb837AZDYHQOqE3gPiRZKevxLsh/ozndpTSjdwABqaK', '20220829100454000000771.jpg', 'fdafds@qq.com', '18865259845', '2022-08-29 22:05:18', '0', '2022-08-29 22:00:39', NULL, 'ccc');


DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限字符串',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 'admin', '2022-07-04 14:40:44', '2022-07-04 14:40:47', '拥有系统最高权限');
INSERT INTO `role` VALUES (2, '普通角色', 'common', '2022-07-04 14:41:56', '2022-07-04 14:41:58', '普通角色');
INSERT INTO `role` VALUES (3, '测试角色', 'test', '2022-07-04 14:42:24', '2022-07-04 14:42:27', '测试角色');
INSERT INTO `role` VALUES (4, '2', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (5, '3', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (6, '4', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (7, '5', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (14, '6', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (16, '8', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (17, '0', NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (19, '测2', 'cc2', '2022-08-13 21:06:21', '2022-08-13 13:06:27', 'eewew2');
INSERT INTO `role` VALUES (20, 'ccc测试', 'test2', '2022-08-29 17:10:33', NULL, 'xxx');
INSERT INTO `role` VALUES (21, '今天测试角色', 'todytest', '2022-08-29 22:01:11', NULL, 'ccc');



-- ----------------------------
-- Table structure for role_treemenu
-- ----------------------------
DROP TABLE IF EXISTS `role_treemenu`;
CREATE TABLE `role_treemenu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色菜单主键ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_treemenu
-- ----------------------------
INSERT INTO `role_treemenu` VALUES (8, 2, 1);
INSERT INTO `role_treemenu` VALUES (9, 2, 2);
INSERT INTO `role_treemenu` VALUES (10, 2, 3);
INSERT INTO `role_treemenu` VALUES (11, 2, 4);
INSERT INTO `role_treemenu` VALUES (12, 2, 5);
INSERT INTO `role_treemenu` VALUES (13, 2, 6);
INSERT INTO `role_treemenu` VALUES (14, 2, 7);
INSERT INTO `role_treemenu` VALUES (15, 3, 2);
INSERT INTO `role_treemenu` VALUES (16, 3, 6);
INSERT INTO `role_treemenu` VALUES (17, 3, 7);
INSERT INTO `role_treemenu` VALUES (21, 7, 1);
INSERT INTO `role_treemenu` VALUES (22, 7, 2);
INSERT INTO `role_treemenu` VALUES (23, 7, 6);
INSERT INTO `role_treemenu` VALUES (24, 7, 7);
INSERT INTO `role_treemenu` VALUES (25, 6, 1);
INSERT INTO `role_treemenu` VALUES (26, 6, 3);
INSERT INTO `role_treemenu` VALUES (27, 6, 9);
INSERT INTO `role_treemenu` VALUES (28, 6, 10);
INSERT INTO `role_treemenu` VALUES (29, 19, 1);
INSERT INTO `role_treemenu` VALUES (30, 19, 3);
INSERT INTO `role_treemenu` VALUES (31, 19, 2);
INSERT INTO `role_treemenu` VALUES (32, 19, 6);
INSERT INTO `role_treemenu` VALUES (33, 1, 1);
INSERT INTO `role_treemenu` VALUES (34, 1, 3);
INSERT INTO `role_treemenu` VALUES (35, 1, 20);
INSERT INTO `role_treemenu` VALUES (36, 1, 8);
INSERT INTO `role_treemenu` VALUES (37, 1, 9);
INSERT INTO `role_treemenu` VALUES (38, 1, 10);
INSERT INTO `role_treemenu` VALUES (39, 1, 11);
INSERT INTO `role_treemenu` VALUES (40, 1, 12);
INSERT INTO `role_treemenu` VALUES (41, 1, 4);
INSERT INTO `role_treemenu` VALUES (42, 1, 21);
INSERT INTO `role_treemenu` VALUES (43, 1, 13);
INSERT INTO `role_treemenu` VALUES (44, 1, 14);
INSERT INTO `role_treemenu` VALUES (45, 1, 15);
INSERT INTO `role_treemenu` VALUES (46, 1, 16);
INSERT INTO `role_treemenu` VALUES (47, 1, 23);
INSERT INTO `role_treemenu` VALUES (48, 1, 5);
INSERT INTO `role_treemenu` VALUES (49, 1, 22);
INSERT INTO `role_treemenu` VALUES (50, 1, 17);
INSERT INTO `role_treemenu` VALUES (51, 1, 18);
INSERT INTO `role_treemenu` VALUES (52, 1, 19);
INSERT INTO `role_treemenu` VALUES (53, 1, 2);
INSERT INTO `role_treemenu` VALUES (54, 1, 6);
INSERT INTO `role_treemenu` VALUES (55, 1, 7);
INSERT INTO `role_treemenu` VALUES (208, 20, 1);
INSERT INTO `role_treemenu` VALUES (209, 20, 3);
INSERT INTO `role_treemenu` VALUES (210, 20, 20);
INSERT INTO `role_treemenu` VALUES (211, 20, 8);
INSERT INTO `role_treemenu` VALUES (212, 20, 9);
INSERT INTO `role_treemenu` VALUES (213, 20, 33);
INSERT INTO `role_treemenu` VALUES (214, 20, 10);
INSERT INTO `role_treemenu` VALUES (215, 20, 11);
INSERT INTO `role_treemenu` VALUES (216, 20, 4);
INSERT INTO `role_treemenu` VALUES (217, 20, 21);
INSERT INTO `role_treemenu` VALUES (218, 20, 13);
INSERT INTO `role_treemenu` VALUES (219, 20, 5);
INSERT INTO `role_treemenu` VALUES (220, 20, 22);
INSERT INTO `role_treemenu` VALUES (221, 20, 17);
INSERT INTO `role_treemenu` VALUES (222, 20, 18);
INSERT INTO `role_treemenu` VALUES (223, 20, 2);
INSERT INTO `role_treemenu` VALUES (224, 20, 6);
INSERT INTO `role_treemenu` VALUES (225, 20, 7);
INSERT INTO `role_treemenu` VALUES (232, 21, 1);
INSERT INTO `role_treemenu` VALUES (233, 21, 9);
INSERT INTO `role_treemenu` VALUES (234, 21, 4);
INSERT INTO `role_treemenu` VALUES (235, 21, 21);
INSERT INTO `role_treemenu` VALUES (236, 21, 2);
INSERT INTO `role_treemenu` VALUES (237, 21, 6);
INSERT INTO `role_treemenu` VALUES (238, 21, 7);




-- ----------------------------
-- Table structure for treemenu 
-- ----------------------------
DROP TABLE IF EXISTS `treemenu`;
CREATE TABLE `treemenu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `href` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_resource_parent_id`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of treemenu
-- ----------------------------
INSERT INTO `treemenu` VALUES (1, 0, '用户管理', 'fa fa-users', NULL, NULL, 1, 1, '用户管理', 'menu', NULL, '2018-05-16 17:02:54', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (2, 1, '用户列表', NULL, '/users', '_self', 1, 1, '用户列表', 'menu', 'users', '2017-12-22 13:56:15', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (3, 2, '新增用户', NULL, NULL, '_self', 2, 1, '新增用户', 'button', 'user:add', '2018-05-16 14:07:43', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (4, 2, '批量删除用户', NULL, NULL, '_self', 3, 1, '批量删除用户', 'button', 'user:batchDelete', '2018-05-16 14:12:23', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (5, 2, '编辑用户', NULL, NULL, '_self', 4, 1, '编辑用户', 'button', 'user:edit', '2018-05-16 14:12:50', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (6, 2, '删除用户', NULL, NULL, '_self', 5, 1, '删除用户', 'button', 'user:delete', '2018-05-16 14:13:09', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (7, 2, '分配用户角色', NULL, NULL, '_self', 6, 1, '分配用户角色', 'button', 'user:allotRole', '2018-05-16 14:15:28', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (8, 0, '系统配置', 'fa fa-cogs', NULL, '_self', 2, 1, '系统配置', 'menu', NULL, '2017-12-20 16:40:06', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (9, 8, '资源管理', NULL, '/resources', '_self', 1, 1, '资源管理', 'menu', 'resources', '2017-12-22 15:31:05', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (10, 9, '新增资源', NULL, NULL, '_self', 2, 1, '新增资源', 'button', 'resource:add', '2018-05-16 14:07:43', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (11, 9, '批量删除资源', NULL, NULL, '_self', 3, 1, '批量删除资源', 'button', 'resource:batchDelete', '2018-05-16 14:12:23', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (12, 9, '编辑资源', NULL, NULL, '_self', 4, 1, '编辑资源', 'button', 'resource:edit', '2018-05-16 14:12:50', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (13, 9, '删除资源', NULL, NULL, '_self', 5, 1, '删除资源', 'button', 'resource:delete', '2018-05-16 14:13:09', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (14, 8, '角色管理', '', '/roles', '_self', 2, 1, '角色管理', 'menu', 'roles', '2017-12-22 15:31:27', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (15, 14, '新增角色', NULL, NULL, '_self', 2, 1, '新增角色', 'button', 'role:add', '2018-05-16 14:07:43', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (16, 14, '批量删除角色', NULL, NULL, '_self', 3, 1, '批量删除角色', 'button', 'role:batchDelete', '2018-05-16 14:12:23', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (17, 14, '编辑角色', NULL, NULL, '_self', 4, 1, '编辑角色', 'button', 'role:edit', '2018-05-16 14:12:50', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (18, 14, '删除角色', NULL, NULL, '_self', 5, 1, '删除角色', 'button', 'role:delete', '2018-05-16 14:13:09', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (19, 14, '分配角色资源', NULL, NULL, '_self', 6, 1, '分配角色资源', 'button', 'role:allotResource', '2018-05-17 10:04:21', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (20, 0, '数据监控', 'fa fa-heartbeat', '', '_self', 3, 1, '数据监控', 'menu', '', '2018-05-17 12:38:20', '2023-03-12 16:45:24', NULL);
INSERT INTO `treemenu` VALUES (21, 20, 'Druid监控', '', '/druid/index.html', '_self', 1, 1, 'Druid监控', 'menu', 'druid', '2018-05-17 12:46:37', '2023-03-12 16:45:24', NULL);
