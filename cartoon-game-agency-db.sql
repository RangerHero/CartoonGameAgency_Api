/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : cartoon-game-agency-db

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 27/06/2022 21:50:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for browse_log
-- ----------------------------
DROP TABLE IF EXISTS `browse_log`;
CREATE TABLE `browse_log`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0-社区，1-帖子',
  `community_id` int(11) NULL DEFAULT NULL,
  `invitation_id` int(11) NULL DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of browse_log
-- ----------------------------
INSERT INTO `browse_log` VALUES (1, 1, 0, 1, NULL, '2022-05-06 14:18:45');
INSERT INTO `browse_log` VALUES (2, 1, 0, 1, NULL, '2022-05-20 14:18:45');
INSERT INTO `browse_log` VALUES (3, 1, 0, 2, NULL, '2022-05-21 14:18:45');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitation_id` int(11) NOT NULL,
  `cin_id` int(11) NULL DEFAULT NULL COMMENT '在哪一个评论下',
  `cfor_id` int(11) NULL DEFAULT NULL COMMENT '上级评论',
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 6, NULL, NULL, 5, '2022-06-08 01:35:45', '?');
INSERT INTO `comment` VALUES (2, 20, NULL, NULL, 1, '2022-06-27 21:42:01', '圣痕简介\r\n「塞尚」套装可强化团队必杀技的物理输出能力，对敌人造成全伤害易伤效果。携带者自身造成的流血积蓄值以及流血伤害都将获得较大提升。「繁星·绘世之卷」携带时，通过二件套效果可进一步延长全伤害易伤持续时间，自身的流血积蓄能力与「塞尚」套装契合度较高。');
INSERT INTO `comment` VALUES (3, 20, NULL, NULL, 1, '2022-06-08 07:36:37', '圣痕详解\r\n*以下技能描述均为50级数据\r\n「塞尚（上）」\r\n5★ 生命367 攻击116 防御66\r\n【风景：乡间小屋】\r\n物理伤害提高15.0%，全队角色必杀技命中时及之后短时间内，必杀技造成的物理伤害提高27.0%，触发间隔10秒（唯一生效）\r\n');
INSERT INTO `comment` VALUES (4, 20, NULL, NULL, 1, '2022-06-08 07:36:43', '解析：无条件提升物理伤害，后一个技能对于拥有高爆发必杀技的物理角色有较强的增益，例如「识之律者」、「天元骑英」，黑渊白花的主动技圣枪绽放也可获得加成。「繁星·绘世之卷」自身必杀技的伤害也同样不俗，可获得较大收益。');
INSERT INTO `comment` VALUES (5, 20, 32, 32, 1, '2022-06-08 07:41:52', '可以的');
INSERT INTO `comment` VALUES (6, 22, NULL, NULL, 8, '2022-06-08 09:06:52', '<p>海蜇头真好吃</p>');
INSERT INTO `comment` VALUES (7, 22, NULL, NULL, 8, '2022-06-08 09:07:09', '<h3><a target=\"_blank\">决战！平安京“百绘罗衣”式神皮肤设计大赛</a>&nbsp;辉夜姬皮肤——夏之风【海上救援队】 “报——！前方有人溺水！瞭望台兔兔如是喊道。 “在哪里在哪里？”辉夜姬船长一时激动竟忘了手里拿的望远镜。 “锁定目标，前方西行三百七十米！” “冲鸭！”</h3>');
INSERT INTO `comment` VALUES (8, 23, NULL, NULL, 8, '2022-06-08 09:10:27', '<h2><strong>感谢以上攻略大佬为我们带来的精彩攻略</strong></h2><p><strong>以及所有为《车站指南》付出的斑竹组小伙伴</strong></p><p><strong>感谢大家的辛勤付出！</strong></p>');
INSERT INTO `comment` VALUES (9, 24, NULL, NULL, 8, '2022-06-08 09:11:36', '<p>CV：</p><p>夜兰——徐慧</p><p>烟绯——苏子芜</p><p>浮舍——淦子齐</p><p>魈——kinsen</p><p>钟离——彭博</p><p>荒泷一斗——刘照坤</p><p>久岐忍——杨凝</p><p>空——鹿喑</p><p>派蒙——多多</p>');
INSERT INTO `comment` VALUES (10, 24, NULL, NULL, 8, '2022-06-08 09:12:00', '<p>钟离：<span style=\"font-size: 1rem;\">:此程或有风险，但你执意要去。。。。。。我便偷偷跟着</span></p>');
INSERT INTO `comment` VALUES (11, 25, NULL, NULL, 8, '2022-06-08 09:12:48', '<p>CV：</p><p>伯阳——陈昊天</p><p>浮舍——淦子齐</p><p>应达——陈睿婕</p><p>伐难——秦文静</p><p>弥怒——徐翔</p><p>金鹏——kinsen</p>');
INSERT INTO `comment` VALUES (12, 25, NULL, NULL, 8, '2022-06-08 09:13:52', '<p>刀魈面吃饱了！！！！！</p>');
INSERT INTO `comment` VALUES (13, 26, NULL, NULL, 8, '2022-06-08 09:21:29', '<p>依据新艾利都城市管理部门的要求，我们将为所有意欲进入新艾利都的朋友派发最新的城市导览，请查收！</p>');
INSERT INTO `comment` VALUES (14, 26, NULL, NULL, 8, '2022-06-08 09:22:29', '<p>注：该导览的内容仅代表制作方的立场。</p><p>宣传非常吸引人呢，不过……最后的绿洲，繁荣的魔法……但代价，又是什么呢？</p>');
INSERT INTO `comment` VALUES (15, 21, NULL, NULL, 9, '2022-06-10 07:14:16', '<p><br></p>');
INSERT INTO `comment` VALUES (16, 21, 45, 45, 9, '2022-06-10 07:14:27', '666666');
INSERT INTO `comment` VALUES (17, 20, 34, 34, 8, '2022-06-18 14:03:16', '666666666');
INSERT INTO `comment` VALUES (18, 28, NULL, NULL, 8, '2022-06-19 08:42:17', '<p>adas</p>');
INSERT INTO `comment` VALUES (19, 28, 48, 48, 8, '2022-06-19 08:42:22', 'adsa');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'logo图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES (1, '崩坏学院2', '少女们超越「命运」的决意之歌', 'http://localhost:8080/images/community/bh2-logo.png');
INSERT INTO `community` VALUES (2, '崩坏3', '为世界上所有的美好而战', 'http://localhost:8080/images/community/bh3-logo.png');
INSERT INTO `community` VALUES (3, '原神', '米哈游开放世界冒险RPG', 'http://localhost:8080/images/community/ys-logo.png');
INSERT INTO `community` VALUES (4, '未定事件簿', '你是我心动的唯一真', 'http://localhost:8080/images/community/wd-logo.png');
INSERT INTO `community` VALUES (5, '崩坏：星穹铁道', '愿此行，终抵群星', 'http://localhost:8080/images/community/sr-logo.png');
INSERT INTO `community` VALUES (6, '绝区零', '世界全剧终，欢迎来到新艾利都！', 'http://localhost:8080/images/community/zzz-logo.png');
INSERT INTO `community` VALUES (7, '阴阳师', '彼世之花，旧梦重归', 'http://localhost:8080/images/community/yys-logo.png');
INSERT INTO `community` VALUES (8, '光遇', '光是遇见，就很美好', 'http://localhost:8080/images/community/gy-logo.png');

-- ----------------------------
-- Table structure for invitation
-- ----------------------------
DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES (1, 2, 1, '【攻略】爱酱的英魂殿丨「塞尚」 套装', '2022-06-08 07:35:23', '欢迎收看《爱酱的英魂殿》栏目，爱酱会在这里为舰长介绍圣痕的使用心得及搭配建议！\r\n今天为舰长介绍的是——「塞尚」套装。');
INSERT INTO `invitation` VALUES (2, 2, 1, '关于星锚有了神之键这件事', '2022-06-08 07:40:09', '星锚酣畅淋漓的打斗，跟不上现在的时停环境，好可惜啊！\r\n如果，星锚也有一把类似涤罪七雷这样的武器，是不是能再次起飞？');
INSERT INTO `invitation` VALUES (3, 7, 8, '大触快报：平安京风尚 vol.05', '2022-06-08 09:06:18', '平安京这周都在流行些什么呢？一切尽在本周的[大触快报]，点击翻阅，应有尽有~');
INSERT INTO `invitation` VALUES (4, 5, 8, '【车站指南】漫游测试攻略合集楼—游戏机制与基础知识 持续更新', '2022-06-08 09:10:06', '“蹦”一只小可爱又蹦出来惹……\r\n竹竹子：开拓者们大家好呀~现在又到了竹竹子出马的时间惹（因为被无良版主推出来营业强颜欢笑）\r\n竹竹子：咳，这里是竹竹子为了方便开拓者们（云）游玩特地准备的攻略合集（导航）楼，希望各位开拓者们可以有一个愉快的（云）开拓之旅~');
INSERT INTO `invitation` VALUES (5, 3, 8, '《原神》剧情PV-「惟余旧忆」', '2022-06-08 09:12:35', '转危为安后，众人纷纷离去，或心生幽思，或得偿所愿。\r\n惟有魈邀你一叙，向你讲述了一段夜叉的回忆…');
INSERT INTO `invitation` VALUES (6, 6, 8, '转发：新艾利都入住指南 | 城市生活篇', '2022-06-08 09:21:16', '转发：官方资讯\r\n亲爱的准市民朋友，相信您已经了解了「空洞」的危险性，接下来该聊一聊新艾利都本身了！\r\n因为掌握了与「空洞」共生的技术，「新艾利都」被誉为最后的「绿洲」，「以太资源」成为了其繁荣的魔法，城市各处盘踞着错综复杂的势力。\r\n这座危险喧嚣又充满活力的城市，吸引着形形色色的人......');
INSERT INTO `invitation` VALUES (7, 2, 8, '哪里都是你', '2022-06-18 20:51:40', 'qqqqqqqqqqq');
INSERT INTO `invitation` VALUES (8, 2, 8, 'DDD', '2022-06-19 08:41:59', 'zzzzz');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-未读，1-已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 1, 23, 1);
INSERT INTO `notice` VALUES (2, 1, 24, 1);
INSERT INTO `notice` VALUES (3, 1, 25, 0);
INSERT INTO `notice` VALUES (4, 1, 26, 0);
INSERT INTO `notice` VALUES (5, 1, 27, 0);
INSERT INTO `notice` VALUES (6, 1, 28, 0);
INSERT INTO `notice` VALUES (7, 1, 29, 0);
INSERT INTO `notice` VALUES (8, 1, 30, 0);
INSERT INTO `notice` VALUES (9, 1, 31, 0);
INSERT INTO `notice` VALUES (10, 1, 32, 0);
INSERT INTO `notice` VALUES (11, 1, 33, 0);
INSERT INTO `notice` VALUES (12, 1, 34, 0);
INSERT INTO `notice` VALUES (13, 1, 35, 0);
INSERT INTO `notice` VALUES (14, 8, 36, 1);
INSERT INTO `notice` VALUES (15, 8, 37, 1);
INSERT INTO `notice` VALUES (16, 8, 38, 1);
INSERT INTO `notice` VALUES (17, 8, 39, 1);
INSERT INTO `notice` VALUES (18, 8, 40, 1);
INSERT INTO `notice` VALUES (19, 8, 41, 1);
INSERT INTO `notice` VALUES (20, 8, 42, 1);
INSERT INTO `notice` VALUES (21, 8, 43, 1);
INSERT INTO `notice` VALUES (22, 8, 44, 1);
INSERT INTO `notice` VALUES (23, 1, 45, 0);
INSERT INTO `notice` VALUES (24, 1, 46, 0);
INSERT INTO `notice` VALUES (25, 1, 47, 0);
INSERT INTO `notice` VALUES (26, 8, 48, 0);
INSERT INTO `notice` VALUES (27, 8, 49, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel_number` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456', '2022-06-05', 'kiddsun@foxmail.com', '18780078460', 'http://localhost:8080/images/user/avatar-kidd.jpg');
INSERT INTO `user` VALUES (2, '123', '123', '2021-06-09', 'com', '1234563', 'http://localhost:8080/images/user/avatar-kidd.jpg');
INSERT INTO `user` VALUES (3, 'kidd', '123456', '2019-02-06', 'adsasdas', '1345643', 'http://localhost:8080/images/user/avatar-kidd.jpg');
INSERT INTO `user` VALUES (4, '8888', '888888', '2021-12-29', 'com', '78956', 'http://localhost:8080/images/user/avatar-kidd.jpg');

SET FOREIGN_KEY_CHECKS = 1;
