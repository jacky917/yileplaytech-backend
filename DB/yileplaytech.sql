/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : yileplaytech

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 23/10/2022 11:09:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yl_post
-- ----------------------------
DROP TABLE IF EXISTS `yl_post`;
CREATE TABLE `yl_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主鍵',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '帖子標題',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '帖子內容',
  `status` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '帖子狀態',
  `post_user_id` int(20) NULL DEFAULT NULL COMMENT '發佈人ID',
  `post_category_id` int(20) NULL DEFAULT NULL COMMENT '帖子分類',
  `post_tag_id` int(20) NULL DEFAULT NULL COMMENT '帖子標籤',
  `nice_post` int(4) NULL DEFAULT NULL COMMENT '精選帖子',
  `browse_count` int(20) NULL DEFAULT NULL COMMENT '瀏覽數',
  `thumbs_up` int(20) NULL DEFAULT NULL COMMENT '點讚數',
  `yn_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '有效標示(1:有效,0:無效)',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `modified_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改時間',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yl_post
-- ----------------------------
INSERT INTO `yl_post` VALUES (127, 'cfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:48:06');
INSERT INTO `yl_post` VALUES (128, 'cfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:48:11');
INSERT INTO `yl_post` VALUES (129, 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:48:21');
INSERT INTO `yl_post` VALUES (130, 'cfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:48:36');
INSERT INTO `yl_post` VALUES (131, 'cfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:48:42');
INSERT INTO `yl_post` VALUES (132, 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', 'cfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5dfcfvbg5df1g5df1g5df', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:49:01');
INSERT INTO `yl_post` VALUES (133, 'ghjghj21gfh56j1gh5k', '1df5h1fg5h15fgh15fgh', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:56:28');
INSERT INTO `yl_post` VALUES (134, '測試', '測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試測試', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:56:46');
INSERT INTO `yl_post` VALUES (135, '455sdf1g5df1h5df15h', '515sdg15df1g5da1h5dfh1', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 09:58:38');
INSERT INTO `yl_post` VALUES (136, '5df1g5df15dfg1h', '515d1g5df1g5df1g5', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 10:05:46');
INSERT INTO `yl_post` VALUES (137, 'ds6gf1sd5fg15dfg15df1', '51fd5g1d5fg15dfg1h5dh15fgh15gd', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 10:10:35');
INSERT INTO `yl_post` VALUES (138, 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam molestie lorem lorem, sed congue lectus tristique dapibus. Sed nec mi at eros bibendum venenatis. Aenean vel sapien commodo, aliquam eros ut, egestas nunc. Maecenas at neque mi. In vel leo dapibus, egestas tortor ac, hendrerit neque. Pellentesque vulputate justo tristique, pulvinar nulla sit amet, facilisis urna. Mauris consequat mauris id pretium porttitor. Ut fermentum sed tortor eu ullamcorper. Fusce mauris ipsum, pretium at erat ut, aliquet placerat tellus. Etiam id eros sapien. Etiam quam velit, pretium a ultrices ut, dictum id ipsum. Nam convallis eu ligula feugiat accumsan. Etiam ac sem facilisis, lacinia purus fermentum, malesuada metus. Donec at ipsum massa. Sed laoreet accumsan urna vel pretium. Aenean nec est commodo, finibus sapien eu, placerat eros.', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:03:24');
INSERT INTO `yl_post` VALUES (139, 'test', 'Nam in tempus magna, quis pellentesque mi. Morbi a mattis dui, et sollicitudin quam. Phasellus vitae ex urna. Suspendisse non porttitor turpis, nec sollicitudin urna. Proin porta nibh nisl, et accumsan mi consectetur non. Phasellus sollicitudin id ligula eu dignissim. Morbi nec euismod justo, at volutpat ex. Vivamus ut sagittis urna, sit amet eleifend elit. Sed et elit viverra, placerat turpis quis, placerat lectus. Ut laoreet sem elit, vel consequat nulla hendrerit id. Nam molestie rhoncus faucibus. Quisque ultrices vestibulum erat, eu convallis nibh vestibulum et. Maecenas gravida, nisi eu mattis elementum, odio nisi ultrices ex, et consectetur nulla nunc sit amet est.', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:03:51');
INSERT INTO `yl_post` VALUES (140, 'test', 'Quisque luctus pretium lectus at commodo. Duis in malesuada purus. Donec venenatis dapibus facilisis. Aliquam pellentesque tellus id nibh scelerisque, ac blandit justo egestas. Aenean cursus consequat elit pellentesque pretium. Nullam sed purus ut ipsum varius gravida ac quis nunc. Ut ornare mauris ac nisl efficitur hendrerit. Curabitur malesuada nibh nec orci pulvinar tempus. Phasellus lacus ante, auctor eu ante ut, iaculis mattis metus. Integer sagittis at purus sit amet consequat. Etiam semper venenatis pretium. Vestibulum bibendum est sit amet metus hendrerit semper. Nunc fringilla a nisl et faucibus. Fusce at facilisis felis.', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:02');
INSERT INTO `yl_post` VALUES (141, 'test', 'Donec ut tempor quam. Praesent eleifend risus ante, ut eleifend felis sagittis ut. Maecenas urna dolor, rhoncus viverra efficitur id, commodo non nunc. Fusce consectetur elementum nunc, eget scelerisque arcu. Suspendisse vestibulum diam eu urna ultricies laoreet. Cras augue lectus, tincidunt vitae finibus quis, malesuada quis magna. Duis venenatis, ex eget feugiat sollicitudin, dolor ante gravida lacus, vitae hendrerit nibh tellus sed lacus. Nunc hendrerit lacinia suscipit. Cras aliquam aliquet gravida. Curabitur in consectetur dolor. Nam vel diam ultricies, pharetra risus eget, laoreet velit. Nam nec ligula diam. Fusce metus dolor, imperdiet non luctus ac, vehicula nec dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vestibulum varius egestas. Nulla nec velit augue.', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:11');
INSERT INTO `yl_post` VALUES (142, 'test', 'Quisque ornare congue dui quis placerat. Sed sed sem malesuada, iaculis elit vitae, fermentum ligula. Aliquam eu erat quis lectus congue venenatis in rutrum velit. Suspendisse ut neque eget ante fermentum interdum in quis odio. Integer nisi tellus, ultricies sed dictum id, viverra a libero. In malesuada maximus vestibulum. Suspendisse pulvinar, leo vel lacinia maximus, leo dui iaculis ante, id commodo quam nunc ut lacus. Aenean tempus lacus nec lorem aliquam, eu cursus lectus gravida. Suspendisse tincidunt, purus id efficitur pellentesque, risus lorem interdum eros, vel porttitor lacus sapien porta ligula.', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:21');
INSERT INTO `yl_post` VALUES (143, 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum placerat ut lacus porta mollis. Mauris ac orci viverra, maximus nisl non, dignissim urna. Nulla vestibulum aliquet ex, nec mattis dolor. Suspendisse potenti. Vivamus ex massa, tempor ut interdum eu, cursus in felis. Curabitur consectetur molestie convallis. Integer velit massa, volutpat ac molestie id, ultricies vitae ipsum. Phasellus consequat massa eu purus elementum, vitae rutrum ante pharetra. Maecenas mauris tortor, rutrum vel dapibus sed, lacinia nec tellus. Integer metus felis, sagittis ac consectetur et, consequat at nisl. Vestibulum ut turpis nec justo congue molestie et vel turpis. Mauris leo nibh, egestas et neque et, venenatis interdum risus. Curabitur ipsum elit, vehicula quis feugiat eget, commodo quis quam. Maecenas sagittis sodales leo sed porttitor. Aenean lacinia quam sed dui finibus ornare.', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:34');
INSERT INTO `yl_post` VALUES (144, 'test', 'Aenean elementum vel ipsum nec dapibus. In varius pretium odio id sollicitudin. Suspendisse aliquet, nunc vel dignissim eleifend, mi lacus lacinia nisl, pellentesque pulvinar ligula augue non augue. Pellentesque vel luctus risus, eu bibendum dui. Duis elementum mauris vitae arcu vestibulum tristique. Pellentesque vitae metus vitae leo sodales maximus at id felis. Vivamus vel libero facilisis, rutrum erat eget, porttitor est.', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:41');
INSERT INTO `yl_post` VALUES (145, 'test', 'Praesent justo felis, eleifend ultrices pellentesque non, sagittis in arcu. Sed lobortis ut arcu sed luctus. Suspendisse dictum enim non dolor accumsan, eu iaculis metus tempor. Maecenas id eleifend turpis, non blandit sem. Morbi nec purus nec magna molestie dignissim. Phasellus condimentum vehicula enim, in tempor diam tincidunt et. Nunc suscipit ac ex non lacinia. Sed tristique a mauris ut mattis. Curabitur at nisi dignissim, pharetra ex nec, egestas eros.', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:04:58');
INSERT INTO `yl_post` VALUES (146, 'test', 'Etiam suscipit diam sed commodo egestas. Phasellus faucibus est tempor eros tincidunt sagittis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget accumsan sem, in pretium mauris. Fusce euismod imperdiet ex, non consequat est ultricies ut. Phasellus placerat, ligula eu lacinia blandit, purus nibh tristique nibh, a consequat velit mauris efficitur justo. Nam eu diam at ex fringilla luctus at nec felis. Aenean justo lectus, rutrum vitae varius a, faucibus sit amet elit. Cras sagittis aliquet lacus, eu commodo purus sollicitudin et. Phasellus ut risus lorem. Vestibulum dolor eros, efficitur eu fringilla ac, congue sit amet justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent quis finibus nisl.', NULL, 1, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:05:06');
INSERT INTO `yl_post` VALUES (147, 'test', 'In eget velit dolor. Pellentesque sit amet risus tincidunt, finibus enim vitae, fringilla purus. Cras rutrum condimentum nulla, vel sollicitudin sapien feugiat vel. Sed libero sapien, varius a laoreet at, tincidunt ut dui. Proin diam risus, pellentesque eget vehicula eu, vehicula in ante. Suspendisse lectus massa, elementum sed sodales nec, cursus eu lacus. Phasellus ac suscipit sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce consequat risus eu urna viverra dapibus. Vestibulum eget ultricies augue.', NULL, 2, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2022-10-23 11:05:23');

-- ----------------------------
-- Table structure for yl_user
-- ----------------------------
DROP TABLE IF EXISTS `yl_user`;
CREATE TABLE `yl_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主鍵',
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '帳號',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密碼',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '信箱',
  `last_pwd_modified_time` datetime(0) NULL DEFAULT NULL COMMENT '上次修改密碼時間',
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '狀態',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '創建人',
  `editor` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `yn_flag` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '有效標示(1:有效,0:無效)',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `modified_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改時間',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yl_user
-- ----------------------------
INSERT INTO `yl_user` VALUES (1, 'admin', '管理員', '2d9bd50e4ebe96ac28db39f2cbe7acfb', 'admin@admin.admin', '2022-11-18 20:05:04', '1', NULL, 'admin', '1', '2022-10-22 20:05:04', '2022-10-23 11:07:46');
INSERT INTO `yl_user` VALUES (2, 'test1', '測試1', '0bb37873231e69ad30ce2914d50916eb', 'test@test.com', '2022-11-18 21:15:14', '1', 'admin', 'admin', '1', '2022-10-22 22:15:14', '2022-10-22 22:30:02');

-- ----------------------------
-- Table structure for yl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `yl_user_role`;
CREATE TABLE `yl_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主鍵',
  `user_id` bigint(20) NOT NULL COMMENT '用戶ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '創建人',
  `editor` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `yn_flag` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '有效標示(1:有效,0:無效)',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '創建時間',
  `modified_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改時間',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yl_user_role
-- ----------------------------
INSERT INTO `yl_user_role` VALUES (1, 1, 1, 'admin', 'admin', '1', '2022-10-22 20:05:04', '2022-10-23 11:08:37');
INSERT INTO `yl_user_role` VALUES (2, 2, 2, 'admin', 'admin', '1', '2022-10-22 20:05:04', '2022-10-23 11:08:42');

SET FOREIGN_KEY_CHECKS = 1;
