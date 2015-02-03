-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-11-21 03:54:34
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `ts_anti_email`, `ts_anti_ip`, `ts_anti_user`, `ts_anti_word`, `ts_article`, `ts_article_cate`, `ts_article_comment`, `ts_article_options`, `ts_article_recommend`, `ts_attach`, `ts_attach_album`, `ts_attach_options`, `ts_cache`, `ts_editor`, `ts_feed`, `ts_feed_options`, `ts_group`, `ts_group_album`, `ts_group_album_topic`, `ts_group_cate`, `ts_group_options`, `ts_group_topic`, `ts_group_topic_add`, `ts_group_topic_collect`, `ts_group_topic_comment`, `ts_group_topic_edit`, `ts_group_topic_type`, `ts_group_user`, `ts_group_user_isaudit`, `ts_home_info`, `ts_location`, `ts_mail_options`, `ts_message`, `ts_photo`, `ts_photo_album`, `ts_photo_comment`, `ts_photo_options`, `ts_redeem_cate`, `ts_redeem_goods`, `ts_redeem_options`, `ts_redeem_user`, `ts_session`, `ts_slide`, `ts_system_options`, `ts_tag`, `ts_tag_article_index`, `ts_tag_group_index`, `ts_tag_photo_index`, `ts_tag_topic_index`, `ts_tag_user_index`, `ts_task`, `ts_task_user`, `ts_user`, `ts_user_follow`, `ts_user_gb`, `ts_user_group`, `ts_user_info`, `ts_user_invites`, `ts_user_open`, `ts_user_options`, `ts_user_role`, `ts_user_score`, `ts_user_score_log`, `ts_weibo`, `ts_weibo_comment`, `ts_weibo_options`;

-- --------------------------------------------------------

--
-- 表的结构 `ts_anti_email`
--

CREATE TABLE IF NOT EXISTS `ts_anti_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `email` char(32) NOT NULL DEFAULT '' COMMENT 'Email',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='过滤Email' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_anti_ip`
--

CREATE TABLE IF NOT EXISTS `ts_anti_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `ip` char(32) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='垃圾IP' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_anti_user`
--

CREATE TABLE IF NOT EXISTS `ts_anti_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='过滤用户' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_anti_word`
--

CREATE TABLE IF NOT EXISTS `ts_anti_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` char(32) NOT NULL DEFAULT '' COMMENT '垃圾词',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='垃圾词' AUTO_INCREMENT=447 ;

--
-- 转存表中的数据 `ts_anti_word`
--

INSERT INTO `ts_anti_word` (`id`, `word`, `addtime`) VALUES
(1, '国民党', '2012-08-28 15:23:10'),
(2, '邓小平', '2012-08-28 15:23:10'),
(3, '江泽民', '2012-08-28 15:23:10'),
(4, '胡锦涛', '2012-08-28 15:23:10'),
(5, '共产党', '2012-08-28 15:23:10'),
(6, '毛主席', '2012-08-28 15:23:10'),
(7, '毛泽东', '2012-08-28 15:23:10'),
(8, '中共', '2012-08-28 15:23:10'),
(9, '中国共产党', '2012-08-28 15:23:10'),
(10, '枪', '2012-08-28 15:23:10'),
(11, '弹药', '2012-08-28 15:23:10'),
(12, '枪支', '2012-08-28 15:23:10'),
(13, '氣槍', '2012-08-28 15:23:10'),
(14, '猎槍', '2012-08-28 15:23:10'),
(15, '来福', '2012-08-28 15:23:10'),
(16, '雷鸣登', '2012-08-28 15:23:10'),
(17, '五连发', '2012-08-28 15:23:10'),
(18, '平式双管', '2012-08-28 15:23:10'),
(19, '立式双管', '2012-08-28 15:23:10'),
(20, '麻醉', '2012-08-28 15:23:10'),
(21, '军用', '2012-08-28 15:23:10'),
(22, '进口', '2012-08-28 15:23:10'),
(23, '录入员', '2012-08-28 15:23:10'),
(24, '招聘兼职', '2012-08-28 15:23:10'),
(25, '1332566258', '2012-08-28 15:23:10'),
(26, '直流电阻测试仪', '2012-08-28 15:23:10'),
(27, '继电保护测试仪', '2012-08-28 15:23:10'),
(28, '串联谐振', '2012-08-28 15:23:10'),
(29, '分压器', '2012-08-28 15:23:10'),
(30, 'www.hbyhdl.com', '2012-08-28 15:23:10'),
(31, 'www.bd-seo.net', '2012-08-28 15:23:10'),
(32, '武汉网站优化', '2012-08-28 15:23:10'),
(33, '武汉网络推广', '2012-08-28 15:23:10'),
(34, '武汉网络营销', '2012-08-28 15:23:10'),
(35, '武汉SEO', '2012-08-28 15:23:10'),
(36, '大脚骨矫正器', '2012-08-28 15:23:10'),
(37, '379056061', '2012-08-28 15:23:10'),
(38, '拇外翻', '2012-08-28 15:23:10'),
(39, '小姐', '2012-08-28 15:23:10'),
(40, '习近平', '2012-08-28 15:23:10'),
(41, '王立军', '2012-08-28 15:23:10'),
(42, '两会', '2012-08-28 15:23:10'),
(43, '薄熙来', '2012-08-28 15:23:10'),
(44, '谷开来', '2012-08-28 15:23:10'),
(45, '唱红打黑', '2012-08-28 15:23:10'),
(46, '听党指挥', '2012-08-28 15:23:10'),
(47, '薄一波', '2012-08-28 15:23:10'),
(48, '李长春', '2012-08-28 15:23:10'),
(49, '周永康', '2012-08-28 15:23:10'),
(50, '政府', '2012-08-28 15:23:10'),
(51, 'zhenfu', '2012-08-28 15:23:10'),
(52, '傻逼', '2012-08-28 15:23:10'),
(53, 'zhengfu', '2012-08-28 15:23:10'),
(54, '他杀', '2012-08-28 15:23:10'),
(55, '枪杀', '2012-08-28 15:23:10'),
(56, '谋杀', '2012-08-28 15:23:10'),
(57, '起义', '2012-08-28 15:23:10'),
(58, '就义', '2012-08-28 15:23:10'),
(59, '法轮功', '2012-08-28 15:23:10'),
(60, '邪教', '2012-08-28 15:23:10'),
(61, 'GCD', '2012-08-28 15:23:10'),
(62, 'hege123', '2012-08-28 15:23:10'),
(63, '菲律宾', '2012-08-28 15:23:10'),
(64, '薄熙莱', '2012-08-28 15:23:10'),
(65, '小姐上门', '2012-08-28 15:23:10'),
(66, '一夜情', '2012-08-28 15:23:10'),
(67, '性爱', '2012-08-28 15:23:10'),
(68, '性息', '2012-08-28 15:23:10'),
(69, '武汉婚纱摄影', '2012-08-28 15:23:10'),
(70, '武汉婚纱照', '2012-08-28 15:23:10'),
(71, '武汉艺术照', '2012-08-28 15:23:10'),
(72, '武汉婚纱摄影工作室', '2012-08-28 15:23:10'),
(73, 'www.yilongphoto.com', '2012-08-28 15:23:10'),
(74, 'www.windyx.com', '2012-08-28 15:23:10'),
(75, 'www.ruile.net', '2012-08-28 15:23:10'),
(76, 'www.wo-niu.com.cn', '2012-08-28 15:23:10'),
(77, 'www.wlzb518.com', '2012-08-28 15:23:10'),
(78, 'www.wufangzhai-zongzi.com', '2012-08-28 15:23:10'),
(79, 'www.hege123.com', '2012-08-28 15:23:10'),
(80, '按摩', '2012-08-28 15:23:10'),
(81, '按摩服务', '2012-08-28 15:23:10'),
(82, 'cwsurf.de', '2012-08-28 15:23:10'),
(83, '出台', '2012-08-28 15:23:10'),
(84, '包夜', '2012-08-28 15:23:10'),
(85, 'www.maizongzi.com', '2012-08-28 15:23:10'),
(86, '代刷', '2012-08-28 15:23:10'),
(87, '微笑网络', '2012-08-28 15:23:10'),
(88, '刷信誉', '2012-08-28 15:23:10'),
(89, '53530.cn', '2012-08-28 15:23:10'),
(90, 'waimaodao.com', '2012-08-28 15:23:10'),
(91, '小 妹', '2012-08-28 15:23:10'),
(92, '上 门 服 务', '2012-08-28 15:23:10'),
(93, '小 妹 上 门', '2012-08-28 15:23:10'),
(94, '王哥', '2012-08-28 15:23:10'),
(95, '花姐', '2012-08-28 15:23:10'),
(96, '学妹', '2012-08-28 15:23:10'),
(97, '姓ˊ感ˊ少ˊ妇', '2012-08-28 15:23:10'),
(98, '丰ˊ韵ˊ熟ˊ妇', '2012-08-28 15:23:10'),
(99, '丽人岛休闲会所', '2012-08-28 15:23:10'),
(100, '越ˊ南ˊ妹', '2012-08-28 15:23:10'),
(101, '77057', '2012-08-28 15:23:10'),
(102, '饥ˊ渴ˊ熟ˊ女', '2012-08-28 15:23:10'),
(103, '饥渴熟女', '2012-08-28 15:23:10'),
(104, '性感人妻', '2012-08-28 15:23:10'),
(105, '姓感少妇', '2012-08-28 15:23:10'),
(106, '51gouku.com', '2012-08-28 15:23:10'),
(107, '51够酷', '2012-08-28 15:23:10'),
(108, '585.cc', '2012-08-28 15:23:10'),
(109, '腋臭', '2012-08-28 15:23:10'),
(110, '狐臭', '2012-08-28 15:23:10'),
(111, '兼职学生妹', '2012-08-28 15:23:10'),
(112, '湘湘', '2012-08-28 15:23:10'),
(113, '小唐', '2012-08-28 15:23:10'),
(114, '学生妹', '2012-08-28 15:23:10'),
(115, 'wufangzhai-zongzi.com', '2012-08-28 15:23:10'),
(116, '冰毒', '2012-08-28 15:23:10'),
(117, '海洛因', '2012-08-28 15:23:10'),
(118, '毒品', '2012-08-28 15:23:10'),
(119, '吸毒', '2012-08-28 15:23:10'),
(120, '66dao.com', '2012-08-28 15:23:10'),
(121, '办证', '2012-08-28 15:23:10'),
(122, '赵小姐', '2012-08-28 15:23:10'),
(123, 'douyapai.com', '2012-08-28 15:23:10'),
(124, 'ntxz.cc', '2012-08-28 15:23:10'),
(125, '豆芽派', '2012-08-28 15:23:10'),
(126, 'tdjyedu', '2012-08-28 15:23:10'),
(127, '自考招生', '2012-08-28 15:23:10'),
(128, 'sinoest', '2012-08-28 15:23:10'),
(129, '身份證买卖', '2012-08-28 15:23:10'),
(130, '身份证买卖', '2012-08-28 15:23:10'),
(131, '895316992', '2012-08-28 15:23:10'),
(132, '爱游中国', '2012-08-28 15:23:10'),
(133, '上門服务', '2012-08-28 15:23:10'),
(134, '客人隐私', '2012-08-28 15:23:10'),
(135, 'suoniao.com', '2012-08-28 15:23:10'),
(136, '男科医院', '2012-08-28 15:23:10'),
(137, '男性医院', '2012-08-28 15:23:10'),
(138, '包皮', '2012-08-28 15:23:10'),
(139, '包茎', '2012-08-28 15:23:10'),
(140, '男科', '2012-08-28 15:23:10'),
(141, '做爱', '2012-08-28 15:23:10'),
(142, '小妹上门', '2012-08-28 15:23:10'),
(143, '小妹服务', '2012-08-28 15:23:10'),
(144, 'sm', '2012-08-28 15:23:10'),
(145, 'sm女王', '2012-08-28 15:23:10'),
(146, '成熟少妇', '2012-08-28 15:23:10'),
(147, '包吹', '2012-08-28 15:23:10'),
(148, '极品校花', '2012-08-28 15:23:10'),
(149, 'sinoest.com', '2012-08-28 15:23:10'),
(150, '尖锐湿疣', '2012-08-28 15:23:10'),
(151, '耳鼻喉医院', '2012-08-28 15:23:10'),
(152, '过敏性鼻炎', '2012-08-28 15:23:10'),
(153, 'ibuonline.com', '2012-08-28 15:23:10'),
(154, '福彩', '2012-08-28 15:23:10'),
(155, '福彩3d', '2012-08-28 15:23:10'),
(156, 'totutu.com', '2012-08-28 15:23:10'),
(157, '去黑头', '2012-08-28 15:23:10'),
(158, '东方软峰', '2012-08-28 15:23:10'),
(159, 'yileee.com', '2012-08-28 15:23:10'),
(160, '新特药', '2012-08-28 15:23:10'),
(161, 'fgt120.com', '2012-08-28 15:23:10'),
(162, '99spcar.com', '2012-08-28 15:23:10'),
(163, 'meiti520.com', '2012-08-28 15:23:10'),
(164, 'bbswuhan.com', '2012-08-28 15:23:10'),
(165, '18611314446', '2012-11-08 22:51:12'),
(166, '丰韵熟妇', '2012-11-08 22:51:12'),
(167, '越南妹', '2012-11-08 22:51:12'),
(168, 'maizongzi.com', '2012-11-08 22:51:12'),
(169, '上门服务', '2012-11-08 22:51:12'),
(170, '小妹', '2012-11-08 22:51:12'),
(171, 'windyx.com', '2012-11-08 22:51:12'),
(172, 'wlzb518.com', '2012-11-08 22:51:12'),
(173, 'wo-niu.com.cn', '2012-11-08 22:51:12'),
(174, 'ruile.net', '2012-11-08 22:51:12'),
(175, 'bd-seo.net', '2012-11-08 22:51:12'),
(176, 'hbyhdl.com', '2012-11-08 22:51:12'),
(177, 'yilongphoto.com', '2012-11-08 22:51:12'),
(178, 'hege123.com', '2012-11-08 22:51:12'),
(179, '發票', '2012-11-08 22:51:13'),
(180, '开票电', '2012-11-08 22:51:13'),
(181, '开票', '2012-11-08 22:51:13'),
(182, '发票', '2012-11-08 22:51:13'),
(183, '代开发票', '2012-11-08 22:51:13'),
(184, '私募', '2012-11-08 22:51:13'),
(185, '走私车', '2012-11-08 22:51:13'),
(186, '资本运作', '2012-11-08 22:51:13'),
(187, '真人视频', '2012-11-08 22:51:13'),
(188, '造价通', '2012-11-08 22:51:13'),
(189, '移民网', '2012-11-08 22:51:13'),
(190, '药商', '2012-11-08 22:51:13'),
(191, '亚布力', '2012-11-08 22:51:13'),
(192, '雅思', '2012-11-08 22:51:13'),
(193, '新皇宝', '2012-11-08 22:51:13'),
(194, '校花聊天室', '2012-11-08 22:51:13'),
(195, '消费投资合法', '2012-11-08 22:51:13'),
(196, '西安卖肾', '2012-11-08 22:51:13'),
(197, '同城女', '2012-11-08 22:51:13'),
(198, '丝袜交友', '2012-11-08 22:51:13'),
(199, '兼职服务', '2012-11-08 22:51:13'),
(200, '草榴社区', '2012-11-08 22:51:13'),
(201, '搬家公司', '2012-11-08 22:51:13'),
(202, '代開', '2012-11-08 22:51:13'),
(203, '代开', '2012-11-08 22:51:13'),
(204, '醱票', '2012-11-08 22:51:13'),
(205, '開瞟', '2012-11-08 22:51:13'),
(206, '瞟据', '2012-11-08 22:51:13'),
(207, '瞟务', '2012-11-08 22:51:13'),
(208, '酒店住宿', '2012-11-08 22:51:13'),
(209, '13826544598', '2012-11-08 22:51:13'),
(210, '2645989872', '2012-11-08 22:51:13'),
(211, '18312006833', '2012-11-08 22:51:13'),
(212, '费发', '2012-11-08 22:51:13'),
(213, '314721888', '2012-11-08 22:51:13'),
(214, '办理假证件', '2012-11-08 22:51:13'),
(215, '394057341', '2012-11-08 22:51:13'),
(216, '费發', '2012-11-08 22:51:13'),
(217, '13533391062', '2012-11-08 22:51:13'),
(218, '13544261868', '2012-11-08 22:51:13'),
(219, '13828442144', '2012-11-08 22:51:13'),
(220, '13728999976', '2012-11-08 22:51:13'),
(221, '13662622538', '2012-11-08 22:51:13'),
(222, '897839088', '2012-11-08 22:51:13'),
(223, 'vpswolf.com', '2012-11-08 22:51:13'),
(224, 'vanshen.com', '2012-11-08 22:51:13'),
(225, 'yapai.cc', '2012-11-08 22:51:13'),
(226, 'daqiaogw.com', '2012-11-08 22:51:13'),
(227, 'hfkszdm.com', '2012-11-08 22:51:13'),
(228, 'jinqiaohc.com', '2012-11-08 22:51:13'),
(229, '0553rl.com', '2012-11-08 22:51:13'),
(230, 'ln580.cn', '2012-11-08 22:51:13'),
(231, 'qifanweb.com', '2012-11-08 22:51:13'),
(232, 'qifanseo.com', '2012-11-08 22:51:13'),
(233, 'qifanit.com', '2012-11-08 22:51:13'),
(234, '028zfyy.com', '2012-11-08 22:51:13'),
(235, 'aitecentury.com', '2012-11-08 22:51:13'),
(236, 'aite55.com', '2012-11-08 22:51:13'),
(237, 'shentongkang.com', '2012-11-08 22:51:13'),
(238, 'dss.so', '2012-11-08 22:51:13'),
(239, '3ja.net', '2012-11-08 22:51:13'),
(240, 'sin55.com', '2012-11-08 22:51:13'),
(241, '2008ns.com', '2012-11-08 22:51:13'),
(242, '203529769', '2012-11-08 22:51:13'),
(243, 'binhaijincheng.com', '2012-11-08 22:51:13'),
(244, '美女服务', '2012-11-08 22:51:13'),
(245, '18611325651', '2012-11-08 22:51:13'),
(246, 'caihua.cc', '2012-11-08 22:51:13'),
(247, '51mm.com.cn', '2012-11-08 22:51:13'),
(248, 'tbwtmall.net', '2012-11-08 22:51:13'),
(249, 'lubaolin.com', '2012-11-08 22:51:13'),
(250, '糖尿病治疗仪', '2012-11-08 22:51:13'),
(251, 'tangniaobingok.com', '2012-11-08 22:51:13'),
(252, '糖尿病', '2012-11-08 22:51:13'),
(253, 'chtip.org', '2012-11-08 22:51:13'),
(254, '56156.com', '2012-11-08 22:51:13'),
(255, '07uuu.com', '2012-11-08 22:51:13'),
(256, 'haoyouren.com', '2012-11-08 22:51:13'),
(257, '便秘', '2012-11-08 22:51:13'),
(258, 'haoyouren', '2012-11-08 22:51:13'),
(259, 'xxcun.com', '2012-11-08 22:51:13'),
(260, 'iisp.com', '2012-11-08 22:51:13'),
(261, 'gmwhy.com', '2012-11-08 22:51:13'),
(262, 'feelyz.com', '2012-11-08 22:51:13'),
(263, '369in.com', '2012-11-08 22:51:13'),
(264, 'cdtarena.com', '2012-11-08 22:51:13'),
(265, '肝硬化', '2012-11-08 22:51:13'),
(266, 'youbian.com', '2012-11-08 22:51:13'),
(267, '162net.com', '2012-11-08 22:51:13'),
(268, 'comnetcnn.com', '2012-11-08 22:51:13'),
(269, '2233.cn', '2012-11-08 22:51:13'),
(270, '鸡巴', '2012-11-08 22:51:13'),
(271, '119tx.com', '2012-11-08 22:51:13'),
(272, '0377521.com', '2012-11-08 22:51:13'),
(273, '028zuanji.com', '2013-07-27 14:54:52'),
(274, 'dzwan.net', '2013-07-27 14:54:52'),
(275, 'dodomo.net', '2013-07-27 14:54:52'),
(276, 'sina.com', '2013-07-27 14:54:52'),
(277, 'fobshanghai.com', '2013-07-27 14:54:52'),
(278, '芬恩', '2013-07-27 14:54:52'),
(279, '2659477099', '2013-07-27 14:54:52'),
(280, '58692026', '2013-07-27 14:54:52'),
(281, '65111117', '2013-07-27 14:54:52'),
(282, '英文SEO', '2013-07-27 14:54:52'),
(283, '仿牌SEO', '2013-07-27 14:54:52'),
(284, '外贸SEO', '2013-07-27 14:54:52'),
(285, '1550957342', '2013-07-27 14:54:52'),
(286, 'pingan.com', '2013-07-27 14:54:52'),
(287, '痔疮', '2013-07-27 14:54:52'),
(288, '86889299', '2013-07-27 14:54:52'),
(289, '800002356', '2013-07-27 14:54:52'),
(290, 'cqddgc.cn', '2013-07-27 14:54:52'),
(291, '股票', '2013-07-27 14:54:52'),
(292, 'nyimei.com', '2013-07-27 14:54:52'),
(293, '天衣坊', '2013-07-27 14:54:52'),
(294, '宏天景秀', '2013-07-27 14:54:52'),
(295, 'sugon.com', '2013-07-27 14:54:52'),
(296, '微博008', '2013-07-27 14:54:52'),
(297, 'qqbct.com', '2013-07-27 14:54:52'),
(298, 'qqsuncity.com', '2013-07-27 14:54:52'),
(299, '99txzq.com', '2013-07-27 14:54:52'),
(300, '88txzq.com', '2013-07-27 14:54:52'),
(301, 'sdebh.cn', '2013-07-27 14:54:52'),
(302, '9501317248463', '2013-07-27 14:54:52'),
(303, '248463', '2013-07-27 14:54:52'),
(304, '飞机票', '2013-07-27 14:54:52'),
(305, '网银', '2013-07-27 14:54:52'),
(306, '火车票', '2013-07-27 14:54:52'),
(307, '无卡存款', '2013-07-27 14:54:52'),
(308, '66667959', '2013-07-27 14:54:52'),
(309, '订票', '2013-07-27 14:54:52'),
(310, '火车站', '2013-07-27 14:54:52'),
(311, '57071215', '2013-07-27 14:54:52'),
(312, '889584017', '2013-07-27 14:54:52'),
(313, '获奖查询', '2013-07-27 14:54:52'),
(314, '穫獎查詢', '2013-07-27 14:54:52'),
(315, '82425', '2013-07-27 14:54:52'),
(316, '5782', '2013-07-27 14:54:52'),
(317, '中獎', '2013-07-27 14:54:52'),
(318, '熱線', '2013-07-27 14:54:52'),
(319, '1931033', '2013-07-27 14:54:52'),
(320, '代售点', '2013-07-27 14:54:52'),
(321, 'w1a2.icoc.cc', '2013-07-27 14:54:52'),
(322, '1317241334', '2013-07-27 14:54:52'),
(323, '车票改签', '2013-07-27 14:54:52'),
(324, '嘿咻', '2013-07-27 14:54:52'),
(325, '加盟', '2013-07-27 14:54:52'),
(326, '湿疹', '2013-07-27 14:54:52'),
(327, '塑胶', '2013-07-27 14:54:52'),
(328, '1817001212', '2013-07-27 14:54:52'),
(329, '4000318885', '2013-07-27 14:54:52'),
(330, '800007699', '2013-07-27 14:54:52'),
(331, '4008521119', '2013-07-27 14:54:52'),
(332, '花月婷', '2013-07-27 14:54:52'),
(333, 'xpjin.com', '2013-07-27 14:54:52'),
(334, '新葡京娱乐城', '2013-07-27 14:54:52'),
(335, 'eshibo68.com', '2013-07-27 14:54:52'),
(336, 'tt5201314.com', '2013-07-27 14:54:52'),
(337, 'TT娱乐城', '2013-07-27 14:54:52'),
(338, '娱乐城', '2013-07-27 14:54:52'),
(339, 'qinzi5.com', '2013-07-27 14:54:52'),
(340, '21202', '2013-07-27 14:54:52'),
(341, '火車票', '2013-07-27 14:54:52'),
(342, '089', '2013-07-27 14:54:52'),
(343, '8369', '2013-07-27 14:54:52'),
(344, '退票', '2013-07-27 14:54:52'),
(345, '改簽', '2013-07-27 14:54:52'),
(346, '預訂', '2013-07-27 14:54:52'),
(347, 'ruijintc.com', '2013-07-27 14:54:52'),
(348, 'ruijintc.net', '2013-07-27 14:54:52'),
(349, '草榴', '2013-07-27 14:54:52'),
(350, 'caoliu', '2013-07-27 14:54:52'),
(351, '5177game.com', '2013-07-27 14:54:52'),
(352, 'cao', '2013-07-27 14:54:52'),
(353, 'wgb320330.com', '2013-07-27 14:54:52'),
(354, '公關', '2013-07-27 14:54:52'),
(355, '公关', '2013-07-27 14:54:52'),
(356, '夜总会', '2013-07-27 14:54:52'),
(357, '兼职', '2013-07-27 14:54:52'),
(358, '同性恋', '2013-07-27 14:54:52'),
(359, '丝足', '2013-07-27 14:54:52'),
(360, '同志', '2013-07-27 14:54:52'),
(361, '女王', '2013-07-27 14:54:52'),
(362, '鸭子', '2013-07-27 14:54:52'),
(363, '调教', '2013-07-27 14:54:52'),
(364, 'KTV', '2013-07-27 14:54:52'),
(365, '夜场', '2013-07-27 14:54:52'),
(366, '娱乐场', '2013-07-27 14:54:52'),
(367, '陪护', '2013-07-27 14:54:52'),
(368, '情感陪护', '2013-07-27 14:54:52'),
(369, '公主', '2013-07-27 14:54:52'),
(370, 'LES', '2013-07-27 14:54:52'),
(371, 'GAY', '2013-07-27 14:54:52'),
(372, '兼職', '2013-07-27 14:54:52'),
(373, '18611102232', '2013-07-27 14:54:52'),
(374, '男妓', '2013-07-27 14:54:52'),
(375, '妓男', '2013-07-27 14:54:52'),
(376, '女妓', '2013-07-27 14:54:52'),
(377, 'cs12388.com', '2013-07-27 14:54:52'),
(378, 'liketuan.com', '2013-07-27 14:54:52'),
(379, 'xiunvfang.com', '2013-07-27 14:54:52'),
(380, 'tmall.com', '2013-07-27 14:54:52'),
(381, 'rekuai.com', '2013-07-27 14:54:52'),
(382, 'gyouz.com', '2013-07-27 14:54:52'),
(383, 'u95.cc', '2013-07-27 14:54:52'),
(384, 'ikphp.com', '2013-07-27 14:54:52'),
(385, '12ik.com', '2013-07-27 14:54:52'),
(386, '7lo.cn', '2013-07-27 14:54:52'),
(387, 'hufuin.com', '2013-07-27 14:54:52'),
(388, 'fa66.com', '2013-07-27 14:54:52'),
(389, 'itcpa.cn', '2013-07-27 14:54:52'),
(390, '72jz.com', '2013-07-27 14:54:52'),
(391, '网赚', '2013-07-27 14:54:52'),
(392, 'ikphp', '2013-07-27 14:54:52'),
(393, '12ik', '2013-07-27 14:54:52'),
(394, 'weadge.com', '2013-07-27 14:54:52'),
(395, 'mfkds.com', '2013-07-27 14:54:52'),
(396, 'svs123.com', '2013-07-27 14:54:52'),
(397, 'dlnmd.com', '2013-07-27 14:54:52'),
(398, 'nicenic.com', '2013-07-27 14:54:52'),
(399, '13311372110', '2013-07-27 14:54:52'),
(400, '58464602', '2013-07-27 14:54:52'),
(401, 'bf3.cn', '2014-04-16 23:19:33'),
(402, '你妹啊', '2014-04-16 23:19:33'),
(403, '33md.co', '2014-04-16 23:19:33'),
(404, '梅毒', '2014-04-16 23:19:33'),
(405, '你妈', '2014-04-16 23:19:33'),
(406, 'hywww.net', '2014-04-16 23:19:33'),
(407, '2015230140', '2014-04-16 23:19:33'),
(408, '淋病', '2014-04-16 23:19:33'),
(409, '非淋病', '2014-04-16 23:19:33'),
(410, 'damazha.com', '2014-04-16 23:19:33'),
(411, 'mitang.pw', '2014-04-16 23:19:33'),
(412, '六合彩', '2014-04-16 23:19:33'),
(413, '赛马', '2014-04-16 23:19:33'),
(414, '三陪', '2014-04-16 23:19:33'),
(415, '51shuaige.com', '2014-04-16 23:19:33'),
(416, '369tong.com', '2014-04-16 23:19:33'),
(417, 'holde.cn', '2014-04-16 23:19:33'),
(418, '18xi.com', '2014-04-16 23:19:33'),
(419, '信息代发', '2014-04-16 23:19:33'),
(420, '推广软件', '2014-04-16 23:19:33'),
(421, '营销软件', '2014-04-16 23:19:33'),
(422, '网络推广', '2014-04-16 23:19:33'),
(423, '营销人', '2014-04-16 23:19:33'),
(424, '91renren.com', '2014-04-16 23:19:33'),
(425, 'kukud.net', '2014-04-16 23:19:33'),
(426, 'chuntu.cc', '2014-04-16 23:19:33'),
(427, 'jinhusns.com', '2014-04-16 23:19:33'),
(428, '鼻炎', '2014-04-16 23:19:33'),
(429, '医院', '2014-04-16 23:19:33'),
(430, '153075777', '2014-04-16 23:19:33'),
(431, 'hqbsns.com', '2014-04-16 23:19:33'),
(432, 'jjyulecheng77g.com', '2014-04-16 23:19:33'),
(433, 'senlang.net', '2014-04-16 23:19:33'),
(434, 'xiyingmenyulecheng8a.com', '2014-04-16 23:19:33'),
(435, 'osforce.cn', '2014-04-16 23:19:33'),
(436, '51neixun.com', '2014-04-16 23:19:33'),
(437, '你妈逼', '2014-04-16 23:19:33'),
(438, '杀人', '2014-04-16 23:19:33'),
(439, '操你妈', '2014-04-16 23:19:33'),
(440, '草泥马', '2014-04-16 23:19:33'),
(441, '税票', '2014-04-16 23:19:33'),
(442, 'wanlidq.com', '2014-04-16 23:19:33'),
(443, '醫院', '2014-04-16 23:19:33'),
(444, 'mrdodo.net', '2014-04-16 23:19:33'),
(445, '188123581', '2014-04-16 23:19:33'),
(446, 'zhengma.com', '2014-04-16 23:19:33');

-- --------------------------------------------------------

--
-- 表的结构 `ts_article`
--

CREATE TABLE IF NOT EXISTS `ts_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` longtext NOT NULL COMMENT '内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片路径',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `count_comment` int(11) NOT NULL DEFAULT '0' COMMENT '统计评论数',
  `count_recommend` int(11) NOT NULL DEFAULT '0' COMMENT '统计推荐次数',
  `count_view` int(11) NOT NULL DEFAULT '0' COMMENT '统计查看',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`articleid`),
  UNIQUE KEY `title_2` (`title`),
  KEY `addtime` (`addtime`),
  KEY `cateid` (`cateid`),
  KEY `isrecommend` (`isrecommend`),
  KEY `count_recommend` (`count_recommend`,`addtime`),
  KEY `title` (`title`),
  KEY `count_view` (`count_view`),
  KEY `count_view_2` (`count_view`,`addtime`),
  KEY `locationid` (`locationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_article_cate`
--

CREATE TABLE IF NOT EXISTS `ts_article_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(16) NOT NULL DEFAULT '' COMMENT '分类名称',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_article_comment`
--

CREATE TABLE IF NOT EXISTS `ts_article_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '评论内容',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章评论' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_article_options`
--

CREATE TABLE IF NOT EXISTS `ts_article_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_article_options`
--

INSERT INTO `ts_article_options` (`optionname`, `optionvalue`) VALUES
('appname', '文章'),
('appdesc', '文章'),
('appkey', '文章'),
('allowpost', '1');

-- --------------------------------------------------------

--
-- 表的结构 `ts_article_recommend`
--

CREATE TABLE IF NOT EXISTS `ts_article_recommend` (
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  UNIQUE KEY `articleid` (`articleid`,`userid`),
  KEY `articleid_2` (`articleid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章推荐';

-- --------------------------------------------------------

--
-- 表的结构 `ts_attach`
--

CREATE TABLE IF NOT EXISTS `ts_attach` (
  `attachid` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '资料库ID',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `attachtype` char(32) NOT NULL DEFAULT '' COMMENT '附件类型',
  `attachurl` char(64) NOT NULL DEFAULT '' COMMENT '附件url',
  `attachsize` char(32) NOT NULL DEFAULT '' COMMENT '附件大小',
  `count_down` int(11) NOT NULL DEFAULT '0' COMMENT '统计下载量',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`attachid`),
  KEY `albumid` (`albumid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_attach_album`
--

CREATE TABLE IF NOT EXISTS `ts_attach_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '资料库ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '资料库名称',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '资料库介绍',
  `count_attach` int(11) NOT NULL DEFAULT '0' COMMENT '统计资料',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资料库' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_attach_options`
--

CREATE TABLE IF NOT EXISTS `ts_attach_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_attach_options`
--

INSERT INTO `ts_attach_options` (`optionname`, `optionvalue`) VALUES
('appname', '资料'),
('appdesc', '资料'),
('appkey', '资料');

-- --------------------------------------------------------

--
-- 表的结构 `ts_cache`
--

CREATE TABLE IF NOT EXISTS `ts_cache` (
  `cacheid` int(11) NOT NULL AUTO_INCREMENT COMMENT '缓存ID',
  `cachename` char(32) NOT NULL DEFAULT '' COMMENT '缓存名字',
  `cachevalue` text NOT NULL COMMENT '缓存内容',
  PRIMARY KEY (`cacheid`),
  UNIQUE KEY `cachename` (`cachename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='缓存' AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `ts_cache`
--

INSERT INTO `ts_cache` (`cacheid`, `cachename`, `cachevalue`) VALUES
(1, 'pubs_plugins', '1411740490a:14:{i:9;s:10:"floatlayer";i:19;s:8:"customer";i:20;s:7:"counter";i:21;s:6:"douban";i:22;s:8:"feedback";i:24;s:7:"gonggao";i:25;s:5:"gotop";i:26;s:4:"navs";i:27;s:2:"qq";i:29;s:5:"weibo";i:30;s:6:"wordad";i:31;s:9:"footertip";i:32;s:8:"leftuser";i:33;s:7:"ueditor";}'),
(2, 'home_plugins', '1406904279a:13:{i:11;s:9:"newtopics";i:12;s:5:"slide";i:13;s:8:"signuser";i:14;s:14:"recommendgroup";i:15;s:3:"tag";i:16;s:8:"newtopic";i:17;s:5:"login";i:18;s:5:"weibo";i:19;s:8:"newgroup";i:20;s:7:"article";i:21;s:8:"hottopic";i:22;s:5:"photo";i:23;s:5:"links";}'),
(3, 'system_options', '1416533645a:25:{s:10:"site_title";s:9:"ThinkSAAS";s:13:"site_subtitle";s:24:"又一个ThinkSAAS社区";s:8:"site_key";s:9:"thinksaas";s:9:"site_desc";s:9:"thinksaas";s:8:"site_url";s:31:"http://localhost/thinksaas_git/";s:8:"link_url";s:31:"http://localhost/thinksaas_git/";s:10:"site_email";s:15:"admin@admin.com";s:8:"site_icp";s:20:"京ICP备09050100号";s:6:"isface";s:1:"0";s:8:"isinvite";s:1:"0";s:8:"isverify";s:1:"0";s:6:"istomy";s:1:"0";s:10:"isauthcode";s:1:"0";s:6:"isgzip";s:1:"0";s:12:"isunattended";s:1:"0";s:13:"isallowdelete";s:1:"0";s:11:"isallowedit";s:1:"0";s:8:"timezone";s:14:"Asia/Hong_Kong";s:10:"site_theme";s:6:"sample";s:12:"site_urltype";s:1:"1";s:10:"photo_size";s:1:"2";s:10:"photo_type";s:16:"jpg,gif,png,jpeg";s:11:"attach_size";s:1:"2";s:11:"attach_type";s:19:"zip,rar,doc,txt,ppt";s:4:"logo";s:8:"logo.gif";}'),
(4, 'system_appnav', '1416535802a:11:{s:4:"home";s:6:"首页";s:5:"group";s:6:"小组";s:7:"article";s:6:"文章";s:5:"photo";s:6:"相册";s:4:"user";s:6:"用户";s:6:"search";s:6:"搜索";s:4:"feed";s:6:"动态";s:6:"attach";s:6:"资料";s:6:"redeem";s:12:"积分兑换";s:5:"weibo";s:6:"唠叨";s:8:"location";s:6:"同城";}'),
(5, 'system_anti_word', '1397661573s:4742:"国民党|邓小平|江泽民|胡锦涛|共产党|毛主席|毛泽东|中共|中国共产党|枪|弹药|枪支|氣槍|猎槍|来福|雷鸣登|五连发|平式双管|立式双管|麻醉|军用|进口|录入员|招聘兼职|1332566258|直流电阻测试仪|继电保护测试仪|串联谐振|分压器|www.hbyhdl.com|www.bd-seo.net|武汉网站优化|武汉网络推广|武汉网络营销|武汉SEO|大脚骨矫正器|379056061|拇外翻|小姐|习近平|王立军|两会|薄熙来|谷开来|唱红打黑|听党指挥|薄一波|李长春|周永康|政府|zhenfu|傻逼|zhengfu|他杀|枪杀|谋杀|起义|就义|法轮功|邪教|GCD|hege123|菲律宾|薄熙莱|小姐上门|一夜情|性爱|性息|武汉婚纱摄影|武汉婚纱照|武汉艺术照|武汉婚纱摄影工作室|www.yilongphoto.com|www.windyx.com|www.ruile.net|www.wo-niu.com.cn|www.wlzb518.com|www.wufangzhai-zongzi.com|www.hege123.com|按摩|按摩服务|cwsurf.de|出台|包夜|www.maizongzi.com|代刷|微笑网络|刷信誉|53530.cn|waimaodao.com|小 妹|上 门 服 务|小 妹 上 门|王哥|花姐|学妹|姓ˊ感ˊ少ˊ妇|丰ˊ韵ˊ熟ˊ妇|丽人岛休闲会所|越ˊ南ˊ妹|77057|饥ˊ渴ˊ熟ˊ女|饥渴熟女|性感人妻|姓感少妇|51gouku.com|51够酷|585.cc|腋臭|狐臭|兼职学生妹|湘湘|小唐|学生妹|wufangzhai-zongzi.com|冰毒|海洛因|毒品|吸毒|66dao.com|办证|赵小姐|douyapai.com|ntxz.cc|豆芽派|tdjyedu|自考招生|sinoest|身份證买卖|身份证买卖|895316992|爱游中国|上門服务|客人隐私|suoniao.com|男科医院|男性医院|包皮|包茎|男科|做爱|小妹上门|小妹服务|sm|sm女王|成熟少妇|包吹|极品校花|sinoest.com|尖锐湿疣|耳鼻喉医院|过敏性鼻炎|ibuonline.com|福彩|福彩3d|totutu.com|去黑头|东方软峰|yileee.com|新特药|fgt120.com|99spcar.com|meiti520.com|bbswuhan.com|18611314446|丰韵熟妇|越南妹|maizongzi.com|上门服务|小妹|windyx.com|wlzb518.com|wo-niu.com.cn|ruile.net|bd-seo.net|hbyhdl.com|yilongphoto.com|hege123.com|發票|开票电|开票|发票|代开发票|私募|走私车|资本运作|真人视频|造价通|移民网|药商|亚布力|雅思|新皇宝|校花聊天室|消费投资合法|西安卖肾|同城女|丝袜交友|兼职服务|草榴社区|搬家公司|代開|代开|醱票|開瞟|瞟据|瞟务|酒店住宿|13826544598|2645989872|18312006833|费发|314721888|办理假证件|394057341|费發|13533391062|13544261868|13828442144|13728999976|13662622538|897839088|vpswolf.com|vanshen.com|yapai.cc|daqiaogw.com|hfkszdm.com|jinqiaohc.com|0553rl.com|ln580.cn|qifanweb.com|qifanseo.com|qifanit.com|028zfyy.com|aitecentury.com|aite55.com|shentongkang.com|dss.so|3ja.net|sin55.com|2008ns.com|203529769|binhaijincheng.com|美女服务|18611325651|caihua.cc|51mm.com.cn|tbwtmall.net|lubaolin.com|糖尿病治疗仪|tangniaobingok.com|糖尿病|chtip.org|56156.com|07uuu.com|haoyouren.com|便秘|haoyouren|xxcun.com|iisp.com|gmwhy.com|feelyz.com|369in.com|cdtarena.com|肝硬化|youbian.com|162net.com|comnetcnn.com|2233.cn|鸡巴|119tx.com|0377521.com|028zuanji.com|dzwan.net|dodomo.net|sina.com|fobshanghai.com|芬恩|2659477099|58692026|65111117|英文SEO|仿牌SEO|外贸SEO|1550957342|pingan.com|痔疮|86889299|800002356|cqddgc.cn|股票|nyimei.com|天衣坊|宏天景秀|sugon.com|微博008|qqbct.com|qqsuncity.com|99txzq.com|88txzq.com|sdebh.cn|9501317248463|248463|飞机票|网银|火车票|无卡存款|66667959|订票|火车站|57071215|889584017|获奖查询|穫獎查詢|82425|5782|中獎|熱線|1931033|代售点|w1a2.icoc.cc|1317241334|车票改签|嘿咻|加盟|湿疹|塑胶|1817001212|4000318885|800007699|4008521119|花月婷|xpjin.com|新葡京娱乐城|eshibo68.com|tt5201314.com|TT娱乐城|娱乐城|qinzi5.com|21202|火車票|089|8369|退票|改簽|預訂|ruijintc.com|ruijintc.net|草榴|caoliu|5177game.com|cao|wgb320330.com|公關|公关|夜总会|兼职|同性恋|丝足|同志|女王|鸭子|调教|KTV|夜场|娱乐场|陪护|情感陪护|公主|LES|GAY|兼職|18611102232|男妓|妓男|女妓|cs12388.com|liketuan.com|xiunvfang.com|tmall.com|rekuai.com|gyouz.com|u95.cc|ikphp.com|12ik.com|7lo.cn|hufuin.com|fa66.com|itcpa.cn|72jz.com|网赚|ikphp|12ik|weadge.com|mfkds.com|svs123.com|dlnmd.com|nicenic.com|13311372110|58464602|bf3.cn|你妹啊|33md.co|梅毒|你妈|hywww.net|2015230140|淋病|非淋病|damazha.com|mitang.pw|六合彩|赛马|三陪|51shuaige.com|369tong.com|holde.cn|18xi.com|信息代发|推广软件|营销软件|网络推广|营销人|91renren.com|kukud.net|chuntu.cc|jinhusns.com|鼻炎|医院|153075777|hqbsns.com|jjyulecheng77g.com|senlang.net|xiyingmenyulecheng8a.com|osforce.cn|51neixun.com|你妈逼|杀人|操你妈|草泥马|税票|wanlidq.com|醫院|mrdodo.net|188123581|zhengma.com";'),
(6, 'user_options', '1400593143a:6:{s:7:"appname";s:6:"用户";s:7:"appdesc";s:12:"用户中心";s:6:"appkey";s:6:"用户";s:8:"isenable";s:1:"0";s:7:"isgroup";s:0:"";s:7:"banuser";s:25:"官方用户|官方团队";}'),
(7, 'mail_options', '1401554381a:8:{s:7:"appname";s:6:"邮件";s:7:"appdesc";s:15:"ThinkSAAS邮件";s:8:"isenable";s:1:"0";s:8:"mailhost";s:18:"smtp.exmail.qq.com";s:3:"ssl";s:1:"1";s:8:"mailport";s:3:"465";s:8:"mailuser";s:23:"postmaster@thinksaas.cn";s:7:"mailpwd";s:12:"1231qa2342ws";}'),
(8, 'article_options', '1400593025a:4:{s:7:"appname";s:6:"文章";s:7:"appdesc";s:6:"文章";s:6:"appkey";s:6:"文章";s:9:"allowpost";s:1:"1";}'),
(9, 'attach_options', '1400593032a:3:{s:7:"appname";s:6:"资料";s:7:"appdesc";s:6:"资料";s:6:"appkey";s:6:"资料";}'),
(10, 'feed_options', '1400593039a:3:{s:7:"appname";s:6:"动态";s:7:"appdesc";s:6:"动态";s:6:"appkey";s:6:"动态";}'),
(11, 'group_options', '1400593050a:6:{s:7:"appname";s:6:"小组";s:7:"appdesc";s:15:"ThinkSAAS小组";s:6:"appkey";s:6:"小组";s:8:"iscreate";s:1:"0";s:7:"isaudit";s:1:"0";s:7:"joinnum";s:2:"20";}'),
(12, 'photo_options', '1400593102a:3:{s:7:"appname";s:6:"相册";s:7:"appdesc";s:6:"相册";s:6:"appkey";s:6:"相册";}'),
(13, 'redeem_options', '1400593113a:3:{s:7:"appname";s:12:"积分兑换";s:7:"appdesc";s:12:"积分兑换";s:6:"appkey";s:12:"积分兑换";}'),
(14, 'weibo_options', '1400593153a:3:{s:7:"appname";s:6:"唠叨";s:7:"appdesc";s:6:"唠叨";s:6:"appkey";s:6:"唠叨";}'),
(15, 'plugins_pubs_wordad', '1400602928a:4:{i:0;a:2:{s:5:"title";s:22:"ThinkSAAS文字广告1";s:3:"url";s:23:"http://www.thinksaas.cn";}i:1;a:2:{s:5:"title";s:22:"ThinkSAAS文字广告2";s:3:"url";s:23:"http://www.thinksaas.cn";}i:2;a:2:{s:5:"title";s:22:"ThinkSAAS文字广告3";s:3:"url";s:23:"http://www.thinksaas.cn";}i:3;a:2:{s:5:"title";s:22:"ThinkSAAS文字广告4";s:3:"url";s:23:"http://www.thinksaas.cn";}}'),
(16, 'user_role', '1400602955a:17:{i:0;a:3:{s:8:"rolename";s:6:"列兵";s:11:"score_start";s:1:"0";s:9:"score_end";s:4:"5000";}i:1;a:3:{s:8:"rolename";s:6:"下士";s:11:"score_start";s:4:"5000";s:9:"score_end";s:5:"20000";}i:2;a:3:{s:8:"rolename";s:6:"中士";s:11:"score_start";s:5:"20000";s:9:"score_end";s:5:"40000";}i:3;a:3:{s:8:"rolename";s:6:"上士";s:11:"score_start";s:5:"40000";s:9:"score_end";s:5:"80000";}i:4;a:3:{s:8:"rolename";s:12:"三级准尉";s:11:"score_start";s:5:"80000";s:9:"score_end";s:6:"160000";}i:5;a:3:{s:8:"rolename";s:12:"二级准尉";s:11:"score_start";s:6:"160000";s:9:"score_end";s:6:"320000";}i:6;a:3:{s:8:"rolename";s:12:"一级准尉";s:11:"score_start";s:6:"320000";s:9:"score_end";s:6:"640000";}i:7;a:3:{s:8:"rolename";s:6:"少尉";s:11:"score_start";s:6:"640000";s:9:"score_end";s:7:"1280000";}i:8;a:3:{s:8:"rolename";s:6:"中尉";s:11:"score_start";s:7:"1280000";s:9:"score_end";s:7:"2560000";}i:9;a:3:{s:8:"rolename";s:6:"上尉";s:11:"score_start";s:7:"2560000";s:9:"score_end";s:7:"5120000";}i:10;a:3:{s:8:"rolename";s:6:"少校";s:11:"score_start";s:7:"5120000";s:9:"score_end";s:8:"10240000";}i:11;a:3:{s:8:"rolename";s:6:"中校";s:11:"score_start";s:8:"10240000";s:9:"score_end";s:8:"20480000";}i:12;a:3:{s:8:"rolename";s:6:"上校";s:11:"score_start";s:8:"20480000";s:9:"score_end";s:8:"40960000";}i:13;a:3:{s:8:"rolename";s:6:"准将";s:11:"score_start";s:8:"40960000";s:9:"score_end";s:8:"81920000";}i:14;a:3:{s:8:"rolename";s:6:"少将";s:11:"score_start";s:8:"81920000";s:9:"score_end";s:9:"123840000";}i:15;a:3:{s:8:"rolename";s:6:"中将";s:11:"score_start";s:9:"123840000";s:9:"score_end";s:9:"327680000";}i:16;a:3:{s:8:"rolename";s:6:"上将";s:11:"score_start";s:9:"327680000";s:9:"score_end";s:1:"0";}}'),
(17, 'plugins_pubs_gobad', '1400603098a:3:{i:300;s:20:"宽度300px广告位";i:468;s:20:"宽度468px广告位";i:960;s:20:"宽度960px广告位";}'),
(18, 'plugins_pubs_feedback', '1406109222s:52:"<a href=\\"http://www.thinksaas.cn\\">意见反馈</a>";'),
(19, 'plugins_pubs_counter', '1403494882s:338:"<script type=\\"text/javascript\\">var cnzz_protocol = ((\\"https:\\" == document.location.protocol) ? \\" https://\\" : \\" http://\\");document.write(unescape(\\"%3Cspan id=\\''cnzz_stat_icon_5824195\\''%3E%3C/span%3E%3Cscript src=\\''\\" + cnzz_protocol + \\"s23.cnzz.com/stat.php%3Fid%3D5824195\\'' type=\\''text/javascript\\''%3E%3C/script%3E\\"));</script>";'),
(20, 'plugins_home_links', '1400603295a:1:{i:0;a:2:{s:8:"linkname";s:9:"ThinkSAAS";s:7:"linkurl";s:23:"http://www.thinksaas.cn";}}'),
(21, 'plugins_pubs_navs', '1400833863a:1:{i:0;a:2:{s:7:"navname";s:9:"ThinkSAAS";s:6:"navurl";s:23:"http://www.thinksaas.cn";}}'),
(22, 'plugins_pubs_gonggao', '1401614806a:2:{s:5:"title";s:27:"ThinkSAAS2.2等你来测试";s:3:"url";s:23:"http://www.thinksaas.cn";}'),
(23, 'group_plugins', '1401899510b:0;');

-- --------------------------------------------------------

--
-- 表的结构 `ts_editor`
--

CREATE TABLE IF NOT EXISTS `ts_editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` char(32) NOT NULL DEFAULT 'photo' COMMENT '类型photo,file',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `url` char(32) NOT NULL DEFAULT '' COMMENT '图片或者文件',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='编辑器上传图片和文件' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_feed`
--

CREATE TABLE IF NOT EXISTS `ts_feed` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `template` varchar(1024) NOT NULL DEFAULT '' COMMENT '动态模板',
  `data` varchar(1024) NOT NULL DEFAULT '' COMMENT '动态数据',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`feedid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='全站动态' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_feed_options`
--

CREATE TABLE IF NOT EXISTS `ts_feed_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_feed_options`
--

INSERT INTO `ts_feed_options` (`optionname`, `optionvalue`) VALUES
('appname', '动态'),
('appdesc', '动态'),
('appkey', '动态');

-- --------------------------------------------------------

--
-- 表的结构 `ts_group`
--

CREATE TABLE IF NOT EXISTS `ts_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT COMMENT '小组ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `cateid2` int(11) NOT NULL DEFAULT '0' COMMENT '二级分类ID',
  `cateid3` int(11) NOT NULL DEFAULT '0' COMMENT '三级分类ID',
  `groupname` char(32) NOT NULL DEFAULT '' COMMENT '群组名字',
  `groupdesc` text NOT NULL COMMENT '小组介绍',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图标路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '小组图标',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '帖子统计',
  `count_topic_today` int(11) NOT NULL DEFAULT '0' COMMENT '统计今天发帖',
  `count_user` int(11) NOT NULL DEFAULT '0' COMMENT '小组成员数',
  `count_topic_audit` int(11) NOT NULL DEFAULT '0' COMMENT '统计未审核帖子数',
  `joinway` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加入方式',
  `role_leader` char(32) NOT NULL DEFAULT '组长' COMMENT '组长角色名称',
  `role_admin` char(32) NOT NULL DEFAULT '管理员' COMMENT '管理员角色名称',
  `role_user` char(32) NOT NULL DEFAULT '成员' COMMENT '成员角色名称',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否公开或者私密',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `ispost` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许会员发帖',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `ispostaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发帖审核',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`groupid`),
  KEY `userid` (`userid`),
  KEY `isshow` (`isshow`),
  KEY `groupname` (`groupname`),
  KEY `cateid` (`cateid`),
  KEY `isaudit` (`isaudit`),
  KEY `addtime` (`addtime`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微群组' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_album`
--

CREATE TABLE IF NOT EXISTS `ts_group_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `albumname` char(64) NOT NULL DEFAULT '' COMMENT '专辑名字',
  `albumdesc` varchar(2000) NOT NULL DEFAULT '' COMMENT '专辑介绍',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`albumid`),
  KEY `userid` (`userid`),
  KEY `count_topic` (`count_topic`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组帖子专辑' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_album_topic`
--

CREATE TABLE IF NOT EXISTS `ts_group_album_topic` (
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '专辑ID',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  UNIQUE KEY `albumid_2` (`albumid`,`topicid`),
  KEY `albumid` (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专辑帖子';

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_cate`
--

CREATE TABLE IF NOT EXISTS `ts_group_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(32) NOT NULL DEFAULT '' COMMENT '分类名字',
  `referid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `count_group` int(11) NOT NULL DEFAULT '0' COMMENT '群组个数',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`cateid`),
  KEY `referid` (`referid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_options`
--

CREATE TABLE IF NOT EXISTS `ts_group_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_group_options`
--

INSERT INTO `ts_group_options` (`optionname`, `optionvalue`) VALUES
('appname', '小组'),
('appdesc', 'ThinkSAAS小组'),
('appkey', '小组'),
('iscreate', '0'),
('isaudit', '0'),
('joinnum', '20');

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic` (
  `topicid` int(11) NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子分类ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `count_comment` int(11) NOT NULL DEFAULT '0' COMMENT '回复统计',
  `count_view` int(11) NOT NULL DEFAULT '0' COMMENT '帖子展示数',
  `count_love` int(11) NOT NULL DEFAULT '0' COMMENT '喜欢数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `isclose` int(4) NOT NULL DEFAULT '0' COMMENT '是否关闭帖子',
  `iscomment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许评论',
  `iscommentshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '?Ƿ????ۺ???ʾ????????0????Ҫ1??Ҫ',
  `isposts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精华帖子',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不审核1审核',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不删除1删除',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1为推荐',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`topicid`),
  KEY `groupid` (`groupid`),
  KEY `userid` (`userid`),
  KEY `title` (`title`),
  KEY `groupid_2` (`groupid`),
  KEY `typeid` (`typeid`),
  KEY `addtime` (`addtime`),
  KEY `count_comment` (`count_comment`),
  KEY `count_view` (`count_view`),
  KEY `count_love` (`count_love`),
  KEY `count_view_2` (`count_view`,`addtime`),
  KEY `isshow` (`isaudit`,`uptime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组话题' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic_add`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '补贴ID',
  `topicid` int(11) NOT NULL COMMENT '话题ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '帖子标题',
  `content` text NOT NULL COMMENT '帖子内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片或者附件存储目录',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片地址',
  `attach` char(32) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  `addtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `title` (`title`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组话题' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic_collect`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic_collect` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `topicid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '收藏时间',
  UNIQUE KEY `userid_2` (`userid`,`topicid`),
  KEY `userid` (`userid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帖子收藏';

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic_comment`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `referid` int(11) NOT NULL DEFAULT '0',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '回复内容',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片或者附件存储目录',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片地址',
  `attach` char(32) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attachname` char(64) NOT NULL DEFAULT '' COMMENT '附件名字',
  `addtime` int(11) DEFAULT '0' COMMENT '回复时间',
  PRIMARY KEY (`commentid`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`),
  KEY `referid` (`referid`,`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题回复/评论' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic_edit`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic_edit` (
  `editid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编辑ID',
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `title` char(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `isupdate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未更新1更新',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`editid`),
  UNIQUE KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题编辑' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_topic_type`
--

CREATE TABLE IF NOT EXISTS `ts_group_topic_type` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子分类ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  `typename` char(32) NOT NULL DEFAULT '' COMMENT '帖子分类名称',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  PRIMARY KEY (`typeid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帖子分类' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_user`
--

CREATE TABLE IF NOT EXISTS `ts_group_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '群组ID',
  `isadmin` int(11) NOT NULL DEFAULT '0' COMMENT '是否管理员',
  `isfounder` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否创始人',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '加入时间',
  UNIQUE KEY `userid_2` (`userid`,`groupid`),
  KEY `userid` (`userid`),
  KEY `groupid` (`groupid`),
  KEY `groupid_2` (`groupid`,`isadmin`,`isfounder`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='群组和用户对应关系';

-- --------------------------------------------------------

--
-- 表的结构 `ts_group_user_isaudit`
--

CREATE TABLE IF NOT EXISTS `ts_group_user_isaudit` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '小组ID',
  UNIQUE KEY `userid` (`userid`,`groupid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用于申请加入小组的成员审核';

-- --------------------------------------------------------

--
-- 表的结构 `ts_home_info`
--

CREATE TABLE IF NOT EXISTS `ts_home_info` (
  `infoid` int(11) NOT NULL AUTO_INCREMENT,
  `infokey` char(32) NOT NULL DEFAULT '',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`infoid`),
  UNIQUE KEY `infokey` (`infokey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `ts_home_info`
--

INSERT INTO `ts_home_info` (`infoid`, `infokey`, `title`, `content`) VALUES
(1, 'about', '关于我们', '关于我们'),
(2, 'contact', '联系我们', '联系我们'),
(3, 'agreement', '用户条款', '<p>本协议适用ThinkSAAS发布的所有程序版本和代码。</p>\r\n<p>ThinkSAAS官方指：ThinkSAAS社区，奇鸟软件（北京）有限公司和ThinkSAAS社区系统开发者邱君。</p>\r\n<p>ThinkSAAS禁止用户在使用中触犯中国法律范围内的任何法律条文。</p>\r\n<p>ThinkSAAS、奇鸟软件（北京）有限公司及其创始人邱君拥有对ThinkSAAS的所有权，任何个人，公司和组织不得以任何形式和目的侵犯ThinkSAAS的版权和著作权</p>\r\n<p>ThinkSAAS官方拥有对ThinkSAAS社区软件绝对的版权和著作权。</p>\r\n<p>ThinkSAAS商业授权全面免费，公司和个人可以用ThinkSAAS搭建任何商业应用和网站，不用再支付任何商业授权费用。</p>\r\n<p>ThinkSAAS不会监控用户网站信息，但有权通过邮件或者其他联系方式获悉用户使用情况，有权拿用户网站用作案例展示。</p>\r\n<p>在未经ThinkSAAS官方书面允许的情况下，除【自身运营】外，任何个人、公司和组织不能单方面发布和出售以ThinkSAAS为基础开发的任何互联网软件或者产品，否则将视为侵权行为，将依照中华人民共和国法律追究其法律责任。</p>\r\n<p>ThinkSAAS官方拥有对此协议的修改和不断完善。</p>\r\n<p>【自身运营】解释：即用户在使用ThinkSAAS中，不通过出售任何以ThinkSAAS为基础开发的产品，仅用作自身学习和自身商业运营的网站。</p>'),
(4, 'privacy', '隐私申明', '隐私申明'),
(5, 'job', '加入我们', '加入我们');

-- --------------------------------------------------------

--
-- 表的结构 `ts_location`
--

CREATE TABLE IF NOT EXISTS `ts_location` (
  `locationid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容介绍',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片',
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`locationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='同城' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_mail_options`
--

CREATE TABLE IF NOT EXISTS `ts_mail_options` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  PRIMARY KEY (`optionid`),
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='配置' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ts_mail_options`
--

INSERT INTO `ts_mail_options` (`optionid`, `optionname`, `optionvalue`) VALUES
(1, 'appname', '邮件'),
(2, 'appdesc', 'ThinkSAAS邮件'),
(3, 'isenable', '0'),
(4, 'mailhost', 'smtp.exmail.qq.com'),
(5, 'ssl', '1'),
(6, 'mailport', '465'),
(7, 'mailuser', 'postmaster@thinksaas.cn'),
(8, 'mailpwd', '1231qa2342ws');

-- --------------------------------------------------------

--
-- 表的结构 `ts_message`
--

CREATE TABLE IF NOT EXISTS `ts_message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '发送用户ID',
  `touserid` int(11) NOT NULL DEFAULT '0' COMMENT '接收消息的用户ID',
  `content` text NOT NULL COMMENT '内容',
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`messageid`),
  KEY `touserid` (`touserid`,`isread`),
  KEY `userid` (`userid`,`touserid`,`isread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_photo`
--

CREATE TABLE IF NOT EXISTS `ts_photo` (
  `photoid` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL DEFAULT '0' COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城iD',
  `photoname` char(64) NOT NULL DEFAULT '',
  `phototype` char(32) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '图片路径',
  `photourl` char(120) NOT NULL DEFAULT '',
  `photosize` char(32) NOT NULL DEFAULT '',
  `photodesc` char(120) NOT NULL DEFAULT '',
  `count_view` int(11) NOT NULL DEFAULT '0',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不推荐1推荐',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_photo_album`
--

CREATE TABLE IF NOT EXISTS `ts_photo_album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '相册路径',
  `albumface` char(64) NOT NULL DEFAULT '' COMMENT '相册封面',
  `albumname` char(64) NOT NULL DEFAULT '',
  `albumdesc` varchar(400) NOT NULL DEFAULT '' COMMENT '相册介绍',
  `count_photo` int(11) NOT NULL DEFAULT '0',
  `count_view` int(11) NOT NULL DEFAULT '0',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0审核1未审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`albumid`),
  KEY `userid` (`userid`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='相册' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_photo_comment`
--

CREATE TABLE IF NOT EXISTS `ts_photo_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `referid` int(11) NOT NULL DEFAULT '0',
  `photoid` int(11) NOT NULL DEFAULT '0' COMMENT '相册ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` char(255) NOT NULL DEFAULT '' COMMENT '回复内容',
  `addtime` int(11) DEFAULT '0' COMMENT '回复时间',
  PRIMARY KEY (`commentid`),
  KEY `userid` (`userid`),
  KEY `referid` (`referid`,`photoid`),
  KEY `photoid` (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片回复/评论' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_photo_options`
--

CREATE TABLE IF NOT EXISTS `ts_photo_options` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项ID',
  `optionname` char(16) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  PRIMARY KEY (`optionid`),
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='配置' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `ts_photo_options`
--

INSERT INTO `ts_photo_options` (`optionid`, `optionname`, `optionvalue`) VALUES
(1, 'appname', '相册'),
(2, 'appdesc', '相册'),
(3, 'appkey', '相册');

-- --------------------------------------------------------

--
-- 表的结构 `ts_redeem_cate`
--

CREATE TABLE IF NOT EXISTS `ts_redeem_cate` (
  `cateid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `catename` char(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_redeem_goods`
--

CREATE TABLE IF NOT EXISTS `ts_redeem_goods` (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `cateid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '产品标题',
  `content` text NOT NULL COMMENT '产品介绍',
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `scores` int(11) NOT NULL DEFAULT '0' COMMENT '需要积分',
  `return` int(11) NOT NULL DEFAULT '0' COMMENT '返还积分',
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '路径',
  `photo` char(32) NOT NULL DEFAULT '' COMMENT '图片',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_redeem_options`
--

CREATE TABLE IF NOT EXISTS `ts_redeem_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_redeem_options`
--

INSERT INTO `ts_redeem_options` (`optionname`, `optionvalue`) VALUES
('appname', '积分兑换'),
('appdesc', '积分兑换'),
('appkey', '积分兑换');

-- --------------------------------------------------------

--
-- 表的结构 `ts_redeem_user`
--

CREATE TABLE IF NOT EXISTS `ts_redeem_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `goodsid` int(11) NOT NULL DEFAULT '0' COMMENT '产品ID',
  `isreturn` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否返还0未返还1返还',
  KEY `userid` (`userid`,`goodsid`),
  KEY `userid_2` (`userid`),
  KEY `goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户兑换了什么产品';

-- --------------------------------------------------------

--
-- 表的结构 `ts_session`
--

CREATE TABLE IF NOT EXISTS `ts_session` (
  `session` char(64) NOT NULL DEFAULT '' COMMENT 'SESSIONID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `session_expires` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `ip` char(32) NOT NULL DEFAULT '' COMMENT 'IP',
  `session_data` varchar(512) NOT NULL DEFAULT '' COMMENT 'SESSION数据',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  UNIQUE KEY `session` (`session`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION';

-- --------------------------------------------------------

--
-- 表的结构 `ts_slide`
--

CREATE TABLE IF NOT EXISTS `ts_slide` (
  `slideid` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(128) NOT NULL DEFAULT '',
  `url` char(128) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '',
  `photo` char(32) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slideid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='轮播' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ts_slide`
--

INSERT INTO `ts_slide` (`slideid`, `title`, `url`, `path`, `photo`, `addtime`) VALUES
(1, 'ThinkSAAS开源社区', 'http://www.thinksaas.cn', '0/0', '0/0/1.jpg', 1416533676);

-- --------------------------------------------------------

--
-- 表的结构 `ts_system_options`
--

CREATE TABLE IF NOT EXISTS `ts_system_options` (
  `optionname` char(32) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统管理配置';

--
-- 转存表中的数据 `ts_system_options`
--

INSERT INTO `ts_system_options` (`optionname`, `optionvalue`) VALUES
('site_title', 'ThinkSAAS'),
('site_subtitle', '又一个ThinkSAAS社区'),
('site_key', 'thinksaas'),
('site_desc', 'thinksaas'),
('site_url', 'http://localhost/thinksaas_git/'),
('link_url', 'http://localhost/thinksaas_git/'),
('site_email', 'admin@admin.com'),
('site_icp', '京ICP备09050100号'),
('isface', '0'),
('isinvite', '0'),
('isverify', '0'),
('istomy', '0'),
('isauthcode', '0'),
('isgzip', '0'),
('isunattended', '0'),
('isallowdelete', '0'),
('isallowedit', '0'),
('timezone', 'Asia/Hong_Kong'),
('site_theme', 'sample'),
('site_urltype', '1'),
('photo_size', '2'),
('photo_type', 'jpg,gif,png,jpeg'),
('attach_size', '2'),
('attach_type', 'zip,rar,doc,txt,ppt'),
('logo', 'logo.gif');

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag`
--

CREATE TABLE IF NOT EXISTS `ts_tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` char(16) NOT NULL DEFAULT '',
  `count_user` int(11) NOT NULL DEFAULT '0',
  `count_group` int(11) NOT NULL DEFAULT '0',
  `count_topic` int(11) NOT NULL DEFAULT '0',
  `count_bang` int(11) NOT NULL DEFAULT '0',
  `count_article` int(11) NOT NULL DEFAULT '0',
  `count_photo` int(11) NOT NULL DEFAULT '0' COMMENT '统计图片使用数',
  `isenable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可用',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag_article_index`
--

CREATE TABLE IF NOT EXISTS `ts_tag_article_index` (
  `articleid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `articleid_2` (`articleid`,`tagid`),
  KEY `articleid` (`articleid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag_group_index`
--

CREATE TABLE IF NOT EXISTS `ts_tag_group_index` (
  `groupid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `groupid_2` (`groupid`,`tagid`),
  KEY `groupid` (`groupid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag_photo_index`
--

CREATE TABLE IF NOT EXISTS `ts_tag_photo_index` (
  `photoid` int(11) NOT NULL DEFAULT '0' COMMENT '图片ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `photoid_2` (`photoid`,`tagid`),
  KEY `tagid` (`tagid`),
  KEY `photoid` (`photoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag_topic_index`
--

CREATE TABLE IF NOT EXISTS `ts_tag_topic_index` (
  `topicid` int(11) NOT NULL DEFAULT '0' COMMENT '帖子ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `topicid_2` (`topicid`,`tagid`),
  KEY `topicid` (`topicid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ts_tag_user_index`
--

CREATE TABLE IF NOT EXISTS `ts_tag_user_index` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `tagid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid_2` (`userid`,`tagid`),
  KEY `userid` (`userid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ts_task`
--

CREATE TABLE IF NOT EXISTS `ts_task` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `taskkey` char(32) NOT NULL DEFAULT '' COMMENT '任务标识',
  `title` char(64) NOT NULL DEFAULT '' COMMENT '任务标题',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '任务介绍',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`taskid`),
  UNIQUE KEY `taskkey` (`taskkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_task_user`
--

CREATE TABLE IF NOT EXISTS `ts_task_user` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `taskkey` char(32) NOT NULL DEFAULT '' COMMENT '任务key',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  UNIQUE KEY `userid` (`userid`,`taskkey`),
  KEY `taskkey` (`taskkey`),
  KEY `userid_2` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户任务关联';

-- --------------------------------------------------------

--
-- 表的结构 `ts_user`
--

CREATE TABLE IF NOT EXISTS `ts_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `pwd` char(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` char(32) NOT NULL DEFAULT '' COMMENT '加点盐',
  `email` char(64) NOT NULL DEFAULT '' COMMENT '用户email',
  `resetpwd` char(32) NOT NULL DEFAULT '' COMMENT '重设密码',
  `code` char(32) NOT NULL DEFAULT '' COMMENT '邮箱验证码',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `pwd` (`pwd`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_follow`
--

CREATE TABLE IF NOT EXISTS `ts_user_follow` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `userid_follow` int(11) NOT NULL DEFAULT '0' COMMENT '被关注的用户ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  UNIQUE KEY `userid_2` (`userid`,`userid_follow`),
  KEY `userid` (`userid`),
  KEY `userid_follow` (`userid_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户关注跟随';

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_gb`
--

CREATE TABLE IF NOT EXISTS `ts_user_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0' COMMENT '回复ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '留言用户ID',
  `touserid` int(11) NOT NULL DEFAULT '0' COMMENT '被留言用户ID',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '内容',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `touserid` (`touserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_group`
--

CREATE TABLE IF NOT EXISTS `ts_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户组ID',
  `groupname` char(32) NOT NULL DEFAULT '' COMMENT '用户组名字',
  `view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '查看权限0有1没有',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除权限',
  `edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '修改权限',
  `create` tinyint(1) NOT NULL DEFAULT '0' COMMENT '写入权限',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分挂钩',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_info`
--

CREATE TABLE IF NOT EXISTS `ts_user_info` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `fuserid` int(11) NOT NULL DEFAULT '0' COMMENT '来自邀请用户',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` char(64) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `phone` char(16) NOT NULL DEFAULT '' COMMENT '电话号码',
  `roleid` int(11) NOT NULL DEFAULT '1' COMMENT '角色ID',
  `province` char(64) NOT NULL DEFAULT '' COMMENT '省/直辖市/自治区',
  `city` char(65) NOT NULL DEFAULT '' COMMENT '市县区',
  `path` char(32) NOT NULL DEFAULT '' COMMENT '头像路径',
  `face` char(64) NOT NULL DEFAULT '' COMMENT '会员头像',
  `signed` char(64) NOT NULL DEFAULT '' COMMENT '签名',
  `blog` char(32) NOT NULL DEFAULT '' COMMENT '博客',
  `about` char(255) NOT NULL DEFAULT '' COMMENT '关于我',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT '登陆IP',
  `address` char(64) NOT NULL DEFAULT '',
  `comefrom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '注册来自0web1手机客户端',
  `count_score` int(11) NOT NULL DEFAULT '0' COMMENT '统计积分',
  `count_follow` int(11) NOT NULL DEFAULT '0' COMMENT '统计用户跟随的',
  `count_followed` int(11) NOT NULL DEFAULT '0' COMMENT '统计用户被跟随的',
  `count_group` int(11) NOT NULL DEFAULT '0' COMMENT '统计小组数',
  `count_topic` int(11) NOT NULL DEFAULT '0' COMMENT '统计帖子',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是管理员',
  `isenable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用：0启用1禁用',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未验证1验证',
  `isrecommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `verifycode` char(11) NOT NULL DEFAULT '' COMMENT '验证码',
  `autologin` char(128) NOT NULL DEFAULT '' COMMENT '自动登陆',
  `signin` int(11) NOT NULL DEFAULT '0' COMMENT '签到时间',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `uptime` int(11) DEFAULT '0' COMMENT '登陆时间',
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `email_2` (`email`,`autologin`),
  KEY `fuserid` (`fuserid`),
  KEY `isrecommend` (`isrecommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户';

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_invites`
--

CREATE TABLE IF NOT EXISTS `ts_user_invites` (
  `inviteid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `invitecode` char(32) NOT NULL DEFAULT '' COMMENT '邀请码',
  `isused` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`inviteid`),
  UNIQUE KEY `invitecode` (`invitecode`),
  KEY `isused` (`isused`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户邀请码' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_open`
--

CREATE TABLE IF NOT EXISTS `ts_user_open` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sitename` char(32) NOT NULL DEFAULT '' COMMENT '连接网站名称',
  `openid` char(32) NOT NULL DEFAULT '' COMMENT 'openid',
  `access_token` char(32) NOT NULL DEFAULT '' COMMENT 'access_token',
  `uptime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  UNIQUE KEY `userid_2` (`userid`,`sitename`),
  UNIQUE KEY `sitename` (`sitename`,`openid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方连接登录';

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_options`
--

CREATE TABLE IF NOT EXISTS `ts_user_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_user_options`
--

INSERT INTO `ts_user_options` (`optionname`, `optionvalue`) VALUES
('appname', '用户'),
('appdesc', '用户中心'),
('appkey', '用户'),
('isenable', '0'),
('isgroup', ''),
('banuser', '官方用户|官方团队');

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_role`
--

CREATE TABLE IF NOT EXISTS `ts_user_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `rolename` char(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `score_start` int(11) NOT NULL DEFAULT '0' COMMENT '积分开始',
  `score_end` int(11) NOT NULL DEFAULT '0' COMMENT '积分结束',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='角色' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `ts_user_role`
--

INSERT INTO `ts_user_role` (`roleid`, `rolename`, `score_start`, `score_end`) VALUES
(1, '列兵', 0, 5000),
(2, '下士', 5000, 20000),
(3, '中士', 20000, 40000),
(4, '上士', 40000, 80000),
(5, '三级准尉', 80000, 160000),
(6, '二级准尉', 160000, 320000),
(7, '一级准尉', 320000, 640000),
(8, '少尉', 640000, 1280000),
(9, '中尉', 1280000, 2560000),
(10, '上尉', 2560000, 5120000),
(11, '少校', 5120000, 10240000),
(12, '中校', 10240000, 20480000),
(13, '上校', 20480000, 40960000),
(14, '准将', 40960000, 81920000),
(15, '少将', 81920000, 123840000),
(16, '中将', 123840000, 327680000),
(17, '上将', 327680000, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_score`
--

CREATE TABLE IF NOT EXISTS `ts_user_score` (
  `scoreid` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分ID',
  `scorekey` char(32) NOT NULL DEFAULT '' COMMENT '积分key',
  `scorename` char(64) NOT NULL DEFAULT '' COMMENT '积分名称',
  `app` char(32) NOT NULL DEFAULT '' COMMENT 'APP',
  `action` char(32) NOT NULL DEFAULT '' COMMENT 'ACTION',
  `ts` char(32) NOT NULL DEFAULT '' COMMENT 'TS',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0加积分1减积分',
  PRIMARY KEY (`scoreid`),
  UNIQUE KEY `app` (`app`,`action`,`ts`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户积分设置表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ts_user_score`
--

INSERT INTO `ts_user_score` (`scoreid`, `scorekey`, `scorename`, `app`, `action`, `ts`, `score`, `status`) VALUES
(1, 'user_register', '用户注册', 'user', 'register', 'do', 10, 0),
(2, 'user_login', '用户登陆', 'user', 'login', 'do', 5, 0),
(3, 'group_topic_add', '用户小组发帖', 'group', 'add', 'do', 10, 0),
(4, 'group_topic_comment', '用户小组帖子评论', 'group', 'comment', 'do', 5, 0),
(5, 'attach_upload', '资料上传', 'attach', 'upload', 'do', 10, 0),
(6, 'user_signin', '用户签到', 'user', 'signin', '', 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ts_user_score_log`
--

CREATE TABLE IF NOT EXISTS `ts_user_score_log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分记录ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `scorename` char(64) NOT NULL DEFAULT '' COMMENT '积分说明',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0增加1减少',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '积分时间',
  PRIMARY KEY (`logid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户积分记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_weibo`
--

CREATE TABLE IF NOT EXISTS `ts_weibo` (
  `weiboid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `locationid` int(11) NOT NULL DEFAULT '0' COMMENT '同城ID',
  `content` text NOT NULL,
  `count_comment` int(11) NOT NULL DEFAULT '0',
  `photo` char(32) NOT NULL DEFAULT '',
  `path` char(32) NOT NULL DEFAULT '',
  `isaudit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`weiboid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_weibo_comment`
--

CREATE TABLE IF NOT EXISTS `ts_weibo_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `touserid` int(11) NOT NULL DEFAULT '0',
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `weiboid` int(11) NOT NULL DEFAULT '0',
  `content` varchar(512) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentid`),
  KEY `touserid` (`touserid`,`isread`),
  KEY `noteid` (`weiboid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ts_weibo_options`
--

CREATE TABLE IF NOT EXISTS `ts_weibo_options` (
  `optionname` char(12) NOT NULL DEFAULT '' COMMENT '选项名字',
  `optionvalue` char(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  UNIQUE KEY `optionname` (`optionname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='配置';

--
-- 转存表中的数据 `ts_weibo_options`
--

INSERT INTO `ts_weibo_options` (`optionname`, `optionvalue`) VALUES
('appname', '唠叨'),
('appdesc', '唠叨'),
('appkey', '唠叨');
