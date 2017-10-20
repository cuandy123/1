-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2017 �?06 �?30 �?17:30
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `666`
--
CREATE DATABASE IF NOT EXISTS `666` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `666`;

-- --------------------------------------------------------

--
-- 表的结构 `x2_app`
--

CREATE TABLE IF NOT EXISTS `x2_app` (
  `appid` varchar(24) NOT NULL,
  `appname` varchar(48) NOT NULL DEFAULT '',
  `appthumb` varchar(240) NOT NULL DEFAULT '',
  `appstatus` int(1) NOT NULL DEFAULT '0',
  `appsetting` text NOT NULL,
  PRIMARY KEY (`appid`),
  KEY `appstatus` (`appstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_app`
--

INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES
('user', '用户模块', 'files/attach/images/content/20130401/13647895355562.png.png', 1, 'a:5:{s:11:"closeregist";s:1:"1";s:9:"registype";s:1:"0";s:10:"loginmodel";s:1:"1";s:9:"regfields";s:12:"usertruename";s:9:"outfields";s:12:"usertruename";}'),
('exam', '考试模块', '*value*', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('core', '模块管理', '*value*', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('document', '文件模块', '*value*', 1, ''),
('content', '内容模块', '*value*', 1, ''),
('item', '商品模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('bank', '财务模块', '*value*', 1, ''),
('edu', '教务模块', 'app/core/styles/images/noimage.gif', 1, ''),
('course', '课程模块', '*value*', 1, ''),
('demo', '试听中心', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_area`
--

CREATE TABLE IF NOT EXISTS `x2_area` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(120) NOT NULL DEFAULT '',
  `areacode` int(12) NOT NULL DEFAULT '0',
  `arealevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`),
  KEY `area` (`area`,`arealevel`),
  KEY `areacode` (`areacode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `x2_area`
--

INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES
(1, '全国', 1, 1),
(3, '河南', 373, 0),
(4, '北京', 10, 0),
(5, '陕西', 29, 0),
(6, '河北', 311, 0),
(7, '天津', 22, 0),
(8, '山东', 531, 0),
(9, '江苏', 25, 0),
(10, '湖北', 27, 0),
(11, '辽宁', 24, 0),
(12, '贵州', 851, 0),
(13, '北京春雪', 1001, 0),
(14, '云南', 871, 0),
(15, '四川', 28, 0),
(16, '安徽', 551, 0),
(17, '深圳', 755, 0),
(18, '吉林', 431, 0),
(19, '广东', 20, 0),
(20, '新疆', 991, 0),
(21, '广西', 771, 0),
(22, '福建', 591, 0),
(23, '湖南', 731, 0),
(24, '上海', 21, 0),
(25, '重庆', 23, 0),
(26, '江西', 791, 0),
(27, '浙江', 571, 0),
(28, '山西', 351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_attach`
--

CREATE TABLE IF NOT EXISTS `x2_attach` (
  `attid` int(11) NOT NULL AUTO_INCREMENT,
  `attpath` varchar(240) NOT NULL DEFAULT '',
  `atttitle` varchar(240) NOT NULL DEFAULT '',
  `attext` varchar(12) NOT NULL DEFAULT '',
  `attinputtime` int(11) NOT NULL DEFAULT '0',
  `attsize` int(11) NOT NULL DEFAULT '0',
  `attmd5` varchar(32) NOT NULL DEFAULT '',
  `attuserid` int(11) NOT NULL DEFAULT '0',
  `attcntype` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`attid`),
  KEY `attext` (`attext`,`attinputtime`),
  KEY `attuserid` (`attuserid`),
  KEY `attcntype` (`attcntype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `x2_attach`
--

INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES
(1, 'files/attach/images/content/20170528/14959803843168.mp4', 'gln.MP4', 'mp4', 1495980384, 199464, '', 1, 'video/mp4'),
(2, 'files/attach/files/content/20170603/14964755816211.png', '2.png', 'png', 1496475581, 684065, '', 1, 'image/png'),
(3, 'files/attach/images/content/20170607/14968187795625.jpg', '001.jpg', 'jpg', 1496818779, 246480, '', 1, 'image/jpeg'),
(4, 'files/attach/images/content/20170607/14968187793886.png', '1.png', 'png', 1496818779, 521339, '', 1, 'image/png'),
(5, 'files/attach/images/content/20170607/14968187797389.png', '2.png', 'png', 1496818779, 684065, '', 1, 'image/png'),
(6, 'files/attach/images/content/20170607/14968188134851.png', '3.png', 'png', 1496818813, 719463, '', 1, 'image/png'),
(7, 'files/attach/images/content/20170607/14968188137274.png', '4.png', 'png', 1496818813, 514926, '', 1, 'image/png'),
(8, 'files/attach/images/content/20170607/14968188337857.jpg', '001.jpg', 'jpg', 1496818832, 246480, '', 1, 'image/jpeg'),
(9, 'files/attach/images/content/20170607/14968188337153.png', '1.png', 'png', 1496818833, 521339, '', 1, 'image/png'),
(10, 'files/attach/images/content/20170607/14968188335645.png', '2.png', 'png', 1496818833, 684065, '', 1, 'image/png'),
(11, 'files/attach/images/content/20170607/14968188334547.png', '4.png', 'png', 1496818833, 514926, '', 1, 'image/png'),
(12, 'files/attach/images/content/20170607/14968188339862.png', '5.png', 'png', 1496818833, 701543, '', 1, 'image/png'),
(13, 'files/attach/images/content/20170608/14968901233309.png', '1.png', 'png', 1496890123, 521339, '', 1, 'image/png'),
(14, 'files/attach/images/content/20170608/14968901318078.jpg', '001.jpg', 'jpg', 1496890131, 246480, '', 1, 'image/jpeg'),
(15, 'files/attach/images/content/20170608/14968901328703.png', '1.png', 'png', 1496890131, 521339, '', 1, 'image/png'),
(16, 'files/attach/images/content/20170618/14977613749205.jpg', '14962991644959.jpg', 'jpg', 1497761374, 39722, '', 1, 'image/jpeg'),
(17, 'files/attach/images/content/20170627/14985744623987.jpg', '14962991327805.jpg', 'jpg', 1498574462, 40410, '', 1, 'image/jpeg'),
(18, 'files/attach/images/content/20170627/14985745981372.jpg', '14962991327805.jpg', 'jpg', 1498574598, 40410, '', 1, 'image/jpeg'),
(19, 'files/attach/images/content/20170628/14986180757806.jpg', '14962991327805.jpg', 'jpg', 1498618075, 40410, '', 1, 'image/jpeg'),
(20, 'files/attach/images/content/20170630/14987828416127.mp4', '忠成添加新闻.mp4', 'mp4', 1498782841, 28861775, '', 1, 'video/mp4'),
(21, 'files/attach/images/content/20170630/14987828649387.mp4', '酒店换妻4P单男狂草操（黑丝+高跟+制服）骚老婆.mp4', 'mp4', 1498782864, 56262939, '', 1, 'video/mp4'),
(22, 'files/attach/images/content/20170630/14988144366654.csv', 'x2_user.csv', 'csv', 1498814436, 33025, '', 1, 'application/');

-- --------------------------------------------------------

--
-- 表的结构 `x2_attachtype`
--

CREATE TABLE IF NOT EXISTS `x2_attachtype` (
  `atid` int(11) NOT NULL AUTO_INCREMENT,
  `attachtype` varchar(120) NOT NULL,
  `attachexts` tinytext NOT NULL,
  PRIMARY KEY (`atid`),
  KEY `attachtype` (`attachtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `x2_attachtype`
--

INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES
(1, '图片', 'jpg,png,gif,bmp'),
(2, '音频', 'mp3'),
(3, '多媒体', 'flv,wmv,mp4,avi'),
(4, '批量导入文件', 'csv');

-- --------------------------------------------------------

--
-- 表的结构 `x2_basic`
--

CREATE TABLE IF NOT EXISTS `x2_basic` (
  `basicid` int(11) NOT NULL AUTO_INCREMENT,
  `basic` varchar(120) NOT NULL DEFAULT '',
  `basicareaid` int(4) NOT NULL DEFAULT '0',
  `basicsubjectid` int(11) NOT NULL DEFAULT '0',
  `basicsection` text NOT NULL,
  `basicknows` text NOT NULL,
  `basicexam` text NOT NULL,
  `basicapi` varchar(32) NOT NULL DEFAULT '',
  `basicdemo` int(1) NOT NULL DEFAULT '0',
  `basicthumb` varchar(240) NOT NULL DEFAULT '',
  `basicprice` tinytext NOT NULL,
  `basicclosed` int(1) NOT NULL DEFAULT '0',
  `basicdescribe` text NOT NULL,
  PRIMARY KEY (`basicid`),
  KEY `basicexamid` (`basicareaid`),
  KEY `basicsubjectid` (`basicsubjectid`),
  KEY `basicapi` (`basicapi`),
  KEY `basicdemo` (`basicdemo`),
  KEY `basicclosed` (`basicclosed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_basic`
--

INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`, `basicdescribe`) VALUES
(1, '演示考场', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:1:{i:1;s:1:"1";}}', 'a:11:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:3:"1,3";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:1:"4";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";s:10:"allowgroup";s:0:"";}', '', 0, 'files/attach/images/content/20161231/14831523418562.jpg', '1:1000', 0, '本考场为PHPEMS系统演示考场');

-- --------------------------------------------------------

--
-- 表的结构 `x2_block`
--

CREATE TABLE IF NOT EXISTS `x2_block` (
  `blockid` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(120) NOT NULL DEFAULT '',
  `blocktype` int(1) NOT NULL DEFAULT '0',
  `blockposition` varchar(120) NOT NULL DEFAULT '',
  `blockcontent` text NOT NULL,
  PRIMARY KEY (`blockid`),
  KEY `blocktype` (`blocktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `x2_block`
--

INSERT INTO `x2_block` (`blockid`, `block`, `blocktype`, `blockposition`, `blockcontent`) VALUES
(1, '测试SQL', 3, '多处', 'a:8:{s:7:"dbtable";s:4:"user";s:5:"query";s:60:"AND|usergroupid=:usergroupid|usergroupid|v:_user[\\''userid\\'']";s:5:"order";s:0:"";s:5:"limit";a:2:{i:0;s:1:"0";i:1;s:1:"5";}s:3:"sql";s:0:"";s:5:"index";s:0:"";s:6:"serial";s:0:"";s:8:"template";s:31:"{x2;eval: print_r(v:blockdata)}";}'),
(2, 'sadsa', 1, 'asdsad', 'a:1:{s:7:"content";s:40:"&lt;p&gt;asdsadsadasdasdasdasd&lt;/p&gt;";}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_book`
--

CREATE TABLE IF NOT EXISTS `x2_book` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `bookcontent` text CHARACTER SET latin1 NOT NULL,
  `bookopenid` varchar(48) CHARACTER SET latin1 NOT NULL,
  `booktime` int(11) NOT NULL,
  `bookuserid` int(11) NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `bookopenid` (`bookopenid`),
  KEY `booktime` (`booktime`),
  KEY `bookuserid` (`bookuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_category`
--

CREATE TABLE IF NOT EXISTS `x2_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catapp` varchar(24) NOT NULL DEFAULT '',
  `catlite` int(11) NOT NULL DEFAULT '0',
  `catname` varchar(240) NOT NULL DEFAULT '',
  `catimg` varchar(240) NOT NULL DEFAULT '',
  `caturl` varchar(120) NOT NULL DEFAULT '',
  `catuseurl` int(1) NOT NULL DEFAULT '0',
  `catparent` int(11) DEFAULT '0',
  `catdes` text NOT NULL,
  `cattpl` varchar(36) NOT NULL DEFAULT '',
  `catmanager` text NOT NULL,
  `catinmenu` int(1) NOT NULL DEFAULT '0',
  `catindex` int(4) NOT NULL DEFAULT '0',
  `catsubject` int(11) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `catlite` (`catlite`,`catparent`),
  KEY `catappid` (`catapp`),
  KEY `catuseurl` (`catuseurl`),
  KEY `catinmenu` (`catinmenu`,`catindex`),
  KEY `catsubject` (`catsubject`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `x2_category`
--

INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`, `catsubject`) VALUES
(1, 'content', 0, '考试信息', 'files/attach/images/content/20160630/14672817197914.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 1, 1),
(2, 'content', 0, '首页头图', 'files/attach/images/content/20160630/14672817455479.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 100, 1),
(3, 'content', 0, '考试资料', 'files/attach/images/content/20160630/14672817048286.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 5, 1),
(4, 'content', 0, '帮助信息', 'files/attach/images/content/20160630/14672817317018.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 5, 1),
(5, 'course', 0, '会计基础', 'files/attach/images/content/20160630/14672924624115.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10, 0),
(11, 'content', 0, '二级分类', 'app/core/styles/images/noimage.gif', '', 0, 4, '', 'category_default', 'a:2:{s:8:\\"pubusers\\";s:0:\\"\\";s:9:\\"pubgroups\\";s:0:\\"\\";}', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_comment`
--

CREATE TABLE IF NOT EXISTS `x2_comment` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtopenid` varchar(48) NOT NULL DEFAULT '',
  `cmtuserid` int(11) NOT NULL,
  `cmtreply` text NOT NULL,
  `cmtcontent` text NOT NULL,
  `cmttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cmtid`),
  KEY `cmtapp` (`cmtopenid`,`cmttime`) USING BTREE,
  KEY `cmtuserid` (`cmtuserid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_comment`
--

INSERT INTO `x2_comment` (`cmtid`, `cmtopenid`, `cmtuserid`, `cmtreply`, `cmtcontent`, `cmttime`) VALUES
(3, 'openid1234567890', 1, '小白菜真可爱', '我是一个可爱的小白菜', 1479089640);

-- --------------------------------------------------------

--
-- 表的结构 `x2_config`
--

CREATE TABLE IF NOT EXISTS `x2_config` (
  `cfgapp` varchar(36) NOT NULL,
  `cfgsetting` text NOT NULL,
  PRIMARY KEY (`cfgapp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_consumelog`
--

CREATE TABLE IF NOT EXISTS `x2_consumelog` (
  `conlid` int(11) NOT NULL AUTO_INCREMENT,
  `conlcost` int(11) NOT NULL,
  `conluserid` int(11) NOT NULL,
  `conlinfo` varchar(120) NOT NULL,
  `conltype` int(4) NOT NULL,
  `conltime` int(11) NOT NULL,
  PRIMARY KEY (`conlid`),
  KEY `conluserid` (`conluserid`,`conltype`,`conltime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_content`
--

CREATE TABLE IF NOT EXISTS `x2_content` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) NOT NULL DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  `cizhuan_guige` varchar(60) NOT NULL,
  `cizhuan_brand` varchar(24) NOT NULL,
  `cizhuan_thumb` varchar(120) NOT NULL,
  `tester` text NOT NULL,
  `demo` varchar(240) NOT NULL,
  `演示2` varchar(120) NOT NULL,
  PRIMARY KEY (`contentid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `x2_content`
--

INSERT INTO `x2_content` (`contentid`, `contentcatid`, `contentmoduleid`, `contentuserid`, `contentusername`, `contenttitle`, `contentthumb`, `contentlink`, `contentinputtime`, `contentmodifytime`, `contentsequence`, `contentdescribe`, `contentinfo`, `contentstatus`, `contenttemplate`, `contenttext`, `cizhuan_guige`, `cizhuan_brand`, `cizhuan_thumb`, `tester`, `demo`, `演示2`) VALUES
(53, 1, 4, 1, 'peadmin', '这是一篇测试性的文章', 'files/attach/images/content/20161231/14831526066272.jpg', '', 1483152644, 0, 0, '这是一篇测试性的文章，我设置了头图和摘要', '', 0, 'content_default', '&lt;p&gt;这是一篇测试性的文章，我设置了头图和摘要&lt;/p&gt;', '', '', '', '', '', ''),
(54, 2, 4, 1, 'peadmin', '钣金喷漆的效果示例', 'files/attach/images/content/20170429/14933983401074.jpg', '', 1488246017, 1493398341, 0, '', '', 0, 'content_default', '', '', '', '', '', '', ''),
(55, 2, 4, 1, 'peadmin', '抛光打蜡效果示意', 'files/attach/images/content/20170429/14933983325087.jpg', '', 1488251447, 1493398334, 0, '', '', 0, 'content_default', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_coupon`
--

CREATE TABLE IF NOT EXISTS `x2_coupon` (
  `couponsn` varchar(16) NOT NULL,
  `couponvalue` int(11) NOT NULL DEFAULT '0',
  `couponstatus` int(1) NOT NULL DEFAULT '0',
  `couponaddtime` int(11) NOT NULL DEFAULT '0',
  `couponendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`couponsn`),
  KEY `couponstatus` (`couponstatus`,`couponendtime`),
  KEY `couponaddtime` (`couponaddtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_coupon`
--

INSERT INTO `x2_coupon` (`couponsn`, `couponvalue`, `couponstatus`, `couponaddtime`, `couponendtime`) VALUES
('9516BFCA8E71F774', 10, 1, 1473351444, 1504887444),
('93C0239EF31159C1', 10, 1, 1473351444, 1504887444),
('AA1D723A32B514FA', 10, 1, 1473351444, 1504887444),
('3523E1888E903910', 10, 0, 1473351444, 1504887444),
('02F112FCC4A5366E', 10, 0, 1473351444, 1504887444),
('AD35713886090B09', 10, 0, 1473351444, 1504887444),
('AC518D975323D0BD', 10, 0, 1473351444, 1504887444),
('C51210BF99ED6235', 10, 1, 1473351444, 1504887444),
('F1D9734CAEC10027', 10, 1, 1473351444, 1504887444),
('D97962CB4EE57298', 10, 0, 1473351444, 1504887444);

-- --------------------------------------------------------

--
-- 表的结构 `x2_course`
--

CREATE TABLE IF NOT EXISTS `x2_course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `coursetitle` varchar(240) DEFAULT NULL,
  `coursemoduleid` int(11) DEFAULT NULL,
  `coursecsid` int(11) DEFAULT NULL,
  `coursethumb` varchar(240) DEFAULT NULL,
  `courseuserid` int(11) DEFAULT NULL,
  `courseinputtime` int(11) DEFAULT NULL,
  `coursemodifytime` int(11) DEFAULT NULL,
  `coursesequence` int(11) DEFAULT NULL,
  `coursedescribe` text,
  `course_files` varchar(240) NOT NULL,
  `course_oggfile` varchar(250) NOT NULL,
  `course_webmfile` varchar(250) NOT NULL,
  `course_youtu` varchar(240) NOT NULL,
  PRIMARY KEY (`courseid`),
  KEY `coursecsid` (`coursecsid`,`courseuserid`,`courseinputtime`,`coursemodifytime`,`coursesequence`),
  KEY `coursemoduleid` (`coursemoduleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `x2_course`
--

INSERT INTO `x2_course` (`courseid`, `coursetitle`, `coursemoduleid`, `coursecsid`, `coursethumb`, `courseuserid`, `courseinputtime`, `coursemodifytime`, `coursesequence`, `coursedescribe`, `course_files`, `course_oggfile`, `course_webmfile`, `course_youtu`) VALUES
(1, '测试', 14, 1, 'files/attach/images/content/20170304/14885942847445.jpg', 1, 1467215744, 1489373827, 0, '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 测试测试测试测试&lt;span style=&quot;line-height: 20.8px;&quot;&gt;测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试&lt;/span&gt;&lt;/p&gt;', '', '', '', 'http://player.youku.com/player.php/sid/XMjYxOTQ1Mzg2MA==/v.swf'),
(2, '测试2', 14, 1, 'files/attach/images/content/20170304/14885948427581.jpg', 1, 1467262651, 1498782868, 0, '', 'files/attach/images/content/20170630/14987828649387.mp4', '', '', ''),
(3, '课件三', 14, 1, 'files/attach/images/content/20170304/14885948553626.jpg', 1, 1488594862, 1489633834, 0, '', '', '', '', 'http://www.qhylxd.com/ckplayer/m3u8.swf&amp;a=http://www.qhylxd.com/cache/d742dd928528f05bfa227f7c66c79a46.m3u8&amp;c=0&amp;amp;s=4&amp;amp;lv=0&amp;p=1&amp;v='),
(4, '课件四', 14, 1, 'files/attach/images/content/20170304/14885948727683.jpg', 1, 1488594874, 0, 0, '', '', '', '', ''),
(5, '课件五', 14, 1, 'files/attach/images/content/20170304/14885948899661.jpg', 1, 1488594891, 0, 0, '', '', '', '', ''),
(6, '课件六', 14, 1, 'files/attach/images/content/20170304/14885949035035.jpg', 1, 1488594904, 0, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_coursesubject`
--

CREATE TABLE IF NOT EXISTS `x2_coursesubject` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `cstitle` varchar(240) DEFAULT '',
  `cscatid` int(11) DEFAULT NULL,
  `csuserid` int(11) DEFAULT '0',
  `csbasicid` int(11) DEFAULT '0',
  `cssubjectid` int(11) DEFAULT '0',
  `cstime` int(11) DEFAULT '0',
  `csthumb` varchar(120) DEFAULT '',
  `cssequence` int(11) DEFAULT NULL,
  `csdescribe` text,
  `csdemo` tinyint(1) DEFAULT NULL,
  `csprice` text,
  PRIMARY KEY (`csid`),
  KEY `csbasicid` (`csbasicid`,`cssubjectid`,`cstime`),
  KEY `cscatid` (`cscatid`),
  KEY `cuserid` (`csuserid`),
  KEY `cssequence` (`cssequence`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_coursesubject`
--

INSERT INTO `x2_coursesubject` (`csid`, `cstitle`, `cscatid`, `csuserid`, `csbasicid`, `cssubjectid`, `cstime`, `csthumb`, `cssequence`, `csdescribe`, `csdemo`, `csprice`) VALUES
(1, '会计基础', 5, 1, 1, 1, 1467214449, 'files/attach/images/content/20170422/14928532636051.jpg', 0, '会计基础', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_dochistory`
--

CREATE TABLE IF NOT EXISTS `x2_dochistory` (
  `dhid` int(11) NOT NULL AUTO_INCREMENT,
  `dhcontent` text NOT NULL,
  `dhtime` int(11) NOT NULL,
  `dhstatus` tinyint(4) NOT NULL,
  `dhtop` tinyint(4) NOT NULL,
  PRIMARY KEY (`dhid`),
  KEY `dhtime` (`dhtime`),
  KEY `dhstatus` (`dhstatus`),
  KEY `dhtop` (`dhtop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_docs`
--

CREATE TABLE IF NOT EXISTS `x2_docs` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `doctitle` varchar(240) NOT NULL,
  `doccatid` int(11) NOT NULL,
  `dockeywords` varchar(240) NOT NULL,
  `doccontentid` int(11) NOT NULL,
  `docinputtime` int(11) NOT NULL,
  `docmodifytime` int(11) NOT NULL,
  `docdescribe` varchar(240) NOT NULL,
  `doclock` tinyint(4) NOT NULL,
  PRIMARY KEY (`docid`),
  KEY `doctitle` (`doctitle`),
  KEY `doccatid` (`doccatid`),
  KEY `doccontentid` (`doccontentid`),
  KEY `docinputtime` (`docinputtime`),
  KEY `docmodifytime` (`docmodifytime`),
  KEY `doclock` (`doclock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_examhistory`
--

CREATE TABLE IF NOT EXISTS `x2_examhistory` (
  `ehid` int(11) NOT NULL AUTO_INCREMENT,
  `ehexamid` int(11) NOT NULL DEFAULT '0',
  `ehexam` varchar(240) NOT NULL DEFAULT '',
  `ehtype` int(11) NOT NULL DEFAULT '0',
  `ehbasicid` int(11) NOT NULL DEFAULT '0',
  `ehquestion` longtext NOT NULL,
  `ehsetting` text,
  `ehscorelist` text,
  `ehuseranswer` text,
  `ehtime` int(11) NOT NULL DEFAULT '0',
  `ehscore` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ehuserid` int(11) NOT NULL DEFAULT '0',
  `ehusername` varchar(120) NOT NULL DEFAULT '',
  `ehstarttime` int(11) NOT NULL DEFAULT '0',
  `ehendtime` int(11) NOT NULL,
  `ehstatus` int(1) NOT NULL DEFAULT '1',
  `ehdecide` int(1) NOT NULL DEFAULT '0',
  `ehtimelist` text,
  `ehopenid` varchar(48) NOT NULL,
  `ehneedresit` tinyint(1) NOT NULL,
  `ehispass` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ehid`),
  KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`),
  KEY `ehdecide` (`ehdecide`),
  KEY `ehexamid` (`ehexamid`),
  KEY `examopenid` (`ehopenid`),
  KEY `ehneedresit` (`ehneedresit`),
  KEY `ehispass` (`ehispass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_exams`
--

CREATE TABLE IF NOT EXISTS `x2_exams` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examsubject` tinyint(4) NOT NULL DEFAULT '0',
  `exam` varchar(120) NOT NULL DEFAULT '',
  `examsetting` text NOT NULL,
  `examquestions` text NOT NULL,
  `examscore` text NOT NULL,
  `examstatus` int(1) NOT NULL DEFAULT '0',
  `examtype` int(11) NOT NULL DEFAULT '0',
  `examauthorid` int(11) NOT NULL DEFAULT '0',
  `examauthor` varchar(120) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `examtime` int(11) NOT NULL DEFAULT '0',
  `examkeyword` varchar(240) NOT NULL DEFAULT '',
  `examdecide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`examid`),
  KEY `examstatus` (`examstatus`),
  KEY `examtype` (`examtype`,`examauthorid`),
  KEY `examtime` (`examtime`),
  KEY `examsubject` (`examsubject`),
  KEY `examdecide` (`examdecide`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `x2_exams`
--

INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES
(1, 1, '演示试卷一', 'a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:2:"30";s:5:"score";s:1:"1";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"30";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:2:"30";s:5:"score";s:1:"1";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"30";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:2:"40";s:5:"score";s:1:"1";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"40";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1479265100, '', 0),
(2, 2, '测试二', 'a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:1:"1";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:3:"100";s:5:"score";s:1:"1";s:8:"describe";s:0:"";s:10:"easynumber";s:3:"100";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1488992329, '', 0),
(3, 1, '测试', 'a:6:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:3:"111";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:8:"questype";a:6:{i:1;a:3:{s:6:"number";s:2:"10";s:5:"score";s:2:"10";s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:4;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:5;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:6;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}}}', 'a:2:{s:9:"questions";a:1:{i:1;a:1:{i:0;a:8:{s:10:"questionid";s:3:"q_1";s:12:"questiontype";s:1:"1";s:8:"question";s:78:"在理财产品销售过程中，下列属于错误销售行为的是（）。";s:14:"questionselect";s:296:"A.所有的销售凭证包括风险评估报告由客户本人亲自填写并签字确认 B.采取抽奖、礼品赠送等方式销售理财产品 C.产品说明书中须由客户亲自抄录的内容由客户亲笔抄录 D.客户拟购买的产品风险评级与客户风险承受能力相匹配";s:20:"questionselectnumber";i:4;s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:3:"无";s:18:"questioncreatetime";i:1491028681;}}}s:12:"questionrows";N;}', '', 0, 3, 1, 'peadmin', 1491028681, '', 0),
(4, 1, '测试222', 'a:6:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:3:"111";s:5:"score";s:3:"100";s:9:"passscore";s:2:"60";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"0";i:5;s:1:"0";i:6;s:1:"1";}s:8:"questype";a:4:{i:1;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:6;a:3:{s:6:"number";s:1:"1";s:5:"score";s:3:"100";s:8:"describe";s:0:"";}}}', 'a:4:{i:1;a:2:{s:9:"questions";s:1:",";s:13:"rowsquestions";s:0:"";}i:2;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:3;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:6;a:2:{s:9:"questions";s:5:",888,";s:13:"rowsquestions";s:0:"";}}', '', 0, 2, 1, 'peadmin', 1493997715, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_examsession`
--

CREATE TABLE IF NOT EXISTS `x2_examsession` (
  `examsessionid` varchar(32) NOT NULL,
  `examsessionuserid` int(11) NOT NULL DEFAULT '0',
  `examsession` varchar(240) NOT NULL DEFAULT '',
  `examsessionsetting` text NOT NULL,
  `examsessionsign` text,
  `examsessionbasic` int(11) NOT NULL DEFAULT '0',
  `examsessiontype` int(1) NOT NULL,
  `examsessionkey` varchar(32) NOT NULL DEFAULT '',
  `examsessionquestion` longtext NOT NULL,
  `examsessionuseranswer` text,
  `examsessionstarttime` int(11) NOT NULL DEFAULT '0',
  `examsessiontime` int(11) NOT NULL DEFAULT '0',
  `examsessionstatus` int(1) NOT NULL DEFAULT '0',
  `examsessionscore` decimal(10,1) NOT NULL DEFAULT '0.0',
  `examsessionscorelist` text,
  `examsessionissave` int(1) NOT NULL DEFAULT '0',
  `examsessiontimelist` text,
  PRIMARY KEY (`examsessionid`),
  KEY `examsessionstarttime` (`examsessionstarttime`),
  KEY `examsessionstatus` (`examsessionstatus`),
  KEY `examsessiontype` (`examsessiontype`),
  KEY `examsessionkey` (`examsessionkey`),
  KEY `examsubject` (`examsessionbasic`),
  KEY `examsessionissave` (`examsessionissave`),
  KEY `examsessionuserid` (`examsessionuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_exercise`
--

CREATE TABLE IF NOT EXISTS `x2_exercise` (
  `exerid` int(11) NOT NULL AUTO_INCREMENT,
  `exeruserid` int(11) NOT NULL,
  `exerbasicid` int(11) NOT NULL,
  `exerknowsid` int(11) NOT NULL,
  `exernumber` int(11) NOT NULL,
  `exerqutype` int(11) NOT NULL,
  PRIMARY KEY (`exerid`),
  KEY `exeruserid` (`exeruserid`),
  KEY `exerbasicid` (`exerbasicid`),
  KEY `exerknowsid` (`exerknowsid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_exercise`
--

INSERT INTO `x2_exercise` (`exerid`, `exeruserid`, `exerbasicid`, `exerknowsid`, `exernumber`, `exerqutype`) VALUES
(1, 1, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_favor`
--

CREATE TABLE IF NOT EXISTS `x2_favor` (
  `favorid` int(11) NOT NULL AUTO_INCREMENT,
  `favoruserid` int(11) NOT NULL DEFAULT '0',
  `favorsubjectid` int(11) NOT NULL DEFAULT '0',
  `favorquestionid` int(11) NOT NULL DEFAULT '0',
  `favortime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favorid`),
  KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`),
  KEY `favorsubjectid` (`favorsubjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_feedback`
--

CREATE TABLE IF NOT EXISTS `x2_feedback` (
  `fbid` int(11) NOT NULL AUTO_INCREMENT,
  `fbquestionid` int(11) NOT NULL,
  `fbtype` varchar(120) NOT NULL,
  `fbcontent` text NOT NULL,
  `fbuserid` int(11) NOT NULL,
  `fbtime` int(11) NOT NULL,
  `fbstatus` tinyint(4) NOT NULL,
  `fbdoneuserid` int(11) NOT NULL,
  `fbdonetime` int(11) NOT NULL,
  PRIMARY KEY (`fbid`),
  KEY `fbquestionid` (`fbquestionid`,`fbuserid`),
  KEY `fbtype` (`fbtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `x2_feedback`
--

INSERT INTO `x2_feedback` (`fbid`, `fbquestionid`, `fbtype`, `fbcontent`, `fbuserid`, `fbtime`, `fbstatus`, `fbdoneuserid`, `fbdonetime`) VALUES
(1, 88, '知识点归类错误', '知识点选择的不对', 1, 1495084050, 1, 1, 1495088833),
(2, 3, '其他', '这个应该是选择题吧', 1, 1495102628, 0, 0, 0),
(3, 1, '题干错误', '测试题干呢', 1, 1498835850, 0, 0, 0),
(4, 1, '答案错误', '22222', 1, 1498835868, 0, 0, 0),
(5, 3, '答案错误', '阿凡达是否', 1, 1498835883, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_gbook`
--

CREATE TABLE IF NOT EXISTS `x2_gbook` (
  `gbid` int(11) NOT NULL AUTO_INCREMENT,
  `gbinfo` text NOT NULL,
  `gbcontent` text NOT NULL,
  `gbreply` text NOT NULL,
  `gbtime` int(11) NOT NULL DEFAULT '0',
  `gbreplytime` int(11) NOT NULL DEFAULT '0',
  `gbstatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gbid`),
  KEY `gbtime` (`gbtime`),
  KEY `gbreplytime` (`gbreplytime`),
  KEY `gbstatus` (`gbstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_knows`
--

CREATE TABLE IF NOT EXISTS `x2_knows` (
  `knowsid` int(11) NOT NULL AUTO_INCREMENT,
  `knows` varchar(120) NOT NULL DEFAULT '',
  `knowssectionid` int(11) NOT NULL DEFAULT '0',
  `knowsdescribe` text NOT NULL,
  `knowsstatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`knowsid`),
  KEY `knows` (`knows`,`knowssectionid`),
  KEY `knowsstatus` (`knowsstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_knows`
--

INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`) VALUES
(1, '演示知识点', 1, '', 1),
(2, '测试2知识点', 1, '', 1),
(3, '测试知识点二', 5, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_log`
--

CREATE TABLE IF NOT EXISTS `x2_log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) DEFAULT '0',
  `logcourseid` int(11) DEFAULT '0',
  `logtime` int(11) DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `loguserid` (`loguserid`,`logcourseid`),
  KEY `logtime` (`logtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- 转存表中的数据 `x2_log`
--

INSERT INTO `x2_log` (`logid`, `loguserid`, `logcourseid`, `logtime`) VALUES
(1, 1, 0, 1488592499),
(2, 1, 0, 1488592501),
(3, 1, 0, 1488592510),
(4, 1, 0, 1488592524),
(5, 1, 0, 1488592545),
(6, 1, 0, 1488592620),
(7, 1, 2, 1488592630),
(8, 1, 1, 1488592631),
(9, 1, 2, 1488593622),
(10, 1, 1, 1488593624),
(11, 1, 0, 1488593626),
(12, 1, 0, 1488593638),
(13, 1, 0, 1488593672),
(14, 1, 0, 1488593688),
(15, 1, 2, 1488593775),
(16, 1, 1, 1488593778),
(17, 1, 2, 1488593779),
(18, 1, 1, 1488593799),
(19, 1, 2, 1488593802),
(20, 1, 1, 1488593804),
(21, 1, 2, 1488593825),
(22, 1, 0, 1488593865),
(23, 1, 0, 1488593889),
(24, 1, 0, 1488593934),
(25, 1, 0, 1488593989),
(26, 1, 0, 1488594077),
(27, 1, 0, 1488594079),
(28, 1, 0, 1488594091),
(29, 1, 0, 1488594113),
(30, 1, 2, 1488594114),
(31, 1, 1, 1488594116),
(32, 1, 2, 1488594117),
(33, 1, 1, 1488594118),
(34, 1, 0, 1488594128),
(35, 1, 0, 1488594145),
(36, 1, 0, 1488594258),
(37, 1, 0, 1488594263),
(38, 1, 0, 1488594288),
(39, 1, 0, 1488594336),
(40, 1, 0, 1488594353),
(41, 1, 0, 1488594368),
(42, 1, 0, 1488594379),
(43, 1, 2, 1488594391),
(44, 1, 1, 1488594393),
(45, 1, 1, 1488594394),
(46, 1, 2, 1488594395),
(47, 1, 0, 1488594410),
(48, 1, 0, 1488594455),
(49, 1, 1, 1488594458),
(50, 1, 1, 1488594459),
(51, 1, 1, 1488594460),
(52, 1, 2, 1488594461),
(53, 1, 1, 1488594462),
(54, 1, 0, 1488594491),
(55, 1, 1, 1488594495),
(56, 1, 2, 1488594496),
(57, 1, 1, 1488594497),
(58, 1, 2, 1488594498),
(59, 1, 1, 1488594499),
(60, 1, 2, 1488594501),
(61, 1, 0, 1488594608),
(62, 1, 0, 1488594642),
(63, 1, 0, 1488594906),
(64, 1, 0, 1488594924),
(65, 1, 0, 1488595052),
(66, 1, 0, 1488595100),
(67, 1, 0, 1488595121),
(68, 1, 2, 1488595159),
(69, 1, 3, 1488595161),
(70, 1, 4, 1488595162),
(71, 1, 5, 1488595163),
(72, 1, 1, 1488595164),
(73, 1, 0, 1488595251),
(74, 1, 0, 1488595279),
(75, 1, 0, 1488595290),
(76, 1, 0, 1488595292),
(77, 1, 0, 1488595294),
(78, 1, 0, 1488595308),
(79, 1, 0, 1488595319),
(80, 1, 0, 1488595329),
(81, 1, 0, 1488595330),
(82, 1, 0, 1488595337),
(83, 1, 0, 1488595345),
(84, 1, 0, 1488595350),
(85, 1, 0, 1488595368),
(86, 1, 0, 1488595818),
(87, 1, 0, 1488595924),
(88, 1, 0, 1488595948),
(89, 1, 0, 1488596026),
(90, 1, 0, 1488596039),
(91, 1, 0, 1488596132),
(92, 1, 0, 1488596184),
(93, 1, 0, 1488597031),
(94, 1, 0, 1488597057),
(95, 1, 0, 1488597062),
(96, 1, 0, 1488597065),
(97, 1, 0, 1488597343),
(98, 1, 0, 1488597345),
(99, 1, 0, 1488597350),
(100, 1, 0, 1488597721),
(101, 1, 1, 1488598406),
(102, 1, 2, 1488598412),
(103, 1, 3, 1488598414),
(104, 1, 1, 1488598416),
(105, 1, 3, 1488598436),
(106, 1, 1, 1488598574),
(107, 1, 0, 1488598647),
(108, 1, 0, 1488605990),
(109, 1, 0, 1488606005),
(110, 1, 0, 1488606052),
(111, 1, 0, 1488606062),
(112, 1, 0, 1488902701),
(113, 1, 0, 1489248054),
(114, 1, 2, 1489248059),
(115, 1, 0, 1489373814),
(116, 1, 0, 1489373830),
(117, 1, 2, 1489373976),
(118, 1, 1, 1489373996),
(119, 1, 0, 1489631785),
(120, 1, 3, 1489631787),
(121, 1, 1, 1489631793),
(122, 1, 3, 1489632089),
(123, 1, 3, 1489632093),
(124, 1, 0, 1489632094),
(125, 1, 3, 1489632111),
(126, 1, 0, 1489633837),
(127, 1, 3, 1489633839),
(128, 1, 3, 1489633841),
(129, 1, 0, 1489748525),
(130, 1, 2, 1489748541),
(131, 1, 0, 1492853175),
(132, 1, 0, 1493864658),
(133, 1, 0, 1495612144),
(134, 1, 0, 1495612284),
(135, 1, 0, 1497235047),
(136, 1, 0, 1497235049),
(137, 1, 0, 1497235051),
(138, 1, 0, 1497235054),
(139, 1, 0, 1497235056),
(140, 1, 0, 1498782010),
(141, 1, 0, 1498782152),
(142, 1, 0, 1498782154),
(143, 1, 0, 1498782174),
(144, 1, 0, 1498782183),
(145, 1, 0, 1498782191),
(146, 1, 0, 1498782308),
(147, 1, 0, 1498782326),
(148, 1, 2, 1498782380),
(149, 1, 2, 1498782399),
(150, 1, 2, 1498782404),
(151, 1, 0, 1498782875),
(152, 1, 2, 1498782881),
(153, 1, 0, 1498782917),
(154, 1, 1, 1498783208),
(155, 1, 0, 1498783544),
(156, 1, 0, 1498783548),
(157, 1, 0, 1498783562),
(158, 1, 0, 1498783594),
(159, 1, 0, 1498783635),
(160, 1, 2, 1498783659),
(161, 1, 1, 1498783672),
(162, 1, 0, 1498834501),
(163, 1, 2, 1498834505),
(164, 1, 0, 1498834511),
(165, 1, 2, 1498834615),
(166, 1, 0, 1498834793),
(167, 1, 2, 1498834795),
(168, 1, 2, 1498834820),
(169, 1, 0, 1498834928),
(170, 1, 2, 1498834931),
(171, 1, 0, 1498834946),
(172, 1, 2, 1498834949),
(173, 1, 0, 1498834982),
(174, 1, 2, 1498834985),
(175, 1, 0, 1498835044),
(176, 1, 0, 1498836407),
(177, 1, 2, 1498836416);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module`
--

CREATE TABLE IF NOT EXISTS `x2_module` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulecode` varchar(24) NOT NULL DEFAULT '',
  `modulename` varchar(60) NOT NULL DEFAULT '',
  `moduledescribe` tinytext NOT NULL,
  `moduleapp` varchar(24) NOT NULL DEFAULT '',
  `moduletable` varchar(24) NOT NULL DEFAULT '',
  `moduleallowreg` tinyint(1) DEFAULT '0',
  `modulestatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `modulecode` (`modulecode`),
  KEY `modulename` (`modulename`),
  KEY `moduleapp` (`moduleapp`),
  KEY `moduleallowreg` (`moduleallowreg`),
  KEY `modulestatus` (`modulestatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `x2_module`
--

INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`) VALUES
(1, 'manager', '管理员模型', '管理员', 'user', 'user_data', 0, 0),
(9, 'normal', '普通用户模型', '普通用户', 'user', '', 0, 0),
(4, 'news', '新闻', '新闻', 'content', 'content_data', 0, 0),
(11, 'spnormal', '普通信息', '普通信息', 'special', '', 0, 0),
(12, 'teacher', '教师模型', '教师模型', 'user', '', 0, 0),
(14, 'course', '视频课程', '', 'course', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module_fields`
--

CREATE TABLE IF NOT EXISTS `x2_module_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldappid` varchar(12) NOT NULL DEFAULT '',
  `fieldmoduleid` int(4) NOT NULL DEFAULT '0',
  `fieldsequence` tinyint(4) NOT NULL DEFAULT '0',
  `field` varchar(24) NOT NULL DEFAULT '',
  `fieldtitle` varchar(60) NOT NULL DEFAULT '',
  `fieldlength` varchar(12) NOT NULL DEFAULT '',
  `fielddescribe` text NOT NULL,
  `fieldtype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmltype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmlproperty` text NOT NULL,
  `fieldvalues` text NOT NULL,
  `fielddefault` text NOT NULL,
  `fieldlock` tinyint(1) NOT NULL DEFAULT '0',
  `fieldindextype` varchar(12) NOT NULL DEFAULT '',
  `fieldforbidactors` tinytext NOT NULL,
  `fieldsystem` int(1) NOT NULL DEFAULT '0',
  `fieldpublic` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field` (`field`,`fieldlock`),
  KEY `fieldmoduleid` (`fieldmoduleid`),
  KEY `fieldsequence` (`fieldsequence`),
  KEY `fieldsystem` (`fieldsystem`),
  KEY `fieldpublic` (`fieldpublic`),
  KEY `fieldappid` (`fieldappid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `x2_module_fields`
--

INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES
(1, 'user', 1, 2, 'manager_apps', '可管理模块', '240', '', 'varchar', 'checkboxarray', 'class=form-control\r\nstyle=width:30%', '用户=user\r\n内容=content\r\n考试=exam\r\n文件=document\r\n课程=course\r\n财务=bank', '', 0, '', ',-1,', 0, 0),
(2, 'user', 1, 0, 'photo', '用户肖像', '120', '', 'varchar', 'thumb', '', '', '', 0, '0', ',,', 0, 1),
(3, 'user', 1, 0, 'usertruename', '真实姓名', '24', '', 'varchar', 'text', 'class=form-control', '', '', 0, '0', ',,', 0, 1),
(6, 'user', 9, 0, 'normal_favor', '爱好', '250', '', 'varchar', 'checkboxarray', '', '吃=吃\r\n喝=喝\r\n拉=拉\r\n撒=撒\r\n睡=睡', '吃', 0, '0', ',,', 0, 0),
(7, 'user', 12, 0, 'teacher_subjects', '可管理科目', '', '', 'text', 'checkboxarray', '', '演示课程=1\r\n测试科目二=2', '', 0, '0', ',-1,', 0, 0),
(8, 'content', 13, 0, 'cizhuan_guige', '规格', '60', '', 'varchar', 'radio', '', '90*90=1\r\n60*60=2', '', 0, '', ',,', 1, 0),
(9, 'content', 13, 0, 'cizhuan_brand', '品牌', '24', '', 'varchar', 'checkboxarray', '', '阿里=阿里\r\n阿里1=阿里1', '', 0, '', ',,', 0, 0),
(10, 'content', 13, 0, 'cizhuan_thumb', '缩略图', '120', '', 'varchar', 'thumb', '', '', '', 0, '', ',,', 0, 0),
(11, 'course', 14, 0, 'course_files', 'MP4视频', '240', 'MP4的视频格式，用于支持IE浏览器的H5播放', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.mp4\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0),
(12, 'content', 4, 0, 'tester', '测试字段', '', '', 'text', 'picture', 'class=form-control', '', '', 0, '', ',,', 0, 1),
(13, 'user', 9, 0, 'userischeck', '是否认证', '1', '', 'int', 'radio', '', '是=1\r\n否=0', '1', 0, '', ',-1,', 1, 1),
(14, 'user', 12, 0, 'userprofile', '个人简介', '', '', 'text', 'textarea', 'class=form-control', '', '', 0, '', ',,', 0, 1),
(15, 'user', 12, 0, 'usersequence', '权重', '', '', 'int', 'text', '', '', '', 0, '', ',-1,1,', 0, 1),
(16, 'course', 14, 0, 'course_oggfile', 'ogg视频', '250', 'ogg视频支持火狐和谷歌浏览器', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.ogg\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0),
(17, 'course', 14, 0, 'course_webmfile', 'webm视频', '250', 'webm视频用户火狐和谷歌浏览器播放', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.webm\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0),
(18, 'course', 14, 0, 'course_youtu', '优酷土豆源', '240', '', 'varchar', 'text', 'class=form-control', '', '', 0, '', ',,', 0, 0),
(19, 'user', 9, 0, 'userreferrer', '推荐人ID', '', '', 'int', 'text', 'class=form-control\r\nstyle=width:120px', '', '', 0, '', ',-1,', 0, 1),
(20, 'content', 4, 0, 'demo', '演示', '240', '', 'varchar', 'thumb', '', '', '', 0, '', ',,', 0, 1),
(21, 'content', 4, 0, '演示2', 'demo2', '120', '', 'varchar', 'select', 'class=form-control', '选择值1=1\r\n选择值2=2', '2', 0, '', ',,', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_openbasics`
--

CREATE TABLE IF NOT EXISTS `x2_openbasics` (
  `obid` int(11) NOT NULL AUTO_INCREMENT,
  `obuserid` int(11) NOT NULL DEFAULT '0',
  `obbasicid` int(11) NOT NULL DEFAULT '0',
  `obtime` int(11) NOT NULL DEFAULT '0',
  `obendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`obid`),
  KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- 转存表中的数据 `x2_openbasics`
--

INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES
(67, 2, 1, 1492188723, 1494780723),
(69, 1, 5, 1493734345, 1525270345),
(73, 1, 1, 1498136286, 1500728286);

-- --------------------------------------------------------

--
-- 表的结构 `x2_opencourse`
--

CREATE TABLE IF NOT EXISTS `x2_opencourse` (
  `ocid` int(11) NOT NULL AUTO_INCREMENT,
  `ocuserid` int(11) NOT NULL,
  `occourseid` int(11) NOT NULL,
  `octime` int(11) NOT NULL,
  `ocendtime` int(11) NOT NULL,
  PRIMARY KEY (`ocid`),
  KEY `ocuserid` (`ocuserid`,`occourseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_orders`
--

CREATE TABLE IF NOT EXISTS `x2_orders` (
  `ordersn` varchar(15) NOT NULL,
  `ordertitle` varchar(240) NOT NULL,
  `orderdescribe` text NOT NULL,
  `orderitems` text NOT NULL,
  `orderprice` decimal(10,2) NOT NULL,
  `orderuserid` int(11) NOT NULL,
  `orderuserinfo` text NOT NULL,
  `orderstatus` int(2) NOT NULL,
  `orderfullprice` decimal(10,2) NOT NULL,
  `ordercreatetime` int(11) NOT NULL,
  `orderpaytime` int(11) NOT NULL,
  `orderouttime` int(11) NOT NULL,
  `orderrecivetime` int(11) NOT NULL,
  `orderfaq` text NOT NULL,
  `orderpost` text NOT NULL,
  PRIMARY KEY (`ordersn`),
  KEY `orderprice` (`orderprice`,`ordercreatetime`,`orderpaytime`),
  KEY `orderuserid` (`orderuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_orders`
--

INSERT INTO `x2_orders` (`ordersn`, `ordertitle`, `orderdescribe`, `orderitems`, `orderprice`, `orderuserid`, `orderuserinfo`, `orderstatus`, `orderfullprice`, `ordercreatetime`, `orderpaytime`, `orderouttime`, `orderrecivetime`, `orderfaq`, `orderpost`) VALUES
('201703251005677', '考试系统充值 1 元', '', '', '1.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1490407535, 0, 0, 0, '', ''),
('201703251009404', '考试系统充值 2 元', '', '', '2.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1490407795, 0, 0, 0, '', ''),
('201703251012931', '考试系统充值 4 元', '', '', '4.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1490407970, 0, 0, 0, '', ''),
('201703251017785', '考试系统充值 2 元', '', '', '2.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 2, '0.00', 1490408255, 0, 0, 0, '', ''),
('201704302320481', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493565617, 0, 0, 0, '', ''),
('201704302346427', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567207, 0, 0, 0, '', ''),
('201704302347848', '考试系统充值 90 元', '', '', '90.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567246, 0, 0, 0, '', ''),
('201704302347990', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567271, 0, 0, 0, '', ''),
('201704302348179', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567316, 0, 0, 0, '', ''),
('201704302349174', '考试系统充值 90 元', '', '', '90.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567357, 0, 0, 0, '', ''),
('201704302351677', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567460, 0, 0, 0, '', ''),
('201704302351988', '考试系统充值 80 元', '', '', '80.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567490, 0, 0, 0, '', ''),
('201704302359453', '考试系统充值 98 元', '', '', '98.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1493567968, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_poscontent`
--

CREATE TABLE IF NOT EXISTS `x2_poscontent` (
  `pcid` int(11) NOT NULL AUTO_INCREMENT,
  `pcposid` int(11) NOT NULL DEFAULT '0',
  `pccontentid` int(11) NOT NULL DEFAULT '0',
  `pcthumb` varchar(120) NOT NULL DEFAULT '',
  `pcsequence` int(11) NOT NULL DEFAULT '0',
  `pctitle` varchar(240) NOT NULL DEFAULT '',
  `pctime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcid`),
  KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`),
  KEY `pctime` (`pctime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_position`
--

CREATE TABLE IF NOT EXISTS `x2_position` (
  `posid` int(11) NOT NULL AUTO_INCREMENT,
  `posname` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_product`
--

CREATE TABLE IF NOT EXISTS `x2_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `producttype` varchar(24) NOT NULL DEFAULT '',
  `productpartnerid` int(11) NOT NULL DEFAULT '0',
  `productname` varchar(240) NOT NULL DEFAULT '',
  `productcode` int(11) NOT NULL DEFAULT '0',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productdescribe` text NOT NULL,
  `productlesson` varchar(40) NOT NULL DEFAULT '',
  `producttry` varchar(240) NOT NULL DEFAULT '',
  PRIMARY KEY (`productid`),
  KEY `partnercode` (`productcode`),
  KEY `productpartnerid` (`productpartnerid`),
  KEY `producttype` (`producttype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_quest2knows`
--

CREATE TABLE IF NOT EXISTS `x2_quest2knows` (
  `qkid` int(11) NOT NULL AUTO_INCREMENT,
  `qkquestionid` int(11) NOT NULL DEFAULT '0',
  `qkknowsid` int(11) NOT NULL DEFAULT '0',
  `qktype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qkid`),
  KEY `qkquestionid` (`qkquestionid`,`qkknowsid`),
  KEY `qktype` (`qktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=890 ;

--
-- 转存表中的数据 `x2_quest2knows`
--

INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 1, 0),
(9, 9, 1, 0),
(10, 10, 1, 0),
(11, 11, 1, 0),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 1, 0),
(15, 15, 1, 0),
(16, 16, 1, 0),
(17, 17, 1, 0),
(18, 18, 1, 0),
(19, 19, 1, 0),
(20, 20, 1, 0),
(21, 21, 1, 0),
(22, 22, 1, 0),
(23, 23, 1, 0),
(24, 24, 1, 0),
(25, 25, 1, 0),
(26, 26, 1, 0),
(27, 27, 1, 0),
(28, 28, 1, 0),
(29, 29, 1, 0),
(30, 30, 1, 0),
(31, 31, 1, 0),
(32, 32, 1, 0),
(33, 33, 1, 0),
(34, 34, 1, 0),
(35, 35, 1, 0),
(36, 36, 1, 0),
(37, 37, 1, 0),
(38, 38, 1, 0),
(39, 39, 1, 0),
(40, 40, 1, 0),
(41, 41, 1, 0),
(42, 42, 1, 0),
(43, 43, 1, 0),
(44, 44, 1, 0),
(45, 45, 1, 0),
(46, 46, 1, 0),
(47, 47, 1, 0),
(48, 48, 1, 0),
(49, 49, 1, 0),
(50, 50, 1, 0),
(51, 51, 1, 0),
(52, 52, 1, 0),
(53, 53, 1, 0),
(54, 54, 1, 0),
(55, 55, 1, 0),
(56, 56, 1, 0),
(57, 57, 1, 0),
(58, 58, 1, 0),
(59, 59, 1, 0),
(60, 60, 1, 0),
(61, 61, 1, 0),
(62, 62, 1, 0),
(63, 63, 1, 0),
(64, 64, 1, 0),
(65, 65, 1, 0),
(66, 66, 1, 0),
(67, 67, 1, 0),
(68, 68, 1, 0),
(69, 69, 1, 0),
(70, 70, 1, 0),
(71, 71, 1, 0),
(72, 72, 1, 0),
(73, 73, 1, 0),
(74, 74, 1, 0),
(75, 75, 1, 0),
(76, 76, 1, 0),
(77, 77, 1, 0),
(78, 78, 1, 0),
(79, 79, 1, 0),
(80, 80, 1, 0),
(81, 81, 1, 0),
(82, 82, 1, 0),
(83, 83, 1, 0),
(84, 84, 1, 0),
(85, 85, 1, 0),
(86, 86, 1, 0),
(87, 87, 1, 0),
(88, 88, 1, 0),
(89, 89, 1, 0),
(90, 90, 1, 0),
(91, 91, 1, 0),
(92, 92, 1, 0),
(93, 93, 1, 0),
(94, 94, 1, 0),
(95, 95, 1, 0),
(96, 96, 1, 0),
(97, 97, 1, 0),
(98, 98, 1, 0),
(99, 99, 1, 0),
(100, 100, 1, 0),
(101, 101, 1, 0),
(102, 102, 1, 0),
(103, 103, 1, 0),
(104, 104, 1, 0),
(105, 105, 1, 0),
(106, 106, 1, 0),
(107, 107, 1, 0),
(108, 108, 1, 0),
(109, 109, 1, 0),
(110, 110, 1, 0),
(111, 111, 1, 0),
(112, 112, 1, 0),
(113, 113, 1, 0),
(114, 114, 1, 0),
(115, 115, 1, 0),
(116, 116, 1, 0),
(117, 117, 1, 0),
(118, 118, 1, 0),
(119, 119, 1, 0),
(120, 120, 1, 0),
(121, 121, 1, 0),
(122, 122, 1, 0),
(123, 123, 1, 0),
(124, 124, 1, 0),
(125, 125, 1, 0),
(126, 126, 1, 0),
(127, 127, 1, 0),
(128, 128, 1, 0),
(129, 129, 1, 0),
(130, 130, 1, 0),
(131, 131, 1, 0),
(132, 132, 1, 0),
(133, 133, 1, 0),
(134, 134, 1, 0),
(135, 135, 1, 0),
(136, 136, 1, 0),
(137, 137, 1, 0),
(138, 138, 1, 0),
(139, 139, 1, 0),
(140, 140, 1, 0),
(141, 141, 1, 0),
(142, 142, 1, 0),
(143, 143, 1, 0),
(144, 144, 1, 0),
(145, 145, 1, 0),
(146, 146, 1, 0),
(147, 147, 1, 0),
(148, 148, 1, 0),
(149, 149, 1, 0),
(150, 150, 1, 0),
(151, 151, 1, 0),
(152, 152, 1, 0),
(153, 153, 1, 0),
(154, 154, 1, 0),
(155, 155, 1, 0),
(156, 156, 1, 0),
(157, 157, 1, 0),
(158, 158, 1, 0),
(159, 159, 1, 0),
(160, 160, 1, 0),
(161, 161, 1, 0),
(162, 162, 1, 0),
(163, 163, 1, 0),
(164, 164, 1, 0),
(165, 165, 1, 0),
(166, 166, 1, 0),
(167, 167, 1, 0),
(168, 168, 1, 0),
(169, 169, 1, 0),
(170, 170, 1, 0),
(171, 171, 1, 0),
(172, 172, 1, 0),
(173, 173, 1, 0),
(174, 174, 1, 0),
(175, 175, 1, 0),
(176, 176, 1, 0),
(177, 177, 1, 0),
(178, 178, 1, 0),
(179, 179, 1, 0),
(180, 180, 1, 0),
(181, 181, 1, 0),
(182, 182, 1, 0),
(183, 183, 1, 0),
(184, 184, 1, 0),
(185, 185, 1, 0),
(186, 186, 1, 0),
(187, 187, 1, 0),
(188, 188, 1, 0),
(189, 189, 1, 0),
(190, 190, 1, 0),
(191, 191, 1, 0),
(192, 192, 1, 0),
(193, 193, 1, 0),
(194, 194, 1, 0),
(195, 195, 1, 0),
(196, 196, 1, 0),
(197, 197, 1, 0),
(198, 198, 1, 0),
(199, 199, 1, 0),
(200, 200, 1, 0),
(201, 201, 1, 0),
(202, 202, 1, 0),
(203, 203, 1, 0),
(204, 204, 1, 0),
(205, 205, 1, 0),
(206, 206, 1, 0),
(207, 207, 1, 0),
(208, 208, 1, 0),
(209, 209, 1, 0),
(210, 210, 1, 0),
(211, 211, 1, 0),
(212, 212, 1, 0),
(213, 213, 1, 0),
(214, 214, 1, 0),
(215, 215, 1, 0),
(216, 216, 1, 0),
(217, 217, 1, 0),
(218, 218, 1, 0),
(219, 219, 1, 0),
(220, 220, 1, 0),
(221, 221, 1, 0),
(222, 222, 1, 0),
(223, 223, 1, 0),
(224, 224, 1, 0),
(225, 225, 1, 0),
(226, 226, 1, 0),
(227, 227, 1, 0),
(228, 228, 1, 0),
(229, 229, 1, 0),
(230, 230, 1, 0),
(231, 231, 1, 0),
(232, 232, 1, 0),
(233, 233, 1, 0),
(234, 234, 1, 0),
(235, 235, 1, 0),
(236, 236, 1, 0),
(237, 237, 1, 0),
(238, 238, 1, 0),
(239, 239, 1, 0),
(240, 240, 1, 0),
(241, 241, 1, 0),
(242, 242, 1, 0),
(243, 243, 1, 0),
(244, 244, 1, 0),
(245, 245, 1, 0),
(246, 246, 1, 0),
(247, 247, 1, 0),
(248, 248, 1, 0),
(249, 249, 1, 0),
(250, 250, 1, 0),
(251, 251, 1, 0),
(252, 252, 1, 0),
(253, 253, 1, 0),
(254, 254, 1, 0),
(255, 255, 1, 0),
(256, 256, 1, 0),
(257, 257, 1, 0),
(258, 258, 1, 0),
(259, 259, 1, 0),
(260, 260, 1, 0),
(261, 261, 1, 0),
(262, 262, 1, 0),
(263, 263, 1, 0),
(264, 264, 1, 0),
(265, 265, 1, 0),
(266, 266, 1, 0),
(267, 267, 1, 0),
(268, 268, 1, 0),
(269, 269, 1, 0),
(270, 270, 1, 0),
(271, 271, 1, 0),
(272, 272, 1, 0),
(273, 273, 1, 0),
(274, 274, 1, 0),
(275, 275, 1, 0),
(276, 276, 1, 0),
(277, 277, 1, 0),
(278, 278, 1, 0),
(279, 279, 1, 0),
(280, 280, 1, 0),
(281, 281, 1, 0),
(282, 282, 1, 0),
(283, 283, 1, 0),
(284, 284, 1, 0),
(285, 285, 1, 0),
(286, 286, 1, 0),
(287, 287, 1, 0),
(288, 288, 1, 0),
(289, 289, 1, 0),
(290, 290, 1, 0),
(291, 291, 1, 0),
(292, 292, 1, 0),
(293, 293, 1, 0),
(294, 294, 1, 0),
(295, 295, 1, 0),
(296, 296, 1, 0),
(297, 297, 1, 0),
(298, 298, 1, 0),
(299, 299, 1, 0),
(300, 300, 1, 0),
(301, 301, 1, 0),
(302, 302, 1, 0),
(303, 303, 1, 0),
(304, 304, 1, 0),
(305, 305, 1, 0),
(306, 306, 1, 0),
(307, 307, 1, 0),
(308, 308, 1, 0),
(309, 309, 1, 0),
(310, 310, 1, 0),
(311, 311, 1, 0),
(312, 312, 1, 0),
(313, 313, 1, 0),
(314, 314, 1, 0),
(315, 315, 1, 0),
(316, 316, 1, 0),
(317, 317, 1, 0),
(318, 318, 1, 0),
(319, 319, 1, 0),
(320, 320, 1, 0),
(321, 321, 1, 0),
(322, 322, 1, 0),
(323, 323, 1, 0),
(324, 324, 1, 0),
(325, 325, 1, 0),
(326, 326, 1, 0),
(327, 327, 1, 0),
(328, 328, 1, 0),
(329, 329, 1, 0),
(330, 330, 1, 0),
(331, 331, 1, 0),
(332, 332, 1, 0),
(333, 333, 1, 0),
(334, 334, 1, 0),
(335, 335, 1, 0),
(336, 336, 1, 0),
(337, 337, 1, 0),
(338, 338, 1, 0),
(339, 339, 1, 0),
(340, 340, 1, 0),
(341, 341, 1, 0),
(342, 342, 1, 0),
(343, 343, 1, 0),
(344, 344, 1, 0),
(345, 345, 1, 0),
(346, 346, 1, 0),
(347, 347, 1, 0),
(348, 348, 1, 0),
(349, 349, 1, 0),
(350, 350, 1, 0),
(351, 351, 1, 0),
(352, 352, 1, 0),
(353, 353, 1, 0),
(354, 354, 1, 0),
(355, 355, 1, 0),
(356, 356, 1, 0),
(357, 357, 1, 0),
(358, 358, 1, 0),
(359, 359, 1, 0),
(360, 360, 1, 0),
(361, 361, 1, 0),
(362, 362, 1, 0),
(363, 363, 1, 0),
(364, 364, 1, 0),
(365, 365, 1, 0),
(366, 366, 1, 0),
(367, 367, 1, 0),
(368, 368, 1, 0),
(369, 369, 1, 0),
(370, 370, 1, 0),
(371, 371, 1, 0),
(372, 372, 1, 0),
(373, 373, 1, 0),
(374, 374, 1, 0),
(375, 375, 1, 0),
(376, 376, 1, 0),
(377, 377, 1, 0),
(378, 378, 1, 0),
(379, 379, 1, 0),
(380, 380, 1, 0),
(381, 381, 1, 0),
(382, 382, 1, 0),
(383, 383, 1, 0),
(384, 384, 1, 0),
(385, 385, 1, 0),
(386, 386, 1, 0),
(387, 387, 1, 0),
(388, 388, 1, 0),
(389, 389, 1, 0),
(390, 390, 1, 0),
(391, 391, 1, 0),
(392, 392, 1, 0),
(393, 393, 1, 0),
(394, 394, 1, 0),
(395, 395, 1, 0),
(396, 396, 1, 0),
(397, 397, 1, 0),
(398, 398, 1, 0),
(399, 399, 1, 0),
(400, 400, 1, 0),
(401, 401, 1, 0),
(402, 402, 1, 0),
(403, 403, 1, 0),
(404, 404, 1, 0),
(405, 405, 1, 0),
(406, 406, 1, 0),
(407, 407, 1, 0),
(408, 408, 1, 0),
(409, 409, 1, 0),
(410, 410, 1, 0),
(411, 411, 1, 0),
(412, 412, 1, 0),
(413, 413, 1, 0),
(414, 414, 1, 0),
(415, 415, 1, 0),
(416, 416, 1, 0),
(417, 417, 1, 0),
(418, 418, 1, 0),
(419, 419, 1, 0),
(420, 420, 1, 0),
(421, 421, 1, 0),
(422, 422, 1, 0),
(423, 423, 1, 0),
(424, 424, 1, 0),
(425, 425, 1, 0),
(426, 426, 1, 0),
(427, 427, 1, 0),
(428, 428, 1, 0),
(429, 429, 1, 0),
(430, 430, 1, 0),
(431, 431, 1, 0),
(432, 432, 1, 0),
(433, 433, 1, 0),
(434, 434, 1, 0),
(435, 435, 1, 0),
(436, 436, 1, 0),
(437, 437, 1, 0),
(438, 438, 1, 0),
(439, 439, 1, 0),
(440, 440, 1, 0),
(441, 441, 1, 0),
(442, 442, 1, 0),
(443, 443, 1, 0),
(444, 444, 1, 0),
(445, 445, 1, 0),
(446, 446, 1, 0),
(447, 447, 1, 0),
(448, 448, 1, 0),
(449, 449, 1, 0),
(450, 450, 1, 0),
(451, 451, 1, 0),
(452, 452, 1, 0),
(453, 453, 1, 0),
(454, 454, 1, 0),
(455, 455, 1, 0),
(456, 456, 1, 0),
(457, 457, 1, 0),
(458, 458, 1, 0),
(459, 459, 1, 0),
(460, 460, 1, 0),
(461, 461, 1, 0),
(462, 462, 1, 0),
(463, 463, 1, 0),
(464, 464, 1, 0),
(465, 465, 1, 0),
(466, 466, 1, 0),
(467, 467, 1, 0),
(468, 468, 1, 0),
(469, 469, 1, 0),
(470, 470, 1, 0),
(471, 471, 1, 0),
(472, 472, 1, 0),
(473, 473, 1, 0),
(474, 474, 1, 0),
(475, 475, 1, 0),
(476, 476, 1, 0),
(477, 477, 1, 0),
(478, 478, 1, 0),
(479, 479, 1, 0),
(480, 480, 1, 0),
(481, 481, 1, 0),
(482, 482, 1, 0),
(483, 483, 1, 0),
(484, 484, 1, 0),
(485, 485, 1, 0),
(486, 486, 1, 0),
(487, 487, 1, 0),
(488, 488, 1, 0),
(489, 489, 1, 0),
(490, 490, 1, 0),
(491, 491, 1, 0),
(492, 492, 1, 0),
(493, 493, 1, 0),
(494, 494, 1, 0),
(495, 495, 1, 0),
(496, 496, 1, 0),
(497, 497, 1, 0),
(498, 498, 1, 0),
(499, 499, 1, 0),
(500, 500, 1, 0),
(501, 501, 1, 0),
(502, 502, 1, 0),
(503, 503, 1, 0),
(504, 504, 1, 0),
(505, 505, 1, 0),
(506, 506, 1, 0),
(507, 507, 1, 0),
(508, 508, 1, 0),
(509, 509, 1, 0),
(510, 510, 1, 0),
(511, 511, 1, 0),
(512, 512, 1, 0),
(513, 513, 1, 0),
(514, 514, 1, 0),
(515, 515, 1, 0),
(516, 516, 1, 0),
(517, 517, 1, 0),
(518, 518, 1, 0),
(519, 519, 1, 0),
(520, 520, 1, 0),
(521, 521, 1, 0),
(522, 522, 1, 0),
(523, 523, 1, 0),
(524, 524, 1, 0),
(525, 525, 1, 0),
(526, 526, 1, 0),
(527, 527, 1, 0),
(528, 528, 1, 0),
(529, 529, 1, 0),
(530, 530, 1, 0),
(531, 531, 1, 0),
(532, 532, 1, 0),
(533, 533, 1, 0),
(534, 534, 1, 0),
(535, 535, 1, 0),
(536, 536, 1, 0),
(537, 537, 1, 0),
(538, 538, 1, 0),
(539, 539, 1, 0),
(540, 540, 1, 0),
(541, 541, 1, 0),
(542, 542, 1, 0),
(543, 543, 1, 0),
(544, 544, 1, 0),
(545, 545, 1, 0),
(546, 546, 1, 0),
(547, 547, 1, 0),
(548, 548, 1, 0),
(549, 549, 1, 0),
(550, 550, 1, 0),
(551, 551, 1, 0),
(552, 552, 1, 0),
(553, 553, 1, 0),
(554, 554, 1, 0),
(555, 555, 1, 0),
(556, 556, 1, 0),
(557, 557, 1, 0),
(558, 558, 1, 0),
(559, 559, 1, 0),
(560, 560, 1, 0),
(561, 561, 1, 0),
(562, 562, 1, 0),
(563, 563, 1, 0),
(564, 564, 1, 0),
(565, 565, 1, 0),
(566, 566, 1, 0),
(567, 567, 1, 0),
(568, 568, 1, 0),
(569, 569, 1, 0),
(570, 570, 1, 0),
(571, 571, 1, 0),
(572, 572, 1, 0),
(573, 573, 1, 0),
(574, 574, 1, 0),
(575, 575, 1, 0),
(576, 576, 1, 0),
(577, 577, 1, 0),
(578, 578, 1, 0),
(579, 579, 1, 0),
(580, 580, 1, 0),
(581, 581, 1, 0),
(582, 582, 1, 0),
(583, 583, 1, 0),
(584, 584, 1, 0),
(585, 585, 1, 0),
(586, 586, 1, 0),
(587, 587, 1, 0),
(588, 588, 1, 0),
(589, 589, 1, 0),
(590, 590, 1, 0),
(591, 591, 1, 0),
(592, 592, 1, 0),
(593, 593, 1, 0),
(594, 594, 1, 0),
(595, 595, 1, 0),
(596, 596, 1, 0),
(597, 597, 1, 0),
(598, 598, 1, 0),
(599, 599, 1, 0),
(600, 600, 1, 0),
(601, 601, 1, 0),
(602, 602, 1, 0),
(603, 603, 1, 0),
(604, 604, 1, 0),
(605, 605, 1, 0),
(606, 606, 1, 0),
(607, 607, 1, 0),
(608, 608, 1, 0),
(609, 609, 1, 0),
(610, 610, 1, 0),
(611, 611, 1, 0),
(612, 612, 1, 0),
(613, 613, 1, 0),
(614, 614, 1, 0),
(615, 615, 1, 0),
(616, 616, 1, 0),
(617, 617, 1, 0),
(618, 618, 1, 0),
(619, 619, 1, 0),
(620, 620, 1, 0),
(621, 621, 1, 0),
(622, 622, 1, 0),
(623, 623, 1, 0),
(624, 624, 1, 0),
(625, 625, 1, 0),
(626, 626, 1, 0),
(627, 627, 1, 0),
(628, 628, 1, 0),
(629, 629, 1, 0),
(630, 630, 1, 0),
(631, 631, 1, 0),
(632, 632, 1, 0),
(633, 633, 1, 0),
(634, 634, 1, 0),
(635, 635, 1, 0),
(636, 636, 1, 0),
(637, 637, 1, 0),
(638, 638, 1, 0),
(639, 639, 1, 0),
(640, 640, 1, 0),
(641, 641, 1, 0),
(642, 642, 1, 0),
(643, 643, 1, 0),
(644, 644, 1, 0),
(645, 645, 1, 0),
(646, 646, 1, 0),
(647, 647, 1, 0),
(648, 648, 1, 0),
(649, 649, 1, 0),
(650, 650, 1, 0),
(651, 651, 1, 0),
(652, 652, 1, 0),
(653, 653, 1, 0),
(654, 654, 1, 0),
(655, 655, 1, 0),
(656, 656, 1, 0),
(657, 657, 1, 0),
(658, 658, 1, 0),
(659, 659, 1, 0),
(660, 660, 1, 0),
(661, 661, 1, 0),
(662, 662, 1, 0),
(663, 663, 1, 0),
(664, 664, 1, 0),
(665, 665, 1, 0),
(666, 666, 1, 0),
(667, 667, 1, 0),
(668, 668, 1, 0),
(669, 669, 1, 0),
(670, 670, 1, 0),
(671, 671, 1, 0),
(672, 672, 1, 0),
(673, 673, 1, 0),
(674, 674, 1, 0),
(675, 675, 1, 0),
(676, 676, 1, 0),
(677, 677, 1, 0),
(678, 678, 1, 0),
(679, 679, 1, 0),
(680, 680, 1, 0),
(681, 681, 1, 0),
(682, 682, 1, 0),
(683, 683, 1, 0),
(684, 684, 1, 0),
(685, 685, 1, 0),
(686, 686, 1, 0),
(687, 687, 1, 0),
(688, 688, 1, 0),
(689, 689, 1, 0),
(690, 690, 1, 0),
(691, 691, 1, 0),
(692, 692, 1, 0),
(693, 693, 1, 0),
(694, 694, 1, 0),
(695, 695, 1, 0),
(696, 696, 1, 0),
(697, 697, 1, 0),
(698, 698, 1, 0),
(699, 699, 1, 0),
(700, 700, 1, 0),
(701, 701, 1, 0),
(702, 702, 1, 0),
(703, 703, 1, 0),
(704, 704, 1, 0),
(705, 705, 1, 0),
(706, 706, 1, 0),
(707, 707, 1, 0),
(708, 708, 1, 0),
(709, 709, 1, 0),
(710, 710, 1, 0),
(711, 711, 1, 0),
(712, 712, 1, 0),
(713, 713, 1, 0),
(714, 714, 1, 0),
(715, 715, 1, 0),
(716, 716, 1, 0),
(717, 717, 1, 0),
(718, 718, 1, 0),
(719, 719, 1, 0),
(720, 720, 1, 0),
(721, 721, 1, 0),
(722, 722, 1, 0),
(723, 723, 1, 0),
(724, 724, 1, 0),
(725, 725, 1, 0),
(726, 726, 1, 0),
(727, 727, 1, 0),
(728, 728, 1, 0),
(729, 729, 1, 0),
(730, 730, 1, 0),
(731, 731, 1, 0),
(732, 732, 1, 0),
(733, 733, 1, 0),
(734, 734, 1, 0),
(735, 735, 1, 0),
(736, 736, 1, 0),
(737, 737, 1, 0),
(738, 738, 1, 0),
(739, 739, 1, 0),
(740, 740, 1, 0),
(741, 741, 1, 0),
(742, 742, 1, 0),
(743, 743, 1, 0),
(744, 744, 1, 0),
(745, 745, 1, 0),
(746, 746, 1, 0),
(747, 747, 1, 0),
(748, 748, 1, 0),
(749, 749, 1, 0),
(750, 750, 1, 0),
(751, 751, 1, 0),
(752, 752, 1, 0),
(753, 753, 1, 0),
(754, 754, 1, 0),
(755, 755, 1, 0),
(756, 756, 1, 0),
(757, 757, 1, 0),
(758, 758, 1, 0),
(759, 759, 1, 0),
(760, 760, 1, 0),
(761, 761, 1, 0),
(762, 762, 1, 0),
(763, 763, 1, 0),
(764, 764, 1, 0),
(765, 765, 1, 0),
(766, 766, 1, 0),
(767, 767, 1, 0),
(768, 768, 1, 0),
(769, 769, 1, 0),
(770, 770, 1, 0),
(771, 771, 1, 0),
(772, 772, 1, 0),
(773, 773, 1, 0),
(774, 774, 1, 0),
(775, 775, 1, 0),
(776, 776, 1, 0),
(777, 777, 1, 0),
(778, 778, 1, 0),
(779, 779, 1, 0),
(780, 780, 1, 0),
(781, 781, 1, 0),
(782, 782, 1, 0),
(783, 783, 1, 0),
(784, 784, 1, 0),
(785, 785, 1, 0),
(786, 786, 1, 0),
(787, 787, 1, 0),
(788, 788, 1, 0),
(789, 789, 1, 0),
(790, 790, 1, 0),
(791, 791, 1, 0),
(792, 792, 1, 0),
(793, 793, 1, 0),
(794, 794, 1, 0),
(795, 795, 1, 0),
(796, 796, 1, 0),
(797, 797, 1, 0),
(798, 798, 1, 0),
(799, 799, 1, 0),
(800, 800, 1, 0),
(801, 801, 1, 0),
(802, 802, 1, 0),
(803, 803, 1, 0),
(804, 804, 1, 0),
(805, 805, 1, 0),
(806, 806, 1, 0),
(807, 807, 1, 0),
(808, 808, 1, 0),
(809, 809, 1, 0),
(810, 810, 1, 0),
(811, 811, 1, 0),
(812, 812, 1, 0),
(813, 813, 1, 0),
(814, 814, 1, 0),
(815, 815, 1, 0),
(816, 816, 1, 0),
(817, 817, 1, 0),
(818, 818, 1, 0),
(819, 819, 1, 0),
(820, 820, 1, 0),
(821, 821, 1, 0),
(822, 822, 1, 0),
(823, 823, 1, 0),
(824, 824, 1, 0),
(825, 825, 1, 0),
(826, 826, 1, 0),
(827, 827, 1, 0),
(828, 828, 1, 0),
(829, 829, 1, 0),
(830, 830, 1, 0),
(831, 831, 1, 0),
(832, 832, 1, 0),
(833, 833, 1, 0),
(834, 834, 1, 0),
(835, 835, 1, 0),
(836, 836, 1, 0),
(837, 837, 1, 0),
(838, 838, 1, 0),
(839, 839, 1, 0),
(840, 840, 1, 0),
(841, 841, 1, 0),
(842, 842, 1, 0),
(843, 843, 1, 0),
(844, 844, 1, 0),
(845, 845, 1, 0),
(846, 846, 1, 0),
(847, 847, 1, 0),
(848, 848, 1, 0),
(849, 849, 1, 0),
(850, 850, 1, 0),
(851, 851, 1, 0),
(852, 852, 1, 0),
(853, 853, 1, 0),
(854, 854, 1, 0),
(855, 855, 1, 0),
(856, 856, 1, 0),
(857, 857, 1, 0),
(858, 858, 1, 0),
(859, 859, 1, 0),
(860, 860, 1, 0),
(861, 861, 1, 0),
(862, 862, 1, 0),
(863, 863, 1, 0),
(864, 864, 1, 0),
(865, 865, 1, 0),
(866, 866, 1, 0),
(867, 867, 1, 0),
(868, 868, 1, 0),
(869, 869, 1, 0),
(870, 870, 1, 0),
(871, 871, 1, 0),
(872, 872, 1, 0),
(873, 873, 1, 0),
(874, 874, 1, 0),
(875, 875, 1, 0),
(876, 876, 1, 0),
(877, 877, 1, 0),
(878, 878, 1, 0),
(879, 879, 1, 0),
(880, 880, 1, 0),
(881, 881, 1, 0),
(882, 882, 1, 0),
(883, 883, 1, 0),
(884, 884, 1, 0),
(885, 1, 1, 1),
(886, 2, 1, 1),
(887, 3, 1, 1),
(888, 888, 1, 0),
(889, 4, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questionrows`
--

CREATE TABLE IF NOT EXISTS `x2_questionrows` (
  `qrid` int(11) NOT NULL AUTO_INCREMENT,
  `qrtype` tinyint(4) NOT NULL DEFAULT '2',
  `qrquestion` mediumtext NOT NULL,
  `qrknowsid` tinytext NOT NULL,
  `qrlevel` int(1) NOT NULL DEFAULT '0',
  `qrnumber` int(4) NOT NULL DEFAULT '0',
  `qruserid` int(11) NOT NULL DEFAULT '0',
  `qrusername` varchar(120) NOT NULL DEFAULT '',
  `qrlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `qrtime` int(11) NOT NULL DEFAULT '0',
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`qrid`),
  KEY `qrlevel` (`qrlevel`,`qrnumber`),
  KEY `qruserid` (`qruserid`),
  KEY `qrtime` (`qrtime`),
  KEY `qrstatus` (`qrstatus`),
  KEY `qrtype` (`qrtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `x2_questionrows`
--

INSERT INTO `x2_questionrows` (`qrid`, `qrtype`, `qrquestion`, `qrknowsid`, `qrlevel`, `qrnumber`, `qruserid`, `qrusername`, `qrlastmodifyuser`, `qrtime`, `qrstatus`) VALUES
(3, 1, '&lt;p&gt;sa的撒大苏打撒&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1, 1, 1, 'peadmin', '', 1486478129, 1),
(4, 1, '&lt;p&gt;测试题冒题教师&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1, 0, 2, '教师管理员', '', 1498836191, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questions`
--

CREATE TABLE IF NOT EXISTS `x2_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `questiontype` int(3) NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `questionuserid` int(11) NOT NULL DEFAULT '0',
  `questionusername` varchar(120) NOT NULL DEFAULT '',
  `questionlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `questionselect` text NOT NULL,
  `questionselectnumber` tinyint(11) NOT NULL DEFAULT '0',
  `questionanswer` text NOT NULL,
  `questiondescribe` text NOT NULL,
  `questionknowsid` text NOT NULL,
  `questioncreatetime` int(11) NOT NULL DEFAULT '0',
  `questionstatus` int(1) NOT NULL DEFAULT '1',
  `questionhtml` text NOT NULL,
  `questionparent` int(11) NOT NULL DEFAULT '0',
  `questionsequence` int(3) NOT NULL DEFAULT '0',
  `questionlevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questionid`),
  KEY `questioncreatetime` (`questioncreatetime`),
  KEY `questiontype` (`questiontype`),
  KEY `questionstatus` (`questionstatus`),
  KEY `questionuserid` (`questionuserid`),
  KEY `questionparent` (`questionparent`,`questionsequence`),
  KEY `questionlevel` (`questionlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=890 ;

--
-- 转存表中的数据 `x2_questions`
--

INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(1, 1, '古代女子成年行什么礼？', 0, '', '', '&lt;p&gt;A:冠礼&lt;/p&gt;&lt;p&gt;B:笄礼&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(2, 1, '仰韶文化是我国历史上哪个时代中期的文化？', 0, '', '', '&lt;p&gt;A:旧石器&lt;/p&gt;&lt;p&gt;B:新石器&lt;/p&gt;&lt;p&gt;C:青铜器&lt;/p&gt;&lt;p&gt;D:铁器&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(3, 1, '世界上第一辆摩托车其主要材料是：', 0, '', '', '&lt;p&gt;A:塑料&lt;/p&gt;&lt;p&gt;B:木头&lt;/p&gt;&lt;p&gt;C:铁皮&lt;/p&gt;&lt;p&gt;D:自行车&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(4, 1, '“腊八粥”最早起源于：', 0, '', '', '&lt;p&gt;A:祭祀&lt;/p&gt;&lt;p&gt;B:民间庆祝丰收的风俗&lt;/p&gt;&lt;p&gt;C:佛教&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(5, 1, '中国古建筑学科的开拓者是：', 0, '', '', '&lt;p&gt;A:鲁班&lt;/p&gt;&lt;p&gt;B:梁思成&lt;/p&gt;&lt;p&gt;C:杨廷玉&lt;/p&gt;&lt;p&gt;D:童寓&lt;/p&gt;&lt;p&gt;E:吴良镛&lt;/p&gt;&lt;p&gt;F:刘敦桢&lt;/p&gt;', 6, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(6, 1, '我国是什么时候采用公历的？', 0, '', '', '&lt;p&gt;A:鸦片战争时期&lt;/p&gt;&lt;p&gt;B:辛亥革命时期&lt;/p&gt;&lt;p&gt;C:建国前夕&lt;/p&gt;&lt;p&gt;D:建国后&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(7, 1, '“驸马”最初是指：', 0, '', '', '&lt;p&gt;A:给皇帝养马的人&lt;/p&gt;&lt;p&gt;B:官名&lt;/p&gt;&lt;p&gt;C:给皇帝牵马的人&lt;/p&gt;&lt;p&gt;D:马的名字&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(8, 1, '古希腊哪个国家的儿童一出世就要受到严格挑选，体质弱的会被抛之荒野？', 0, '', '', '&lt;p&gt;A:雅典&lt;/p&gt;&lt;p&gt;B:斯巴达&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(9, 1, '中国古代哪个学派的主张，与绿色和平组织的思想相近？', 0, '', '', '&lt;p&gt;A:儒家&lt;/p&gt;&lt;p&gt;B:法家&lt;/p&gt;&lt;p&gt;C:佛家&lt;/p&gt;&lt;p&gt;D:道家&lt;/p&gt;&lt;p&gt;E:阴阳&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(10, 1, '在下列哪一年Internet网延伸入中国？', 0, '', '', '&lt;p&gt;A:93年&lt;/p&gt;&lt;p&gt;B:94年&lt;/p&gt;&lt;p&gt;C:95年&lt;/p&gt;&lt;p&gt;D:96年&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(11, 1, '下列战役中，被陈毅元帅称作“人民群众用小车推出来的”是：', 0, '', '', '&lt;p&gt;A:淮海战役&lt;/p&gt;&lt;p&gt;B:平津战役&lt;/p&gt;&lt;p&gt;C:辽沈战役&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(12, 1, '公元前594年，实行“初税亩”，按亩收税的国家是：', 0, '', '', '&lt;p&gt;A:楚国&lt;/p&gt;&lt;p&gt;B:鲁国&lt;/p&gt;&lt;p&gt;C:郑国&lt;/p&gt;&lt;p&gt;D:魏国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(13, 1, '以下哪一位曾被称为“药王”？', 0, '', '', '&lt;p&gt;A:孙思邈&lt;/p&gt;&lt;p&gt;B:张仲景&lt;/p&gt;&lt;p&gt;C:李时珍&lt;/p&gt;&lt;p&gt;D:扁鹊&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(14, 1, '第一次鸦片战争发生的时间是：', 0, '', '', '&lt;p&gt;A:1839年3月&lt;/p&gt;&lt;p&gt;B:1840年6月&lt;/p&gt;&lt;p&gt;C:1841年1月&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(15, 1, '世界最早的公用电话亭是在：', 0, '', '', '&lt;p&gt;A:银行内&lt;/p&gt;&lt;p&gt;B:公园内&lt;/p&gt;&lt;p&gt;C:商店内&lt;/p&gt;&lt;p&gt;D:电话公司内&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(16, 1, '发生在北京卢沟桥的历史事变名叫？', 0, '', '', '&lt;p&gt;A:华北事变&lt;/p&gt;&lt;p&gt;B:戊戌政变&lt;/p&gt;&lt;p&gt;C:七七事变&lt;/p&gt;&lt;p&gt;D:皖南事变&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(17, 1, '世界上第一家麻将博物馆坐落在：', 0, '', '', '&lt;p&gt;A:中国&lt;/p&gt;&lt;p&gt;B:日本&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;&lt;p&gt;D:印度&lt;/p&gt;&lt;p&gt;E:阿拉伯&lt;/p&gt;&lt;p&gt;F:美国&lt;/p&gt;', 6, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(18, 1, '馒头是谁发明的？', 0, '', '', '&lt;p&gt;A:李冰&lt;/p&gt;&lt;p&gt;B:诸葛亮&lt;/p&gt;&lt;p&gt;C:曹操&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(19, 1, '隋唐时期的官制中尚书省分为吏,户,礼,兵,刑,工六部,其中的礼部是掌管：', 0, '', '', '&lt;p&gt;A:规定礼仪,监督和教育官员和百姓懂得礼仪&lt;/p&gt;&lt;p&gt;B:掌管国家的典章法度,祭祀,学校,科举和接待四方宾客等事务&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(20, 1, '我国宪法的监督权属于：', 0, '', '', '&lt;p&gt;A:国务院&lt;/p&gt;&lt;p&gt;B:全国人大&lt;/p&gt;&lt;p&gt;C:全国人大常委会&lt;/p&gt;&lt;p&gt;D:全国人大法律委员会&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(21, 1, '科举中，会出现一人兼解元、会元、状元的“连中三元”，其分别是在什么考试中取得的？', 0, '', '', '&lt;p&gt;A:院试、乡试、殿试&lt;/p&gt;&lt;p&gt;B:院试、会试、殿试&lt;/p&gt;&lt;p&gt;C:府试、乡试、殿试&lt;/p&gt;&lt;p&gt;D:县试、会试、殿试&lt;/p&gt;&lt;p&gt;E:乡试、会试、殿试&lt;/p&gt;&lt;p&gt;F:童试、会试、殿试&lt;/p&gt;', 6, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(22, 1, '美国1787年宪法规定，解释宪法的权力在：', 0, '', '', '&lt;p&gt;A:众议院&lt;/p&gt;&lt;p&gt;B:参议院&lt;/p&gt;&lt;p&gt;C:最高法院&lt;/p&gt;&lt;p&gt;D:总统&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(23, 1, '最早芭蕾舞出现于：', 0, '', '', '&lt;p&gt;A:杂技团&lt;/p&gt;&lt;p&gt;B:宫廷&lt;/p&gt;&lt;p&gt;C:学校&lt;/p&gt;&lt;p&gt;D:戏团&lt;/p&gt;&lt;p&gt;E:教会&lt;/p&gt;&lt;p&gt;F:军队&lt;/p&gt;', 6, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(24, 1, '我国第一所民办高等教育机构哪年建立？', 0, '', '', '&lt;p&gt;A:1982&lt;/p&gt;&lt;p&gt;B:1985&lt;/p&gt;&lt;p&gt;C:1988&lt;/p&gt;&lt;p&gt;D:1992&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(25, 1, '清光绪年间曾对邮票有一种非常特殊的称谓，请问当时叫什么？', 0, '', '', '&lt;p&gt;A:老人头&lt;/p&gt;&lt;p&gt;B:小孩头&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(26, 1, '我国最早提出创建监狱的人是：', 0, '', '', '&lt;p&gt;A:皋陶&lt;/p&gt;&lt;p&gt;B:李斯&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(27, 1, '早期人类家庭的进步，与哪种事业关系最密切？', 0, '', '', '&lt;p&gt;A:狩猎&lt;/p&gt;&lt;p&gt;B:捕鱼&lt;/p&gt;&lt;p&gt;C:造房&lt;/p&gt;&lt;p&gt;D:饲养&lt;/p&gt;&lt;p&gt;E:纺织&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(28, 1, '一个帝王陵区只有一个主神道，一般修在谁的陵前？', 0, '', '', '&lt;p&gt;A:第一个埋葬者&lt;/p&gt;&lt;p&gt;B:年龄最大者&lt;/p&gt;&lt;p&gt;C:统治时间最长者&lt;/p&gt;&lt;p&gt;D:国力最昌盛者&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(29, 1, '请问“法律”最早出现于哪个社会？', 0, '', '', '&lt;p&gt;A:原始社会&lt;/p&gt;&lt;p&gt;B:奴隶社会&lt;/p&gt;&lt;p&gt;C:封建社会&lt;/p&gt;&lt;p&gt;D:资本主义社会&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(30, 1, '欧元什么时候正式诞生？', 0, '', '', '&lt;p&gt;A:1999年1月1日&lt;/p&gt;&lt;p&gt;B:1999年7月1日&lt;/p&gt;&lt;p&gt;C:1999年12月1日&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(31, 1, '现存关于遗嘱继承的最早的法规产生于：', 0, '', '', '&lt;p&gt;A:汉代&lt;/p&gt;&lt;p&gt;B:唐代&lt;/p&gt;&lt;p&gt;C:宋代&lt;/p&gt;&lt;p&gt;D:元代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(32, 1, '世界水日是哪一天?', 0, '', '', '&lt;p&gt;A:3月23日&lt;/p&gt;&lt;p&gt;B:4月23日&lt;/p&gt;&lt;p&gt;C:5月23日&lt;/p&gt;&lt;p&gt;D:6月23日&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(33, 1, '谁是“中山装”的创始人？', 0, '', '', '&lt;p&gt;A:黄隆生&lt;/p&gt;&lt;p&gt;B:孙中山&lt;/p&gt;&lt;p&gt;C:汪精卫&lt;/p&gt;&lt;p&gt;D:黄兴&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(34, 1, '《阳关三叠》是甚么时候的琴曲？', 0, '', '', '&lt;p&gt;A:汉代&lt;/p&gt;&lt;p&gt;B:隋唐&lt;/p&gt;&lt;p&gt;C:宋元&lt;/p&gt;&lt;p&gt;D:明清&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(35, 1, '最早的纸币源于:', 0, '', '', '&lt;p&gt;A:中国&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:苏联&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(36, 1, '古代著名的水利工程都江堰是谁设计的？', 0, '', '', '&lt;p&gt;A:大禹&lt;/p&gt;&lt;p&gt;B:李冰父子&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(37, 1, '蒸馏酒源于中国古代的：', 0, '', '', '&lt;p&gt;A:炼丹术&lt;/p&gt;&lt;p&gt;B:造纸术&lt;/p&gt;&lt;p&gt;C:印刷术&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(38, 1, '下列对清明两代“乡试”考试地点解释正确的是：', 0, '', '', '&lt;p&gt;A:在本乡&lt;/p&gt;&lt;p&gt;B:在各县县城&lt;/p&gt;&lt;p&gt;C:在各省省城&lt;/p&gt;&lt;p&gt;D:在京城书院&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(39, 1, '我国古代哪位文学家曾两度到杭州做官？', 0, '', '', '&lt;p&gt;A:欧阳修&lt;/p&gt;&lt;p&gt;B:杜甫&lt;/p&gt;&lt;p&gt;C:白居易&lt;/p&gt;&lt;p&gt;D:苏轼&lt;/p&gt;&lt;p&gt;E:韩愈&lt;/p&gt;&lt;p&gt;F:曹操&lt;/p&gt;', 6, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(40, 1, '抗战时期，“八路军”下辖3个师和一个直属队，刘伯承在：', 0, '', '', '&lt;p&gt;A:115师&lt;/p&gt;&lt;p&gt;B:120师&lt;/p&gt;&lt;p&gt;C:129师&lt;/p&gt;&lt;p&gt;D:直属队&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(41, 1, '涮羊肉起源于', 0, '', '', '&lt;p&gt;A:清朝&lt;/p&gt;&lt;p&gt;B:元朝&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(42, 1, '目前人类已知的最软的石头是：', 0, '', '', '&lt;p&gt;A:磷灰石&lt;/p&gt;&lt;p&gt;B:石膏&lt;/p&gt;&lt;p&gt;C:方解石&lt;/p&gt;&lt;p&gt;D:滑石&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(43, 1, '哈雷慧星的最早记录是哪国人留下的？', 0, '', '', '&lt;p&gt;A:埃及人&lt;/p&gt;&lt;p&gt;B:希腊人&lt;/p&gt;&lt;p&gt;C:中国人&lt;/p&gt;&lt;p&gt;D:波斯人&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(44, 3, '中国历史上被称为始皇帝的不是嬴政，对吗？', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(45, 1, '据考古资料显示，我国的钻孔技术开始于：', 0, '', '', '&lt;p&gt;A:山顶洞人时代&lt;/p&gt;&lt;p&gt;B:母系氏族繁荣时期&lt;/p&gt;&lt;p&gt;C:父系氏族时期&lt;/p&gt;&lt;p&gt;D:夏朝&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(46, 1, '哪个火山的爆发毁灭了古罗马帝国的庞贝城？', 0, '', '', '&lt;p&gt;A:维苏威火山&lt;/p&gt;&lt;p&gt;B:埃特纳火山&lt;/p&gt;&lt;p&gt;C:圣海伦斯火山&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(47, 1, '世界上第一种基因移植作物是：', 0, '', '', '&lt;p&gt;A:番茄&lt;/p&gt;&lt;p&gt;B:烟草&lt;/p&gt;&lt;p&gt;C:白菜&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(48, 1, '方便面的发明者最初的愿望是：', 0, '', '', '&lt;p&gt;A:战时储备&lt;/p&gt;&lt;p&gt;B:节约时间&lt;/p&gt;&lt;p&gt;C:在家吃面&lt;/p&gt;&lt;p&gt;D:提高效益&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(49, 1, '下列官名中哪些不是唐朝的官名？', 0, '', '', '&lt;p&gt;A:尚书&lt;/p&gt;&lt;p&gt;B:黄门&lt;/p&gt;&lt;p&gt;C:中书&lt;/p&gt;&lt;p&gt;D:巡按&lt;/p&gt;&lt;p&gt;E:殿中&lt;/p&gt;&lt;p&gt;F:御史&lt;/p&gt;', 6, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(50, 1, '宋代的&quot;学象生&quot;同现代的：', 0, '', '', '&lt;p&gt;A:口技&lt;/p&gt;&lt;p&gt;B:相声&lt;/p&gt;&lt;p&gt;C:舞狮子&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(51, 1, '较早使用的活字是：', 0, '', '', '&lt;p&gt;A:木活字&lt;/p&gt;&lt;p&gt;B:铅活字&lt;/p&gt;&lt;p&gt;C:陶活字&lt;/p&gt;&lt;p&gt;D:铜活字&lt;/p&gt;&lt;p&gt;E:锡活字&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(52, 1, '人类古代的“掠夺婚”产生于哪个时期？', 0, '', '', '&lt;p&gt;A:母权制初期&lt;/p&gt;&lt;p&gt;B:父权制初期&lt;/p&gt;&lt;p&gt;C:对偶婚时期&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(53, 2, '人类食品历史上先后出现了五类食品，其中第四，五类食品是？（多选）', 0, '', '', '&lt;p&gt;A:米&lt;/p&gt;&lt;p&gt;B:面&lt;/p&gt;&lt;p&gt;C:油&lt;/p&gt;&lt;p&gt;D:酱油&lt;/p&gt;&lt;p&gt;E:醋&lt;/p&gt;', 5, 'DE', 'DE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(54, 1, '在荷马史诗当中，特洛伊战争持续了：', 0, '', '', '&lt;p&gt;A:8年&lt;/p&gt;&lt;p&gt;B:15年&lt;/p&gt;&lt;p&gt;C:10年&lt;/p&gt;&lt;p&gt;D:11年&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(55, 1, '“尧天禹日”是指代什么的?', 0, '', '', '&lt;p&gt;A:改朝换代&lt;/p&gt;&lt;p&gt;B:太平盛世&lt;/p&gt;&lt;p&gt;C:一朝天子一朝臣&lt;/p&gt;&lt;p&gt;D:饥荒年代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(56, 1, '唐高祖武德四年的开元通宝，开元所代表的意思为：', 0, '', '', '&lt;p&gt;A:开辟新纪元&lt;/p&gt;&lt;p&gt;B:年号&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(57, 1, '秦朝开始推行郡县制度，在全国设：', 0, '', '', '&lt;p&gt;A:24郡&lt;/p&gt;&lt;p&gt;B:36郡&lt;/p&gt;&lt;p&gt;C:20郡&lt;/p&gt;&lt;p&gt;D:40郡&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(58, 1, '世界上第一枚邮票是于哪年发行的？', 0, '', '', '&lt;p&gt;A:1820年&lt;/p&gt;&lt;p&gt;B:1840年&lt;/p&gt;&lt;p&gt;C:1860年&lt;/p&gt;&lt;p&gt;D:1900年&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(59, 1, '西汉时期，经御史大夫杜周、杜延年解释的汉律，被称为“大杜律和小杜律”，他们两人的关系是：', 0, '', '', '&lt;p&gt;A:父子&lt;/p&gt;&lt;p&gt;B:师生&lt;/p&gt;&lt;p&gt;C:叔侄&lt;/p&gt;&lt;p&gt;D:同朝官员&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(60, 1, '东汉时，谁既是杰出的科学家又是著名的文学家？', 0, '', '', '&lt;p&gt;A:王充&lt;/p&gt;&lt;p&gt;B:张衡&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(61, 1, '下列王朝中统治时间最短的是：', 0, '', '', '&lt;p&gt;A:秦朝&lt;/p&gt;&lt;p&gt;B:隋朝&lt;/p&gt;&lt;p&gt;C:西晋&lt;/p&gt;&lt;p&gt;D:元朝&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(62, 1, '人类最早的“精子库”是为谁而建的？', 0, '', '', '&lt;p&gt;A:不育男子&lt;/p&gt;&lt;p&gt;B:参战士兵&lt;/p&gt;&lt;p&gt;C:单身贵族&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(63, 1, '在我国古代曾有一次人口普查，它是在哪个朝代进行的？', 0, '', '', '&lt;p&gt;A:宋朝&lt;/p&gt;&lt;p&gt;B:元朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(64, 1, '以下哪种人，不属于古代日耳曼民族？', 0, '', '', '&lt;p&gt;A:西哥特人&lt;/p&gt;&lt;p&gt;B:萨克森人&lt;/p&gt;&lt;p&gt;C:希洛人&lt;/p&gt;&lt;p&gt;D:法兰克人&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(65, 1, '明清时期称镌刻约束在学生员条规的碑石为卧碑，它一般树于明伦堂的：', 0, '', '', '&lt;p&gt;A:前方&lt;/p&gt;&lt;p&gt;B:后方&lt;/p&gt;&lt;p&gt;C:左边&lt;/p&gt;&lt;p&gt;D:右边&lt;/p&gt;&lt;p&gt;E:室内&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(66, 1, '战国时，“纸上谈兵”招致兵败的赵国将领是：', 0, '', '', '&lt;p&gt;A:赵奢&lt;/p&gt;&lt;p&gt;B:赵构&lt;/p&gt;&lt;p&gt;C:赵括&lt;/p&gt;&lt;p&gt;D:赵盾&lt;/p&gt;&lt;p&gt;E:赵恒&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(67, 1, '中国签定的第一个不平等条约是哪个？', 0, '', '', '&lt;p&gt;A:望厦条约&lt;/p&gt;&lt;p&gt;B:南京条约&lt;/p&gt;&lt;p&gt;C:辛丑条约&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(68, 1, '最早的春联是：', 0, '', '', '&lt;p&gt;A:刻在木上&lt;/p&gt;&lt;p&gt;B:写在纸上&lt;/p&gt;&lt;p&gt;C:雕在石上&lt;/p&gt;&lt;p&gt;D:绣在绸上&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(69, 1, '康熙皇帝的庙号是：', 0, '', '', '&lt;p&gt;A:仁宗&lt;/p&gt;&lt;p&gt;B:太宗&lt;/p&gt;&lt;p&gt;C:穆宗&lt;/p&gt;&lt;p&gt;D:圣祖&lt;/p&gt;&lt;p&gt;E:世祖&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(70, 1, '我国珍稀野生动物特种纪念币系列的首枚纪念币图案是：', 0, '', '', '&lt;p&gt;A:大熊猫&lt;/p&gt;&lt;p&gt;B:金丝猴&lt;/p&gt;&lt;p&gt;C:扬子鳄&lt;/p&gt;&lt;p&gt;D:白鳍豚&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(71, 1, '我国电视台播放的第一部外国电视剧是：', 0, '', '', '&lt;p&gt;A:朝鲜的&lt;/p&gt;&lt;p&gt;B:南斯拉夫的&lt;/p&gt;&lt;p&gt;C:古巴的&lt;/p&gt;&lt;p&gt;D:波兰的&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(72, 1, '把占城稻推广到江浙和淮河流域种植的是：', 0, '', '', '&lt;p&gt;A:北宋政府&lt;/p&gt;&lt;p&gt;B:南宋政府&lt;/p&gt;&lt;p&gt;C:元朝政府&lt;/p&gt;&lt;p&gt;D:唐朝政府&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(73, 1, '汉朝最先下诏废除肉刑的皇帝是：', 0, '', '', '&lt;p&gt;A:汉武帝&lt;/p&gt;&lt;p&gt;B:汉成帝&lt;/p&gt;&lt;p&gt;C:汉文帝&lt;/p&gt;&lt;p&gt;D:汉景帝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(74, 1, '“王牌飞行员” 最早授予击落几架飞机的空军战士？', 0, '', '', '&lt;p&gt;A:2架&lt;/p&gt;&lt;p&gt;B:3架&lt;/p&gt;&lt;p&gt;C:5架&lt;/p&gt;&lt;p&gt;D:10架&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(75, 1, '世界第一枚邮票出现在：', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:德国&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(76, 1, '古人放爆竹最早是为了：', 0, '', '', '&lt;p&gt;A:庆祝节日&lt;/p&gt;&lt;p&gt;B:恭贺商店开张&lt;/p&gt;&lt;p&gt;C:庆贺生日&lt;/p&gt;&lt;p&gt;D:驱逐瘟神疫鬼&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(77, 1, '清朝时，北京城的西直门是由满族那一旗驻守的？', 0, '', '', '&lt;p&gt;A:正黄旗&lt;/p&gt;&lt;p&gt;B:正红旗&lt;/p&gt;&lt;p&gt;C:镶黄旗&lt;/p&gt;&lt;p&gt;D:镶红旗&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(78, 1, '阳春白雪和下里巴人源于什么时代？', 0, '', '', '&lt;p&gt;A:春秋&lt;/p&gt;&lt;p&gt;B:战国&lt;/p&gt;&lt;p&gt;C:秦代&lt;/p&gt;&lt;p&gt;D:唐代&lt;/p&gt;&lt;p&gt;E:宋代&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(79, 1, '我国最先出现的纸币是：', 0, '', '', '&lt;p&gt;A:元代的“宝钞”&lt;/p&gt;&lt;p&gt;B:元代的“交子”&lt;/p&gt;&lt;p&gt;C:宋代的“宝钞”&lt;/p&gt;&lt;p&gt;D:宋代的“交子”&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(80, 1, '八路军的全称是', 0, '', '', '&lt;p&gt;A:中国工农红军第八军&lt;/p&gt;&lt;p&gt;B:国民革命军第八军&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(81, 1, '王安石变法发生在宋朝哪个皇帝在位期间？', 0, '', '', '&lt;p&gt;A:仁宗&lt;/p&gt;&lt;p&gt;B:神宗&lt;/p&gt;&lt;p&gt;C:英宗&lt;/p&gt;&lt;p&gt;D:哲宗&lt;/p&gt;&lt;p&gt;E:高宗&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(82, 1, '隋朝所取代的“周”，属于北朝还是南朝？', 0, '', '', '&lt;p&gt;A:北朝&lt;/p&gt;&lt;p&gt;B:南朝&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(83, 1, '“大禹治水”最终获得成功，是因为大禹采用了什么方法治理洪水？', 0, '', '', '&lt;p&gt;A:填塞&lt;/p&gt;&lt;p&gt;B:疏导&lt;/p&gt;&lt;p&gt;C:围堵&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(84, 1, '历史上“乐不思蜀”的是哪位皇帝？', 0, '', '', '&lt;p&gt;A:刘备&lt;/p&gt;&lt;p&gt;B:刘秀&lt;/p&gt;&lt;p&gt;C:孙权&lt;/p&gt;&lt;p&gt;D:刘禅&lt;/p&gt;&lt;p&gt;E:刘邦&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(85, 1, '在第二次世界大战中，中途岛战役发生在哪两个国家之间？', 0, '', '', '&lt;p&gt;A:英德&lt;/p&gt;&lt;p&gt;B:美日&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(86, 1, '世界上第一部《有限责任公司法》是由哪个国家制定的？', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:德国&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:法国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(87, 1, '第一次世界杯在哪一年举行？', 0, '', '', '&lt;p&gt;A:1904&lt;/p&gt;&lt;p&gt;B:1930&lt;/p&gt;&lt;p&gt;C:1956&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(88, 2, '下列姓氏中，哪些曾是古代的官名？（多选）', 0, '', '', '&lt;p&gt;A:欧阳&lt;/p&gt;&lt;p&gt;B:司马&lt;/p&gt;&lt;p&gt;C:上官&lt;/p&gt;&lt;p&gt;D:夏侯&lt;/p&gt;&lt;p&gt;E:司徒&lt;/p&gt;&lt;p&gt;F:司空&lt;/p&gt;', 6, 'BCD', 'BCD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(89, 1, '古时戒指用来表示？', 0, '', '', '&lt;p&gt;A:荣誉&lt;/p&gt;&lt;p&gt;B:富贵&lt;/p&gt;&lt;p&gt;C:禁戒&lt;/p&gt;&lt;p&gt;D:婚否&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(90, 1, '鼎有几个“耳朵”？', 0, '', '', '&lt;p&gt;A:没有&lt;/p&gt;&lt;p&gt;B:2个&lt;/p&gt;&lt;p&gt;C:3个&lt;/p&gt;&lt;p&gt;D:4个&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(91, 1, '世界上第一个无产阶级政权建立于哪个国家？', 0, '', '', '&lt;p&gt;A:法国&lt;/p&gt;&lt;p&gt;B:俄国&lt;/p&gt;&lt;p&gt;C:中国&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(92, 1, '中国最早的教育专业刊物是：', 0, '', '', '&lt;p&gt;A:《教育漫话》&lt;/p&gt;&lt;p&gt;B:《教育界》&lt;/p&gt;&lt;p&gt;C:《教育论》&lt;/p&gt;&lt;p&gt;D:《教育学》&lt;/p&gt;&lt;p&gt;E:《教育杂志》&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(93, 1, '古陶的年代鉴别首先应该看：', 0, '', '', '&lt;p&gt;A:纹样&lt;/p&gt;&lt;p&gt;B:器形&lt;/p&gt;&lt;p&gt;C:釉色&lt;/p&gt;&lt;p&gt;D:颜色&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(94, 1, '内蒙古和林格尔壁画的产生年代是：', 0, '', '', '&lt;p&gt;A:汉代&lt;/p&gt;&lt;p&gt;B:辽代&lt;/p&gt;&lt;p&gt;C:元代&lt;/p&gt;&lt;p&gt;D:清代&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(95, 1, '馒头起源于', 0, '', '', '&lt;p&gt;A:南方&lt;/p&gt;&lt;p&gt;B:北方&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(96, 1, '相传我国古代能作“掌上舞”的人是：', 0, '', '', '&lt;p&gt;A:杨玉环&lt;/p&gt;&lt;p&gt;B:赵飞燕&lt;/p&gt;&lt;p&gt;C:西施&lt;/p&gt;&lt;p&gt;D:貂蝉&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(97, 1, '春秋时的齐国和鲁国，在现在的哪个省？', 0, '', '', '&lt;p&gt;A:河北&lt;/p&gt;&lt;p&gt;B:山东&lt;/p&gt;&lt;p&gt;C:江苏&lt;/p&gt;&lt;p&gt;D:安徽&lt;/p&gt;&lt;p&gt;E:河南&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(98, 1, '最早可卡因是一种：', 0, '', '', '&lt;p&gt;A:解酒药&lt;/p&gt;&lt;p&gt;B:麻醉剂&lt;/p&gt;&lt;p&gt;C:调料品&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(99, 1, '有的学校实行学分制，在我国最早提倡学分制的是', 0, '', '', '&lt;p&gt;A:鲁迅&lt;/p&gt;&lt;p&gt;B:蔡元培&lt;/p&gt;&lt;p&gt;C:吴玉章&lt;/p&gt;&lt;p&gt;D:毛泽东&lt;/p&gt;&lt;p&gt;E:周恩来&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(100, 1, '世界上第一个国家颁布的药典出现在：', 0, '', '', '&lt;p&gt;A:东罗马帝国时期&lt;/p&gt;&lt;p&gt;B:印度孔雀王朝&lt;/p&gt;&lt;p&gt;C:中国唐朝&lt;/p&gt;&lt;p&gt;D:日本德川时代&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(101, 1, '数学符号中的&quot;0&quot;起源于：', 0, '', '', '&lt;p&gt;A:古印度&lt;/p&gt;&lt;p&gt;B:古希腊&lt;/p&gt;&lt;p&gt;C:古埃及&lt;/p&gt;&lt;p&gt;D:古罗马&lt;/p&gt;&lt;p&gt;E:中国&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(102, 1, '中国抗日战争中，最早为抗击日寇牺牲的中国将领是：', 0, '', '', '&lt;p&gt;A:张治中&lt;/p&gt;&lt;p&gt;B:张自忠&lt;/p&gt;&lt;p&gt;C:赵登禹&lt;/p&gt;&lt;p&gt;D:左权&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(103, 1, '孔乙己是科举制度的牺牲品，科举制度始创于何时？', 0, '', '', '&lt;p&gt;A:汉朝&lt;/p&gt;&lt;p&gt;B:隋朝&lt;/p&gt;&lt;p&gt;C:唐朝&lt;/p&gt;&lt;p&gt;D:元代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(104, 1, '从何时起，对最高统治者称“王”？', 0, '', '', '&lt;p&gt;A:夏&lt;/p&gt;&lt;p&gt;B:商&lt;/p&gt;&lt;p&gt;C:春秋&lt;/p&gt;&lt;p&gt;D:周&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(105, 1, '2000年我国国内生产总值突破：', 0, '', '', '&lt;p&gt;A:1万亿美元&lt;/p&gt;&lt;p&gt;B:1.5万亿美元&lt;/p&gt;&lt;p&gt;C:2万亿美元&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(106, 1, '世界上第一个空中犯罪问题的国际公约是：', 0, '', '', '&lt;p&gt;A:《东京公约》&lt;/p&gt;&lt;p&gt;B:《海牙公约》&lt;/p&gt;&lt;p&gt;C:《蒙特利尔公约》&lt;/p&gt;&lt;p&gt;D:《华沙公约》&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(107, 1, '“谬种流传”最早是宋朝人批评当时的：', 0, '', '', '&lt;p&gt;A:官场黑暗&lt;/p&gt;&lt;p&gt;B:科举制度&lt;/p&gt;&lt;p&gt;C:社会风气&lt;/p&gt;&lt;p&gt;D:诗词风格&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(108, 1, '阅兵是古今中外一种隆重的军事仪式，我国最早对阅兵有记载是在：', 0, '', '', '&lt;p&gt;A:春秋&lt;/p&gt;&lt;p&gt;B:战国&lt;/p&gt;&lt;p&gt;C:秦&lt;/p&gt;&lt;p&gt;D:汉&lt;/p&gt;&lt;p&gt;E:三国&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(109, 1, '饼干最初出现的地点是：', 0, '', '', '&lt;p&gt;A:高山&lt;/p&gt;&lt;p&gt;B:海岛&lt;/p&gt;&lt;p&gt;C:极地&lt;/p&gt;&lt;p&gt;D:峡谷&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(110, 1, '唐代人可以称“父亲”为：', 0, '', '', '&lt;p&gt;A:伯伯&lt;/p&gt;&lt;p&gt;B:哥哥&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(111, 1, '群体诉讼最早产生于：', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:法国&lt;/p&gt;&lt;p&gt;C:中国&lt;/p&gt;&lt;p&gt;D:英国&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(112, 1, '唐太宗的“太宗”指的是他的：', 0, '', '', '&lt;p&gt;A:谥号&lt;/p&gt;&lt;p&gt;B:陵号&lt;/p&gt;&lt;p&gt;C:庙号&lt;/p&gt;&lt;p&gt;D:年号&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(113, 1, '世界上最早的节目主持人是主持什么节目的？', 0, '', '', '&lt;p&gt;A:戏剧&lt;/p&gt;&lt;p&gt;B:广告&lt;/p&gt;&lt;p&gt;C:新闻&lt;/p&gt;&lt;p&gt;D:音乐&lt;/p&gt;&lt;p&gt;E:舞蹈&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(114, 1, '古建筑屋顶中等级最高的是：', 0, '', '', '&lt;p&gt;A:悬山顶&lt;/p&gt;&lt;p&gt;B:重檐庑殿顶&lt;/p&gt;&lt;p&gt;C:重檐歇山顶&lt;/p&gt;&lt;p&gt;D:硬山顶&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(115, 1, '下面不是明代的宣德炉之所以珍贵的原因是：', 0, '', '', '&lt;p&gt;A:有重大历史意义&lt;/p&gt;&lt;p&gt;B:用料精到&lt;/p&gt;&lt;p&gt;C:数量很少&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(116, 1, '我国哪位思想家曾提出：学校应成为民主议政的场所？', 0, '', '', '&lt;p&gt;A:王夫之&lt;/p&gt;&lt;p&gt;B:顾炎武&lt;/p&gt;&lt;p&gt;C:黄宗羲&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(117, 1, '人类最早使用的工具，是什么材料的？', 0, '', '', '&lt;p&gt;A:木&lt;/p&gt;&lt;p&gt;B:石&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(118, 1, '&quot;九宫格”的创始人是', 0, '', '', '&lt;p&gt;A:欧阳洵&lt;/p&gt;&lt;p&gt;B:虞世南&lt;/p&gt;&lt;p&gt;C:智永&lt;/p&gt;&lt;p&gt;D:翁方纲&lt;/p&gt;&lt;p&gt;E:米芾&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(119, 1, '最早进入青铜器时代的国家是：', 0, '', '', '&lt;p&gt;A:阿拉伯叙利亚&lt;/p&gt;&lt;p&gt;B:中国&lt;/p&gt;&lt;p&gt;C:埃及&lt;/p&gt;&lt;p&gt;D:印度&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(120, 3, '秦桧是不是最早被称为汉奸的人？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(121, 1, '以下哪一位是中西交往史上较早的人物？', 0, '', '', '&lt;p&gt;A:马可波罗&lt;/p&gt;&lt;p&gt;B:利马窦&lt;/p&gt;&lt;p&gt;C:晁衡&lt;/p&gt;&lt;p&gt;D:玄奘&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(122, 1, '东汉末年我国的一位杰出的医学家是：', 0, '', '', '&lt;p&gt;A:扁鹊&lt;/p&gt;&lt;p&gt;B:华佗&lt;/p&gt;&lt;p&gt;C:李时珍&lt;/p&gt;&lt;p&gt;D:叶天士&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(123, 1, '上个世纪60年代中期成立的第三世界组织是：', 0, '', '', '&lt;p&gt;A:非洲人国民大会&lt;/p&gt;&lt;p&gt;B:非洲统一组织&lt;/p&gt;&lt;p&gt;C:阿拉伯国家联盟&lt;/p&gt;&lt;p&gt;D:77国集团&lt;/p&gt;&lt;p&gt;E:东南亚国家联盟&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(124, 3, '秦始皇把正月改叫端月是为了避讳自己的名字，对吗？', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(125, 1, '历史上的“三八线”指的是朝鲜领土上的什么线？', 0, '', '', '&lt;p&gt;A:经度３８度线&lt;/p&gt;&lt;p&gt;B:北纬３８度线&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(126, 1, '我国古代的“芙蓉城”是指：', 0, '', '', '&lt;p&gt;A:杭州&lt;/p&gt;&lt;p&gt;B:洛阳&lt;/p&gt;&lt;p&gt;C:成都&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(127, 1, '校园歌曲最早出现在', 0, '', '', '&lt;p&gt;A:台湾&lt;/p&gt;&lt;p&gt;B:巴西&lt;/p&gt;&lt;p&gt;C:日本&lt;/p&gt;&lt;p&gt;D:韩国&lt;/p&gt;&lt;p&gt;E:美国&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(128, 1, '浪漫主义诗人济慈在世活了多少年？', 0, '', '', '&lt;p&gt;A:25&lt;/p&gt;&lt;p&gt;B:26&lt;/p&gt;&lt;p&gt;C:35&lt;/p&gt;&lt;p&gt;D:36&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(129, 1, '智利球星萨拉斯出生在哪一年？', 0, '', '', '&lt;p&gt;A:1972&lt;/p&gt;&lt;p&gt;B:1973&lt;/p&gt;&lt;p&gt;C:1974&lt;/p&gt;&lt;p&gt;D:1975&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(130, 1, '我国唐代学者一行和尚，他制订了什么历法？', 0, '', '', '&lt;p&gt;A:大明历&lt;/p&gt;&lt;p&gt;B:元嘉历&lt;/p&gt;&lt;p&gt;C:大衍历&lt;/p&gt;&lt;p&gt;D:公历&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(131, 1, '避孕套最早出现在哪个国家', 0, '', '', '&lt;p&gt;A:埃及&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:中国&lt;/p&gt;&lt;p&gt;D:日本&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(132, 1, '在西方，中世纪的新年是', 0, '', '', '&lt;p&gt;A:1月1日&lt;/p&gt;&lt;p&gt;B:2月1日&lt;/p&gt;&lt;p&gt;C:3月1日&lt;/p&gt;&lt;p&gt;D:4月1日&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(133, 1, '著名历史学家黄仁宇出生于哪一年', 0, '', '', '&lt;p&gt;A:1910年&lt;/p&gt;&lt;p&gt;B:1911年&lt;/p&gt;&lt;p&gt;C:1918年&lt;/p&gt;&lt;p&gt;D:1920年&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(134, 1, '我国西晋的第一代皇帝名叫：', 0, '', '', '&lt;p&gt;A:曹丕&lt;/p&gt;&lt;p&gt;B:司马睿&lt;/p&gt;&lt;p&gt;C:司马炎&lt;/p&gt;&lt;p&gt;D:司马懿&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(135, 1, '我国宋代邢窑出白釉瓷、越窑出青釉瓷，所以有：', 0, '', '', '&lt;p&gt;A:“南青北白”之称&lt;/p&gt;&lt;p&gt;B:“北青南白”之称&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(136, 1, '秦汉时代，人们说的“关中”指哪一带？', 0, '', '', '&lt;p&gt;A:函谷关以西&lt;/p&gt;&lt;p&gt;B:阳关以西&lt;/p&gt;&lt;p&gt;C:山海关以东&lt;/p&gt;&lt;p&gt;D:嘉峪关以东&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(137, 1, '古代人们用来当酒杯的青铜器叫：', 0, '', '', '&lt;p&gt;A:敦&lt;/p&gt;&lt;p&gt;B:尊&lt;/p&gt;&lt;p&gt;C:爵&lt;/p&gt;&lt;p&gt;D:鼎&lt;/p&gt;&lt;p&gt;E:盘&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(138, 1, '第一个测出了地球质量的人是?', 0, '', '', '&lt;p&gt;A:卡文迪许&lt;/p&gt;&lt;p&gt;B:阿基米德&lt;/p&gt;&lt;p&gt;C:帕斯卡&lt;/p&gt;&lt;p&gt;D:惠更斯&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(139, 1, '秦朝制订的《田律》是关于哪方面的规定？', 0, '', '', '&lt;p&gt;A:农业&lt;/p&gt;&lt;p&gt;B:环境保护&lt;/p&gt;&lt;p&gt;C:商品交换&lt;/p&gt;&lt;p&gt;D:税收&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(140, 1, '宋代的代表性刑罚是：', 0, '', '', '&lt;p&gt;A:腰斩&lt;/p&gt;&lt;p&gt;B:刺配&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(141, 1, '下列各朝代疆域西至最远的是：', 0, '', '', '&lt;p&gt;A:秦朝&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:宋朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(142, 1, '全国性抗日战争爆发的标志是？', 0, '', '', '&lt;p&gt;A:九一八事件&lt;/p&gt;&lt;p&gt;B:七七事件&lt;/p&gt;&lt;p&gt;C:一一八事件&lt;/p&gt;&lt;p&gt;D:一二八事件&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(143, 1, '清朝官员的官帽顶部称为顶戴，顶戴为红色的是几品官？', 0, '', '', '&lt;p&gt;A:一二品&lt;/p&gt;&lt;p&gt;B:三四品&lt;/p&gt;&lt;p&gt;C:五六品&lt;/p&gt;&lt;p&gt;D:七品以下&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(144, 1, '赤壁之战中，假装投降以接近曹军的吴国将领是：', 0, '', '', '&lt;p&gt;A:黄忠&lt;/p&gt;&lt;p&gt;B:黄巢&lt;/p&gt;&lt;p&gt;C:黄盖&lt;/p&gt;&lt;p&gt;D:姜维&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(145, 1, '屈原是春秋时代哪国人？', 0, '', '', '&lt;p&gt;A:齐国&lt;/p&gt;&lt;p&gt;B:楚国&lt;/p&gt;&lt;p&gt;C:燕国&lt;/p&gt;&lt;p&gt;D:秦国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(146, 1, '我国最早的博物馆是：', 0, '', '', '&lt;p&gt;A:沈阳故宫博物院&lt;/p&gt;&lt;p&gt;B:南通博物馆&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(147, 1, '新中国第一套纪念邮票是：', 0, '', '', '&lt;p&gt;A:庆祝中国人民政治协商会议第一届全体会议&lt;/p&gt;&lt;p&gt;B:中华人民共和国开国纪念&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(148, 1, '中国第一座佛教寺院是哪一座？', 0, '', '', '&lt;p&gt;A:洛阳白马寺&lt;/p&gt;&lt;p&gt;B:北京潭柘寺&lt;/p&gt;&lt;p&gt;C:五台山清凉寺&lt;/p&gt;&lt;p&gt;D:蒿山少林寺&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(149, 1, '在世界上首创用汤药治病的是：', 0, '', '', '&lt;p&gt;A:孙思邈&lt;/p&gt;&lt;p&gt;B:扁鹊&lt;/p&gt;&lt;p&gt;C:伊尹&lt;/p&gt;&lt;p&gt;D:李时珍&lt;/p&gt;&lt;p&gt;E:华佗&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(150, 1, '法国资产阶级革命爆发的时间是：', 0, '', '', '&lt;p&gt;A:1789年7月14日&lt;/p&gt;&lt;p&gt;B:1792年9月15日&lt;/p&gt;&lt;p&gt;C:1793年7月14日&lt;/p&gt;&lt;p&gt;D:1789年7月4日&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(151, 1, '最古老的医院是设在：', 0, '', '', '&lt;p&gt;A:学校里&lt;/p&gt;&lt;p&gt;B:教堂里&lt;/p&gt;&lt;p&gt;C:剧院里&lt;/p&gt;&lt;p&gt;D:宫廷里&lt;/p&gt;&lt;p&gt;E:集市里&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(152, 1, '世界上第一部成文宪法是：', 0, '', '', '&lt;p&gt;A:英国宪法&lt;/p&gt;&lt;p&gt;B:美国宪法&lt;/p&gt;&lt;p&gt;C:法国宪法&lt;/p&gt;&lt;p&gt;D:德国宪法&lt;/p&gt;&lt;p&gt;E:日本宪法&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(153, 1, '我国最早制造飞机的人是：', 0, '', '', '&lt;p&gt;A:冯如&lt;/p&gt;&lt;p&gt;B:杨仙逸&lt;/p&gt;&lt;p&gt;C:李汉&lt;/p&gt;&lt;p&gt;D:韩兴华&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(154, 1, '中国第一部写在纸上的书是：', 0, '', '', '&lt;p&gt;A:《三国志》&lt;/p&gt;&lt;p&gt;B:《金刚经》&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(155, 1, '我国历史上公布第一批成文法的历史时期是：', 0, '', '', '&lt;p&gt;A:夏朝&lt;/p&gt;&lt;p&gt;B:商朝&lt;/p&gt;&lt;p&gt;C:周朝&lt;/p&gt;&lt;p&gt;D:春秋战国&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(156, 1, '新中国第一部律师法于哪一年开始施行？', 0, '', '', '&lt;p&gt;A:1982年&lt;/p&gt;&lt;p&gt;B:1988年&lt;/p&gt;&lt;p&gt;C:1994年&lt;/p&gt;&lt;p&gt;D:1997年&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(157, 1, '南北朝时，北方民歌艺术的最高成就是：', 0, '', '', '&lt;p&gt;A:木兰辞&lt;/p&gt;&lt;p&gt;B:敕勒歌&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(158, 1, '我国著名的赵州桥建于哪个朝代？', 0, '', '', '&lt;p&gt;A:唐&lt;/p&gt;&lt;p&gt;B:隋&lt;/p&gt;&lt;p&gt;C:宋&lt;/p&gt;&lt;p&gt;D:元&lt;/p&gt;&lt;p&gt;E:明&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(159, 1, '新石器时代属于石器时代的哪个时期？', 0, '', '', '&lt;p&gt;A:早期&lt;/p&gt;&lt;p&gt;B:中期&lt;/p&gt;&lt;p&gt;C:晚期&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(160, 1, '1999年12月15日，美国正式把巴拿马运河归还给巴拿马政府。此前，美国还在该地设立了一个个什么基地？', 0, '', '', '&lt;p&gt;A:商品基地&lt;/p&gt;&lt;p&gt;B:军事基地&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(161, 1, '从何时开始，我国有了民办报纸？', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:元朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(162, 1, '拿破仑统治时期，法国的主要对手是：', 0, '', '', '&lt;p&gt;A:西班牙&lt;/p&gt;&lt;p&gt;B:葡萄牙&lt;/p&gt;&lt;p&gt;C:荷兰&lt;/p&gt;&lt;p&gt;D:英国&lt;/p&gt;&lt;p&gt;E:意大利&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(163, 1, '唐朝将协议离婚称为：', 0, '', '', '&lt;p&gt;A:离&lt;/p&gt;&lt;p&gt;B:和离&lt;/p&gt;&lt;p&gt;C:出妻&lt;/p&gt;&lt;p&gt;D:休弃&lt;/p&gt;&lt;p&gt;E:义绝&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(164, 1, '我国最早的私立学校产生于：', 0, '', '', '&lt;p&gt;A:春秋时期&lt;/p&gt;&lt;p&gt;B:战国时期&lt;/p&gt;&lt;p&gt;C:汉代&lt;/p&gt;&lt;p&gt;D:唐代&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(165, 1, '原始人类在造独木舟时除了用石器砍，还用了哪些办法？', 0, '', '', '&lt;p&gt;A:水泡&lt;/p&gt;&lt;p&gt;B:火烧&lt;/p&gt;&lt;p&gt;C:烟熏&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(166, 1, '诸葛亮的办公地点，武侯祠在什么地方？', 0, '', '', '&lt;p&gt;A:河南南阳&lt;/p&gt;&lt;p&gt;B:四川成都&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(167, 1, '80年发行的人民币二角背面的图案是：', 0, '', '', '&lt;p&gt;A:国旗&lt;/p&gt;&lt;p&gt;B:国徽&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(168, 2, '北京的故宫是哪些朝代的皇宫？（多选）', 0, '', '', '&lt;p&gt;A:宋朝&lt;/p&gt;&lt;p&gt;B:元朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;&lt;p&gt;E:唐朝&lt;/p&gt;&lt;p&gt;F:隋朝&lt;/p&gt;', 6, 'BCD', 'BCD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(169, 1, '&quot;建元”是我国哪一个皇帝使用的年号？', 0, '', '', '&lt;p&gt;A:明成祖&lt;/p&gt;&lt;p&gt;B:晋武帝&lt;/p&gt;&lt;p&gt;C:汉武帝&lt;/p&gt;&lt;p&gt;D:唐太宗&lt;/p&gt;&lt;p&gt;E:宋高宗&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(170, 1, '在唐代长安城经常可以见到的“新罗人”是现今我们所说的：', 0, '', '', '&lt;p&gt;A:朝鲜人&lt;/p&gt;&lt;p&gt;B:越南人&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(171, 1, '3月23日，在太空工作时间最长的空间站“和平号”坠毁，它是在哪年发射升空的？', 0, '', '', '&lt;p&gt;A:1984&lt;/p&gt;&lt;p&gt;B:1985&lt;/p&gt;&lt;p&gt;C:1986&lt;/p&gt;&lt;p&gt;D:1987&lt;/p&gt;&lt;p&gt;E:1988&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(172, 1, '中国警察最新的警服是从何时开始更换的？', 0, '', '', '&lt;p&gt;A:2000年7月1日&lt;/p&gt;&lt;p&gt;B:2000年10月1日&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(173, 1, '“经济法”这个概念，最早哪国人提出的？', 0, '', '', '&lt;p&gt;A:法国&lt;/p&gt;&lt;p&gt;B:德国&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:西班牙&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(174, 1, '历史上著名的“澶渊之盟”发生在哪两朝之间？', 0, '', '', '&lt;p&gt;A:楚、汉&lt;/p&gt;&lt;p&gt;B:北宋、辽&lt;/p&gt;&lt;p&gt;C:金、宋&lt;/p&gt;&lt;p&gt;D:元、明&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(175, 1, '戊戌变法运动期间，维新派创办的第一份报纸是：', 0, '', '', '&lt;p&gt;A:中外纪闻&lt;/p&gt;&lt;p&gt;B:时务报&lt;/p&gt;&lt;p&gt;C:强学报&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(176, 1, '甲骨文是写在哪上面的？', 0, '', '', '&lt;p&gt;A:兽皮&lt;/p&gt;&lt;p&gt;B:象牙&lt;/p&gt;&lt;p&gt;C:龟骨&lt;/p&gt;&lt;p&gt;D:恐龙骨&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(177, 1, '世界上第一颗商用通信卫星是：', 0, '', '', '&lt;p&gt;A:“东方红号”&lt;/p&gt;&lt;p&gt;B:“晨鸟号”&lt;/p&gt;&lt;p&gt;C:“西可尔号”&lt;/p&gt;&lt;p&gt;D:“泰罗斯号”&lt;/p&gt;&lt;p&gt;E:“实践一号”&lt;/p&gt;&lt;p&gt;F:“闪电-1”&lt;/p&gt;', 6, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(178, 1, '中国古代曾有多次的焚书事件，下列帝王焚书最多的是：', 0, '', '', '&lt;p&gt;A:秦始皇&lt;/p&gt;&lt;p&gt;B:汉武帝&lt;/p&gt;&lt;p&gt;C:忽必烈&lt;/p&gt;&lt;p&gt;D:朱元璋&lt;/p&gt;&lt;p&gt;E:乾隆&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(179, 1, '明,清两代科举考试中最高级别的考试是：', 0, '', '', '&lt;p&gt;A:院试&lt;/p&gt;&lt;p&gt;B:殿试&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(180, 1, '&quot;皇帝”作为国家元首的正式称号，始于：', 0, '', '', '&lt;p&gt;A:帝尧&lt;/p&gt;&lt;p&gt;B:朱元璋&lt;/p&gt;&lt;p&gt;C:汉武帝&lt;/p&gt;&lt;p&gt;D:秦始皇&lt;/p&gt;&lt;p&gt;E:商纣王&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(181, 3, '我国古代有人口统计机构吗？', 0, '', '', '&lt;p&gt;A:有&lt;/p&gt;&lt;p&gt;B:没有&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(182, 1, '三叶虫灭绝于地质年代中的：', 0, '', '', '&lt;p&gt;A:元古代&lt;/p&gt;&lt;p&gt;B:太古代&lt;/p&gt;&lt;p&gt;C:二叠纪&lt;/p&gt;&lt;p&gt;D:寒武纪&lt;/p&gt;&lt;p&gt;E:石炭纪&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(183, 1, '五四运动的导火线，是巴黎和会讨论中国青岛的：', 0, '', '', '&lt;p&gt;A:瓜分问题&lt;/p&gt;&lt;p&gt;B:归属问题&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(184, 1, '新四军是哪一地区抗日的主力？', 0, '', '', '&lt;p&gt;A:华北&lt;/p&gt;&lt;p&gt;B:华东&lt;/p&gt;&lt;p&gt;C:华南&lt;/p&gt;&lt;p&gt;D:华中&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(185, 1, '鸿门宴上范增是用什么示意项羽下决心的？', 0, '', '', '&lt;p&gt;A:玉玦&lt;/p&gt;&lt;p&gt;B:玉环&lt;/p&gt;&lt;p&gt;C:玉戒&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(186, 1, '最先发现石油的国家是哪个？', 0, '', '', '&lt;p&gt;A:伊朗&lt;/p&gt;&lt;p&gt;B:伊拉克&lt;/p&gt;&lt;p&gt;C:沙特阿拉伯&lt;/p&gt;&lt;p&gt;D:俄罗斯&lt;/p&gt;&lt;p&gt;E:中国&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(187, 1, '我国在何时将农历正月初一正式定名为春节？', 0, '', '', '&lt;p&gt;A:夏朝&lt;/p&gt;&lt;p&gt;B:辛亥革命后&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(188, 1, '中国的尼姑最早是何时出现的？', 0, '', '', '&lt;p&gt;A:夏朝&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:南北朝&lt;/p&gt;&lt;p&gt;D:金朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(189, 1, '王昭君没有得到汉元帝的召见而远嫁匈奴单于，是因为：', 0, '', '', '&lt;p&gt;A:王妃对她的陷害&lt;/p&gt;&lt;p&gt;B:画师歪曲她的形象&lt;/p&gt;&lt;p&gt;C:大臣说她的坏话&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(190, 1, '世界上第一张圣诞卡出现在：', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:德国&lt;/p&gt;&lt;p&gt;D:意大利&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(191, 1, '我国的科举制度始于那个朝代？', 0, '', '', '&lt;p&gt;A:东汉&lt;/p&gt;&lt;p&gt;B:魏晋&lt;/p&gt;&lt;p&gt;C:隋朝&lt;/p&gt;&lt;p&gt;D:唐朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(192, 1, '明代以后廷试的前三名依次是：', 0, '', '', '&lt;p&gt;A:榜眼 状元 探花&lt;/p&gt;&lt;p&gt;B:状元 探花 榜眼&lt;/p&gt;&lt;p&gt;C:状元 榜眼 探花&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(193, 1, '我国诗歌创作最多的朝代是：', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:宋代&lt;/p&gt;&lt;p&gt;C:明代&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(194, 1, '我国古代第一次正式发布成文法典是：', 0, '', '', '&lt;p&gt;A:子产铸刑鼎&lt;/p&gt;&lt;p&gt;B:邓析作竹刑&lt;/p&gt;&lt;p&gt;C:《常法》&lt;/p&gt;&lt;p&gt;D:刑书&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(195, 1, '世界上最早的自动销售机销售的是：', 0, '', '', '&lt;p&gt;A:饮料&lt;/p&gt;&lt;p&gt;B:烟草&lt;/p&gt;&lt;p&gt;C:糖果&lt;/p&gt;&lt;p&gt;D:面包&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(196, 1, '太平天国中的西王是谁?', 0, '', '', '&lt;p&gt;A:石达开&lt;/p&gt;&lt;p&gt;B:韦昌辉&lt;/p&gt;&lt;p&gt;C:冯云山&lt;/p&gt;&lt;p&gt;D:萧朝贵&lt;/p&gt;&lt;p&gt;E:杨秀清&lt;/p&gt;&lt;p&gt;F:洪宣娇&lt;/p&gt;', 6, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(197, 3, '在11月7日纪念俄国10月25日发生的“十月革命”，这样的差异与历法有关吗？', 0, '', '', '&lt;p&gt;A:有&lt;/p&gt;&lt;p&gt;B:没有&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(198, 1, '祖冲之的《缀术》在什么时候被定为学校的课本？', 0, '', '', '&lt;p&gt;A:汉朝&lt;/p&gt;&lt;p&gt;B:南朝&lt;/p&gt;&lt;p&gt;C:隋朝&lt;/p&gt;&lt;p&gt;D:唐朝&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(199, 1, '秦分天下为三十六郡。今天的江苏属于', 0, '', '', '&lt;p&gt;A:长沙郡&lt;/p&gt;&lt;p&gt;B:泗水郡&lt;/p&gt;&lt;p&gt;C:会稽郡&lt;/p&gt;&lt;p&gt;D:涿郡&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(200, 1, '“击鼓喊冤”最早产生于：', 0, '', '', '&lt;p&gt;A:汉朝&lt;/p&gt;&lt;p&gt;B:魏&lt;/p&gt;&lt;p&gt;C:隋朝&lt;/p&gt;&lt;p&gt;D:宋朝&lt;/p&gt;&lt;p&gt;E:明朝&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(201, 1, '我国的陶器出现在：', 0, '', '', '&lt;p&gt;A:旧石器时代&lt;/p&gt;&lt;p&gt;B:新石器时代&lt;/p&gt;&lt;p&gt;C:青铜器时代&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(202, 1, '下令“破釜沉舟”的我国古代将领是：', 0, '', '', '&lt;p&gt;A:项庄&lt;/p&gt;&lt;p&gt;B:项羽&lt;/p&gt;&lt;p&gt;C:刘邦&lt;/p&gt;&lt;p&gt;D:张良&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(203, 1, '古代欧洲文明发源于：', 0, '', '', '&lt;p&gt;A:爱琴文明&lt;/p&gt;&lt;p&gt;B:两河流域文明&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(204, 1, '古时称送考生入京师应会试的官车为“公车”，它是什么朝代的惯例？', 0, '', '', '&lt;p&gt;A:隋朝&lt;/p&gt;&lt;p&gt;B:汉朝&lt;/p&gt;&lt;p&gt;C:唐朝&lt;/p&gt;&lt;p&gt;D:宋朝&lt;/p&gt;&lt;p&gt;E:明朝&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(205, 1, '竹简与木牍在古代被用作记载文字的材料，其中记载较长的文字，一般用：', 0, '', '', '&lt;p&gt;A:竹简&lt;/p&gt;&lt;p&gt;B:木牍&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(206, 1, '属于元古代的植物化石的是：', 0, '', '', '&lt;p&gt;A:海绵&lt;/p&gt;&lt;p&gt;B:三叶虫&lt;/p&gt;&lt;p&gt;C:蕨类&lt;/p&gt;&lt;p&gt;D:藻类&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(207, 1, '“虎门销烟”的时间是：', 0, '', '', '&lt;p&gt;A:1839年6月&lt;/p&gt;&lt;p&gt;B:1840年6月&lt;/p&gt;&lt;p&gt;C:1841年1月&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(208, 1, '“会计”业务最早出现于：', 0, '', '', '&lt;p&gt;A:古代埃及&lt;/p&gt;&lt;p&gt;B:古代巴比伦&lt;/p&gt;&lt;p&gt;C:古代印度&lt;/p&gt;&lt;p&gt;D:古代中国&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(209, 1, '以下哪一个阶级，不属于法国大革命前的第三等级？', 0, '', '', '&lt;p&gt;A:农民&lt;/p&gt;&lt;p&gt;B:下级教士&lt;/p&gt;&lt;p&gt;C:资产阶级&lt;/p&gt;&lt;p&gt;D:手工业者&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(210, 1, '中国古代海军诞生于：', 0, '', '', '&lt;p&gt;A:春秋末期&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:隋朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(211, 1, '我国古代哪位政治家为自己立了块供后人评说的无字碑', 0, '', '', '&lt;p&gt;A:唐太宗&lt;/p&gt;&lt;p&gt;B:武则天&lt;/p&gt;&lt;p&gt;C:汉高祖&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(212, 1, '人类有史以来第一次登月是在哪年？', 0, '', '', '&lt;p&gt;A:1965年&lt;/p&gt;&lt;p&gt;B:1966年&lt;/p&gt;&lt;p&gt;C:1969年&lt;/p&gt;&lt;p&gt;D:1972年&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(213, 1, '在远古时代金属铜的出现是：', 0, '', '', '&lt;p&gt;A:在烧烤兽肉的过程中&lt;/p&gt;&lt;p&gt;B:在烧制陶器的过程中&lt;/p&gt;&lt;p&gt;C:在雷电引起的大火中&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(214, 1, '下列人物的历史功绩与郑成功最相似的是：', 0, '', '', '&lt;p&gt;A:岳飞&lt;/p&gt;&lt;p&gt;B:郑和&lt;/p&gt;&lt;p&gt;C:文天祥&lt;/p&gt;&lt;p&gt;D:戚继光&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(215, 1, '我国人口论思想是谁首先提出的？', 0, '', '', '&lt;p&gt;A:王安石&lt;/p&gt;&lt;p&gt;B:韩非&lt;/p&gt;&lt;p&gt;C:李斯&lt;/p&gt;&lt;p&gt;D:孔子&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(216, 1, '1907年11月22日，出现在大西洋上的“毛里塔尼亚”号是世界上第一艘现代化的：', 0, '', '', '&lt;p&gt;A:客轮&lt;/p&gt;&lt;p&gt;B:油轮&lt;/p&gt;&lt;p&gt;C:货轮&lt;/p&gt;&lt;p&gt;D:战舰&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(217, 1, '帮助商鞅在秦国人民中树立威信的是：', 0, '', '', '&lt;p&gt;A:一根木杆&lt;/p&gt;&lt;p&gt;B:一柄宝剑&lt;/p&gt;&lt;p&gt;C:一幅画&lt;/p&gt;&lt;p&gt;D:一个马头&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(218, 1, '故宫是世界上最大的宫殿，共有几个朝代把它作为皇宫？', 0, '', '', '&lt;p&gt;A:一个&lt;/p&gt;&lt;p&gt;B:两个&lt;/p&gt;&lt;p&gt;C:三个&lt;/p&gt;&lt;p&gt;D:四个&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(219, 1, '世界上第一个无产阶级政党是：', 0, '', '', '&lt;p&gt;A:巴黎公社&lt;/p&gt;&lt;p&gt;B:俄国社会&lt;/p&gt;&lt;p&gt;C:德国社会民主工党&lt;/p&gt;&lt;p&gt;D:英国工党&lt;/p&gt;&lt;p&gt;E:匈牙利小农党&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(220, 1, '自元朝以后，年代愈近建筑斗拱愈：', 0, '', '', '&lt;p&gt;A:细而密&lt;/p&gt;&lt;p&gt;B:粗而疏&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(221, 1, '最早的印玺，是盖在什么上面的？', 0, '', '', '&lt;p&gt;A:木版&lt;/p&gt;&lt;p&gt;B:印泥&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(222, 1, '清朝编写的中国历史上规模最大的《四库全书》先后誊缮了几部？', 0, '', '', '&lt;p&gt;A:5&lt;/p&gt;&lt;p&gt;B:6&lt;/p&gt;&lt;p&gt;C:7&lt;/p&gt;&lt;p&gt;D:8&lt;/p&gt;&lt;p&gt;E:9&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(223, 1, '“老三届”指的是那几年毕业的初、高中毕业生？', 0, '', '', '&lt;p&gt;A:1964--1966&lt;/p&gt;&lt;p&gt;B:1966--1968&lt;/p&gt;&lt;p&gt;C:1969--1971&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(224, 1, '公元６１８－９０７年，是我国古代的哪个朝代？', 0, '', '', '&lt;p&gt;A:唐&lt;/p&gt;&lt;p&gt;B:隋&lt;/p&gt;&lt;p&gt;C:元&lt;/p&gt;&lt;p&gt;D:清&lt;/p&gt;&lt;p&gt;E:东汉&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(225, 1, '破除满汉不通婚这个祖训的是：', 0, '', '', '&lt;p&gt;A:康熙&lt;/p&gt;&lt;p&gt;B:雍正&lt;/p&gt;&lt;p&gt;C:乾隆&lt;/p&gt;&lt;p&gt;D:道光&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(226, 1, '人类最古老的绘画形式是：', 0, '', '', '&lt;p&gt;A:版画&lt;/p&gt;&lt;p&gt;B:壁画&lt;/p&gt;&lt;p&gt;C:彩陶&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(227, 1, '西周法官在审讯中采用的方式为：', 0, '', '', '&lt;p&gt;A:五刑&lt;/p&gt;&lt;p&gt;B:五听&lt;/p&gt;&lt;p&gt;C:五行&lt;/p&gt;&lt;p&gt;D:九刑&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(228, 1, '中国古代名医华佗为谁所杀？', 0, '', '', '&lt;p&gt;A:董卓&lt;/p&gt;&lt;p&gt;B:曹操&lt;/p&gt;&lt;p&gt;C:司马思&lt;/p&gt;&lt;p&gt;D:吕布&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(229, 1, '侏罗纪属于地质年代中的哪一代？', 0, '', '', '&lt;p&gt;A:中生代&lt;/p&gt;&lt;p&gt;B:新生代&lt;/p&gt;&lt;p&gt;C:古生代&lt;/p&gt;&lt;p&gt;D:元古代&lt;/p&gt;&lt;p&gt;E:太古代&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(230, 1, '古东方奴隶制法是建立在甚么土地所有制基础上的?', 0, '', '', '&lt;p&gt;A:国有&lt;/p&gt;&lt;p&gt;B:私有&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(231, 1, '最早的校园歌曲出现在：', 0, '', '', '&lt;p&gt;A:中国&lt;/p&gt;&lt;p&gt;B:英国&lt;/p&gt;&lt;p&gt;C:美国&lt;/p&gt;&lt;p&gt;D:日本&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(232, 1, '最早系统地确定官职的是在：', 0, '', '', '&lt;p&gt;A:商朝&lt;/p&gt;&lt;p&gt;B:西周初期&lt;/p&gt;&lt;p&gt;C:春秋&lt;/p&gt;&lt;p&gt;D:汉朝初期&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(233, 1, '最初使用的海洋捕捞工具是：', 0, '', '', '&lt;p&gt;A:渔钩&lt;/p&gt;&lt;p&gt;B:渔叉&lt;/p&gt;&lt;p&gt;C:渔网&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(234, 1, '到21世纪中叶，中国人口总量在达到峰值后将缓慢下降，这一峰值是：', 0, '', '', '&lt;p&gt;A:14亿&lt;/p&gt;&lt;p&gt;B:15亿&lt;/p&gt;&lt;p&gt;C:16亿&lt;/p&gt;&lt;p&gt;D:17亿&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(235, 1, '1800年以前，西方医生认为手术成功的标志是：', 0, '', '', '&lt;p&gt;A:患者疼痛&lt;/p&gt;&lt;p&gt;B:伤口愈合&lt;/p&gt;&lt;p&gt;C:解除疼痛&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(236, 1, '铁路和火车哪一个较早出现？', 0, '', '', '&lt;p&gt;A:火车&lt;/p&gt;&lt;p&gt;B:铁路&lt;/p&gt;&lt;p&gt;C:一块出现&lt;/p&gt;&lt;p&gt;D:先有火车后有铁路&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(237, 1, '中国第一座电影院是：', 0, '', '', '&lt;p&gt;A:北京大华电影院&lt;/p&gt;&lt;p&gt;B:上海虹口电影院&lt;/p&gt;&lt;p&gt;C:北京广和电影院&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(238, 1, '1980年2月发行了生肖邮票“猴票”。1992年发行的生肖邮票是：', 0, '', '', '&lt;p&gt;A:羊票&lt;/p&gt;&lt;p&gt;B:猴票&lt;/p&gt;&lt;p&gt;C:鸡票&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(239, 1, '谁第一次把中国话剧带进美国白宫？', 0, '', '', '&lt;p&gt;A:阮玲玉&lt;/p&gt;&lt;p&gt;B:胡蝶&lt;/p&gt;&lt;p&gt;C:王莹&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(240, 1, '是哪国人最先制作出了牛奶巧克力？', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:西班牙&lt;/p&gt;&lt;p&gt;C:意大利&lt;/p&gt;&lt;p&gt;D:瑞士&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(241, 1, '中国共产党的创始人李大钊是被什么人杀害的？', 0, '', '', '&lt;p&gt;A:列强&lt;/p&gt;&lt;p&gt;B:军阀&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(242, 1, '下列哪一项不是1993年电子部提出的三金工程？', 0, '', '', '&lt;p&gt;A:金桥工程&lt;/p&gt;&lt;p&gt;B:金路工程&lt;/p&gt;&lt;p&gt;C:金关工程&lt;/p&gt;&lt;p&gt;D:金卡工程&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(243, 1, '阿姆斯特朗是乘哪个飞船成功登月的？', 0, '', '', '&lt;p&gt;A:阿波罗8号&lt;/p&gt;&lt;p&gt;B:阿波罗9号&lt;/p&gt;&lt;p&gt;C:阿波罗11号&lt;/p&gt;&lt;p&gt;D:阿波罗13号&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(244, 1, '在亚洲反法西斯战争中，盟军中牺牲的最高级别将领是：', 0, '', '', '&lt;p&gt;A:何应钦&lt;/p&gt;&lt;p&gt;B:叶挺&lt;/p&gt;&lt;p&gt;C:巴顿&lt;/p&gt;&lt;p&gt;D:张自忠&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(245, 1, '“素质教育”一词的最早出现大约在：', 0, '', '', '&lt;p&gt;A:1987年&lt;/p&gt;&lt;p&gt;B:1990年&lt;/p&gt;&lt;p&gt;C:1993年&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(246, 1, '第一套奥林匹克邮票是哪个国家发行的?', 0, '', '', '&lt;p&gt;A:希腊&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:西班牙&lt;/p&gt;&lt;p&gt;D:土耳其&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(247, 1, '哺乳类出现于地质年代的：', 0, '', '', '&lt;p&gt;A:志留纪&lt;/p&gt;&lt;p&gt;B:三叠纪&lt;/p&gt;&lt;p&gt;C:奥陶纪&lt;/p&gt;&lt;p&gt;D:寒武纪&lt;/p&gt;&lt;p&gt;E:白垩纪&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(248, 1, '古时的“燕乐”最初是在什么场合中演奏的？', 0, '', '', '&lt;p&gt;A:射猎&lt;/p&gt;&lt;p&gt;B:祭祀祖先&lt;/p&gt;&lt;p&gt;C:饮酒吃饭&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(249, 3, '西欧中世纪的骑士教育中是否重视文化知识教育？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:否&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(250, 1, '最早将国际法介绍到中国来的是：', 0, '', '', '&lt;p&gt;A:丁韪良&lt;/p&gt;&lt;p&gt;B:蒲安臣&lt;/p&gt;&lt;p&gt;C:林则徐&lt;/p&gt;&lt;p&gt;D:惠顿&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(251, 1, '在古代，“爵”是一种什么器皿？', 0, '', '', '&lt;p&gt;A:食器&lt;/p&gt;&lt;p&gt;B:酒器&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(252, 1, '蛋筒冰淇淋最初出现的场合是：', 0, '', '', '&lt;p&gt;A:生日聚会&lt;/p&gt;&lt;p&gt;B:博览会&lt;/p&gt;&lt;p&gt;C:节日庆典活动&lt;/p&gt;&lt;p&gt;D:电影院&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(253, 1, '明清两代科举考试的最高级别“殿试”的第一名叫状元,第二名叫：', 0, '', '', '&lt;p&gt;A:解元&lt;/p&gt;&lt;p&gt;B:会元&lt;/p&gt;&lt;p&gt;C:榜眼&lt;/p&gt;&lt;p&gt;D:探花&lt;/p&gt;&lt;p&gt;E:贡士&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(254, 1, '人类祖先出现于地质年代的：', 0, '', '', '&lt;p&gt;A:第四纪&lt;/p&gt;&lt;p&gt;B:白垩纪&lt;/p&gt;&lt;p&gt;C:三叠纪&lt;/p&gt;&lt;p&gt;D:石炭纪&lt;/p&gt;&lt;p&gt;E:奥陶纪&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(255, 1, '西伯侯姬昌即周文王是在何地遇见的姜子牙？', 0, '', '', '&lt;p&gt;A:淮河边&lt;/p&gt;&lt;p&gt;B:长江边&lt;/p&gt;&lt;p&gt;C:泾水河边&lt;/p&gt;&lt;p&gt;D:渭水河边&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(256, 1, '有人说，现在找不到恐龙了，因为恐龙早在多少年前就灭绝了？', 0, '', '', '&lt;p&gt;A:6500万年&lt;/p&gt;&lt;p&gt;B:55万年&lt;/p&gt;&lt;p&gt;C:10亿年前&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(257, 1, '1955年的亚非会议是在哪里召开的？', 0, '', '', '&lt;p&gt;A:印尼&lt;/p&gt;&lt;p&gt;B:新加坡&lt;/p&gt;&lt;p&gt;C:巴基斯坦&lt;/p&gt;&lt;p&gt;D:埃及&lt;/p&gt;&lt;p&gt;E:也门&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(258, 1, '古代游牧民族生活存在太阳崇拜吗？', 0, '', '', '&lt;p&gt;A:存在&lt;/p&gt;&lt;p&gt;B:不存在&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(259, 3, '秦朝的阿房宫遗址在西安市郊，对吗？', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:不对&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(260, 1, '古代的死刑在什么季节行刑？', 0, '', '', '&lt;p&gt;A:春季&lt;/p&gt;&lt;p&gt;B:秋季&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(261, 1, '战国时郭隗对燕昭王说“请自隗始”，是指他开始干什么呢？', 0, '', '', '&lt;p&gt;A:清查财产&lt;/p&gt;&lt;p&gt;B:聘请任用&lt;/p&gt;&lt;p&gt;C:晋升高官&lt;/p&gt;&lt;p&gt;D:严明军纪&lt;/p&gt;&lt;p&gt;E:撤职查办&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(262, 1, '请问苏联是在什么时候解体的？', 0, '', '', '&lt;p&gt;A:1990.10&lt;/p&gt;&lt;p&gt;B:1990.11&lt;/p&gt;&lt;p&gt;C:1991.12&lt;/p&gt;&lt;p&gt;D:1992.10&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(263, 1, '二战时期，为德国海军提出了&quot;群狼战术&quot;的海军元帅是：', 0, '', '', '&lt;p&gt;A:邓尼茨&lt;/p&gt;&lt;p&gt;B:海因里希&lt;/p&gt;&lt;p&gt;C:罗姆&lt;/p&gt;&lt;p&gt;D:格林&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(264, 1, '&quot;甲骨文&quot;发现于：', 0, '', '', '&lt;p&gt;A:明末&lt;/p&gt;&lt;p&gt;B:清末&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(265, 1, '2000年11月底人们在什么地方发现了曾经被认为已经“绝种”的开普狮子?', 0, '', '', '&lt;p&gt;A:西伯利亚&lt;/p&gt;&lt;p&gt;B:南非&lt;/p&gt;&lt;p&gt;C:巴西&lt;/p&gt;&lt;p&gt;D:扎伊尔&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(266, 1, '被称为“世界第八奇观”的是：', 0, '', '', '&lt;p&gt;A:长城&lt;/p&gt;&lt;p&gt;B:圆明园&lt;/p&gt;&lt;p&gt;C:秦始皇兵马俑坑&lt;/p&gt;&lt;p&gt;D:泰山日出&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(267, 1, '周口店猿人制造的石器是：', 0, '', '', '&lt;p&gt;A:打制的&lt;/p&gt;&lt;p&gt;B:磨制的&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(268, 3, '古代丝绸中，罗、缎、绮指的是同一种丝织物吗？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(269, 1, '最早的生命诞生于下面哪个地方？', 0, '', '', '&lt;p&gt;A:原始森林&lt;/p&gt;&lt;p&gt;B:原始草原&lt;/p&gt;&lt;p&gt;C:原始海洋&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(270, 1, '下面所列生物发展进程的顺序那一个是正确的？', 0, '', '', '&lt;p&gt;A:太古代、元古代、古生代、新生代、中生代&lt;/p&gt;&lt;p&gt;B:太古代、元古代、中生代、古生代、新生代&lt;/p&gt;&lt;p&gt;C:太古代、中生代、元古代、古生代、新生代&lt;/p&gt;&lt;p&gt;D:太古代、元古代、古生代、中生代、新生代&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(271, 1, '最古老的恐龙是什么？', 0, '', '', '&lt;p&gt;A:剑龙&lt;/p&gt;&lt;p&gt;B:腔体龙&lt;/p&gt;&lt;p&gt;C:地震龙&lt;/p&gt;&lt;p&gt;D:棘皮龙&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(272, 1, '已知的最大恐龙是什么？', 0, '', '', '&lt;p&gt;A:剑龙&lt;/p&gt;&lt;p&gt;B:腔体龙&lt;/p&gt;&lt;p&gt;C:地震龙&lt;/p&gt;&lt;p&gt;D:腕龙&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(273, 1, '已知的最重的恐龙是什么？', 0, '', '', '&lt;p&gt;A:剑龙&lt;/p&gt;&lt;p&gt;B:腔体龙&lt;/p&gt;&lt;p&gt;C:地震龙&lt;/p&gt;&lt;p&gt;D:腕龙&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(274, 1, '考古学家至今发现了多少种恐龙？', 0, '', '', '&lt;p&gt;A:100多种&lt;/p&gt;&lt;p&gt;B:200多种&lt;/p&gt;&lt;p&gt;C:300多种&lt;/p&gt;&lt;p&gt;D:400多种&lt;/p&gt;&lt;p&gt;E:500多种&lt;/p&gt;&lt;p&gt;F:600多种&lt;/p&gt;', 6, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(275, 2, '下面哪些是食草恐龙？（多选）', 0, '', '', '&lt;p&gt;A:甲龙&lt;/p&gt;&lt;p&gt;B:梁龙&lt;/p&gt;&lt;p&gt;C:鄂龙&lt;/p&gt;&lt;p&gt;D:腕龙&lt;/p&gt;&lt;p&gt;E:跃龙&lt;/p&gt;&lt;p&gt;F:鸭嘴龙&lt;/p&gt;', 6, 'ADF', 'ADF', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(276, 2, '下面有哪些是食肉恐龙？（多选）', 0, '', '', '&lt;p&gt;A:霸王龙&lt;/p&gt;&lt;p&gt;B:跃龙&lt;/p&gt;&lt;p&gt;C:梁龙&lt;/p&gt;&lt;p&gt;D:亚伯达龙&lt;/p&gt;&lt;p&gt;E:鳄龙&lt;/p&gt;&lt;p&gt;F:甲龙&lt;/p&gt;', 6, 'ADE', 'ADE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(277, 1, '恐龙世界的短跑冠军是什么龙？', 0, '', '', '&lt;p&gt;A:肿头龙&lt;/p&gt;&lt;p&gt;B:慈母龙&lt;/p&gt;&lt;p&gt;C:鸵鸟龙&lt;/p&gt;&lt;p&gt;D:剑龙&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(278, 2, '下面哪些是海洋中的恐龙？（多选）', 0, '', '', '&lt;p&gt;A:鱼龙&lt;/p&gt;&lt;p&gt;B:管鼻龙&lt;/p&gt;&lt;p&gt;C:蛇颈龙&lt;/p&gt;&lt;p&gt;D:海鳄龙&lt;/p&gt;&lt;p&gt;E:鸭嘴龙&lt;/p&gt;', 5, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(279, 3, '翼龙是恐龙么？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(280, 1, '新生代距今有多少年？', 0, '', '', '&lt;p&gt;A:1000万年&lt;/p&gt;&lt;p&gt;B:2000万年&lt;/p&gt;&lt;p&gt;C:3000万年&lt;/p&gt;&lt;p&gt;D:4000万年&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(281, 2, '在古爬行动物中有哪些动物残存至今？（多选）', 0, '', '', '&lt;p&gt;A:虎&lt;/p&gt;&lt;p&gt;B:鳄鱼&lt;/p&gt;&lt;p&gt;C:龟&lt;/p&gt;&lt;p&gt;D:大象&lt;/p&gt;&lt;p&gt;E:蜥蜴&lt;/p&gt;&lt;p&gt;F:蛇&lt;/p&gt;', 6, 'BCE', 'BCE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(282, 1, '“内阁”作为国家的最高决策机关和行政权力机关创立于', 0, '', '', '&lt;p&gt;A:东汉&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(283, 1, '我们从封建社会发展到今天的现代化社会，总共经历了3次划时代的工业革命，请问这3次工业革命的主要内容依次是：', 0, '', '', '&lt;p&gt;A:蒸汽机发明、飞机，汽车等问世、电脑问世&lt;/p&gt;&lt;p&gt;B:机器取代手工生产、电器化、电脑和信息产业化&lt;/p&gt;&lt;p&gt;C:电力广泛应用、用机器制造机器、计算机网络问世&lt;/p&gt;&lt;p&gt;D:工厂代替手工生产、出现近代交通工具、电脑&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(284, 1, '第二次世界大战中，意大利法西斯头目是：', 0, '', '', '&lt;p&gt;A:希特勒&lt;/p&gt;&lt;p&gt;B:丘吉尔&lt;/p&gt;&lt;p&gt;C:杜鲁门&lt;/p&gt;&lt;p&gt;D:墨索里尼&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(285, 1, '我国清朝的开国皇帝是：', 0, '', '', '&lt;p&gt;A:顺治&lt;/p&gt;&lt;p&gt;B:康熙&lt;/p&gt;&lt;p&gt;C:皇太极&lt;/p&gt;&lt;p&gt;D:努尔哈赤&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(286, 1, '唐朝时，文成公主为促进少数民族与中原的友好远嫁吐蕃；到了唐中宗时哪位公主又代表唐朝与吐蕃和亲？', 0, '', '', '&lt;p&gt;A:金城公主&lt;/p&gt;&lt;p&gt;B:和平公主&lt;/p&gt;&lt;p&gt;C:太平公主&lt;/p&gt;&lt;p&gt;D:大明公主&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(287, 1, '华佗是我国东汉时的名医，请问他是：', 0, '', '', '&lt;p&gt;A:内科医生&lt;/p&gt;&lt;p&gt;B:外科医生&lt;/p&gt;&lt;p&gt;C:手术医生&lt;/p&gt;&lt;p&gt;D:专门治疗各种常见病，不分科的医生&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(288, 1, '我国关于哈雷慧星的记录最早在哪个时代？', 0, '', '', '&lt;p&gt;A:殷商时代&lt;/p&gt;&lt;p&gt;B:春秋时代&lt;/p&gt;&lt;p&gt;C:战国时代&lt;/p&gt;&lt;p&gt;D:汉代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(289, 1, '大革命失败后，哪次起义为毛泽东亲自领导？', 0, '', '', '&lt;p&gt;A:广州起义&lt;/p&gt;&lt;p&gt;B:南京起义&lt;/p&gt;&lt;p&gt;C:秋收起义&lt;/p&gt;&lt;p&gt;D:武昌起义&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(290, 1, '南京大屠杀提醒国人勿忘国耻，这是一个永远的民族历史的烙印，即使与日本建立邦交，也不能轻易忘却这段屈辱。请记住，南京大屠杀发生在：', 0, '', '', '&lt;p&gt;A:1931年&lt;/p&gt;&lt;p&gt;B:1933年&lt;/p&gt;&lt;p&gt;C:1935年&lt;/p&gt;&lt;p&gt;D:1937年&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(291, 2, '被称做“意大利文艺复兴三杰”的是（多选）', 0, '', '', '&lt;p&gt;A:达·芬奇&lt;/p&gt;&lt;p&gt;B:波提切利&lt;/p&gt;&lt;p&gt;C:拉菲尔&lt;/p&gt;&lt;p&gt;D:提香&lt;/p&gt;&lt;p&gt;E:米开朗基罗&lt;/p&gt;', 5, 'ACE', 'ACE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(292, 1, '以下不是文艺复兴时期画家的是', 0, '', '', '&lt;p&gt;A:乔托&lt;/p&gt;&lt;p&gt;B:波提切利&lt;/p&gt;&lt;p&gt;C:丢勒&lt;/p&gt;&lt;p&gt;D:列宾&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(293, 1, '世界上最早制作葡萄酒的国家是：', 0, '', '', '&lt;p&gt;A:法国&lt;/p&gt;&lt;p&gt;B:意大利&lt;/p&gt;&lt;p&gt;C:埃及&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(294, 1, '最早的血压计用于测量谁的血压？', 0, '', '', '&lt;p&gt;A:牛&lt;/p&gt;&lt;p&gt;B:狗&lt;/p&gt;&lt;p&gt;C:马&lt;/p&gt;&lt;p&gt;D:骆驼&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(295, 1, '古代绘画、丝织陈列室为什么控制光线？', 0, '', '', '&lt;p&gt;A:以示珍贵&lt;/p&gt;&lt;p&gt;B:防止复制&lt;/p&gt;&lt;p&gt;C:减少紫外线侵害&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(296, 1, '首次世界举重比赛举行的地点是：', 0, '', '', '&lt;p&gt;A:体育馆&lt;/p&gt;&lt;p&gt;B:音乐厅&lt;/p&gt;&lt;p&gt;C:商场&lt;/p&gt;&lt;p&gt;D:咖啡馆&lt;/p&gt;&lt;p&gt;E:广场&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(297, 1, '古代政府设立“义仓”是做什么用的？', 0, '', '', '&lt;p&gt;A:救助孤寡&lt;/p&gt;&lt;p&gt;B:收集捐献场所&lt;/p&gt;&lt;p&gt;C:赈灾&lt;/p&gt;&lt;p&gt;D:救助病人&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(298, 1, '国际奥委会评估团对北京进行了为期几天的考察？', 0, '', '', '&lt;p&gt;A:4天&lt;/p&gt;&lt;p&gt;B:3天&lt;/p&gt;&lt;p&gt;C:5天&lt;/p&gt;&lt;p&gt;D:2天&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(299, 1, '古埃及人在猫的木乃伊旁边放上：', 0, '', '', '&lt;p&gt;A:珠宝&lt;/p&gt;&lt;p&gt;B:鱼干&lt;/p&gt;&lt;p&gt;C:老鼠的木乃伊&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(300, 1, '鞭炮和爆竹哪一个历史比较悠久？', 0, '', '', '&lt;p&gt;A:鞭炮&lt;/p&gt;&lt;p&gt;B:爆竹&lt;/p&gt;&lt;p&gt;C:礼炮&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(301, 1, '我国师范教育开端于：', 0, '', '', '&lt;p&gt;A:京师大学堂师范馆&lt;/p&gt;&lt;p&gt;B:上海南洋公学师范院&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(302, 1, '我国的“鞠躬”礼起源于：', 0, '', '', '&lt;p&gt;A:祭天的仪式&lt;/p&gt;&lt;p&gt;B:降者伏地叩首&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(303, 1, '铁达尼号游轮是哪一年沉没的？', 0, '', '', '&lt;p&gt;A:1910&lt;/p&gt;&lt;p&gt;B:1911&lt;/p&gt;&lt;p&gt;C:1912&lt;/p&gt;&lt;p&gt;D:1913&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(304, 1, '中國焚書坑儒的是谁的结果？', 0, '', '', '&lt;p&gt;A:秦始皇&lt;/p&gt;&lt;p&gt;B:李斯&lt;/p&gt;&lt;p&gt;C:漢武帝&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(305, 2, '明代宦官控制的机构有哪些?（多选）', 0, '', '', '&lt;p&gt;A:錦衣衛&lt;/p&gt;&lt;p&gt;B:大廠&lt;/p&gt;&lt;p&gt;C:西廠&lt;/p&gt;&lt;p&gt;D:東廠&lt;/p&gt;', 4, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(306, 1, '从古至今北京有几次被定为都城？', 0, '', '', '&lt;p&gt;A:8次&lt;/p&gt;&lt;p&gt;B:11次&lt;/p&gt;&lt;p&gt;C:12次&lt;/p&gt;&lt;p&gt;D:14次&lt;/p&gt;&lt;p&gt;E:15次&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(307, 1, '下列官名中那个不是唐朝的官名？', 0, '', '', '&lt;p&gt;A:尚书&lt;/p&gt;&lt;p&gt;B:黄门&lt;/p&gt;&lt;p&gt;C:中书&lt;/p&gt;&lt;p&gt;D:巡按&lt;/p&gt;&lt;p&gt;E:殿中&lt;/p&gt;&lt;p&gt;F:御史&lt;/p&gt;', 6, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(308, 1, '十岁以下的小娃娃就当了皇帝的，在中国历史上共有几个？', 0, '', '', '&lt;p&gt;A:19位&lt;/p&gt;&lt;p&gt;B:22位&lt;/p&gt;&lt;p&gt;C:25位&lt;/p&gt;&lt;p&gt;D:29位&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(309, 1, '中國用最久的歷法是：', 0, '', '', '&lt;p&gt;A:時憲歷&lt;/p&gt;&lt;p&gt;B:授時歷&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(310, 1, '宋朝有哪位變法？', 0, '', '', '&lt;p&gt;A:張居正&lt;/p&gt;&lt;p&gt;B:司馬遷&lt;/p&gt;&lt;p&gt;C:王安石&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(311, 1, '秦孝公用誰變法', 0, '', '', '&lt;p&gt;A:商鞅&lt;/p&gt;&lt;p&gt;B:李白&lt;/p&gt;&lt;p&gt;C:杜甫&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(312, 1, '在位时间最短的皇帝是东汉的刘贺，他只当了多久的皇帝就被废除了？', 0, '', '', '&lt;p&gt;A:25天&lt;/p&gt;&lt;p&gt;B:26天&lt;/p&gt;&lt;p&gt;C:27天&lt;/p&gt;&lt;p&gt;D:28天&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(313, 1, '世界上最早的银行始建于哪个国家？', 0, '', '', '&lt;p&gt;A:意大利&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;&lt;p&gt;D:瑞士&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(314, 1, '“垂帘听政”始于何时？', 0, '', '', '&lt;p&gt;A:宋朝&lt;/p&gt;&lt;p&gt;B:元朝&lt;/p&gt;&lt;p&gt;C:唐朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(315, 1, '东汉的医聖是谁？', 0, '', '', '&lt;p&gt;A:張機&lt;/p&gt;&lt;p&gt;B:華佗&lt;/p&gt;&lt;p&gt;C:蔡倫&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(316, 1, '佛历是从什么时候开始算起的？', 0, '', '', '&lt;p&gt;A:佛祖诞生&lt;/p&gt;&lt;p&gt;B:佛祖逝世&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(317, 1, '远古时代的恐龙属于', 0, '', '', '&lt;p&gt;A:两栖动物&lt;/p&gt;&lt;p&gt;B:爬行动物&lt;/p&gt;&lt;p&gt;C:哺乳动物&lt;/p&gt;&lt;p&gt;D:节肢动物&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(318, 1, '我国历史上记载的第一个王朝是', 0, '', '', '&lt;p&gt;A:夏&lt;/p&gt;&lt;p&gt;B:商&lt;/p&gt;&lt;p&gt;C:周&lt;/p&gt;&lt;p&gt;D:三国&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(319, 1, '唐太宗曾以何物博得杨贵妃一笑', 0, '', '', '&lt;p&gt;A:住院&lt;/p&gt;&lt;p&gt;B:法拉利&lt;/p&gt;&lt;p&gt;C:宠物&lt;/p&gt;&lt;p&gt;D:水果&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(320, 1, '台湾是哪个皇帝收复的？', 0, '', '', '&lt;p&gt;A:康熙&lt;/p&gt;&lt;p&gt;B:秦始皇&lt;/p&gt;&lt;p&gt;C:唐太宗&lt;/p&gt;&lt;p&gt;D:乾隆&lt;/p&gt;&lt;p&gt;E:雍正&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(321, 1, '以下哪位是古代希腊有名的医学家', 0, '', '', '&lt;p&gt;A:希波达玛斯&lt;/p&gt;&lt;p&gt;B:苏格拉底&lt;/p&gt;&lt;p&gt;C:希波克拉底&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(322, 1, '建筑行业中的鲁班奖是于哪一年创建的', 0, '', '', '&lt;p&gt;A:1986&lt;/p&gt;&lt;p&gt;B:1987&lt;/p&gt;&lt;p&gt;C:1988&lt;/p&gt;&lt;p&gt;D:1989&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(323, 1, '宋徽宗名叫', 0, '', '', '&lt;p&gt;A:赵佶&lt;/p&gt;&lt;p&gt;B:赵构&lt;/p&gt;&lt;p&gt;C:赵括&lt;/p&gt;&lt;p&gt;D:赵高&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(324, 1, '雍正皇帝的陵墓是', 0, '', '', '&lt;p&gt;A:景陵&lt;/p&gt;&lt;p&gt;B:泰陵&lt;/p&gt;&lt;p&gt;C:裕陵&lt;/p&gt;&lt;p&gt;D:福陵&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(325, 1, '慈禧垂帘听政的地点是', 0, '', '', '&lt;p&gt;A:坤宁宫&lt;/p&gt;&lt;p&gt;B:养心殿&lt;/p&gt;&lt;p&gt;C:太和殿&lt;/p&gt;&lt;p&gt;D:储秀宫&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(326, 1, '中国第一颗原子弹是在哪一年研制成功的？', 0, '', '', '&lt;p&gt;A:1962&lt;/p&gt;&lt;p&gt;B:1963&lt;/p&gt;&lt;p&gt;C:1964&lt;/p&gt;&lt;p&gt;D:1965&lt;/p&gt;&lt;p&gt;E:1966&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(327, 1, '圆周率最早出现于', 0, '', '', '&lt;p&gt;A:巴比伦&lt;/p&gt;&lt;p&gt;B:埃及&lt;/p&gt;&lt;p&gt;C:印度&lt;/p&gt;&lt;p&gt;D:阿拉伯&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(328, 1, '传说中武则天下令焚烧的花是什么花', 0, '', '', '&lt;p&gt;A:月季化&lt;/p&gt;&lt;p&gt;B:芍药花&lt;/p&gt;&lt;p&gt;C:牡丹花&lt;/p&gt;&lt;p&gt;D:水仙花&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(329, 1, '巨鹿之战中,项羽大败秦军,用的是什么战略?', 0, '', '', '&lt;p&gt;A:暗渡陈仓&lt;/p&gt;&lt;p&gt;B:以逸待劳&lt;/p&gt;&lt;p&gt;C:避实击虚&lt;/p&gt;&lt;p&gt;D:破釜沉舟&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(330, 1, '我国最早提出创建监狱的人是?', 0, '', '', '&lt;p&gt;A:皋陶&lt;/p&gt;&lt;p&gt;B:董仲舒&lt;/p&gt;&lt;p&gt;C:李斯&lt;/p&gt;&lt;p&gt;D:秦始皇&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(331, 1, '古代上对下、有道对无道的军事行动称作？', 0, '', '', '&lt;p&gt;A:征&lt;/p&gt;&lt;p&gt;B:伐&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(332, 1, '击败拿破仑的滑铁卢战役的反法联军指挥官是?', 0, '', '', '&lt;p&gt;A:彼德大帝&lt;/p&gt;&lt;p&gt;B:贝当元帅&lt;/p&gt;&lt;p&gt;C:威灵顿将军&lt;/p&gt;&lt;p&gt;D:维多利亚女王&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(333, 1, '大月氏王国在5世纪后半叶亡于?', 0, '', '', '&lt;p&gt;A:柔然&lt;/p&gt;&lt;p&gt;B:鲜卑&lt;/p&gt;&lt;p&gt;C:厳哒&lt;/p&gt;&lt;p&gt;D:匈奴&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(334, 1, '我国古代军事家孙膑是在受“膑刑”后被称为孙膑的，“膑”是指：', 0, '', '', '&lt;p&gt;A:股骨&lt;/p&gt;&lt;p&gt;B:胫骨&lt;/p&gt;&lt;p&gt;C:脚踝骨&lt;/p&gt;&lt;p&gt;D:膝盖骨&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(335, 1, '参加中国共产党“一大”会议的13个人，当时他们的平均年龄是：', 0, '', '', '&lt;p&gt;A:26岁&lt;/p&gt;&lt;p&gt;B:28岁&lt;/p&gt;&lt;p&gt;C:30岁&lt;/p&gt;&lt;p&gt;D:32岁&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(336, 1, '1991年10月16日，哪位科学家被授予“国家杰出贡献科学家”的荣誉称号？', 0, '', '', '&lt;p&gt;A:钱学森&lt;/p&gt;&lt;p&gt;B:钱三强&lt;/p&gt;&lt;p&gt;C:袁隆平&lt;/p&gt;&lt;p&gt;D:吴文俊&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(337, 1, '在我国古代有位名医活到101岁，被称为“百岁神医”，他是：', 0, '', '', '&lt;p&gt;A:扁鹊&lt;/p&gt;&lt;p&gt;B:华佗&lt;/p&gt;&lt;p&gt;C:孙思邈&lt;/p&gt;&lt;p&gt;D:李时珍&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(338, 1, '世界上第一枚邮票是1840年5月6日在英国正式发行的“黑便士”，它是因何得名的？', 0, '', '', '&lt;p&gt;A:用黑色油墨印刷&lt;/p&gt;&lt;p&gt;B:是在垃圾桶里发现的&lt;/p&gt;&lt;p&gt;C:为与通用的便士区别&lt;/p&gt;&lt;p&gt;D:设计者名字中有“黑”字&lt;/p&gt;&lt;p&gt;E:该邮票是在夜晚印刷的&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(339, 1, '勺在中国古代是舀什么的器具？', 0, '', '', '&lt;p&gt;A:米饭&lt;/p&gt;&lt;p&gt;B:粥&lt;/p&gt;&lt;p&gt;C:酒&lt;/p&gt;&lt;p&gt;D:水&lt;/p&gt;&lt;p&gt;E:药&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(340, 1, '超市最早诞生在：', 0, '', '', '&lt;p&gt;A:车库里&lt;/p&gt;&lt;p&gt;B:仓库里&lt;/p&gt;&lt;p&gt;C:广场上&lt;/p&gt;&lt;p&gt;D:码头上&lt;/p&gt;&lt;p&gt;E:行李房&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(341, 1, '最早的阿拉伯数字有几个？', 0, '', '', '&lt;p&gt;A:6个&lt;/p&gt;&lt;p&gt;B:7个&lt;/p&gt;&lt;p&gt;C:8个&lt;/p&gt;&lt;p&gt;D:9个&lt;/p&gt;&lt;p&gt;E:10个&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(342, 1, '世界上第一个出现在电视荧屏上的形象是：', 0, '', '', '&lt;p&gt;A:一只猫&lt;/p&gt;&lt;p&gt;B:一个挂钟&lt;/p&gt;&lt;p&gt;C:一个木偶头&lt;/p&gt;&lt;p&gt;D:一位年轻的小伙子&lt;/p&gt;&lt;p&gt;E:一张地图&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(343, 1, '在战国之前“百姓”是对什么人的总称？', 0, '', '', '&lt;p&gt;A:奴隶&lt;/p&gt;&lt;p&gt;B:平民&lt;/p&gt;&lt;p&gt;C:贵族&lt;/p&gt;&lt;p&gt;D:士兵&lt;/p&gt;&lt;p&gt;E:乐师&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(344, 3, '中国最早的文字是甲骨文吗？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(345, 1, '春秋战国时期的四大死士不包括哪一个', 0, '', '', '&lt;p&gt;A:欲让&lt;/p&gt;&lt;p&gt;B:要离&lt;/p&gt;&lt;p&gt;C:荆坷&lt;/p&gt;&lt;p&gt;D:盗拓&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(346, 1, '杨威利因哪一战而被成为奇迹杨,魔术杨?', 0, '', '', '&lt;p&gt;A:伊谢梅伦&lt;/p&gt;&lt;p&gt;B:巴米利恩&lt;/p&gt;&lt;p&gt;C:奇霍萨姆&lt;/p&gt;&lt;p&gt;D:迪亚马特&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(347, 1, '杨威利在伊谢梅伦攻防战中损失如何?', 0, '', '', '&lt;p&gt;A:10%&lt;/p&gt;&lt;p&gt;B:5%&lt;/p&gt;&lt;p&gt;C:0%&lt;/p&gt;&lt;p&gt;D:20%&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(348, 1, '到卫国战争打响前,苏联有几位元帅', 0, '', '', '&lt;p&gt;A:5&lt;/p&gt;&lt;p&gt;B:4&lt;/p&gt;&lt;p&gt;C:3&lt;/p&gt;&lt;p&gt;D:2&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(349, 1, '曹植是曹操的', 0, '', '', '&lt;p&gt;A:第一子&lt;/p&gt;&lt;p&gt;B:第三子&lt;/p&gt;&lt;p&gt;C:第二子&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(350, 1, '中国史上被称为“诗界之哥伦布”“一代霸才”的爱国诗人是：', 0, '', '', '&lt;p&gt;A:林则徐&lt;/p&gt;&lt;p&gt;B:文天祥&lt;/p&gt;&lt;p&gt;C:黄遵宪&lt;/p&gt;&lt;p&gt;D:岳飞&lt;/p&gt;&lt;p&gt;E:魏源&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(351, 1, '最早发现无理数的数学家是谁？', 0, '', '', '&lt;p&gt;A:希伯斯&lt;/p&gt;&lt;p&gt;B:高斯&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(352, 1, '柏林墙是东西方冷战的象征，建于1961年，柏林墙并非牢不可破，曾经有人乘坐热气球从墙上飘过，还有人以14辆载重卡车同时撞倒墙体得以逃脱，在柏林墙修建后的28年里，先后有多少人逃跑成功？', 0, '', '', '&lt;p&gt;A:187866&lt;/p&gt;&lt;p&gt;B:187868&lt;/p&gt;&lt;p&gt;C:178868&lt;/p&gt;&lt;p&gt;D:178866&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(353, 1, '中国的私学即民办教育开始于', 0, '', '', '&lt;p&gt;A:夏代&lt;/p&gt;&lt;p&gt;B:商代&lt;/p&gt;&lt;p&gt;C:战国&lt;/p&gt;&lt;p&gt;D:春秋&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(354, 1, '第一次西方工业革命的发祥地是', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(355, 1, '第一颗人造卫星发射成功是什么时候？', 0, '', '', '&lt;p&gt;A:1937年&lt;/p&gt;&lt;p&gt;B:1947年&lt;/p&gt;&lt;p&gt;C:1957年&lt;/p&gt;&lt;p&gt;D:1967年&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(356, 1, '英国占领加拿大之后将当地的法国人怎样了？', 0, '', '', '&lt;p&gt;A:全部杀死&lt;/p&gt;&lt;p&gt;B:驱逐出境&lt;/p&gt;&lt;p&gt;C:把他们赶到遥远的加拿大西部&lt;/p&gt;&lt;p&gt;D:什么也没做&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(357, 1, '被唐太宗李世民比作镜子的是谁？', 0, '', '', '&lt;p&gt;A:魏征&lt;/p&gt;&lt;p&gt;B:李靖&lt;/p&gt;&lt;p&gt;C:徐茂公&lt;/p&gt;&lt;p&gt;D:刘文静&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(358, 1, '项羽在哪里自杀？', 0, '', '', '&lt;p&gt;A:闽江&lt;/p&gt;&lt;p&gt;B:漓江&lt;/p&gt;&lt;p&gt;C:乌江&lt;/p&gt;&lt;p&gt;D:长江&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(359, 1, '成吉思汗写给花剌子模的战书一共有几个字？', 0, '', '', '&lt;p&gt;A:4&lt;/p&gt;&lt;p&gt;B:6&lt;/p&gt;&lt;p&gt;C:12&lt;/p&gt;&lt;p&gt;D:24&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(360, 1, '吴三桂在缅甸将哪位皇帝绞死?', 0, '', '', '&lt;p&gt;A:永历帝&lt;/p&gt;&lt;p&gt;B:永嘉帝&lt;/p&gt;&lt;p&gt;C:崇祯帝&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(361, 1, '春秋战国时期，法家的代表人是', 0, '', '', '&lt;p&gt;A:庄子&lt;/p&gt;&lt;p&gt;B:韩非子&lt;/p&gt;&lt;p&gt;C:墨子&lt;/p&gt;&lt;p&gt;D:蒙子&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(362, 1, '我国从什么时候起就有了历法？', 0, '', '', '&lt;p&gt;A:汉&lt;/p&gt;&lt;p&gt;B:商&lt;/p&gt;&lt;p&gt;C:周&lt;/p&gt;&lt;p&gt;D:夏&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(363, 2, '初唐四杰是：（多选）', 0, '', '', '&lt;p&gt;A:李白&lt;/p&gt;&lt;p&gt;B:王勃&lt;/p&gt;&lt;p&gt;C:卢照邻&lt;/p&gt;&lt;p&gt;D:杜甫&lt;/p&gt;&lt;p&gt;E:骆宾王&lt;/p&gt;&lt;p&gt;F:杨炯&lt;/p&gt;', 6, 'BCE', 'BCE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(364, 1, '李渊建唐是在什么时候？', 0, '', '', '&lt;p&gt;A:611年&lt;/p&gt;&lt;p&gt;B:618年&lt;/p&gt;&lt;p&gt;C:622年&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(365, 2, '解放战争进入夺取全国胜利的判定性阶段，党中央先后组织的三大战役是：（多选）', 0, '', '', '&lt;p&gt;A:辽沈战役&lt;/p&gt;&lt;p&gt;B:淮海战役&lt;/p&gt;&lt;p&gt;C:平津战役&lt;/p&gt;&lt;p&gt;D:渡江战役&lt;/p&gt;', 4, 'AC', 'AC', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(366, 2, '历史上的“两河文明”中的”两河“指的是哪两条河流？（多选）', 0, '', '', '&lt;p&gt;A:尼罗河&lt;/p&gt;&lt;p&gt;B:恒河&lt;/p&gt;&lt;p&gt;C:长江&lt;/p&gt;&lt;p&gt;D:亚马逊河&lt;/p&gt;&lt;p&gt;E:底格里斯河&lt;/p&gt;&lt;p&gt;F:幼发拉底河&lt;/p&gt;', 6, 'EF', 'EF', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(367, 2, '下面哪四种属于我国古代计时单位？（多选）', 0, '', '', '&lt;p&gt;A:时&lt;/p&gt;&lt;p&gt;B:刻&lt;/p&gt;&lt;p&gt;C:分&lt;/p&gt;&lt;p&gt;D:秒&lt;/p&gt;&lt;p&gt;E:更&lt;/p&gt;&lt;p&gt;F:鼓&lt;/p&gt;', 6, 'AEF', 'AEF', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(368, 1, '以下哪一项不是商鞅变法的内容？', 0, '', '', '&lt;p&gt;A:废井田&lt;/p&gt;&lt;p&gt;B:奖励耕战&lt;/p&gt;&lt;p&gt;C:建立县制&lt;/p&gt;&lt;p&gt;D:减轻刑罚&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(369, 1, '是谁邀请关羽“单刀赴会”的？', 0, '', '', '&lt;p&gt;A:鲁肃&lt;/p&gt;&lt;p&gt;B:诸葛亮&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(370, 1, '从古至今，北京有几次被定为都城？', 0, '', '', '&lt;p&gt;A:4次&lt;/p&gt;&lt;p&gt;B:8次&lt;/p&gt;&lt;p&gt;C:10次&lt;/p&gt;&lt;p&gt;D:11次&lt;/p&gt;&lt;p&gt;E:12次&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(371, 1, '清代的官服饰品中常有“顶戴花翎”一说，是官位的象征标志， “花翎”是取自什么动物的毛？', 0, '', '', '&lt;p&gt;A:火鸡&lt;/p&gt;&lt;p&gt;B:锦鸡&lt;/p&gt;&lt;p&gt;C:孔雀&lt;/p&gt;&lt;p&gt;D:燕子&lt;/p&gt;&lt;p&gt;E:野鸡&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(372, 1, '创立科举制度是在：', 0, '', '', '&lt;p&gt;A:南朝&lt;/p&gt;&lt;p&gt;B:隋朝&lt;/p&gt;&lt;p&gt;C:唐朝&lt;/p&gt;&lt;p&gt;D:宋朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(373, 1, '古代所说的“促织”是指现在的：', 0, '', '', '&lt;p&gt;A:蝉&lt;/p&gt;&lt;p&gt;B:蝗虫&lt;/p&gt;&lt;p&gt;C:螳螂&lt;/p&gt;&lt;p&gt;D:蟋蟀&lt;/p&gt;&lt;p&gt;E:蝈蝈&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(374, 1, '用“正”字计票起源于：', 0, '', '', '&lt;p&gt;A:公园&lt;/p&gt;&lt;p&gt;B:戏院&lt;/p&gt;&lt;p&gt;C:澡堂&lt;/p&gt;&lt;p&gt;D:理发馆&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(375, 2, '明代科举制度考试等级包括：（多选）', 0, '', '', '&lt;p&gt;A:乡试&lt;/p&gt;&lt;p&gt;B:县试&lt;/p&gt;&lt;p&gt;C:会试&lt;/p&gt;&lt;p&gt;D:省试&lt;/p&gt;&lt;p&gt;E:殿试&lt;/p&gt;&lt;p&gt;F:御试&lt;/p&gt;', 6, 'ACE', 'ACE', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(376, 1, '史记所载鸿门宴是谁摆下的？', 0, '', '', '&lt;p&gt;A:项羽&lt;/p&gt;&lt;p&gt;B:刘邦&lt;/p&gt;&lt;p&gt;C:楚怀王&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(377, 1, '现在我国实行九年义务教育，那么义务教育起源于：', 0, '', '', '&lt;p&gt;A:中国&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:法国&lt;/p&gt;&lt;p&gt;E:德国&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(378, 1, '风衣起源于：', 0, '', '', '&lt;p&gt;A:军队的防风雨外衣&lt;/p&gt;&lt;p&gt;B:滑雪斗篷&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(379, 1, '最早的“座右铭”写后是放在座位的哪一边？', 0, '', '', '&lt;p&gt;A:右边&lt;/p&gt;&lt;p&gt;B:左边&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(380, 1, '建国后，我国发行的第一枚生肖邮票的图案是哪种动物？', 0, '', '', '&lt;p&gt;A:鸡&lt;/p&gt;&lt;p&gt;B:猴&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(381, 1, '仰韶文化时期，其建筑式样与现在的哪种建筑相类似？', 0, '', '', '&lt;p&gt;A:竹楼&lt;/p&gt;&lt;p&gt;B:窑洞&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(382, 1, '“逐鹿中原”是指什么时代群雄纷争的史实？', 0, '', '', '&lt;p&gt;A:战国时代&lt;/p&gt;&lt;p&gt;B:秦末&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(383, 1, '中国作为最早使用纸币的国家，下面两种纸币中出现较早的是：', 0, '', '', '&lt;p&gt;A:宝钞&lt;/p&gt;&lt;p&gt;B:交子&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(384, 3, '新华书店是新中国成立后建立的吗？', 0, '', '', '&lt;p&gt;A:是&lt;/p&gt;&lt;p&gt;B:不是&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(385, 1, '1990年12月19日，新中国内地第一家证券交易所开业，它是：', 0, '', '', '&lt;p&gt;A:上海证券交易所&lt;/p&gt;&lt;p&gt;B:深圳证券交易所&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(386, 1, '解放前我国的人均寿命为40.8岁，2000年底，我国人均寿命达到了多少岁？', 0, '', '', '&lt;p&gt;A:68.8岁&lt;/p&gt;&lt;p&gt;B:71.8岁&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(387, 1, '我国自己设计和建造的第一座核电站是：', 0, '', '', '&lt;p&gt;A:大亚湾核电站&lt;/p&gt;&lt;p&gt;B:秦山核电站&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(388, 1, '世界上最早的自行车是：', 0, '', '', '&lt;p&gt;A:前轮大&lt;/p&gt;&lt;p&gt;B:后轮大&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(389, 1, '由唐代诗人贾岛和韩愈斟酌诗句引申而来的词语是：', 0, '', '', '&lt;p&gt;A:切磋&lt;/p&gt;&lt;p&gt;B:推敲&lt;/p&gt;&lt;p&gt;C:琢磨&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(390, 1, '一星期为七天最早来自哪里？', 0, '', '', '&lt;p&gt;A:古埃及&lt;/p&gt;&lt;p&gt;B:古巴比伦&lt;/p&gt;&lt;p&gt;C:古罗马&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(391, 1, '邮票的诞生最初是为了：', 0, '', '', '&lt;p&gt;A:支付邮费&lt;/p&gt;&lt;p&gt;B:加快邮递速度&lt;/p&gt;&lt;p&gt;C:避免邮品丢失&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(392, 1, '我国出版业中历史最悠久的出版机构是：', 0, '', '', '&lt;p&gt;A:中华书局&lt;/p&gt;&lt;p&gt;B:商务印书馆&lt;/p&gt;&lt;p&gt;C:新华书店&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(393, 1, '诸葛亮“挥泪斩马谡”，是因为马谡刚愎自用，失掉了：', 0, '', '', '&lt;p&gt;A:麦城&lt;/p&gt;&lt;p&gt;B:荆州&lt;/p&gt;&lt;p&gt;C:街亭&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(394, 1, '口香糖最早起源于人们嚼食什么？', 0, '', '', '&lt;p&gt;A:树叶&lt;/p&gt;&lt;p&gt;B:树脂&lt;/p&gt;&lt;p&gt;C:树根&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(395, 1, '人类最早发明的水上交通工具是：', 0, '', '', '&lt;p&gt;A:独木舟&lt;/p&gt;&lt;p&gt;B:木筏&lt;/p&gt;&lt;p&gt;C:竹排&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(396, 1, '密码最早用于：', 0, '', '', '&lt;p&gt;A:交易&lt;/p&gt;&lt;p&gt;B:开锁&lt;/p&gt;&lt;p&gt;C:通信&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(397, 1, '所谓“走马灯”原指的是一种：', 0, '', '', '&lt;p&gt;A:骑马赶夜路的灯&lt;/p&gt;&lt;p&gt;B:供观赏的花灯&lt;/p&gt;&lt;p&gt;C:挂在马棚里以供夜间添草的灯&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(398, 1, '我国发行粮油票证的最后一年是哪一年？', 0, '', '', '&lt;p&gt;A:1988年&lt;/p&gt;&lt;p&gt;B:1990年&lt;/p&gt;&lt;p&gt;C:1993年&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(399, 1, '“中国共产党”这一名称最早出现在：', 0, '', '', '&lt;p&gt;A:宣言里&lt;/p&gt;&lt;p&gt;B:杂志上&lt;/p&gt;&lt;p&gt;C:书信中&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(400, 1, '经有关部门统计，到2001年5月底，我国电话用户总数达到：', 0, '', '', '&lt;p&gt;A:1.7亿户&lt;/p&gt;&lt;p&gt;B:2.7亿户&lt;/p&gt;&lt;p&gt;C:3.7亿户&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(401, 1, '1990年9月22日至10月7日，在我国北京成功举办的是第几届亚运会？', 0, '', '', '&lt;p&gt;A:第十届&lt;/p&gt;&lt;p&gt;B:第十一届&lt;/p&gt;&lt;p&gt;C:第十二届&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(402, 1, '2000年底，正式公布的《夏商周年表》，把我国历史纪年由公元前841年向前延伸了：', 0, '', '', '&lt;p&gt;A:400多年&lt;/p&gt;&lt;p&gt;B:800多年&lt;/p&gt;&lt;p&gt;C:1200多年&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(403, 1, '2000年我国汽车生产量是多少？', 0, '', '', '&lt;p&gt;A:204.9万辆&lt;/p&gt;&lt;p&gt;B:205.9万辆&lt;/p&gt;&lt;p&gt;C:206.9万辆&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(404, 1, '据统计，2000年我国普通高等学校在校学生数为556万人，比上年增长：', 0, '', '', '&lt;p&gt;A:24.50%&lt;/p&gt;&lt;p&gt;B:31.50%&lt;/p&gt;&lt;p&gt;C:34.50%&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(405, 1, '我国第一套邮票“大龙票”共有几枚？', 0, '', '', '&lt;p&gt;A:一枚&lt;/p&gt;&lt;p&gt;B:二枚&lt;/p&gt;&lt;p&gt;C:三枚&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(406, 1, '2000年底，我国高速公路通车里程达到1.6万公里，跃居世界：', 0, '', '', '&lt;p&gt;A:第二位&lt;/p&gt;&lt;p&gt;B:第三位&lt;/p&gt;&lt;p&gt;C:第四位&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(407, 1, '电控“红——绿”交通灯最早出现在：', 0, '', '', '&lt;p&gt;A:费城&lt;/p&gt;&lt;p&gt;B:底特律&lt;/p&gt;&lt;p&gt;C:盐湖城&lt;/p&gt;&lt;p&gt;D:芝加哥&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(408, 1, '“讳疾忌医”是讲古代一位国君有病却不听医生的劝告，最终病重而死。这位神医是：', 0, '', '', '&lt;p&gt;A:扁鹊&lt;/p&gt;&lt;p&gt;B:华佗&lt;/p&gt;&lt;p&gt;C:张仲景&lt;/p&gt;&lt;p&gt;D:李时珍&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(409, 1, '在长坂坡，单枪匹马独闯曹军重围的三国名将是：', 0, '', '', '&lt;p&gt;A:张飞&lt;/p&gt;&lt;p&gt;B:关羽&lt;/p&gt;&lt;p&gt;C:赵云&lt;/p&gt;&lt;p&gt;D:马超&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(410, 1, '火药是我国古人在什么情况下发明的？', 0, '', '', '&lt;p&gt;A:烹饪&lt;/p&gt;&lt;p&gt;B:炼丹&lt;/p&gt;&lt;p&gt;C:打仗&lt;/p&gt;&lt;p&gt;D:烧炭&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(411, 1, '第一台机器人于1959年诞生，它被用于：', 0, '', '', '&lt;p&gt;A:工业&lt;/p&gt;&lt;p&gt;B:农业&lt;/p&gt;&lt;p&gt;C:军事&lt;/p&gt;&lt;p&gt;D:家庭&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(412, 1, '春卷在我国唐代以前就有，那时被称为：', 0, '', '', '&lt;p&gt;A:春条&lt;/p&gt;&lt;p&gt;B:春盘&lt;/p&gt;&lt;p&gt;C:春饼&lt;/p&gt;&lt;p&gt;D:春面&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(413, 1, '西楚霸王项羽骑坐的战马叫：', 0, '', '', '&lt;p&gt;A:驷&lt;/p&gt;&lt;p&gt;B:骓&lt;/p&gt;&lt;p&gt;C:驹&lt;/p&gt;&lt;p&gt;D:骏&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(414, 1, '1977年恢复高考后的第一次高考，是在哪个季节举行的？', 0, '', '', '&lt;p&gt;A:春&lt;/p&gt;&lt;p&gt;B:夏&lt;/p&gt;&lt;p&gt;C:秋&lt;/p&gt;&lt;p&gt;D:冬&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(415, 1, '在我国，白银用作货币最早出现在：', 0, '', '', '&lt;p&gt;A:春秋时期&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:宋朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(416, 1, '水印是13世纪意大利人发明的，最早是用来：', 0, '', '', '&lt;p&gt;A:表示造纸厂的商标&lt;/p&gt;&lt;p&gt;B:防止伪造货币&lt;/p&gt;&lt;p&gt;C:体现贵族身份&lt;/p&gt;&lt;p&gt;D:表示纸张质量等级&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(417, 1, '在明清科举考试中“大比”是指：', 0, '', '', '&lt;p&gt;A:乡试&lt;/p&gt;&lt;p&gt;B:院试&lt;/p&gt;&lt;p&gt;C:会试&lt;/p&gt;&lt;p&gt;D:殿试&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(418, 1, '最早的助听器的工作原理与下列哪项最相似？', 0, '', '', '&lt;p&gt;A:电话机&lt;/p&gt;&lt;p&gt;B:麦克风&lt;/p&gt;&lt;p&gt;C:对讲机&lt;/p&gt;&lt;p&gt;D:喇叭筒&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(419, 1, '贝多芬在耳聋前本希望成为：', 0, '', '', '&lt;p&gt;A:歌唱家&lt;/p&gt;&lt;p&gt;B:指挥家&lt;/p&gt;&lt;p&gt;C:演奏家&lt;/p&gt;&lt;p&gt;D:作曲家&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(420, 1, '最早的打字机是为什么人设计的？', 0, '', '', '&lt;p&gt;A:聋人&lt;/p&gt;&lt;p&gt;B:盲人&lt;/p&gt;&lt;p&gt;C:商人&lt;/p&gt;&lt;p&gt;D:作家&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(421, 1, '举世震惊的“切尔诺贝利”核事故发生于：', 0, '', '', '&lt;p&gt;A:1986年&lt;/p&gt;&lt;p&gt;B:1996年&lt;/p&gt;&lt;p&gt;C:1990年&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(422, 1, '中国历史上第一支海军诞生于：', 0, '', '', '&lt;p&gt;A:福建省&lt;/p&gt;&lt;p&gt;B:山东省&lt;/p&gt;&lt;p&gt;C:广东省&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(423, 1, '&quot;和尚&quot;作为对僧侣的称谓，起源于哪朝', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:东汉&lt;/p&gt;&lt;p&gt;C:晋朝&lt;/p&gt;&lt;p&gt;D:战国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(424, 2, '西晋&quot;三张&quot;指的是（多选）', 0, '', '', '&lt;p&gt;A:张载&lt;/p&gt;&lt;p&gt;B:张协&lt;/p&gt;&lt;p&gt;C:张衡&lt;/p&gt;&lt;p&gt;D:张元&lt;/p&gt;', 4, 'AD', 'AD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(425, 1, '国际劳工组织于_________年6月正式宣告成立，中国是创始会员国。1946年成为联合国的一个专门机构，主管劳动劳工方面的事务。', 0, '', '', '&lt;p&gt;A:1909&lt;/p&gt;&lt;p&gt;B:1919&lt;/p&gt;&lt;p&gt;C:1929&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(426, 1, '关于14-16世纪文艺复兴的错误说法是', 0, '', '', '&lt;p&gt;A:欧洲资本主义萌芽和初步发展时期的艺术&lt;/p&gt;&lt;p&gt;B:起源并昌盛于法国，随后席卷全欧洲&lt;/p&gt;&lt;p&gt;C:通过复兴古希腊、罗马的民主思想来反对封建中世纪&lt;/p&gt;&lt;p&gt;D:倡导现实主义和人文精神&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(427, 3, '始作俑者原指开始用陶佣殉葬的人。', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(428, 3, '鲁班是鲁国人。', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(429, 3, '&quot;爱琴文明&quot;属于石器文明。', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(430, 3, '第一台内燃机的发明者是英国人。', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(431, 1, '最早使用&quot;铜&quot;的是哪个国家', 0, '', '', '&lt;p&gt;A:古巴比伦&lt;/p&gt;&lt;p&gt;B:古埃及&lt;/p&gt;&lt;p&gt;C:古印度&lt;/p&gt;&lt;p&gt;D:古中国&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(432, 1, '尝百草的人是谁？', 0, '', '', '&lt;p&gt;A:华佗&lt;/p&gt;&lt;p&gt;B:扁鹊&lt;/p&gt;&lt;p&gt;C:李时珍&lt;/p&gt;&lt;p&gt;D:神农&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(433, 1, '吕布骑的是什么马？', 0, '', '', '&lt;p&gt;A:地庐&lt;/p&gt;&lt;p&gt;B:赤兔&lt;/p&gt;&lt;p&gt;C:汉血宝马&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(434, 1, '世界上最早使用地雷的是：', 0, '', '', '&lt;p&gt;A:宋代岳飞&lt;/p&gt;&lt;p&gt;B:唐代李世民&lt;/p&gt;&lt;p&gt;C:明代戚继光&lt;/p&gt;&lt;p&gt;D:清代林则徐&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(435, 1, '清朝统治了多少年？', 0, '', '', '&lt;p&gt;A:２７０年&lt;/p&gt;&lt;p&gt;B:２６９年&lt;/p&gt;&lt;p&gt;C:２６８年&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(436, 1, '你知道&quot;希望工程&quot;诞生时间是_________年的10月30日吗？', 0, '', '', '&lt;p&gt;A:1988&lt;/p&gt;&lt;p&gt;B:1989&lt;/p&gt;&lt;p&gt;C:1990&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(437, 1, '说起中国历史上的赔款，人们多数时候会想起丧权辱国，但是历史上有一笔赔款--&quot;庚子赔款&quot;却建立了一所知名学府，你知道是哪一所吗？', 0, '', '', '&lt;p&gt;A:复旦大学&lt;/p&gt;&lt;p&gt;B:南京大学&lt;/p&gt;&lt;p&gt;C:清华大学&lt;/p&gt;&lt;p&gt;D:北京大学&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(438, 1, '夏、商的法律思想是：', 0, '', '', '&lt;p&gt;A:“天命”“天罚”&lt;/p&gt;&lt;p&gt;B:“以德配天”&lt;/p&gt;&lt;p&gt;C:“明德慎罚”&lt;/p&gt;&lt;p&gt;D:“仁义礼智信”&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(439, 1, '宗法等级制的核心内容是：', 0, '', '', '&lt;p&gt;A:男尊女卑&lt;/p&gt;&lt;p&gt;B:氏族通婚&lt;/p&gt;&lt;p&gt;C:嫡长继承制&lt;/p&gt;&lt;p&gt;D:分封制&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(440, 1, '首次将刑法铸在鼎上，公布成文法的是：', 0, '', '', '&lt;p&gt;A:邓析&lt;/p&gt;&lt;p&gt;B:孔子&lt;/p&gt;&lt;p&gt;C:子产&lt;/p&gt;&lt;p&gt;D:庄子&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(441, 1, '中国历史上最早将礼和法结合起来，以“法治”充实“礼治”的思想家是：', 0, '', '', '&lt;p&gt;A:孔子&lt;/p&gt;&lt;p&gt;B:荀子&lt;/p&gt;&lt;p&gt;C:孟子&lt;/p&gt;&lt;p&gt;D:老子&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(442, 1, '下列那种人不是商朝请示上帝并传达上帝旨意的人的称呼：', 0, '', '', '&lt;p&gt;A:卜&lt;/p&gt;&lt;p&gt;B:士&lt;/p&gt;&lt;p&gt;C:祝&lt;/p&gt;&lt;p&gt;D:巫&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(443, 1, '中日甲午战争后，清政府与日本签定了下列哪一个丧权辱国的条约？', 0, '', '', '&lt;p&gt;A:《爱辉条约》&lt;/p&gt;&lt;p&gt;B:《天津条约》&lt;/p&gt;&lt;p&gt;C:《马关条约》&lt;/p&gt;&lt;p&gt;D:《南京条约》&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(444, 1, '成立于_________年的俄罗斯国家剧院的奠基人为尼·罗曼诺夫公爵，该团属于国家性质的机构，其创作原则是：慎重保护俄罗斯古典芭蕾舞学派的优秀传统，索与发展新的舞蹈形式。', 0, '', '', '&lt;p&gt;A:1877&lt;/p&gt;&lt;p&gt;B:1878&lt;/p&gt;&lt;p&gt;C:1879&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(445, 1, '大禹治水时大禹的家在', 0, '', '', '&lt;p&gt;A:重庆涂山&lt;/p&gt;&lt;p&gt;B:山西五台山&lt;/p&gt;&lt;p&gt;C:四川四姑娘山&lt;/p&gt;&lt;p&gt;D:山东泰山&lt;/p&gt;&lt;p&gt;E:安徽黄山&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(446, 1, '谁是中国第一位注册会计师？', 0, '', '', '&lt;p&gt;A:潘序伦&lt;/p&gt;&lt;p&gt;B:秦开&lt;/p&gt;&lt;p&gt;C:谢霖&lt;/p&gt;&lt;p&gt;D:张惠生（女）&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(447, 2, '1915年，信用卡起源于美国。请问以下哪些机构是最早发行信用卡的？（多选）', 0, '', '', '&lt;p&gt;A:百货商店&lt;/p&gt;&lt;p&gt;B:银行&lt;/p&gt;&lt;p&gt;C:饮食业&lt;/p&gt;&lt;p&gt;D:娱乐业&lt;/p&gt;&lt;p&gt;E:汽油公司&lt;/p&gt;&lt;p&gt;F:信贷公司&lt;/p&gt;', 6, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(448, 1, '日本三大棋战中，属于《朝日新闻》的围棋战事是哪一个？', 0, '', '', '&lt;p&gt;A:棋圣战&lt;/p&gt;&lt;p&gt;B:名人战&lt;/p&gt;&lt;p&gt;C:本因坊战&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(449, 1, '不属于我国食品史上的四大发明的一项是', 0, '', '', '&lt;p&gt;A:豆酱&lt;/p&gt;&lt;p&gt;B:豆腐&lt;/p&gt;&lt;p&gt;C:豆浆&lt;/p&gt;&lt;p&gt;D:豆花&lt;/p&gt;&lt;p&gt;E:豆芽&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(450, 1, '玛雅人哪个阶层的头骨被后天压成扁形', 0, '', '', '&lt;p&gt;A:所有阶层&lt;/p&gt;&lt;p&gt;B:奴隶&lt;/p&gt;&lt;p&gt;C:贵族&lt;/p&gt;&lt;p&gt;D:平民&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(451, 1, '中国古代著名旅行家是', 0, '', '', '&lt;p&gt;A:李时珍&lt;/p&gt;&lt;p&gt;B:苏武&lt;/p&gt;&lt;p&gt;C:徐霞客&lt;/p&gt;&lt;p&gt;D:张骞&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(452, 1, '教皇保罗二世为哪位科学家平反', 0, '', '', '&lt;p&gt;A:伽俐略&lt;/p&gt;&lt;p&gt;B:布鲁诺&lt;/p&gt;&lt;p&gt;C:哥白尼&lt;/p&gt;&lt;p&gt;D:道尔顿&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(453, 1, '美国的三K党是一个反对谁的恐怖组织', 0, '', '', '&lt;p&gt;A:黑人&lt;/p&gt;&lt;p&gt;B:南北战争&lt;/p&gt;&lt;p&gt;C:资产阶级&lt;/p&gt;&lt;p&gt;D:政府&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(454, 1, '烽火戏诸侯是为博谁一笑', 0, '', '', '&lt;p&gt;A:褒姒&lt;/p&gt;&lt;p&gt;B:杨玉环&lt;/p&gt;&lt;p&gt;C:西施&lt;/p&gt;&lt;p&gt;D:貂蝉&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(455, 1, '卓文君与司马相如私奔后在哪里卖酒', 0, '', '', '&lt;p&gt;A:今南京&lt;/p&gt;&lt;p&gt;B:今重庆&lt;/p&gt;&lt;p&gt;C:今成都&lt;/p&gt;&lt;p&gt;D:今北京&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(456, 1, '中国哪个朝代对外国文化吸收最多', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:宋代&lt;/p&gt;&lt;p&gt;C:清代&lt;/p&gt;&lt;p&gt;D:元代&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(457, 1, '战国时哪个诸侯王最喜欢细腰', 0, '', '', '&lt;p&gt;A:楚灵王&lt;/p&gt;&lt;p&gt;B:秦穆公&lt;/p&gt;&lt;p&gt;C:鲁惠公&lt;/p&gt;&lt;p&gt;D:楚庄王&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(458, 1, '谁帮田忌出计在赛马中获胜', 0, '', '', '&lt;p&gt;A:庞涓&lt;/p&gt;&lt;p&gt;B:吕不韦&lt;/p&gt;&lt;p&gt;C:孔融&lt;/p&gt;&lt;p&gt;D:孙膑&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(459, 1, '我们今天使用的历法是从何时开始的?', 0, '', '', '&lt;p&gt;A:一千年前&lt;/p&gt;&lt;p&gt;B:两千年前&lt;/p&gt;&lt;p&gt;C:三千年前&lt;/p&gt;&lt;p&gt;D:两千年前&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(460, 1, '孙膑的老师叫什么', 0, '', '', '&lt;p&gt;A:孙武&lt;/p&gt;&lt;p&gt;B:鬼谷子&lt;/p&gt;&lt;p&gt;C:庞涓&lt;/p&gt;&lt;p&gt;D:吴起&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(461, 1, '明代郑和下过几次西洋', 0, '', '', '&lt;p&gt;A:三&lt;/p&gt;&lt;p&gt;B:四&lt;/p&gt;&lt;p&gt;C:六&lt;/p&gt;&lt;p&gt;D:七&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(462, 1, '下述哪场战争不是以少胜多', 0, '', '', '&lt;p&gt;A:淝水之战&lt;/p&gt;&lt;p&gt;B:赤壁之战&lt;/p&gt;&lt;p&gt;C:巨鹿之战&lt;/p&gt;&lt;p&gt;D:官渡之战&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(463, 1, '被腰斩而亡的是', 0, '', '', '&lt;p&gt;A:韩非子&lt;/p&gt;&lt;p&gt;B:赵高&lt;/p&gt;&lt;p&gt;C:李斯&lt;/p&gt;&lt;p&gt;D:荆轲&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(464, 1, '老子是骑着什么出函谷关后再无踪影的', 0, '', '', '&lt;p&gt;A:马&lt;/p&gt;&lt;p&gt;B:牛&lt;/p&gt;&lt;p&gt;C:驴&lt;/p&gt;&lt;p&gt;D:骡子&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(465, 1, '千里送京娘的男主角是谁', 0, '', '', '&lt;p&gt;A:赵匡胤&lt;/p&gt;&lt;p&gt;B:朱元璋&lt;/p&gt;&lt;p&gt;C:李自成&lt;/p&gt;&lt;p&gt;D:洪秀全&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(466, 1, '鸿门宴是谁设的', 0, '', '', '&lt;p&gt;A:刘邦&lt;/p&gt;&lt;p&gt;B:项羽&lt;/p&gt;&lt;p&gt;C:项庄&lt;/p&gt;&lt;p&gt;D:萧何&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(467, 1, '唐代时哪个国家派往中国进行学习的人称为遣唐使', 0, '', '', '&lt;p&gt;A:日本&lt;/p&gt;&lt;p&gt;B:印度&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:西班牙&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(468, 1, '王羲之最喜玩赏什么', 0, '', '', '&lt;p&gt;A:梅花&lt;/p&gt;&lt;p&gt;B:白鹅&lt;/p&gt;&lt;p&gt;C:小狗&lt;/p&gt;&lt;p&gt;D:兰花&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(469, 1, '被后人称为陶朱公的是谁', 0, '', '', '&lt;p&gt;A:商鞅&lt;/p&gt;&lt;p&gt;B:范蠡&lt;/p&gt;&lt;p&gt;C:姜太公&lt;/p&gt;&lt;p&gt;D:孟尝君&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(470, 1, '闻鸡起舞的是谁', 0, '', '', '&lt;p&gt;A:班超&lt;/p&gt;&lt;p&gt;B:辛弃疾&lt;/p&gt;&lt;p&gt;C:祖逖&lt;/p&gt;&lt;p&gt;D:霍去病&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(471, 1, '我国第一所民办高等教育机构哪年建立', 0, '', '', '&lt;p&gt;A:1982&lt;/p&gt;&lt;p&gt;B:1985&lt;/p&gt;&lt;p&gt;C:1988&lt;/p&gt;&lt;p&gt;D:1992&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(472, 1, '中国境内迄今所知年代最早的直立人是那种人?', 0, '', '', '&lt;p&gt;A:蓝田人 &lt;/p&gt;&lt;p&gt;B:山顶洞人 &lt;/p&gt;&lt;p&gt;C:元谋人 &lt;/p&gt;&lt;p&gt;D:河姆渡人&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(473, 1, '代表封建生产关系的是（）。', 0, '', '', '&lt;p&gt;A:铜器&lt;/p&gt;&lt;p&gt;B:陶器&lt;/p&gt;&lt;p&gt;C:青铜&lt;/p&gt;&lt;p&gt;D:铁制工具&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(474, 1, '伊丽莎白二世加冕时年仅多少岁', 0, '', '', '&lt;p&gt;A:18&lt;/p&gt;&lt;p&gt;B:20&lt;/p&gt;&lt;p&gt;C:24&lt;/p&gt;&lt;p&gt;D:26&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(475, 1, '利用水力来舂米碾谷子的水碓磨是谁发明的', 0, '', '', '&lt;p&gt;A:沈括&lt;/p&gt;&lt;p&gt;B:祖冲之&lt;/p&gt;&lt;p&gt;C:徐光启&lt;/p&gt;&lt;p&gt;D:贾思勰&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(476, 1, '第一个进入太空的是', 0, '', '', '&lt;p&gt;A:特里斯科娃&lt;/p&gt;&lt;p&gt;B:格伦&lt;/p&gt;&lt;p&gt;C:谢泼德&lt;/p&gt;&lt;p&gt;D:加加林&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(477, 1, '人类首例心脏移植手术是哪年施行的', 0, '', '', '&lt;p&gt;A:1965&lt;/p&gt;&lt;p&gt;B:1967&lt;/p&gt;&lt;p&gt;C:1970&lt;/p&gt;&lt;p&gt;D:1972&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(478, 1, '为王昭君画像的画师是', 0, '', '', '&lt;p&gt;A:毛延寿&lt;/p&gt;&lt;p&gt;B:唐伯虎&lt;/p&gt;&lt;p&gt;C:郑板桥&lt;/p&gt;&lt;p&gt;D:丰子恺&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(479, 1, '投笔从戎的是', 0, '', '', '&lt;p&gt;A:班彪&lt;/p&gt;&lt;p&gt;B:班固&lt;/p&gt;&lt;p&gt;C:班超&lt;/p&gt;&lt;p&gt;D:班昭&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(480, 1, '中世纪最后一位诗人，新时代最初一位诗人指的是', 0, '', '', '&lt;p&gt;A:浮士德&lt;/p&gt;&lt;p&gt;B:维吉尔&lt;/p&gt;&lt;p&gt;C:但丁&lt;/p&gt;&lt;p&gt;D:歌德&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(481, 1, '南陈王朝的陈后主在隋军攻入皇宫时与两宠妃藏在哪里', 0, '', '', '&lt;p&gt;A:厨房&lt;/p&gt;&lt;p&gt;B:水井&lt;/p&gt;&lt;p&gt;C:地窖&lt;/p&gt;&lt;p&gt;D:花园&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(482, 1, '对米开朗基罗不合适的称谓是', 0, '', '', '&lt;p&gt;A:音乐家&lt;/p&gt;&lt;p&gt;B:雕塑家&lt;/p&gt;&lt;p&gt;C:画家&lt;/p&gt;&lt;p&gt;D:建筑师&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(483, 1, '第一次进入太空的动物是', 0, '', '', '&lt;p&gt;A:狗&lt;/p&gt;&lt;p&gt;B:猴&lt;/p&gt;&lt;p&gt;C:昆虫&lt;/p&gt;&lt;p&gt;D:猫&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(484, 1, '不属文化大革命的特殊产物是', 0, '', '', '&lt;p&gt;A:放卫星&lt;/p&gt;&lt;p&gt;B:忠字舞&lt;/p&gt;&lt;p&gt;C:大串联&lt;/p&gt;&lt;p&gt;D:语录歌&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(485, 1, '斯巴达克思是一位', 0, '', '', '&lt;p&gt;A:角斗士&lt;/p&gt;&lt;p&gt;B:奴隶主&lt;/p&gt;&lt;p&gt;C:诗人&lt;/p&gt;&lt;p&gt;D:贱民&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(486, 1, '古城庞贝毁于', 0, '', '', '&lt;p&gt;A:战火&lt;/p&gt;&lt;p&gt;B:瘟疫&lt;/p&gt;&lt;p&gt;C:地震&lt;/p&gt;&lt;p&gt;D:火山爆发&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(487, 1, '未曾享受国葬待遇的是', 0, '', '', '&lt;p&gt;A:丘吉尔&lt;/p&gt;&lt;p&gt;B:密特朗&lt;/p&gt;&lt;p&gt;C:肯尼迪&lt;/p&gt;&lt;p&gt;D:尼克松&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(488, 1, '下列哪位思想家被判死刑', 0, '', '', '&lt;p&gt;A:柏拉图&lt;/p&gt;&lt;p&gt;B:苏格拉底&lt;/p&gt;&lt;p&gt;C:卢梭&lt;/p&gt;&lt;p&gt;D:希波克拉底&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(489, 1, '传说中耶稣死后第几天复活了', 0, '', '', '&lt;p&gt;A:三&lt;/p&gt;&lt;p&gt;B:四&lt;/p&gt;&lt;p&gt;C:五&lt;/p&gt;&lt;p&gt;D:六&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(490, 1, '美国历史上第一个黑人将军是', 0, '', '', '&lt;p&gt;A:本杰明·戴维斯&lt;/p&gt;&lt;p&gt;B:科林·鲍威尔&lt;/p&gt;&lt;p&gt;C:麦克阿瑟&lt;/p&gt;&lt;p&gt;D:马歇尔&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(491, 1, '韩信被称为', 0, '', '', '&lt;p&gt;A:楚王&lt;/p&gt;&lt;p&gt;B:梁王&lt;/p&gt;&lt;p&gt;C:淮南王&lt;/p&gt;&lt;p&gt;D:翼王&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(492, 1, '古巴导弹危机是谁造成的', 0, '', '', '&lt;p&gt;A:戈尔巴乔夫&lt;/p&gt;&lt;p&gt;B:勃列日涅夫&lt;/p&gt;&lt;p&gt;C:赫鲁晓夫&lt;/p&gt;&lt;p&gt;D:斯大林&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(493, 1, '太真是谁出家时的道号', 0, '', '', '&lt;p&gt;A:貂蝉&lt;/p&gt;&lt;p&gt;B:赵飞燕&lt;/p&gt;&lt;p&gt;C:杨玉环&lt;/p&gt;&lt;p&gt;D:武则天&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(494, 1, '哪种花在历史上曾价值连城', 0, '', '', '&lt;p&gt;A:君子兰&lt;/p&gt;&lt;p&gt;B:郁金香&lt;/p&gt;&lt;p&gt;C:紫罗兰&lt;/p&gt;&lt;p&gt;D:牡丹&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(495, 1, '下列哪位大臣不是武则天时期的酷吏', 0, '', '', '&lt;p&gt;A:索元礼&lt;/p&gt;&lt;p&gt;B:周兴&lt;/p&gt;&lt;p&gt;C:来俊臣&lt;/p&gt;&lt;p&gt;D:谢瑶环&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(496, 1, '谁不是遇刺身亡的领导人', 0, '', '', '&lt;p&gt;A:齐亚·哈克&lt;/p&gt;&lt;p&gt;B:帕尔梅&lt;/p&gt;&lt;p&gt;C:英甘地&lt;/p&gt;&lt;p&gt;D:林肯&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(497, 1, '阿波罗号宇航员登上月球后与哪位总统通了电话', 0, '', '', '&lt;p&gt;A:肯尼迪&lt;/p&gt;&lt;p&gt;B:尼克松&lt;/p&gt;&lt;p&gt;C:福特&lt;/p&gt;&lt;p&gt;D:卡特&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(498, 1, '下列哪种敌兵是从海上进攻中原的', 0, '', '', '&lt;p&gt;A:突厥&lt;/p&gt;&lt;p&gt;B:倭寇&lt;/p&gt;&lt;p&gt;C:匈奴&lt;/p&gt;&lt;p&gt;D:金人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(499, 1, '哪位人物拥有无字碑', 0, '', '', '&lt;p&gt;A:唐玄宗&lt;/p&gt;&lt;p&gt;B:武则天&lt;/p&gt;&lt;p&gt;C:朱元璋&lt;/p&gt;&lt;p&gt;D:朱元璋&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(500, 1, '在我国最早介绍俄国十月革命，宣传马克思主义的是', 0, '', '', '&lt;p&gt;A:陈独秀&lt;/p&gt;&lt;p&gt;B:李大钊&lt;/p&gt;&lt;p&gt;C:李达&lt;/p&gt;&lt;p&gt;D:张国焘&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(501, 1, '当代旅行家余纯顺在哪里遇难', 0, '', '', '&lt;p&gt;A:贺兰山&lt;/p&gt;&lt;p&gt;B:西藏阿里地区&lt;/p&gt;&lt;p&gt;C:黑龙江边陲&lt;/p&gt;&lt;p&gt;D:罗布泊&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(502, 1, '美国独立战争的序幕是哪年拉开的', 0, '', '', '&lt;p&gt;A:1774&lt;/p&gt;&lt;p&gt;B:1775&lt;/p&gt;&lt;p&gt;C:1776&lt;/p&gt;&lt;p&gt;D:1777&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(503, 1, '法国资产阶级革命是以巴黎人民攻占何地的起义为序幕？', 0, '', '', '&lt;p&gt;A:凡尔赛&lt;/p&gt;&lt;p&gt;B:巴士底狱&lt;/p&gt;&lt;p&gt;C:贝尔·拉雪兹公墓&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(504, 1, '我国第一套航空邮票发行于', 0, '', '', '&lt;p&gt;A:1950&lt;/p&gt;&lt;p&gt;B:1951&lt;/p&gt;&lt;p&gt;C:1952&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(505, 1, '康熙皇帝的庙号是', 0, '', '', '&lt;p&gt;A:太宗&lt;/p&gt;&lt;p&gt;B:太祖&lt;/p&gt;&lt;p&gt;C:高祖&lt;/p&gt;&lt;p&gt;D:圣祖&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(506, 1, '古代的巴比伦王国的位置相当于现在的哪个国家', 0, '', '', '&lt;p&gt;A:伊拉克&lt;/p&gt;&lt;p&gt;B:伊朗&lt;/p&gt;&lt;p&gt;C:阿富汉&lt;/p&gt;&lt;p&gt;D:以色列&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(507, 1, '中国最早的现代大学是哪一所', 0, '', '', '&lt;p&gt;A:天津大学&lt;/p&gt;&lt;p&gt;B:北京大学&lt;/p&gt;&lt;p&gt;C:浙江大学&lt;/p&gt;&lt;p&gt;D:上海交大&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(508, 1, '恺撒大帝被谁刺死的', 0, '', '', '&lt;p&gt;A:渥大卫&lt;/p&gt;&lt;p&gt;B:庞贝&lt;/p&gt;&lt;p&gt;C:布鲁图&lt;/p&gt;&lt;p&gt;D:安东尼&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(509, 1, '大禹的父亲是谁？', 0, '', '', '&lt;p&gt;A:尧&lt;/p&gt;&lt;p&gt;B:舜&lt;/p&gt;&lt;p&gt;C:鲧&lt;/p&gt;&lt;p&gt;D:共工&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(510, 1, '中国最早的纸币出现在哪一个朝代', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:元朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(511, 1, '中国古代的神农氏是下面哪一位？', 0, '', '', '&lt;p&gt;A:帝喾&lt;/p&gt;&lt;p&gt;B:黄帝&lt;/p&gt;&lt;p&gt;C:炎帝&lt;/p&gt;&lt;p&gt;D:有巢&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(512, 1, '杭州是哪一个王朝的都城？', 0, '', '', '&lt;p&gt;A:北宋&lt;/p&gt;&lt;p&gt;B:南宋&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:唐朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(513, 1, '项羽临死诗中提到的一个女人是谁？', 0, '', '', '&lt;p&gt;A:王昭君&lt;/p&gt;&lt;p&gt;B:西施&lt;/p&gt;&lt;p&gt;C:赵飞燕&lt;/p&gt;&lt;p&gt;D:虞姬&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(514, 1, '我们现在所说的“MTV”最早是什么名字？', 0, '', '', '&lt;p&gt;A:一首歌曲&lt;/p&gt;&lt;p&gt;B:一个电视频道&lt;/p&gt;&lt;p&gt;C:一部电影&lt;/p&gt;&lt;p&gt;D:一位明星&lt;/p&gt;&lt;p&gt;E:一本小说&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(515, 1, '秦始皇灭六国后，统一了全国文字，这种汉字称作：', 0, '', '', '&lt;p&gt;A:隶书&lt;/p&gt;&lt;p&gt;B:小篆&lt;/p&gt;&lt;p&gt;C:楷书&lt;/p&gt;&lt;p&gt;D:行书&lt;/p&gt;&lt;p&gt;E:草书&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(516, 1, '“暴怒行动”的是美军入侵哪个国家的行动代号？', 0, '', '', '&lt;p&gt;A:格林纳达&lt;/p&gt;&lt;p&gt;B:古巴&lt;/p&gt;&lt;p&gt;C:巴拿马&lt;/p&gt;&lt;p&gt;D:伊拉克&lt;/p&gt;&lt;p&gt;E:利比亚&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(517, 1, '第二次中东战争中以色列的哪只部队因冒进遭埃及部队伏击几乎损失殆尽？', 0, '', '', '&lt;p&gt;A:第7装甲旅&lt;/p&gt;&lt;p&gt;B:第202伞兵旅&lt;/p&gt;&lt;p&gt;C:第11机步师&lt;/p&gt;&lt;p&gt;D:第1步兵师&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(518, 1, '中日第二次淞沪会战发生在：', 0, '', '', '&lt;p&gt;A:1932年1月28日&lt;/p&gt;&lt;p&gt;B:1937年7月7日&lt;/p&gt;&lt;p&gt;C:1937年8月13日&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(519, 1, '海湾战争中多国部队的最高司令是谁？', 0, '', '', '&lt;p&gt;A:麦克阿瑟&lt;/p&gt;&lt;p&gt;B:亚历山大&lt;/p&gt;&lt;p&gt;C:施瓦茨科夫&lt;/p&gt;&lt;p&gt;D:布什&lt;/p&gt;&lt;p&gt;E:萨达姆&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(520, 1, '徽班进京距今已有多少年历史？', 0, '', '', '&lt;p&gt;A:100多年&lt;/p&gt;&lt;p&gt;B:200多年&lt;/p&gt;&lt;p&gt;C:300多年&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(521, 1, '中国古代战国时期越国大匠欧治子为楚王铸了三口名剑，下列四口名剑中哪一口不是', 0, '', '', '&lt;p&gt;A:龙渊&lt;/p&gt;&lt;p&gt;B:泰合&lt;/p&gt;&lt;p&gt;C:工布&lt;/p&gt;&lt;p&gt;D:湛卢&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(522, 2, '中国古代四大名琴是：（多选）', 0, '', '', '&lt;p&gt;A:号钟&lt;/p&gt;&lt;p&gt;B:秦筝&lt;/p&gt;&lt;p&gt;C:绿绮&lt;/p&gt;&lt;p&gt;D:焦尾&lt;/p&gt;&lt;p&gt;E:绕梁&lt;/p&gt;', 5, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(523, 1, '被誉为“两弹元勋”的科学家是', 0, '', '', '&lt;p&gt;A:钱学森&lt;/p&gt;&lt;p&gt;B:邓稼先&lt;/p&gt;&lt;p&gt;C:袁隆平&lt;/p&gt;&lt;p&gt;D:吴阶平&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(524, 1, '末代皇帝的年号为：', 0, '', '', '&lt;p&gt;A:道光&lt;/p&gt;&lt;p&gt;B:崇德&lt;/p&gt;&lt;p&gt;C:宣统&lt;/p&gt;&lt;p&gt;D:嘉庆&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(525, 1, '十二平均律起源于：', 0, '', '', '&lt;p&gt;A:中国&lt;/p&gt;&lt;p&gt;B:德国&lt;/p&gt;&lt;p&gt;C:意大利&lt;/p&gt;&lt;p&gt;D:法国&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(526, 1, '皇太极是哪朝太祖', 0, '', '', '&lt;p&gt;A:元朝&lt;/p&gt;&lt;p&gt;B:西汉&lt;/p&gt;&lt;p&gt;C:清朝&lt;/p&gt;&lt;p&gt;D:唐朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(527, 1, '清代文学家谁的书房自己命名为“九十九砚斋”', 0, '', '', '&lt;p&gt;A:纪晓岚&lt;/p&gt;&lt;p&gt;B:曹雪芹&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(528, 1, '清朝康熙皇帝曾封一名外国传教士为钦天监正，主持古观象台的观测工作，此人是：', 0, '', '', '&lt;p&gt;A:南怀仁&lt;/p&gt;&lt;p&gt;B:汤若望&lt;/p&gt;&lt;p&gt;C:利马窦&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(529, 1, '最早提出冷战概念的是谁?', 0, '', '', '&lt;p&gt;A:杜鲁门&lt;/p&gt;&lt;p&gt;B:丘吉尔&lt;/p&gt;&lt;p&gt;C:克林顿&lt;/p&gt;&lt;p&gt;D:马谢尔&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(530, 1, '世界上最早的纸币出现在哪个国家.', 0, '', '', '&lt;p&gt;A:意大利&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:中国&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(531, 1, '人类在哪一年登上月球', 0, '', '', '&lt;p&gt;A:1968&lt;/p&gt;&lt;p&gt;B:1969&lt;/p&gt;&lt;p&gt;C:1454&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(532, 1, '燕京八景是谁题写的?', 0, '', '', '&lt;p&gt;A:康熙&lt;/p&gt;&lt;p&gt;B:光旭&lt;/p&gt;&lt;p&gt;C:乾隆&lt;/p&gt;&lt;p&gt;D:雍正&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(533, 1, '红军长征跨越了多少个省？', 0, '', '', '&lt;p&gt;A:9&lt;/p&gt;&lt;p&gt;B:10&lt;/p&gt;&lt;p&gt;C:11&lt;/p&gt;&lt;p&gt;D:12&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(534, 1, '我国第一个不平等条约是：', 0, '', '', '&lt;p&gt;A:马关条约&lt;/p&gt;&lt;p&gt;B:南京条约&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(535, 1, '我国成功发射第一颗人造卫星是那一年？', 0, '', '', '&lt;p&gt;A:1970&lt;/p&gt;&lt;p&gt;B:1971&lt;/p&gt;&lt;p&gt;C:1972&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(536, 1, '列宁逝世于哪一年？', 0, '', '', '&lt;p&gt;A:1921&lt;/p&gt;&lt;p&gt;B:1918&lt;/p&gt;&lt;p&gt;C:1924&lt;/p&gt;&lt;p&gt;D:1923&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(537, 1, '戊戌变法发生在那一年？', 0, '', '', '&lt;p&gt;A:1896&lt;/p&gt;&lt;p&gt;B:1898&lt;/p&gt;&lt;p&gt;C:1899&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(538, 2, '山西被称为三晋的三国包括：（多选）', 0, '', '', '&lt;p&gt;A:韩&lt;/p&gt;&lt;p&gt;B:燕&lt;/p&gt;&lt;p&gt;C:赵&lt;/p&gt;&lt;p&gt;D:魏&lt;/p&gt;&lt;p&gt;E:楚&lt;/p&gt;', 5, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(539, 1, '百团大战发生于', 0, '', '', '&lt;p&gt;A:1940年2月&lt;/p&gt;&lt;p&gt;B:1940年7月&lt;/p&gt;&lt;p&gt;C:1940年8月&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(540, 1, '联合国成立于', 0, '', '', '&lt;p&gt;A:1945年10月&lt;/p&gt;&lt;p&gt;B:1946年2月&lt;/p&gt;&lt;p&gt;C:1946年10月&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(541, 1, '指挥红军粉碎国民党对中央苏区第4次“围剿”的是？', 0, '', '', '&lt;p&gt;A:周恩来、朱德&lt;/p&gt;&lt;p&gt;B:毛泽东、朱德&lt;/p&gt;&lt;p&gt;C:朱德、陈毅&lt;/p&gt;&lt;p&gt;D:毛泽东、周恩来&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(542, 1, '中国历史上哪一位皇帝在位时间最长？', 0, '', '', '&lt;p&gt;A:唐太宗&lt;/p&gt;&lt;p&gt;B:康熙&lt;/p&gt;&lt;p&gt;C:乾隆&lt;/p&gt;&lt;p&gt;D:汉武帝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(543, 1, '世界上第一部由国家颁布的医药著作是？', 0, '', '', '&lt;p&gt;A:本草纲目&lt;/p&gt;&lt;p&gt;B:唐本草&lt;/p&gt;&lt;p&gt;C:伤寒杂病论&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(544, 1, '勾股定理最早出现在？', 0, '', '', '&lt;p&gt;A:九章算术&lt;/p&gt;&lt;p&gt;B:周髀算经&lt;/p&gt;&lt;p&gt;C:方圆阐幽&lt;/p&gt;&lt;p&gt;D:决疑数学&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(545, 2, '下列是中国古代唯物主义思想家的是？（多选）', 0, '', '', '&lt;p&gt;A:范缜&lt;/p&gt;&lt;p&gt;B:王充&lt;/p&gt;&lt;p&gt;C:王克明&lt;/p&gt;&lt;p&gt;D:严复&lt;/p&gt;&lt;p&gt;E:朱熹&lt;/p&gt;', 5, 'AD', 'AD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(546, 1, '被誉为“青铜时代”的是？', 0, '', '', '&lt;p&gt;A:原始社会&lt;/p&gt;&lt;p&gt;B:夏商周时期&lt;/p&gt;&lt;p&gt;C:春秋时期&lt;/p&gt;&lt;p&gt;D:战国时期&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(547, 1, '以下不属于戊戌变法“六君子”的是：', 0, '', '', '&lt;p&gt;A:刘光第&lt;/p&gt;&lt;p&gt;B:林旭&lt;/p&gt;&lt;p&gt;C:林觉民&lt;/p&gt;&lt;p&gt;D:谭嗣同&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(548, 1, '下列哪个不属于“五代十国”中的“五代”：', 0, '', '', '&lt;p&gt;A:后魏&lt;/p&gt;&lt;p&gt;B:后梁&lt;/p&gt;&lt;p&gt;C:后唐&lt;/p&gt;&lt;p&gt;D:后周&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(549, 1, '人类历史上的“第二次社会大分工”的标志是出现了独立的：', 0, '', '', '&lt;p&gt;A:畜牧业&lt;/p&gt;&lt;p&gt;B:农牧业&lt;/p&gt;&lt;p&gt;C:手工业&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(550, 1, '世界上最早的“太阳历”是由谁发明的', 0, '', '', '&lt;p&gt;A:古代埃及人&lt;/p&gt;&lt;p&gt;B:古代巴比伦人&lt;/p&gt;&lt;p&gt;C:古代中国人&lt;/p&gt;&lt;p&gt;D:古代希腊人&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(551, 1, '我们今天用的数字，如“1，2，3…”是由谁最先采用的？', 0, '', '', '&lt;p&gt;A:古代埃及人&lt;/p&gt;&lt;p&gt;B:古代印度人&lt;/p&gt;&lt;p&gt;C:古代阿拉伯人&lt;/p&gt;&lt;p&gt;D:古代希腊人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(552, 1, '下列中国封建社会时期的统一王朝中，统治时间较长的是：', 0, '', '', '&lt;p&gt;A:西汉&lt;/p&gt;&lt;p&gt;B:唐&lt;/p&gt;&lt;p&gt;C:元&lt;/p&gt;&lt;p&gt;D:明&lt;/p&gt;&lt;p&gt;E:清&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(553, 1, '西方的悲剧源于古希腊祭祀_____ 的仪式。', 0, '', '', '&lt;p&gt;A:死神&lt;/p&gt;&lt;p&gt;B:酒神&lt;/p&gt;&lt;p&gt;C:太阳神&lt;/p&gt;&lt;p&gt;D:海神&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(554, 1, '旧时把多大年龄的女子称为破瓜？', 0, '', '', '&lt;p&gt;A:12岁&lt;/p&gt;&lt;p&gt;B:15岁&lt;/p&gt;&lt;p&gt;C:16岁&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(555, 1, '面包的故乡是古埃及，那么古埃及人是什么时候就开始制作面包的？', 0, '', '', '&lt;p&gt;A:距今5700-6900年前&lt;/p&gt;&lt;p&gt;B:距今7000-10000年前&lt;/p&gt;&lt;p&gt;C:距今2100-4000年前&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(556, 1, '五粮液是我国的名酒，它的原名叫杂粮酒。“五粮液”之名是1929年才出现的，是谁为此酒起的名？', 0, '', '', '&lt;p&gt;A:当时宜宾县团练局局长雷东垣&lt;/p&gt;&lt;p&gt;B:晚清举人杨惠泉&lt;/p&gt;&lt;p&gt;C:“五粮液”传人邓子均&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(557, 1, '竹简与木牍在古代被用作记载文字的材料，其中记载较长的文字，一般用', 0, '', '', '&lt;p&gt;A:竹简&lt;/p&gt;&lt;p&gt;B:木牍&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(558, 1, '中国第一个革命根据地是', 0, '', '', '&lt;p&gt;A:井冈山革命根据地&lt;/p&gt;&lt;p&gt;B:中央革命根据地&lt;/p&gt;&lt;p&gt;C:左右江革命根据地&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(559, 1, '和平号空间站是_________年2月20日发射的，是苏联时期发射的第三代载人空间站。它的最大特点是有6个对接口，可供多艘飞船、航天飞机和有效载荷舱对接，组成庞大的空间复合体。', 0, '', '', '&lt;p&gt;A:1985&lt;/p&gt;&lt;p&gt;B:1986&lt;/p&gt;&lt;p&gt;C:1987&lt;/p&gt;&lt;p&gt;D:1988&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(560, 1, '我国的夜市最早出现在：', 0, '', '', '&lt;p&gt;A:汉朝&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:宋朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(561, 1, '我国目前最早的砖墙出现在哪个朝代？', 0, '', '', '&lt;p&gt;A:战国&lt;/p&gt;&lt;p&gt;B:秦朝&lt;/p&gt;&lt;p&gt;C:汉朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(562, 1, '中国历史上，政府官员最早是以什么当作工资发放？', 0, '', '', '&lt;p&gt;A:土地&lt;/p&gt;&lt;p&gt;B:粮食&lt;/p&gt;&lt;p&gt;C:奴隶&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(563, 1, '中国第一颗原子弹爆炸的日期是1964年的：', 0, '', '', '&lt;p&gt;A:4月24日&lt;/p&gt;&lt;p&gt;B:6月17日&lt;/p&gt;&lt;p&gt;C:10月16日&lt;/p&gt;&lt;p&gt;D:10月17日&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(564, 1, '建国后上海第一任市长是：', 0, '', '', '&lt;p&gt;A:贺龙&lt;/p&gt;&lt;p&gt;B:陈毅&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(565, 1, '中国哪位皇帝最长寿？', 0, '', '', '&lt;p&gt;A:乾隆&lt;/p&gt;&lt;p&gt;B:武则天&lt;/p&gt;&lt;p&gt;C:康熙&lt;/p&gt;&lt;p&gt;D:忽必烈&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(566, 1, '中国是世界上最早炼锌的国家，早在什么时候开始的？', 0, '', '', '&lt;p&gt;A:东汉&lt;/p&gt;&lt;p&gt;B:西汉&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(567, 1, '中华鲟和恐龙哪一个在地球上出现的早？', 0, '', '', '&lt;p&gt;A:恐龙&lt;/p&gt;&lt;p&gt;B:中华鲟&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(568, 1, '中国僵都最早、历时最长、朝代最多的古城是：', 0, '', '', '&lt;p&gt;A:长安&lt;/p&gt;&lt;p&gt;B:洛阳&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(569, 1, '下列人类中最早使用天然火的是：', 0, '', '', '&lt;p&gt;A:元谋人&lt;/p&gt;&lt;p&gt;B:北京人&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(570, 1, '最早徒步到达南极点的中国人是:', 0, '', '', '&lt;p&gt;A:张青松&lt;/p&gt;&lt;p&gt;B:秦大河&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(571, 1, '最早踏上南极洲的中国人是：', 0, '', '', '&lt;p&gt;A:陈德鸿和郭琨&lt;/p&gt;&lt;p&gt;B:董兆乾和张青松&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(572, 1, '中国历史最长的朝代是：', 0, '', '', '&lt;p&gt;A:周&lt;/p&gt;&lt;p&gt;B:汉&lt;/p&gt;&lt;p&gt;C:唐&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(573, 1, '九一八事变始于', 0, '', '', '&lt;p&gt;A:1930年&lt;/p&gt;&lt;p&gt;B:1931年&lt;/p&gt;&lt;p&gt;C:1932年&lt;/p&gt;&lt;p&gt;D:1937年&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(574, 1, '春秋战国时期和伯乐齐名的相马专家是：', 0, '', '', '&lt;p&gt;A:方九皋&lt;/p&gt;&lt;p&gt;B:九方皋&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(575, 1, '刀耕时代用的工具是', 0, '', '', '&lt;p&gt;A:石斧木棒&lt;/p&gt;&lt;p&gt;B:锄头 &lt;/p&gt;&lt;p&gt;C:耙 &lt;/p&gt;&lt;p&gt;D:铜刀&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(576, 1, '哪一年，我国第一颗氢弹爆炸试验成功？', 0, '', '', '&lt;p&gt;A:1965&lt;/p&gt;&lt;p&gt;B:1967&lt;/p&gt;&lt;p&gt;C:1969&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(577, 1, '在鸦片战争中，殉国于虎门靖远炮台的是', 0, '', '', '&lt;p&gt;A:关天培&lt;/p&gt;&lt;p&gt;B:林则徐 &lt;/p&gt;&lt;p&gt;C:冯子才&lt;/p&gt;&lt;p&gt;D:聂时成&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(578, 1, '法国资产阶级革命爆发的时间', 0, '', '', '&lt;p&gt;A:1689.7.1&lt;/p&gt;&lt;p&gt;B:1789.7.14&lt;/p&gt;&lt;p&gt;C:1889.7.14&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(579, 1, '9月28日，谭嗣同等六人被杀害于北京', 0, '', '', '&lt;p&gt;A:午门&lt;/p&gt;&lt;p&gt;B:石景山&lt;/p&gt;&lt;p&gt;C:菜市口&lt;/p&gt;&lt;p&gt;D:八宝山&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(580, 1, '世界上第一次由广播公司正式播送电视节目是哪年？', 0, '', '', '&lt;p&gt;A:1925&lt;/p&gt;&lt;p&gt;B:1928&lt;/p&gt;&lt;p&gt;C:1936&lt;/p&gt;&lt;p&gt;D:1941&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(581, 1, '现在世界上通用的历法——公历，有人曾似是而非地称之为“西历”。其实，究其根源，这种历法并非产生于西方，而是产生于6000多年前的', 0, '', '', '&lt;p&gt;A:古希腊&lt;/p&gt;&lt;p&gt;B:古埃及&lt;/p&gt;&lt;p&gt;C:古罗马&lt;/p&gt;&lt;p&gt;D:古印度&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(582, 1, '“五一”国际劳动节诞生于什么时候？', 0, '', '', '&lt;p&gt;A:1886年5月1日&lt;/p&gt;&lt;p&gt;B:1889年7月14日&lt;/p&gt;&lt;p&gt;C:1918年5月1日&lt;/p&gt;&lt;p&gt;D:1912年7月14日&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(583, 1, '密特朗取消死刑前，法国主要采用何种方式行刑', 0, '', '', '&lt;p&gt;A:车裂&lt;/p&gt;&lt;p&gt;B:绞刑&lt;/p&gt;&lt;p&gt;C:上断头台&lt;/p&gt;&lt;p&gt;D:服毒&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(584, 1, '明朝被称为九千岁的太监是', 0, '', '', '&lt;p&gt;A:李莲英&lt;/p&gt;&lt;p&gt;B:魏仲贤&lt;/p&gt;&lt;p&gt;C:郑和&lt;/p&gt;&lt;p&gt;D:小桂子&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(585, 1, '中国古代伶人指的是', 0, '', '', '&lt;p&gt;A:聪明伶俐的人&lt;/p&gt;&lt;p&gt;B:以唱戏为职业的人&lt;/p&gt;&lt;p&gt;C:宦官&lt;/p&gt;&lt;p&gt;D:地位最低的人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(586, 1, '关羽在华容道放走了谁', 0, '', '', '&lt;p&gt;A:周瑜&lt;/p&gt;&lt;p&gt;B:项羽&lt;/p&gt;&lt;p&gt;C:曹操&lt;/p&gt;&lt;p&gt;D:张飞&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(587, 1, '萧何月下追谁', 0, '', '', '&lt;p&gt;A:刘邦&lt;/p&gt;&lt;p&gt;B:项羽&lt;/p&gt;&lt;p&gt;C:韩信&lt;/p&gt;&lt;p&gt;D:关羽&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(588, 1, '中国第一枚邮票的是以什么图案为主图', 0, '', '', '&lt;p&gt;A:马&lt;/p&gt;&lt;p&gt;B:龙&lt;/p&gt;&lt;p&gt;C:牛&lt;/p&gt;&lt;p&gt;D:麒麟&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(589, 1, '下列文人，哪一个不是袁绍的部下？', 0, '', '', '&lt;p&gt;A:陈琳&lt;/p&gt;&lt;p&gt;B:辛眦&lt;/p&gt;&lt;p&gt;C:逢纪&lt;/p&gt;&lt;p&gt;D:审配&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(590, 1, '诸葛亮初次打胜仗是在哪里？', 0, '', '', '&lt;p&gt;A:赤壁&lt;/p&gt;&lt;p&gt;B:博望坡&lt;/p&gt;&lt;p&gt;C:樊城&lt;/p&gt;&lt;p&gt;D:长坂坡&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(591, 1, '下列哪一件事是真实的？', 0, '', '', '&lt;p&gt;A:诸葛亮草船借箭&lt;/p&gt;&lt;p&gt;B:蒋干盗书&lt;/p&gt;&lt;p&gt;C:孙策怒斩于吉&lt;/p&gt;&lt;p&gt;D:诸葛亮布“八卦阵”&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(592, 1, '谁说服马超投降刘备？', 0, '', '', '&lt;p&gt;A:诸葛亮&lt;/p&gt;&lt;p&gt;B:马良&lt;/p&gt;&lt;p&gt;C:李恢&lt;/p&gt;&lt;p&gt;D:简雍&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(593, 1, '下列将领中，谁不是在吴蜀夷陵之战中战死的？', 0, '', '', '&lt;p&gt;A:张嶷&lt;/p&gt;&lt;p&gt;B:马忠&lt;/p&gt;&lt;p&gt;C:冯习&lt;/p&gt;&lt;p&gt;D:沙摩柯&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(594, 1, '谁没有参加密杀曹操的活动？', 0, '', '', '&lt;p&gt;A:刘备&lt;/p&gt;&lt;p&gt;B:马腾&lt;/p&gt;&lt;p&gt;C:吉太医&lt;/p&gt;&lt;p&gt;D:秦庆童&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(595, 1, '吕布在哪里被杀？', 0, '', '', '&lt;p&gt;A:下邳&lt;/p&gt;&lt;p&gt;B:徐州&lt;/p&gt;&lt;p&gt;C:北海&lt;/p&gt;&lt;p&gt;D:豫州&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(596, 1, '著名的《观沧海》是曹操攻击什么地方时写的？', 0, '', '', '&lt;p&gt;A:匈奴&lt;/p&gt;&lt;p&gt;B:乌桓&lt;/p&gt;&lt;p&gt;C:袁绍&lt;/p&gt;&lt;p&gt;D:张绣&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(597, 1, '诸葛亮七擒孟获，期间孟获不断四处求救，下列哪个国家受到孟获的求救？', 0, '', '', '&lt;p&gt;A:乌戈国&lt;/p&gt;&lt;p&gt;B:西羌&lt;/p&gt;&lt;p&gt;C:吴国&lt;/p&gt;&lt;p&gt;D:匈奴&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(598, 1, '下列哪个人不是从袁绍处投到曹操的？', 0, '', '', '&lt;p&gt;A:陈琳&lt;/p&gt;&lt;p&gt;B:焦触&lt;/p&gt;&lt;p&gt;C:张郃&lt;/p&gt;&lt;p&gt;D:文聘&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(599, 1, '司马懿父子在哪次战役中几乎丧命？', 0, '', '', '&lt;p&gt;A:空城计&lt;/p&gt;&lt;p&gt;B:上方谷&lt;/p&gt;&lt;p&gt;C:汉中&lt;/p&gt;&lt;p&gt;D:长安&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(600, 1, '以下哪一条不是诸葛亮的功劳？', 0, '', '', '&lt;p&gt;A:平定南蛮，使人民安居乐业。&lt;/p&gt;&lt;p&gt;B:制造木牛流马。&lt;/p&gt;&lt;p&gt;C:为后人留下几百篇文章。&lt;/p&gt;&lt;p&gt;D:把蜀国建设的十分富强。&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(601, 1, '孔融因何理由被曹操杀了？', 0, '', '', '&lt;p&gt;A:戏称曹操小名&lt;/p&gt;&lt;p&gt;B:说了曹操的坏话&lt;/p&gt;&lt;p&gt;C:借曹操之名陷害百姓&lt;/p&gt;&lt;p&gt;D:偷了曹操的东西&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(602, 1, '董卓因何当上相国？', 0, '', '', '&lt;p&gt;A:拍马屁，贿赂大臣&lt;/p&gt;&lt;p&gt;B:护驾有功&lt;/p&gt;&lt;p&gt;C:其妹是太后&lt;/p&gt;&lt;p&gt;D:深得民心&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(603, 1, '关羽水淹七军擒获的将领是谁？', 0, '', '', '&lt;p&gt;A:李典、于禁&lt;/p&gt;&lt;p&gt;B:庞德、曹仁&lt;/p&gt;&lt;p&gt;C:于禁、庞德&lt;/p&gt;&lt;p&gt;D:董衡、董超&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(604, 1, '关羽父子在哪里被擒？', 0, '', '', '&lt;p&gt;A:麦城&lt;/p&gt;&lt;p&gt;B:临沮&lt;/p&gt;&lt;p&gt;C:江陵&lt;/p&gt;&lt;p&gt;D:江夏&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(605, 1, '公孙瓒被谁所灭？', 0, '', '', '&lt;p&gt;A:袁绍&lt;/p&gt;&lt;p&gt;B:袁术&lt;/p&gt;&lt;p&gt;C:吕布&lt;/p&gt;&lt;p&gt;D:曹操&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(606, 1, '邓艾绕过汉中奇袭西蜀，在哪里杀死了诸葛亮的儿子诸葛瞻？', 0, '', '', '&lt;p&gt;A:绵竹&lt;/p&gt;&lt;p&gt;B:剑阁&lt;/p&gt;&lt;p&gt;C:定军山&lt;/p&gt;&lt;p&gt;D:祁山&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(607, 1, '魏晋时期，出现“竹林七贤”，他们十分有才干且不追求功名利禄，下列谁不是竹林七贤之一？', 0, '', '', '&lt;p&gt;A:阮籍&lt;/p&gt;&lt;p&gt;B:嵇康&lt;/p&gt;&lt;p&gt;C:孔融&lt;/p&gt;&lt;p&gt;D:王戎&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(608, 1, '仅用一百个兵劫掉曹操大营的人是谁？', 0, '', '', '&lt;p&gt;A:张飞&lt;/p&gt;&lt;p&gt;B:典韦&lt;/p&gt;&lt;p&gt;C:甘宁&lt;/p&gt;&lt;p&gt;D:陆逊&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(609, 1, '张飞于长坂坡吼死了哪位曹军大将？', 0, '', '', '&lt;p&gt;A:夏侯霸&lt;/p&gt;&lt;p&gt;B:夏侯渊&lt;/p&gt;&lt;p&gt;C:夏侯杰&lt;/p&gt;&lt;p&gt;D:夏侯敦&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(610, 1, '谁被誉为“一身都是胆”？', 0, '', '', '&lt;p&gt;A:关羽&lt;/p&gt;&lt;p&gt;B:张飞`&lt;/p&gt;&lt;p&gt;C:赵云&lt;/p&gt;&lt;p&gt;D:马超&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(611, 1, '化名“单福”的谋士是谁？', 0, '', '', '&lt;p&gt;A:徐庶&lt;/p&gt;&lt;p&gt;B:鲁肃&lt;/p&gt;&lt;p&gt;C:顾雍&lt;/p&gt;&lt;p&gt;D:虞翻&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(612, 1, '谁收服了黄忠？', 0, '', '', '&lt;p&gt;A:赵云&lt;/p&gt;&lt;p&gt;B:关羽&lt;/p&gt;&lt;p&gt;C:魏延&lt;/p&gt;&lt;p&gt;D:廖化&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(613, 1, '“司马昭之心，路人皆知”是谁说的话？', 0, '', '', '&lt;p&gt;A:曹爽&lt;/p&gt;&lt;p&gt;B:曹髦&lt;/p&gt;&lt;p&gt;C:曹植&lt;/p&gt;&lt;p&gt;D:曹彰&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(614, 1, '三国时期，很多人结拜为义子、义父，下列哪一对不是义子、义父关系？', 0, '', '', '&lt;p&gt;A:吕布与丁原&lt;/p&gt;&lt;p&gt;B:刘备与刘封&lt;/p&gt;&lt;p&gt;C:马腾与马超&lt;/p&gt;&lt;p&gt;D:关羽与关平&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(615, 1, '在赤壁之战前，曹操曾与孙权打了一仗，结果曹军大败，两员大将被杀，他们是谁？', 0, '', '', '&lt;p&gt;A:马延、张剀&lt;/p&gt;&lt;p&gt;B:焦触、张南&lt;/p&gt;&lt;p&gt;C:董衡、董超&lt;/p&gt;&lt;p&gt;D:宋宪、魏续&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(616, 1, '曹仁布的“八门金锁阵”被谁破了？', 0, '', '', '&lt;p&gt;A:诸葛亮&lt;/p&gt;&lt;p&gt;B:庞统&lt;/p&gt;&lt;p&gt;C:徐庶&lt;/p&gt;&lt;p&gt;D:姜维&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(617, 1, '谁被称为“小霸王”？', 0, '', '', '&lt;p&gt;A:赵云&lt;/p&gt;&lt;p&gt;B:典韦&lt;/p&gt;&lt;p&gt;C:孙策&lt;/p&gt;&lt;p&gt;D:文丑&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(618, 1, '诸葛亮的“八阵图”被谁破了？', 0, '', '', '&lt;p&gt;A:司马懿&lt;/p&gt;&lt;p&gt;B:陆逊&lt;/p&gt;&lt;p&gt;C:黄承彦&lt;/p&gt;&lt;p&gt;D:周瑜&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(619, 1, '曹操缴榜文以擒董卓，十八路诸侯来会盟，谁为盟主？', 0, '', '', '&lt;p&gt;A:曹操&lt;/p&gt;&lt;p&gt;B:孙坚&lt;/p&gt;&lt;p&gt;C:袁绍&lt;/p&gt;&lt;p&gt;D:刘备&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(620, 1, '谁是从曹操处投到刘备处的？', 0, '', '', '&lt;p&gt;A:马超&lt;/p&gt;&lt;p&gt;B:王平&lt;/p&gt;&lt;p&gt;C:黄忠&lt;/p&gt;&lt;p&gt;D:孟达&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(621, 1, '谁背叛了刘备？', 0, '', '', '&lt;p&gt;A:赵云&lt;/p&gt;&lt;p&gt;B:马岱&lt;/p&gt;&lt;p&gt;C:魏延&lt;/p&gt;&lt;p&gt;D:孟达&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(622, 1, '全面内战爆发后，国民党反动派在昆明杀害的民盟中央委员是：', 0, '', '', '&lt;p&gt;A:杜斌丞&lt;/p&gt;&lt;p&gt;B:杨杏佛&lt;/p&gt;&lt;p&gt;C:杜重远&lt;/p&gt;&lt;p&gt;D:李公朴&lt;/p&gt;&lt;p&gt;E:闻一多&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(623, 1, '我国发射第一颗通信卫星是在：', 0, '', '', '&lt;p&gt;A:1986年&lt;/p&gt;&lt;p&gt;B:1984年&lt;/p&gt;&lt;p&gt;C:1988年&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(624, 1, '抗战胜利后，美国总统杜鲁门为调处国共关系，派遣的总统驻华特使是：', 0, '', '', '&lt;p&gt;A:马歇尔&lt;/p&gt;&lt;p&gt;B:魏德迈&lt;/p&gt;&lt;p&gt;C:赫尔利&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(625, 1, '我国最早制造和使用青铜器是在:', 0, '', '', '&lt;p&gt;A:夏&lt;/p&gt;&lt;p&gt;B:商&lt;/p&gt;&lt;p&gt;C:西周&lt;/p&gt;&lt;p&gt;D:春秋&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(626, 1, '我国有确切纪年的开始是在:', 0, '', '', '&lt;p&gt;A:公元前841年&lt;/p&gt;&lt;p&gt;B:前770年&lt;/p&gt;&lt;p&gt;C:前476年&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(627, 1, '四羊方尊是:', 0, '', '', '&lt;p&gt;A:夏朝&lt;/p&gt;&lt;p&gt;B:商朝&lt;/p&gt;&lt;p&gt;C:西朝&lt;/p&gt;&lt;p&gt;D:春秋青铜器中的精品&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(628, 1, '山顶洞人生活在距今约:', 0, '', '', '&lt;p&gt;A:170万前年&lt;/p&gt;&lt;p&gt;B:一万八千年&lt;/p&gt;&lt;p&gt;C:四五十万年前&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(629, 1, '山顶洞人的社会组织是:', 0, '', '', '&lt;p&gt;A:原始人群&lt;/p&gt;&lt;p&gt;B:母系氏族&lt;/p&gt;&lt;p&gt;C:父系氏族&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(630, 1, '第二次世界大战的转折点是:', 0, '', '', '&lt;p&gt;A:莫斯科保卫战&lt;/p&gt;&lt;p&gt;B:珍珠港事件&lt;/p&gt;&lt;p&gt;C:欧洲第二战场的开辟&lt;/p&gt;&lt;p&gt;D:斯大林格勒保卫战&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(631, 3, '老子是春秋晚期的思想家', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(632, 1, '下面哪一位不是开国皇帝：', 0, '', '', '&lt;p&gt;A:隋炀帝&lt;/p&gt;&lt;p&gt;B:明太祖&lt;/p&gt;&lt;p&gt;C:元太祖&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(633, 1, '下面哪一位不是意大利文艺复兴时期的“三杰”：', 0, '', '', '&lt;p&gt;A:米开朗基罗&lt;/p&gt;&lt;p&gt;B:达芬奇&lt;/p&gt;&lt;p&gt;C:乔托&lt;/p&gt;&lt;p&gt;D:拉菲尔&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(634, 1, '哪一位法国君王被称为“太阳王”：', 0, '', '', '&lt;p&gt;A:路易十四&lt;/p&gt;&lt;p&gt;B:路易十五&lt;/p&gt;&lt;p&gt;C:路易十六&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(635, 1, '清朝第三个皇帝是谁?', 0, '', '', '&lt;p&gt;A:皇太极&lt;/p&gt;&lt;p&gt;B:乾隆&lt;/p&gt;&lt;p&gt;C:雍正&lt;/p&gt;&lt;p&gt;D:康熙&lt;/p&gt;&lt;p&gt;E:顺治&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(636, 1, '中国哪一年发射了第一颗地球同步静止轨道卫星？', 0, '', '', '&lt;p&gt;A:1982&lt;/p&gt;&lt;p&gt;B:1984&lt;/p&gt;&lt;p&gt;C:1986&lt;/p&gt;&lt;p&gt;D:1988&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(637, 1, '克格勃成立于哪一年？', 0, '', '', '&lt;p&gt;A:1953&lt;/p&gt;&lt;p&gt;B:1954&lt;/p&gt;&lt;p&gt;C:1955&lt;/p&gt;&lt;p&gt;D:1956&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(638, 2, '下列哪种是古代四大神兽（多选）', 0, '', '', '&lt;p&gt;A:青龙&lt;/p&gt;&lt;p&gt;B:白虎&lt;/p&gt;&lt;p&gt;C:朱雀&lt;/p&gt;&lt;p&gt;D:玄武&lt;/p&gt;', 4, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(639, 1, '中医著名古籍《黄帝内经》约成书于', 0, '', '', '&lt;p&gt;A:商周时期&lt;/p&gt;&lt;p&gt;B:春秋战国时期&lt;/p&gt;&lt;p&gt;C:西汉时期&lt;/p&gt;&lt;p&gt;D:东汉时期&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(640, 1, '国家药局最早设立于什么朝代？', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:北宋&lt;/p&gt;&lt;p&gt;C:南宋&lt;/p&gt;&lt;p&gt;D:明代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(641, 1, '谁最早提出大陆漂移学说？', 0, '', '', '&lt;p&gt;A:魏格纳&lt;/p&gt;&lt;p&gt;B:莫里&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(642, 2, '哪两个国家的登山运动员在同一年登上珠穆朗玛峰？（多选）', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:新西兰&lt;/p&gt;&lt;p&gt;C:尼泊尔&lt;/p&gt;&lt;p&gt;D:英国&lt;/p&gt;', 4, 'BC', 'BC', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(643, 1, '中国古代四大美人中“沉鱼”是用来形容哪一位？', 0, '', '', '&lt;p&gt;A:王昭君&lt;/p&gt;&lt;p&gt;B:杨贵妃&lt;/p&gt;&lt;p&gt;C:西施&lt;/p&gt;&lt;p&gt;D:貂禅&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(644, 1, '标志着世界殖民体系的彻底灭亡的大事是？', 0, '', '', '&lt;p&gt;A:纳米比亚的独立&lt;/p&gt;&lt;p&gt;B:津巴布伟的独立&lt;/p&gt;&lt;p&gt;C:干果的独立&lt;/p&gt;&lt;p&gt;D:朝鲜的独立&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(645, 1, '唐玄宗时应日本僧人邀请6次东渡，终于到达日本的僧人是谁。', 0, '', '', '&lt;p&gt;A:玄奘&lt;/p&gt;&lt;p&gt;B:玄真&lt;/p&gt;&lt;p&gt;C:鉴真&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(646, 1, '唐代印制的世界上现存最早标有确切日期的雕版印刷品是？', 0, '', '', '&lt;p&gt;A:诗经&lt;/p&gt;&lt;p&gt;B:易筋经&lt;/p&gt;&lt;p&gt;C:金刚经&lt;/p&gt;&lt;p&gt;D:唐诗三百首&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(647, 1, '第一个测出子午线长度的人是？', 0, '', '', '&lt;p&gt;A:美国人&lt;/p&gt;&lt;p&gt;B:中国人&lt;/p&gt;&lt;p&gt;C:英国人&lt;/p&gt;&lt;p&gt;D:法国人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(648, 1, '灭南宋统一全国的元朝皇帝是谁？', 0, '', '', '&lt;p&gt;A:铁木真&lt;/p&gt;&lt;p&gt;B:窝阔台&lt;/p&gt;&lt;p&gt;C:拖雷&lt;/p&gt;&lt;p&gt;D:忽必烈&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(649, 1, '故宫是哪一朝兴建的？', 0, '', '', '&lt;p&gt;A:元朝&lt;/p&gt;&lt;p&gt;B:明朝&lt;/p&gt;&lt;p&gt;C:清朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(650, 1, '古代的国子监是', 0, '', '', '&lt;p&gt;A:秘密监狱&lt;/p&gt;&lt;p&gt;B:特务机关&lt;/p&gt;&lt;p&gt;C:高等学府&lt;/p&gt;&lt;p&gt;D:行政部门&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(651, 1, '中国第一枚邮票是什么时期发行的', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(652, 1, '清朝皇帝中最勤奋好学的是', 0, '', '', '&lt;p&gt;A:道光&lt;/p&gt;&lt;p&gt;B:同治&lt;/p&gt;&lt;p&gt;C:顺治&lt;/p&gt;&lt;p&gt;D:康熙&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(653, 1, '明代的东厂、西厂是', 0, '', '', '&lt;p&gt;A:手工作坊&lt;/p&gt;&lt;p&gt;B:特务机关&lt;/p&gt;&lt;p&gt;C:皇家园林&lt;/p&gt;&lt;p&gt;D:兵营&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(654, 1, '下述人物中哪位不是刺客', 0, '', '', '&lt;p&gt;A:晏婴&lt;/p&gt;&lt;p&gt;B:聂政&lt;/p&gt;&lt;p&gt;C:专诸&lt;/p&gt;&lt;p&gt;D:荆轲&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(655, 1, '古时的戟是一种', 0, '', '', '&lt;p&gt;A:武器&lt;/p&gt;&lt;p&gt;B:饰物&lt;/p&gt;&lt;p&gt;C:农具&lt;/p&gt;&lt;p&gt;D:餐具&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(656, 1, '陆游与唐婉分离后数年又在哪里重逢过', 0, '', '', '&lt;p&gt;A:后园&lt;/p&gt;&lt;p&gt;B:张园&lt;/p&gt;&lt;p&gt;C:林园&lt;/p&gt;&lt;p&gt;D:沈园&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(657, 1, '古代体操五禽戏为谁所创', 0, '', '', '&lt;p&gt;A:张仲景&lt;/p&gt;&lt;p&gt;B:华佗&lt;/p&gt;&lt;p&gt;C:扁鹊&lt;/p&gt;&lt;p&gt;D:李时珍&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(658, 1, '世界第一个试管婴儿在哪一国诞生', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:法国&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;&lt;p&gt;D:德国&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(659, 1, '司马迁是因为替谁说情而受腐刑', 0, '', '', '&lt;p&gt;A:李陵&lt;/p&gt;&lt;p&gt;B:李广&lt;/p&gt;&lt;p&gt;C:杨业&lt;/p&gt;&lt;p&gt;D:霍去病&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(660, 1, '春秋时谁二桃杀三士', 0, '', '', '&lt;p&gt;A:晏婴&lt;/p&gt;&lt;p&gt;B:孙膑&lt;/p&gt;&lt;p&gt;C:计然&lt;/p&gt;&lt;p&gt;D:宋玉&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(661, 1, '和琛的王府是哪个？', 0, '', '', '&lt;p&gt;A:庆王府&lt;/p&gt;&lt;p&gt;B:恭王府&lt;/p&gt;&lt;p&gt;C:宁王府&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(662, 2, '“汉初三杰”指谁？（多选）', 0, '', '', '&lt;p&gt;A:韩信&lt;/p&gt;&lt;p&gt;B:萧何&lt;/p&gt;&lt;p&gt;C:刘邦&lt;/p&gt;&lt;p&gt;D:张良&lt;/p&gt;', 4, 'AD', 'AD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(663, 1, '“及时雨”指谁？', 0, '', '', '&lt;p&gt;A:吴用&lt;/p&gt;&lt;p&gt;B:宋江&lt;/p&gt;&lt;p&gt;C:戴宇&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(664, 1, '布达拉宫始建于公元_________世纪，是藏王松赞干布为远嫁西藏的唐朝文成公主而建。布达拉宫是当今世界上海拔最高、规模最大的宫殿式建筑群，海拔3700多米，占地总面积36万余平方米。', 0, '', '', '&lt;p&gt;A:5&lt;/p&gt;&lt;p&gt;B:6&lt;/p&gt;&lt;p&gt;C:7&lt;/p&gt;&lt;p&gt;D:8&lt;/p&gt;&lt;p&gt;E:9&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(665, 1, '我国开始征收契税的时间是哪一年？', 0, '', '', '&lt;p&gt;A:1950年&lt;/p&gt;&lt;p&gt;B:1951年&lt;/p&gt;&lt;p&gt;C:1956年&lt;/p&gt;&lt;p&gt;D:1973年&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(666, 1, '中国古代婚姻法最重要的渊源是什麽？', 0, '', '', '&lt;p&gt;A:法&lt;/p&gt;&lt;p&gt;B:礼&lt;/p&gt;&lt;p&gt;C:宗教戒律&lt;/p&gt;&lt;p&gt;D:习惯&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(667, 2, '古代社会通行的有偿婚包括哪些？（多选）', 0, '', '', '&lt;p&gt;A:买卖婚&lt;/p&gt;&lt;p&gt;B:交换婚&lt;/p&gt;&lt;p&gt;C:劳役婚&lt;/p&gt;&lt;p&gt;D:掠夺婚&lt;/p&gt;&lt;p&gt;E:共诺婚&lt;/p&gt;', 5, 'AC', 'AC', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(668, 1, '最早的楔形文字使用者是:', 0, '', '', '&lt;p&gt;A:古巴比伦人&lt;/p&gt;&lt;p&gt;B:苏美尔人&lt;/p&gt;&lt;p&gt;C:古埃及人&lt;/p&gt;&lt;p&gt;D:古印度人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(669, 1, '三国演义中的周瑜死于巴丘,是现在的:', 0, '', '', '&lt;p&gt;A:襄樊&lt;/p&gt;&lt;p&gt;B:长沙&lt;/p&gt;&lt;p&gt;C:岳阳&lt;/p&gt;&lt;p&gt;D:武汉&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(670, 1, '第一个提出“知识就是力量”的人是_________国著名的唯物主义哲学家和科学家弗兰西斯．培根。', 0, '', '', '&lt;p&gt;A:英&lt;/p&gt;&lt;p&gt;B:美&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(671, 1, '现在知道的我国境内的较早古人类有', 0, '', '', '&lt;p&gt;A:北京人&lt;/p&gt;&lt;p&gt;B:元谋人&lt;/p&gt;&lt;p&gt;C:蓝田人&lt;/p&gt;&lt;p&gt;D:山顶洞人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(672, 1, '标志18世纪末法国资产阶级革命结束的事件是', 0, '', '', '&lt;p&gt;A:雅各宾派分裂&lt;/p&gt;&lt;p&gt;B:热月政变&lt;/p&gt;&lt;p&gt;C:雾月政变&lt;/p&gt;&lt;p&gt;D:法兰西第一帝国建立&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(673, 1, '1990年东欧，苏联发生的事件中不包括', 0, '', '', '&lt;p&gt;A:两个德国统一&lt;/p&gt;&lt;p&gt;B:立陶宛，爱沙尼亚，拉脱维亚独立&lt;/p&gt;&lt;p&gt;C:东欧各国共产党纷纷丧失政权&lt;/p&gt;&lt;p&gt;D:南斯拉夫一分为五&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(674, 1, '1991年12月，欧共体12国首脑召开的欧共体发达国家发展进程中具有里程碑意义的会议是：', 0, '', '', '&lt;p&gt;A:日内瓦会议&lt;/p&gt;&lt;p&gt;B:巴黎会议&lt;/p&gt;&lt;p&gt;C:罗马会议&lt;/p&gt;&lt;p&gt;D:马斯特里赫特会议&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(675, 1, '世界贸易组织(WTO)是在哪界会议上正式成立的？', 0, '', '', '&lt;p&gt;A:马拉喀什谈判&lt;/p&gt;&lt;p&gt;B:马德里谈判&lt;/p&gt;&lt;p&gt;C:“乌拉圭回合”谈判&lt;/p&gt;&lt;p&gt;D:“巴拉圭回合”谈判&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(676, 1, '美国帝国大厦建于哪一年？', 0, '', '', '&lt;p&gt;A:1930&lt;/p&gt;&lt;p&gt;B:1931&lt;/p&gt;&lt;p&gt;C:1932&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(677, 2, '大禹治水时把天下分为九个州，以下哪几个州是其中的5个？（多选）', 0, '', '', '&lt;p&gt;A:冀&lt;/p&gt;&lt;p&gt;B:淮&lt;/p&gt;&lt;p&gt;C:徐&lt;/p&gt;&lt;p&gt;D:青&lt;/p&gt;&lt;p&gt;E:荆&lt;/p&gt;&lt;p&gt;F:豫&lt;/p&gt;', 6, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(678, 1, '孔子在哪个国家出生？', 0, '', '', '&lt;p&gt;A:鲁国&lt;/p&gt;&lt;p&gt;B:齐国&lt;/p&gt;&lt;p&gt;C:宋国&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(679, 1, '汽车竞赛始于1894年，当时的赛程为：', 0, '', '', '&lt;p&gt;A:巴黎－马德里&lt;/p&gt;&lt;p&gt;B:巴黎－里昂&lt;/p&gt;&lt;p&gt;C:巴黎－纽约&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(680, 1, '蒙古第一次西征是', 0, '', '', '&lt;p&gt;A:1234年至1241年&lt;/p&gt;&lt;p&gt;B:1217年至1223年&lt;/p&gt;&lt;p&gt;C:1253年至1258年&lt;/p&gt;&lt;p&gt;D:1223年至1234年&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(681, 1, '襄樊之战发生在哪一年', 0, '', '', '&lt;p&gt;A:1267年&lt;/p&gt;&lt;p&gt;B:1367年&lt;/p&gt;&lt;p&gt;C:1276年&lt;/p&gt;&lt;p&gt;D:1376年&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(682, 1, '被瓦刺兵俘去，后有复辟的皇帝是', 0, '', '', '&lt;p&gt;A:明景宗 朱祁钰&lt;/p&gt;&lt;p&gt;B:明武宗 朱厚照&lt;/p&gt;&lt;p&gt;C:明神宗 朱诩钧&lt;/p&gt;&lt;p&gt;D:明英宗 朱祁镇&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(683, 1, '托洛茨基被克格勃杀害于哪国', 0, '', '', '&lt;p&gt;A:墨西哥&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:阿根廷&lt;/p&gt;&lt;p&gt;D:苏联&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(684, 1, '清代唯一一位以嫡长子身份即位的皇帝是', 0, '', '', '&lt;p&gt;A:道光&lt;/p&gt;&lt;p&gt;B:乾隆&lt;/p&gt;&lt;p&gt;C:胤祯&lt;/p&gt;&lt;p&gt;D:顺治&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(685, 1, '明代科举制度考试等级不包括：', 0, '', '', '&lt;p&gt;A:乡试&lt;/p&gt;&lt;p&gt;B:会试&lt;/p&gt;&lt;p&gt;C:殿试&lt;/p&gt;&lt;p&gt;D:院试&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(686, 1, '谁推行一条鞭法，减轻农民负担', 0, '', '', '&lt;p&gt;A:赵普&lt;/p&gt;&lt;p&gt;B:张居正&lt;/p&gt;&lt;p&gt;C:王安石&lt;/p&gt;&lt;p&gt;D:商鞅&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(687, 1, '“五虎将”是指', 0, '', '', '&lt;p&gt;A:关羽、张飞、赵云、魏延、王平&lt;/p&gt;&lt;p&gt;B:张飞、赵云、马超、王平、刘备&lt;/p&gt;&lt;p&gt;C:关羽、马超、黄忠、赵云、魏延&lt;/p&gt;&lt;p&gt;D:关羽、张飞、赵云、马超、黄忠&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(688, 1, '希腊神话中赫拉也就是罗马神话中的：', 0, '', '', '&lt;p&gt;A:朱诺&lt;/p&gt;&lt;p&gt;B:黛安娜&lt;/p&gt;&lt;p&gt;C:朱彼得&lt;/p&gt;&lt;p&gt;D:维纳斯&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(689, 1, '“宁可枉杀千人，不可使一人漏网”是谁的口号？', 0, '', '', '&lt;p&gt;A:蒋介石&lt;/p&gt;&lt;p&gt;B:汪精卫&lt;/p&gt;&lt;p&gt;C:何应钦&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(690, 1, '五粮液酒历次蝉联“国家名酒”金奖，九一年被评为中国“十大驰名商标”；继1915年获巴拿马金奖八十年之后，1995年再获巴拿马国际贸易博览会酒类唯一金奖。我国的五粮液最早酿造是在_________朝。', 0, '', '', '&lt;p&gt;A:元&lt;/p&gt;&lt;p&gt;B:宋&lt;/p&gt;&lt;p&gt;C:明&lt;/p&gt;&lt;p&gt;D:清&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(691, 1, '古印度的种姓制度中哪一个地位最低', 0, '', '', '&lt;p&gt;A:婆罗门&lt;/p&gt;&lt;p&gt;B:刹帝利&lt;/p&gt;&lt;p&gt;C:吠舍&lt;/p&gt;&lt;p&gt;D:首陀罗&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(692, 1, '甘罗多大年纪成为相国', 0, '', '', '&lt;p&gt;A:十岁&lt;/p&gt;&lt;p&gt;B:十一岁&lt;/p&gt;&lt;p&gt;C:十二岁&lt;/p&gt;&lt;p&gt;D:十三岁&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(693, 1, '孟尝君招收到门下的人才称为', 0, '', '', '&lt;p&gt;A:饭客&lt;/p&gt;&lt;p&gt;B:食客&lt;/p&gt;&lt;p&gt;C:刺客&lt;/p&gt;&lt;p&gt;D:吃客&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(694, 1, '下列哪位国王曾放下屠刀，立地成佛', 0, '', '', '&lt;p&gt;A:阿育王&lt;/p&gt;&lt;p&gt;B:所罗门王&lt;/p&gt;&lt;p&gt;C:大流士&lt;/p&gt;&lt;p&gt;D:冈比西斯&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(695, 1, '古奥林匹克竞赛优胜者要戴上用什么编成的王冠', 0, '', '', '&lt;p&gt;A:百合花&lt;/p&gt;&lt;p&gt;B:柳条&lt;/p&gt;&lt;p&gt;C:橄榄枝&lt;/p&gt;&lt;p&gt;D:月桂&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(696, 1, '屈原是投哪条江自尽的', 0, '', '', '&lt;p&gt;A:汨罗江&lt;/p&gt;&lt;p&gt;B:长江&lt;/p&gt;&lt;p&gt;C:淮河&lt;/p&gt;&lt;p&gt;D:丽江&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(697, 1, '下述哪种武器不属中世纪骑士的必需装备', 0, '', '', '&lt;p&gt;A:盾牌&lt;/p&gt;&lt;p&gt;B:长矛&lt;/p&gt;&lt;p&gt;C:剑&lt;/p&gt;&lt;p&gt;D:弓箭&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(698, 1, '黄帝氏族以什么为图腾', 0, '', '', '&lt;p&gt;A:风&lt;/p&gt;&lt;p&gt;B:云&lt;/p&gt;&lt;p&gt;C:雨&lt;/p&gt;&lt;p&gt;D:雷&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(699, 1, '马拉松比赛最初的长度以城市马拉松到哪里的距离为准', 0, '', '', '&lt;p&gt;A:雅典&lt;/p&gt;&lt;p&gt;B:斯巴达&lt;/p&gt;&lt;p&gt;C:特洛伊&lt;/p&gt;&lt;p&gt;D:罗马&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(700, 1, '下列哪项不是嬉皮士的典型装扮', 0, '', '', '&lt;p&gt;A:长发&lt;/p&gt;&lt;p&gt;B:喇叭裤&lt;/p&gt;&lt;p&gt;C:花衬衫&lt;/p&gt;&lt;p&gt;D:松糕鞋&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(701, 1, '历史之父指的是', 0, '', '', '&lt;p&gt;A:哀思库罗斯&lt;/p&gt;&lt;p&gt;B:阿里斯托芬&lt;/p&gt;&lt;p&gt;C:希罗多德&lt;/p&gt;&lt;p&gt;D:伯里克利&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(702, 1, '我国的奴隶社会开始于', 0, '', '', '&lt;p&gt;A:黄帝时代&lt;/p&gt;&lt;p&gt;B:尧舜禹时代&lt;/p&gt;&lt;p&gt;C:夏&lt;/p&gt;&lt;p&gt;D:商&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(703, 1, '新慕尼黑机场启用时间是：', 0, '', '', '&lt;p&gt;A:1993.5.18&lt;/p&gt;&lt;p&gt;B:1990.7.16&lt;/p&gt;&lt;p&gt;C:1992.5.17&lt;/p&gt;&lt;p&gt;D:1996.7.15&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(704, 1, '前奥委会主席萨马兰奇出生于：', 0, '', '', '&lt;p&gt;A:1920.7.17&lt;/p&gt;&lt;p&gt;B:1921.8.18&lt;/p&gt;&lt;p&gt;C:1923.9.19&lt;/p&gt;&lt;p&gt;D:1924.10.20&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(705, 1, '陈毅同志出生于：', 0, '', '', '&lt;p&gt;A:1901.8.26&lt;/p&gt;&lt;p&gt;B:1901.8.27&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(706, 1, '下列哪一事件具有政变性质：', 0, '', '', '&lt;p&gt;A:七国之乱&lt;/p&gt;&lt;p&gt;B:土木之变&lt;/p&gt;&lt;p&gt;C:靖康之变&lt;/p&gt;&lt;p&gt;D:陈桥兵变&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(707, 1, '请问八达岭万里长城是由哪个朝代所建？', 0, '', '', '&lt;p&gt;A:宋朝&lt;/p&gt;&lt;p&gt;B:明朝&lt;/p&gt;&lt;p&gt;C:秦始皇&lt;/p&gt;&lt;p&gt;D:春秋战国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(708, 1, '中国古代的一个时辰代表现在的多少时间？', 0, '', '', '&lt;p&gt;A:1小时&lt;/p&gt;&lt;p&gt;B:2小时&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(709, 1, '涮羊肉的创始者是谁？', 0, '', '', '&lt;p&gt;A:成吉思汗&lt;/p&gt;&lt;p&gt;B:李世民&lt;/p&gt;&lt;p&gt;C:忽必烈&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(710, 1, '《王二小》在山坡上放什么动物，来给游击队放哨？', 0, '', '', '&lt;p&gt;A:羊&lt;/p&gt;&lt;p&gt;B:牛&lt;/p&gt;&lt;p&gt;C:鸭&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(711, 1, '放“鞭炮”这个传统习俗，可有很久的历史了，但花炮的制作形成规模是在哪个朝代？', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(712, 1, '中国近代史上睁眼看世界的第一人是？', 0, '', '', '&lt;p&gt;A:龚自珍&lt;/p&gt;&lt;p&gt;B:林则徐&lt;/p&gt;&lt;p&gt;C:马建忠&lt;/p&gt;&lt;p&gt;D:薛福成&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(713, 1, '1947年国民党反动派残酷镇压国统区“反饥饿、反内战、反迫害”的学生运动，制造的流血惨案是？', 0, '', '', '&lt;p&gt;A:一二．一惨案&lt;/p&gt;&lt;p&gt;B:较场口惨案&lt;/p&gt;&lt;p&gt;C:五二Ｏ惨案&lt;/p&gt;&lt;p&gt;D:下关惨案&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(714, 2, '＂大跃进＂运动和人民公社化运动中＂左＂倾错误的主要标志是？（多选）', 0, '', '', '&lt;p&gt;A:高指标&lt;/p&gt;&lt;p&gt;B:瞎指挥&lt;/p&gt;&lt;p&gt;C:浮夸风&lt;/p&gt;&lt;p&gt;D:“共产风”&lt;/p&gt;', 4, 'ACD', 'ACD', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(715, 1, '人民解放军解放全国在陆的时间是？', 0, '', '', '&lt;p&gt;A:1949年10月&lt;/p&gt;&lt;p&gt;B:1950年5月&lt;/p&gt;&lt;p&gt;C:1951年5月&lt;/p&gt;&lt;p&gt;D:1951年10月&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(716, 1, '1945年日本政府正式宣布无条件投降的时间是？', 0, '', '', '&lt;p&gt;A:8月14日&lt;/p&gt;&lt;p&gt;B:8月15日&lt;/p&gt;&lt;p&gt;C:9月2日&lt;/p&gt;&lt;p&gt;D:9月3日&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(717, 1, '黄埔军校成立时，担任党代表的是？', 0, '', '', '&lt;p&gt;A:周恩来&lt;/p&gt;&lt;p&gt;B:恽代英&lt;/p&gt;&lt;p&gt;C:萧楚女&lt;/p&gt;&lt;p&gt;D:廖仲恺&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(718, 1, '中国复关变成了入世，这前前后后历经了多少年的时间，充满了各种各样的挑战。', 0, '', '', '&lt;p&gt;A:15年多&lt;/p&gt;&lt;p&gt;B:12年&lt;/p&gt;&lt;p&gt;C:13年&lt;/p&gt;&lt;p&gt;D:11年&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(719, 1, '1999年11月15日，中美双方在哪里签署了关于中国加入世贸组织的双边协议？', 0, '', '', '&lt;p&gt;A:北京&lt;/p&gt;&lt;p&gt;B:多哈&lt;/p&gt;&lt;p&gt;C:华盛顿&lt;/p&gt;&lt;p&gt;D:西雅图&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(720, 1, '最早的风筝用于战争是在哪个朝代？', 0, '', '', '&lt;p&gt;A:春秋战国&lt;/p&gt;&lt;p&gt;B:楚汉争霸时期&lt;/p&gt;&lt;p&gt;C:宋朝&lt;/p&gt;&lt;p&gt;D:五代&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(721, 1, '文字狱是清朝哪位皇帝兴起的', 0, '', '', '&lt;p&gt;A:康熙&lt;/p&gt;&lt;p&gt;B:顺治&lt;/p&gt;&lt;p&gt;C:雍正&lt;/p&gt;&lt;p&gt;D:乾隆&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(722, 1, '嵇康是哪一时期的琴家', 0, '', '', '&lt;p&gt;A:夏周&lt;/p&gt;&lt;p&gt;B:秦汉&lt;/p&gt;&lt;p&gt;C:三国&lt;/p&gt;&lt;p&gt;D:五代&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(723, 1, '唐代的乐队，使用的主要乐器是', 0, '', '', '&lt;p&gt;A:笛&lt;/p&gt;&lt;p&gt;B:鼓&lt;/p&gt;&lt;p&gt;C:琵琶&lt;/p&gt;&lt;p&gt;D:埙&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(724, 1, '拼音中四声起于', 0, '', '', '&lt;p&gt;A:汉&lt;/p&gt;&lt;p&gt;B:唐&lt;/p&gt;&lt;p&gt;C:宋&lt;/p&gt;&lt;p&gt;D:元&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(725, 1, '元杂剧的“楔子”即', 0, '', '', '&lt;p&gt;A:序幕&lt;/p&gt;&lt;p&gt;B:高潮&lt;/p&gt;&lt;p&gt;C:尾声&lt;/p&gt;&lt;p&gt;D:一种道具&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(726, 1, '英国王妃戴安娜是在哪一年去世', 0, '', '', '&lt;p&gt;A:1996&lt;/p&gt;&lt;p&gt;B:1997&lt;/p&gt;&lt;p&gt;C:1998&lt;/p&gt;&lt;p&gt;D:1999&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(727, 1, '绯闻最多的美国总统是', 0, '', '', '&lt;p&gt;A:罗斯福&lt;/p&gt;&lt;p&gt;B:肯尼迪&lt;/p&gt;&lt;p&gt;C:约翰逊&lt;/p&gt;&lt;p&gt;D:克林顿&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(728, 1, '我国贴春联始于哪个朝代？', 0, '', '', '&lt;p&gt;A:汉朝&lt;/p&gt;&lt;p&gt;B:唐朝&lt;/p&gt;&lt;p&gt;C:五代&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(729, 1, '“贺年片”最早出现在哪个国家？', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:中国 （宋元时期）&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(730, 1, '守岁作为春节期间最重要的内容，这个习俗始于哪个朝代？', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:元朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(731, 1, '封建社会存在了多少年？', 0, '', '', '&lt;p&gt;A:1800&lt;/p&gt;&lt;p&gt;B:1900&lt;/p&gt;&lt;p&gt;C:2000&lt;/p&gt;&lt;p&gt;D:2100&lt;/p&gt;&lt;p&gt;E:2200&lt;/p&gt;', 5, 'E', 'E', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(732, 1, '秦二世是谁？', 0, '', '', '&lt;p&gt;A:胡亥&lt;/p&gt;&lt;p&gt;B:扶苏&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(733, 1, '李龟年是哪个朝代的乐师', 0, '', '', '&lt;p&gt;A:南宋&lt;/p&gt;&lt;p&gt;B:明&lt;/p&gt;&lt;p&gt;C:清&lt;/p&gt;&lt;p&gt;D:唐&lt;/p&gt;&lt;p&gt;E:元&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(734, 1, '我国宋朝采用什么样的兵役制度？', 0, '', '', '&lt;p&gt;A:义务兵役制&lt;/p&gt;&lt;p&gt;B:志愿兵役制&lt;/p&gt;&lt;p&gt;C:雇佣兵役制&lt;/p&gt;&lt;p&gt;D:终身兵役制&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(735, 1, '元宝始创于我国哪个朝代？', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:元朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(736, 1, '我国最早的银币（银布币）出现于什么时候？', 0, '', '', '&lt;p&gt;A:西周&lt;/p&gt;&lt;p&gt;B:春秋&lt;/p&gt;&lt;p&gt;C:战国&lt;/p&gt;&lt;p&gt;D:汉朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(737, 1, '我国抗日时期的八路军又称为', 0, '', '', '&lt;p&gt;A:红军&lt;/p&gt;&lt;p&gt;B:新四军&lt;/p&gt;&lt;p&gt;C:第八集团军&lt;/p&gt;&lt;p&gt;D:第十八集团军&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(738, 1, '史料记载,内地和台湾最早的交流是', 0, '', '', '&lt;p&gt;A:秦&lt;/p&gt;&lt;p&gt;B:西汉&lt;/p&gt;&lt;p&gt;C:东汉&lt;/p&gt;&lt;p&gt;D:三国&lt;/p&gt;&lt;p&gt;E:唐&lt;/p&gt;&lt;p&gt;F:元&lt;/p&gt;', 6, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(739, 1, '世界上最早的报纸诞生于', 0, '', '', '&lt;p&gt;A:英国&lt;/p&gt;&lt;p&gt;B:意大利&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;&lt;p&gt;D:中国&lt;/p&gt;&lt;p&gt;E:希腊&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(740, 1, '哪一种恐龙最小?', 0, '', '', '&lt;p&gt;A:三角龙&lt;/p&gt;&lt;p&gt;B:细颚龙&lt;/p&gt;&lt;p&gt;C:锯齿龙&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(741, 1, '最像鸟的恐龙是哪一种？', 0, '', '', '&lt;p&gt;A:翼龙&lt;/p&gt;&lt;p&gt;B:似鸟龙&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(742, 1, '开国大典时共放了多礼炮？', 0, '', '', '&lt;p&gt;A:12&lt;/p&gt;&lt;p&gt;B:18&lt;/p&gt;&lt;p&gt;C:25&lt;/p&gt;&lt;p&gt;D:28&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(743, 1, '开国大典在1949年10月1日几时开始的？', 0, '', '', '&lt;p&gt;A:8时&lt;/p&gt;&lt;p&gt;B:10时&lt;/p&gt;&lt;p&gt;C:12时&lt;/p&gt;&lt;p&gt;D:15时&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(744, 1, '清朝最后一个皇帝是谁？', 0, '', '', '&lt;p&gt;A:乾隆&lt;/p&gt;&lt;p&gt;B:道光&lt;/p&gt;&lt;p&gt;C:光绪&lt;/p&gt;&lt;p&gt;D:宣统&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(745, 3, '公元1900年是闰年', 0, '', '', '&lt;p&gt;A:对&lt;/p&gt;&lt;p&gt;B:错&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(746, 1, '蒋介石出生于何地？', 0, '', '', '&lt;p&gt;A:奉化&lt;/p&gt;&lt;p&gt;B:余姚&lt;/p&gt;&lt;p&gt;C:绍兴&lt;/p&gt;&lt;p&gt;D:海宁&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(747, 1, '国际奥委会会旗是哪个国家于1920年赠送的？', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:瑞士&lt;/p&gt;&lt;p&gt;C:挪威&lt;/p&gt;&lt;p&gt;D:日本&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(748, 1, '武则天登基后，改国号为', 0, '', '', '&lt;p&gt;A:夏&lt;/p&gt;&lt;p&gt;B:商&lt;/p&gt;&lt;p&gt;C:周&lt;/p&gt;&lt;p&gt;D:唐&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(749, 1, '清宣宗在位时的年号为', 0, '', '', '&lt;p&gt;A:康熙&lt;/p&gt;&lt;p&gt;B:乾隆&lt;/p&gt;&lt;p&gt;C:道光&lt;/p&gt;&lt;p&gt;D:光绪&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(750, 1, '吃元宵始于哪个朝代', 0, '', '', '&lt;p&gt;A:元朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:清朝&lt;/p&gt;&lt;p&gt;D:明朝&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(751, 1, '明朝北京常走兵车的是哪个城门', 0, '', '', '&lt;p&gt;A:朝阳门&lt;/p&gt;&lt;p&gt;B:宣武门&lt;/p&gt;&lt;p&gt;C:西直门&lt;/p&gt;&lt;p&gt;D:德胜门&lt;/p&gt;&lt;p&gt;E:阜成门&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(752, 1, '跆拳道起源于1500年前（   ）的武术。', 0, '', '', '&lt;p&gt;A:日本&lt;/p&gt;&lt;p&gt;B:韩国&lt;/p&gt;&lt;p&gt;C:泰国&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(753, 1, '1988年从（  ）开始，天安门城楼向中外游客开放。', 0, '', '', '&lt;p&gt;A:元旦&lt;/p&gt;&lt;p&gt;B:劳动节&lt;/p&gt;&lt;p&gt;C:国庆节&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(754, 1, '秦始皇时代将（   ）作为标准文字。', 0, '', '', '&lt;p&gt;A:甲骨文&lt;/p&gt;&lt;p&gt;B:隶书&lt;/p&gt;&lt;p&gt;C:楷书&lt;/p&gt;&lt;p&gt;D:小篆&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(755, 1, '地雷最早出现在（    ）。', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:宋代&lt;/p&gt;&lt;p&gt;C:元代&lt;/p&gt;&lt;p&gt;D:明代&lt;/p&gt;&lt;p&gt;E:清代&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(756, 1, '盛唐时期被称为（    ）。', 0, '', '', '&lt;p&gt;A:贞观之治&lt;/p&gt;&lt;p&gt;B:开元之治&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(757, 1, '中国传说中的炎帝中的“炎”是代表（    ）。', 0, '', '', '&lt;p&gt;A:日月星辰中的太阳&lt;/p&gt;&lt;p&gt;B:阴阳五行中的火&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(758, 1, '新中国成立时共鸣放礼炮（   ）。', 0, '', '', '&lt;p&gt;A:21响&lt;/p&gt;&lt;p&gt;B:28响&lt;/p&gt;&lt;p&gt;C:54响&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(759, 1, '我国科举制度上最后一位状元是（   ）。', 0, '', '', '&lt;p&gt;A:左宗棠&lt;/p&gt;&lt;p&gt;B:刘师曾&lt;/p&gt;&lt;p&gt;C:张之洞&lt;/p&gt;&lt;p&gt;D:刘春霖&lt;/p&gt;&lt;p&gt;E:翁同和&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(760, 1, '指挥雁宿崖、黄土岭战斗，歼灭日军“名将之花”阿部规秀中将旅团长的是我军将领（   ）。', 0, '', '', '&lt;p&gt;A:徐向前&lt;/p&gt;&lt;p&gt;B:聂荣臻&lt;/p&gt;&lt;p&gt;C:罗荣桓&lt;/p&gt;&lt;p&gt;D:林彪&lt;/p&gt;&lt;p&gt;E:叶剑英&lt;/p&gt;', 5, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(761, 1, '袁世凯做了几天的皇帝？', 0, '', '', '&lt;p&gt;A:83天&lt;/p&gt;&lt;p&gt;B:96天&lt;/p&gt;&lt;p&gt;C:103天&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(762, 1, '第一届冬奥会于哪年举行即夏蒙尼冬奥会', 0, '', '', '&lt;p&gt;A:1920&lt;/p&gt;&lt;p&gt;B:1924&lt;/p&gt;&lt;p&gt;C:1928&lt;/p&gt;&lt;p&gt;D:1932&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(763, 1, '世界上第一次实测子午线长度的我国古代科学家是', 0, '', '', '&lt;p&gt;A:郭守敬&lt;/p&gt;&lt;p&gt;B:徐光启&lt;/p&gt;&lt;p&gt;C:僧一行&lt;/p&gt;&lt;p&gt;D:祖冲之&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(764, 1, '北京最早建成是什么朝代？', 0, '', '', '&lt;p&gt;A:宋&lt;/p&gt;&lt;p&gt;B:金&lt;/p&gt;&lt;p&gt;C:西周&lt;/p&gt;&lt;p&gt;D:清&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(765, 1, '日本是哪年偷袭美国的珍珠港', 0, '', '', '&lt;p&gt;A:1939&lt;/p&gt;&lt;p&gt;B:1941&lt;/p&gt;&lt;p&gt;C:1945&lt;/p&gt;&lt;p&gt;D:1947&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(766, 1, '司马光，司马迁，司马昭，司马懿，哪位司马先生出生最早', 0, '', '', '&lt;p&gt;A:司马光&lt;/p&gt;&lt;p&gt;B:司马迁&lt;/p&gt;&lt;p&gt;C:司马昭&lt;/p&gt;&lt;p&gt;D:司马懿&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(767, 1, '下列曾用名中，哪个不是周恩来的', 0, '', '', '&lt;p&gt;A:伍豪&lt;/p&gt;&lt;p&gt;B:飞飞&lt;/p&gt;&lt;p&gt;C:冠生&lt;/p&gt;&lt;p&gt;D:周道&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(768, 1, '第一个北京猿人头盖骨发现于哪一年', 0, '', '', '&lt;p&gt;A:1927年&lt;/p&gt;&lt;p&gt;B:1928年&lt;/p&gt;&lt;p&gt;C:1929年&lt;/p&gt;&lt;p&gt;D:1930年&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(769, 1, '中英〈南京条约〉是中国近代史上第一个不平等条约，哪一年签定的', 0, '', '', '&lt;p&gt;A:1841年&lt;/p&gt;&lt;p&gt;B:1842年&lt;/p&gt;&lt;p&gt;C:1844年&lt;/p&gt;&lt;p&gt;D:1860年&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(770, 1, '号称“初唐四杰”的有王勃、卢照邻、骆宾王及', 0, '', '', '&lt;p&gt;A:杨炯&lt;/p&gt;&lt;p&gt;B:王勃&lt;/p&gt;&lt;p&gt;C:卢纶&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(771, 1, '德国心理学家冯特于哪一年建立了世界上第一个心理实验室？', 0, '', '', '&lt;p&gt;A:1897&lt;/p&gt;&lt;p&gt;B:1798&lt;/p&gt;&lt;p&gt;C:1879&lt;/p&gt;&lt;p&gt;D:1789&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(772, 1, '张爱玲于哪一年逝世？', 0, '', '', '&lt;p&gt;A:1993&lt;/p&gt;&lt;p&gt;B:1994&lt;/p&gt;&lt;p&gt;C:1995&lt;/p&gt;&lt;p&gt;D:1996&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(773, 1, '下列人物谁被捕于皖南事变？', 0, '', '', '&lt;p&gt;A:叶挺&lt;/p&gt;&lt;p&gt;B:贺龙&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(774, 1, '“馒头”的发明者是谁？', 0, '', '', '&lt;p&gt;A:诸葛亮&lt;/p&gt;&lt;p&gt;B:朱元璋&lt;/p&gt;&lt;p&gt;C:神农氏&lt;/p&gt;&lt;p&gt;D:岳飞&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(775, 1, '第二次海湾战争开始于哪一天：', 0, '', '', '&lt;p&gt;A:2001年3月1日&lt;/p&gt;&lt;p&gt;B:2002年6月23日&lt;/p&gt;&lt;p&gt;C:2003年3月20日&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(776, 1, '我国建成的第一座长江大桥是：', 0, '', '', '&lt;p&gt;A:南京长江大桥&lt;/p&gt;&lt;p&gt;B:武汉长江大桥&lt;/p&gt;&lt;p&gt;C:重庆长江大桥&lt;/p&gt;&lt;p&gt;D:九江长江大桥&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(777, 1, '天安门原名为：', 0, '', '', '&lt;p&gt;A:承天门&lt;/p&gt;&lt;p&gt;B:午门&lt;/p&gt;&lt;p&gt;C:广安门&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(778, 1, '灭亡宋朝的势力是：', 0, '', '', '&lt;p&gt;A:辽&lt;/p&gt;&lt;p&gt;B:金&lt;/p&gt;&lt;p&gt;C:西夏&lt;/p&gt;&lt;p&gt;D:蒙古&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(779, 1, '欧洲中世纪什么样的人不能佩带钻石', 0, '', '', '&lt;p&gt;A:皇室&lt;/p&gt;&lt;p&gt;B:商人&lt;/p&gt;&lt;p&gt;C:贵族&lt;/p&gt;&lt;p&gt;D:教士&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(780, 1, '郑和共几次下西洋？', 0, '', '', '&lt;p&gt;A:5&lt;/p&gt;&lt;p&gt;B:7&lt;/p&gt;&lt;p&gt;C:9&lt;/p&gt;&lt;p&gt;D:11&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(781, 1, '二战结束时日本的投降签字仪式在哪所战舰上进行：', 0, '', '', '&lt;p&gt;A:密苏里号&lt;/p&gt;&lt;p&gt;B:企业号&lt;/p&gt;&lt;p&gt;C:罗斯福号&lt;/p&gt;&lt;p&gt;D:黄蜂号&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(782, 1, '“百货商场”这个名词来源于哪？', 0, '', '', '&lt;p&gt;A:商品齐全&lt;/p&gt;&lt;p&gt;B:历史传说&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(783, 1, '诺曼底登陆发生于1944年：', 0, '', '', '&lt;p&gt;A:6月1日&lt;/p&gt;&lt;p&gt;B:6月6日&lt;/p&gt;&lt;p&gt;C:5月30日&lt;/p&gt;&lt;p&gt;D:5月27日&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(784, 1, '石达开最后兵败于：', 0, '', '', '&lt;p&gt;A:贵州省&lt;/p&gt;&lt;p&gt;B:四川省&lt;/p&gt;&lt;p&gt;C:湖南省&lt;/p&gt;&lt;p&gt;D:云南省&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(785, 1, '霸王龙生活在哪个时期？', 0, '', '', '&lt;p&gt;A:远古&lt;/p&gt;&lt;p&gt;B:三叠纪&lt;/p&gt;&lt;p&gt;C:侏罗纪&lt;/p&gt;&lt;p&gt;D:白垩纪&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(786, 1, '以下不是我国近代签定的不平等条约的是：', 0, '', '', '&lt;p&gt;A:尼布楚条约&lt;/p&gt;&lt;p&gt;B:满洲里条约&lt;/p&gt;&lt;p&gt;C:瑷珲条约&lt;/p&gt;&lt;p&gt;D:伊犁条约&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(787, 1, '故宫的“正大光明”匾额由（  ）书写。', 0, '', '', '&lt;p&gt;A:顺治皇帝&lt;/p&gt;&lt;p&gt;B:康熙皇帝&lt;/p&gt;&lt;p&gt;C:乾隆皇帝&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(788, 1, '第一个打破世界纪录的中国人是', 0, '', '', '&lt;p&gt;A:刘长春&lt;/p&gt;&lt;p&gt;B:许海峰&lt;/p&gt;&lt;p&gt;C:陈镜开&lt;/p&gt;&lt;p&gt;D:李富荣&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(789, 1, '是谁在1926年7月22日为处理英国退还部分庚子赔款而奔波？', 0, '', '', '&lt;p&gt;A:桑秋&lt;/p&gt;&lt;p&gt;B:洛迪克&lt;/p&gt;&lt;p&gt;C:胡适&lt;/p&gt;&lt;p&gt;D:徐悲洪&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(790, 1, '纪晓岚是我国哪个朝代上的才子', 0, '', '', '&lt;p&gt;A:唐朝&lt;/p&gt;&lt;p&gt;B:宋朝&lt;/p&gt;&lt;p&gt;C:明朝&lt;/p&gt;&lt;p&gt;D:清朝&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(791, 1, '在古代，谁采取“明修栈道，暗渡陈仓”的计策，平定三秦？', 0, '', '', '&lt;p&gt;A:萧何&lt;/p&gt;&lt;p&gt;B:韩信&lt;/p&gt;&lt;p&gt;C:张良&lt;/p&gt;&lt;p&gt;D:诸葛亮&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(792, 1, '迷你裙通常又称超短裙，可以说是裙装款式中的“长青树”，女性穿上这种裙子后既显示出青春魅力，又富有浓郁的时代感，你知道迷你裙是由_________国人发明的吗？', 0, '', '', '&lt;p&gt;A:美&lt;/p&gt;&lt;p&gt;B:英&lt;/p&gt;', 2, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(793, 1, '美国发动海湾战争的最根本目的是：', 0, '', '', '&lt;p&gt;A:打击恐怖势力&lt;/p&gt;&lt;p&gt;B:争夺石油资源&lt;/p&gt;&lt;p&gt;C:解放伊拉克人民被独裁的苦难&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(794, 1, '唐朝时的师子国是今天的：', 0, '', '', '&lt;p&gt;A:越南&lt;/p&gt;&lt;p&gt;B:伊朗&lt;/p&gt;&lt;p&gt;C:斯里兰卡&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(795, 1, '宋庆龄在什么时候从布鲁塞尔参加国际反帝同盟大会归来后满脸忧国忧民？', 0, '', '', '&lt;p&gt;A:1926年6月7日&lt;/p&gt;&lt;p&gt;B:1925年5月22日&lt;/p&gt;&lt;p&gt;C:1929年5月16日&lt;/p&gt;&lt;p&gt;D:1929年6月15日&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(796, 1, '“建元”是我国那个皇帝使用的年号', 0, '', '', '&lt;p&gt;A:秦皇帝&lt;/p&gt;&lt;p&gt;B:汉武帝&lt;/p&gt;&lt;p&gt;C:唐太宗&lt;/p&gt;&lt;p&gt;D:元太祖&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(797, 1, '世界最早的校园歌曲出现在', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:台湾&lt;/p&gt;&lt;p&gt;C:日本&lt;/p&gt;&lt;p&gt;D:英国&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(798, 1, '公元618－907年是我国古代哪个朝代', 0, '', '', '&lt;p&gt;A:宋&lt;/p&gt;&lt;p&gt;B:唐&lt;/p&gt;&lt;p&gt;C:汉&lt;/p&gt;&lt;p&gt;D:春秋&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(799, 1, '满汉全席始于_________年间，至今已二百余年。全席中热菜134道，冷荤48道及不计其数的点心、水果等。如此众多的菜肴，需分三天（六次）才能吃全。', 0, '', '', '&lt;p&gt;A:乾隆&lt;/p&gt;&lt;p&gt;B:康熙&lt;/p&gt;&lt;p&gt;C:雍正&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(800, 1, '1840年5月6日英国发行了世界上第一枚邮票，它被称为', 0, '', '', '&lt;p&gt;A:黑便士&lt;/p&gt;&lt;p&gt;B:红便士&lt;/p&gt;&lt;p&gt;C:蓝便士&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(801, 1, '第一个到达南极的人是哪国人？', 0, '', '', '&lt;p&gt;A:美国人&lt;/p&gt;&lt;p&gt;B:挪威人&lt;/p&gt;&lt;p&gt;C:英国人&lt;/p&gt;&lt;p&gt;D:俄国人&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(802, 1, '北京是（  ）命名的。', 0, '', '', '&lt;p&gt;A:元朝&lt;/p&gt;&lt;p&gt;B:明朝&lt;/p&gt;&lt;p&gt;C:清朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(803, 1, '世界上第一枚邮票诞生在', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:英国&lt;/p&gt;&lt;p&gt;C:法国&lt;/p&gt;&lt;p&gt;D:中国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(804, 1, '命名“好望角”的人是：', 0, '', '', '&lt;p&gt;A:哥伦布&lt;/p&gt;&lt;p&gt;B:麦哲伦&lt;/p&gt;&lt;p&gt;C:达伽马&lt;/p&gt;&lt;p&gt;D:迪亚士&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(805, 1, '中国清末最早的海军学堂是', 0, '', '', '&lt;p&gt;A:京师大学堂&lt;/p&gt;&lt;p&gt;B:船政学堂&lt;/p&gt;&lt;p&gt;C:武备学堂&lt;/p&gt;&lt;p&gt;D:水师学堂&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(806, 1, '伊拉克共和国成立于哪一年？', 0, '', '', '&lt;p&gt;A:1921年5月&lt;/p&gt;&lt;p&gt;B:1945年8月&lt;/p&gt;&lt;p&gt;C:1958年7月&lt;/p&gt;&lt;p&gt;D:1964年11月&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(807, 1, '以下哪位不属于唐宋八大家？', 0, '', '', '&lt;p&gt;A:苏洵&lt;/p&gt;&lt;p&gt;B:曾巩&lt;/p&gt;&lt;p&gt;C:杜牡&lt;/p&gt;&lt;p&gt;D:柳宗元&lt;/p&gt;&lt;p&gt;E:王安石&lt;/p&gt;', 5, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(808, 1, '到2003年4月2日为止，有群众用游行方式支持英美联军对伊拉克共和国采取军事行动的唯一一个国家是：', 0, '', '', '&lt;p&gt;A:美国&lt;/p&gt;&lt;p&gt;B:英国&lt;/p&gt;&lt;p&gt;C:伊朗&lt;/p&gt;&lt;p&gt;D:科威特&lt;/p&gt;&lt;p&gt;E:以色列&lt;/p&gt;', 5, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(809, 1, '我国最早的军校出现于', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:宋代&lt;/p&gt;&lt;p&gt;C:民国&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(810, 1, '哪位唐代诗人被后人称为“鬼才”？', 0, '', '', '&lt;p&gt;A:李贺&lt;/p&gt;&lt;p&gt;B:李商隐&lt;/p&gt;&lt;p&gt;C:李白&lt;/p&gt;&lt;p&gt;D:杜甫&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(811, 1, '我国最早创办海军学校的人是', 0, '', '', '&lt;p&gt;A:李鸿章&lt;/p&gt;&lt;p&gt;B:左宗堂&lt;/p&gt;&lt;p&gt;C:袁世凯&lt;/p&gt;&lt;p&gt;D:张之洞&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(812, 1, '三国演义中的吕布为什么杀死董卓', 0, '', '', '&lt;p&gt;A:美女&lt;/p&gt;&lt;p&gt;B:财宝&lt;/p&gt;&lt;p&gt;C:名马&lt;/p&gt;&lt;p&gt;D:权利&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(813, 1, '下列不属于“唐宋八大家”之一的是：', 0, '', '', '&lt;p&gt;A:韩愈&lt;/p&gt;&lt;p&gt;B:李白&lt;/p&gt;&lt;p&gt;C:曾巩&lt;/p&gt;&lt;p&gt;D:王安石&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(814, 1, '成为我国上世纪30年代文化革命的主将的是：', 0, '', '', '&lt;p&gt;A:周扬&lt;/p&gt;&lt;p&gt;B:鲁迅&lt;/p&gt;&lt;p&gt;C:郭沫若&lt;/p&gt;&lt;p&gt;D:史量才&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(815, 2, '近代中国反帝民族解放斗争的先导是以(   )为代表(多选)', 0, '', '', '&lt;p&gt;A:林则徐&lt;/p&gt;&lt;p&gt;B:曾国潘&lt;/p&gt;&lt;p&gt;C:魏源&lt;/p&gt;&lt;p&gt;D:张之洞&lt;/p&gt;', 4, 'AC', 'AC', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(816, 1, '人类最先使用的制造器具的金属是', 0, '', '', '&lt;p&gt;A:铁&lt;/p&gt;&lt;p&gt;B:铜&lt;/p&gt;&lt;p&gt;C:银&lt;/p&gt;&lt;p&gt;D:金&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(817, 1, '在中国近代史上，清政府同外国签订的不平等条约中，赔款最多的是：', 0, '', '', '&lt;p&gt;A:马关条约&lt;/p&gt;&lt;p&gt;B:辛丑条约&lt;/p&gt;&lt;p&gt;C:南京条约&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(818, 1, '战国七雄中，在春秋时期称过霸的是（  ）', 0, '', '', '&lt;p&gt;A:齐、赵、燕&lt;/p&gt;&lt;p&gt;B:齐、楚、秦&lt;/p&gt;&lt;p&gt;C:楚、韩、赵&lt;/p&gt;&lt;p&gt;D:越、魏、秦&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(819, 1, '在我国近代最早提出“振兴中华”口号的是：', 0, '', '', '&lt;p&gt;A:毛泽东&lt;/p&gt;&lt;p&gt;B:梁启超&lt;/p&gt;&lt;p&gt;C:孙中山&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(820, 1, '甲骨文的发明地是：', 0, '', '', '&lt;p&gt;A:安阳&lt;/p&gt;&lt;p&gt;B:南阳&lt;/p&gt;&lt;p&gt;C:信阳&lt;/p&gt;&lt;p&gt;D:洛阳&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(821, 1, '60年代哪个国家的宇航员首次登上月球？', 0, '', '', '&lt;p&gt;A:苏联&lt;/p&gt;&lt;p&gt;B:美国&lt;/p&gt;&lt;p&gt;C:中国&lt;/p&gt;&lt;p&gt;D:英国和法国&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(822, 1, '俄罗斯最后一位沙皇是谁：', 0, '', '', '&lt;p&gt;A:尼古拉一世&lt;/p&gt;&lt;p&gt;B:尼古拉二世&lt;/p&gt;&lt;p&gt;C:亚历山大一世&lt;/p&gt;&lt;p&gt;D:亚历山大二世&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(823, 1, '最早侵占中国领土的西方殖民者是（  ）', 0, '', '', '&lt;p&gt;A:日本&lt;/p&gt;&lt;p&gt;B:葡萄牙&lt;/p&gt;&lt;p&gt;C:荷兰&lt;/p&gt;&lt;p&gt;D:沙俄&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(824, 1, '世界上最早的齿孔邮票是哪个国家发行的？', 0, '', '', '&lt;p&gt;A:法国&lt;/p&gt;&lt;p&gt;B:匈牙利&lt;/p&gt;&lt;p&gt;C:英国&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(825, 1, '“乌纱帽”始自哪个朝代', 0, '', '', '&lt;p&gt;A:北宋&lt;/p&gt;&lt;p&gt;B:南宋&lt;/p&gt;&lt;p&gt;C:明世宗&lt;/p&gt;&lt;p&gt;D:唐朝&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(826, 1, '新春燃放爆竹的风俗始于', 0, '', '', '&lt;p&gt;A:秦代&lt;/p&gt;&lt;p&gt;B:汉代&lt;/p&gt;&lt;p&gt;C:唐代&lt;/p&gt;&lt;p&gt;D:宋代&lt;/p&gt;&lt;p&gt;E:元代&lt;/p&gt;&lt;p&gt;F:明代&lt;/p&gt;', 6, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(827, 1, '酸菜是我国北方人喜欢吃的经发酵变酸的白菜，源于', 0, '', '', '&lt;p&gt;A:辽宁&lt;/p&gt;&lt;p&gt;B:吉林&lt;/p&gt;&lt;p&gt;C:黑龙江&lt;/p&gt;&lt;p&gt;D:北京&lt;/p&gt;&lt;p&gt;E:河北&lt;/p&gt;&lt;p&gt;F:山东&lt;/p&gt;', 6, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(828, 1, '古陶的年代鉴别首先应该看', 0, '', '', '&lt;p&gt;A:纹样&lt;/p&gt;&lt;p&gt;B:器形&lt;/p&gt;&lt;p&gt;C:釉色&lt;/p&gt;&lt;p&gt;D:颜色&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(829, 1, '1990年8月伊拉克入侵科威特后，美国大规模出兵干预，即所谓“沙漠风暴”行动。美国采取这个行动的原因是（  ）', 0, '', '', '&lt;p&gt;A:美国人中主持正义&lt;/p&gt;&lt;p&gt;B:联合国要求美国这样做&lt;/p&gt;&lt;p&gt;C:美国和伊拉克是宿敌，伊拉克和行径使美国找到打击伊拉克的机会&lt;/p&gt;&lt;p&gt;D:美国要保护中东的石油资源并维持其在中东的霸权地位&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(830, 1, '我国现存最早的藏书楼宁波天一阁建成于哪个朝代？', 0, '', '', '&lt;p&gt;A:元朝&lt;/p&gt;&lt;p&gt;B:明朝&lt;/p&gt;&lt;p&gt;C:清朝&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(831, 1, '我国第一家通讯社中兴通讯社于1904年在哪座城市创办？', 0, '', '', '&lt;p&gt;A:上海&lt;/p&gt;&lt;p&gt;B:广州&lt;/p&gt;&lt;p&gt;C:天津&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(832, 1, '在古代唐朝的皇宫里，夏天由宫女推动高大的水车，将水洒到宫殿的房顶上，水再顺房四周流下，这样做的主要目的是', 0, '', '', '&lt;p&gt;A:为了新奇、美观&lt;/p&gt;&lt;p&gt;B:为了寻欢作乐&lt;/p&gt;&lt;p&gt;C:为了清洁房顶&lt;/p&gt;&lt;p&gt;D:为了解暑降温&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(833, 1, '西汉时，有一名将，前后七次率军出击匈奴，屡建奇功，死后被追封为“烈侯”，他是谁？', 0, '', '', '&lt;p&gt;A:李广&lt;/p&gt;&lt;p&gt;B:卫青&lt;/p&gt;&lt;p&gt;C:霍去病&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(834, 1, '公元222年，以少胜多，火烧连营七百里，大败刘备的吴国名将是谁？', 0, '', '', '&lt;p&gt;A:吕蒙&lt;/p&gt;&lt;p&gt;B:周瑜&lt;/p&gt;&lt;p&gt;C:陆逊&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(835, 1, '人类的第一张照片是什么时候诞生的？', 0, '', '', '&lt;p&gt;A:1788年&lt;/p&gt;&lt;p&gt;B:1802年&lt;/p&gt;&lt;p&gt;C:1826年&lt;/p&gt;&lt;p&gt;D:1843年&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(836, 1, '明朝最后一个皇帝崇祯皇帝的号是什么？', 0, '', '', '&lt;p&gt;A:明神宗&lt;/p&gt;&lt;p&gt;B:明英宗&lt;/p&gt;&lt;p&gt;C:明思宗&lt;/p&gt;&lt;p&gt;D:明宣宗&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(837, 1, '顺治七年（1650）底多尔衮死后，清世祖福临为了加强对八旗的控制，对八旗的顺序进行了调整。由皇帝控制的哪三旗，称为上三旗？', 0, '', '', '&lt;p&gt;A:镶黄、正黄、正白&lt;/p&gt;&lt;p&gt;B:正黄、正红、正白&lt;/p&gt;&lt;p&gt;C:正白、镶白、正蓝&lt;/p&gt;&lt;p&gt;D:正红、镶红、镶黄&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(838, 1, '下列哪个皇帝迁都北京？', 0, '', '', '&lt;p&gt;A:朱元璋&lt;/p&gt;&lt;p&gt;B:朱隶&lt;/p&gt;&lt;p&gt;C:朱由检&lt;/p&gt;&lt;p&gt;D:爱新觉罗。玄烨&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(839, 1, '“大禹治水”主要治理的是：', 0, '', '', '&lt;p&gt;A:泾水&lt;/p&gt;&lt;p&gt;B:渭水&lt;/p&gt;&lt;p&gt;C:黄河&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(840, 1, '欧元于何时正式诞生', 0, '', '', '&lt;p&gt;A:1998年12月31日&lt;/p&gt;&lt;p&gt;B:1999年1月1日&lt;/p&gt;&lt;p&gt;C:1999年12月31日&lt;/p&gt;&lt;p&gt;D:2000年1月1日&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(841, 1, '下面哪个皇帝率清兵入关？', 0, '', '', '&lt;p&gt;A:爱新觉罗.玄烨&lt;/p&gt;&lt;p&gt;B:爱新觉罗.弘历&lt;/p&gt;&lt;p&gt;C:爱新觉罗.努尔哈赤&lt;/p&gt;&lt;p&gt;D:爱新觉罗.福临&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(842, 1, '正月初一吃饺子这一习惯是从什么朝代开始', 0, '', '', '&lt;p&gt;A:唐&lt;/p&gt;&lt;p&gt;B:元&lt;/p&gt;&lt;p&gt;C:明&lt;/p&gt;&lt;p&gt;D:清&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(843, 1, '挥剑决浮云，诸侯尽西来是说那个皇帝的？', 0, '', '', '&lt;p&gt;A:汉武帝&lt;/p&gt;&lt;p&gt;B:汉高祖&lt;/p&gt;&lt;p&gt;C:秦始皇&lt;/p&gt;&lt;p&gt;D:唐太宗&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(844, 1, '世界上最早的温标为', 0, '', '', '&lt;p&gt;A:华氏温标&lt;/p&gt;&lt;p&gt;B:摄氏温标&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(845, 1, '我国在本国西部地区第一次成功地爆炸了一颗原子弹是在哪一年？', 0, '', '', '&lt;p&gt;A:1960年&lt;/p&gt;&lt;p&gt;B:1962年&lt;/p&gt;&lt;p&gt;C:1964年&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(846, 1, '下列哪个事件不是发生在20世纪50年代', 0, '', '', '&lt;p&gt;A:大跃进&lt;/p&gt;&lt;p&gt;B:三反五反&lt;/p&gt;&lt;p&gt;C:四清&lt;/p&gt;&lt;p&gt;D:批胡风&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(847, 1, '武则天是下面哪个皇帝的母亲？', 0, '', '', '&lt;p&gt;A:唐高宗&lt;/p&gt;&lt;p&gt;B:唐玄宗&lt;/p&gt;&lt;p&gt;C:唐中宗&lt;/p&gt;&lt;p&gt;D:唐太宗&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(848, 1, '我国封建法典中规定的“十恶”不赦大罪始于（　　　）', 0, '', '', '&lt;p&gt;A:《秦律》&lt;/p&gt;&lt;p&gt;B:《北齐律》&lt;/p&gt;&lt;p&gt;C:《唐律》&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(849, 1, '中国历史上开始有确切的纪年是哪一年？', 0, '', '', '&lt;p&gt;A:太初元年&lt;/p&gt;&lt;p&gt;B:共和元年　&lt;/p&gt;&lt;p&gt;C:太始元年&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(850, 1, '为自己立了一块《无字碑》，以供后人评说的古代政治家是谁？', 0, '', '', '&lt;p&gt;A:唐太宗&lt;/p&gt;&lt;p&gt;B:曹操&lt;/p&gt;&lt;p&gt;C:武则天&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(851, 1, '中国最早的院士产生于哪一年？', 0, '', '', '&lt;p&gt;A:1946&lt;/p&gt;&lt;p&gt;B:1948&lt;/p&gt;&lt;p&gt;C:1953&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(852, 1, '我国唐朝时，曾把‘希伯来”译为什么？', 0, '', '', '&lt;p&gt;A:匈奴&lt;/p&gt;&lt;p&gt;B:石忽&lt;/p&gt;&lt;p&gt;C:一赐乐业&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(853, 2, '谜语在清朝时又叫作（多选）', 0, '', '', '&lt;p&gt;A:谜子&lt;/p&gt;&lt;p&gt;B:藏头&lt;/p&gt;&lt;p&gt;C:切口&lt;/p&gt;&lt;p&gt;D:歇后&lt;/p&gt;', 4, 'AC', 'AC', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(854, 1, '清乾隆37年开始编纂的（　　），用十年编写成，包括了我国几千年的重要文化典籍，共25万多册。', 0, '', '', '&lt;p&gt;A:《资治通鉴》&lt;/p&gt;&lt;p&gt;B:《永乐大典》&lt;/p&gt;&lt;p&gt;C:《四库全书》&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(855, 1, '历史上出现的&quot;文景之治&quot;、&quot;贞观之治&quot;是运用了谁的贵清静思想原则', 0, '', '', '&lt;p&gt;A:孙子&lt;/p&gt;&lt;p&gt;B:老子&lt;/p&gt;&lt;p&gt;C:孟子&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(856, 1, '1921年来华积极帮助创建中国共产党的共产国际代表马林是哪国人？', 0, '', '', '&lt;p&gt;A:苏联人&lt;/p&gt;&lt;p&gt;B:德国人&lt;/p&gt;&lt;p&gt;C:荷兰人&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(857, 1, '1947年8月起至解放战争结束担任中央委总参谋长的是谁？', 0, '', '', '&lt;p&gt;A:周恩来&lt;/p&gt;&lt;p&gt;B:叶剑英&lt;/p&gt;&lt;p&gt;C:彭德怀&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(858, 1, '秋瑾是什么时期的著名女革命家？', 0, '', '', '&lt;p&gt;A:戍戌政变时期&lt;/p&gt;&lt;p&gt;B:辛亥革命时期&lt;/p&gt;&lt;p&gt;C:五四运动时期&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(859, 1, '火烧园明园事件发生于哪一年？', 0, '', '', '&lt;p&gt;A:1848年&lt;/p&gt;&lt;p&gt;B:1860年&lt;/p&gt;&lt;p&gt;C:1880年&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(860, 1, '中华人民共和国首都是北京。从哪个朝代起她就开始成为全国政治中心的历史？', 0, '', '', '&lt;p&gt;A:唐代&lt;/p&gt;&lt;p&gt;B:宋代&lt;/p&gt;&lt;p&gt;C:元代&lt;/p&gt;', 3, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(861, 1, '中国封建帝王即位时间最长的是哪位皇帝？', 0, '', '', '&lt;p&gt;A:唐太宗　李世民&lt;/p&gt;&lt;p&gt;B:宋仁宗　赵祯&lt;/p&gt;&lt;p&gt;C:明神宗　朱翊钧&lt;/p&gt;&lt;p&gt;D:清圣祖　玄烨&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(862, 1, '西安交大西迁始于（）年', 0, '', '', '&lt;p&gt;A:1956&lt;/p&gt;&lt;p&gt;B:1958&lt;/p&gt;&lt;p&gt;C:1960&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(863, 1, '春联正式起始于什么皇帝', 0, '', '', '&lt;p&gt;A:明太祖&lt;/p&gt;&lt;p&gt;B:宋太祖&lt;/p&gt;&lt;p&gt;C:唐太祖&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(864, 1, '&lt;&lt;人民日报&gt;&gt;创刊于', 0, '', '', '&lt;p&gt;A:五四时期&lt;/p&gt;&lt;p&gt;B:解放战争时期&lt;/p&gt;&lt;p&gt;C:抗日战争时期&lt;/p&gt;&lt;p&gt;D:国共十年对峙时期&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(865, 1, '&quot;东风不与周郎便,铜雀春深锁二乔&quot;写的是哪一场战役?', 0, '', '', '&lt;p&gt;A:赤壁之战&lt;/p&gt;&lt;p&gt;B:长勺之战&lt;/p&gt;', 2, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 1),
(866, 1, '我国最早的女史学家是?', 0, '', '', '&lt;p&gt;A:班昭&lt;/p&gt;&lt;p&gt;B:蔡琰&lt;/p&gt;&lt;p&gt;C:李清照&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(867, 1, '东汉末年农民起义领袖是哪一位?', 0, '', '', '&lt;p&gt;A:张角&lt;/p&gt;&lt;p&gt;B:李自成&lt;/p&gt;&lt;p&gt;C:黄巢&lt;/p&gt;', 3, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(868, 1, '世界上第一个发现地磁偏角中国人是：', 0, '', '', '&lt;p&gt;A:祖冲之&lt;/p&gt;&lt;p&gt;B:沈括&lt;/p&gt;&lt;p&gt;C:张衡&lt;/p&gt;', 3, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(869, 1, '人类第一次登月是在哪年？', 0, '', '', '&lt;p&gt;A:1965&lt;/p&gt;&lt;p&gt;B:1966&lt;/p&gt;&lt;p&gt;C:1969&lt;/p&gt;&lt;p&gt;D:1972&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(870, 1, '世界上第一辆自行车是由什么材料制成的？', 0, '', '', '&lt;p&gt;A:铁&lt;/p&gt;&lt;p&gt;B:铝&lt;/p&gt;&lt;p&gt;C:锌&lt;/p&gt;&lt;p&gt;D:木头&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(871, 1, '诸葛亮第六次伐魏时谁曾到营中诈降？', 0, '', '', '&lt;p&gt;A:岑威&lt;/p&gt;&lt;p&gt;B:郑文&lt;/p&gt;&lt;p&gt;C:秦明&lt;/p&gt;&lt;p&gt;D:杜睿&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(872, 1, '曹操为收买樊城百姓人心，派谁去说降刘备？', 0, '', '', '&lt;p&gt;A:蒋干&lt;/p&gt;&lt;p&gt;B:满宠&lt;/p&gt;&lt;p&gt;C:荀彧&lt;/p&gt;&lt;p&gt;D:徐庶&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(873, 1, '谁在葭萌关下挑灯夜斗，不分胜负？', 0, '', '', '&lt;p&gt;A:张飞-马超&lt;/p&gt;&lt;p&gt;B:张飞-马岱&lt;/p&gt;&lt;p&gt;C:赵云-马超&lt;/p&gt;&lt;p&gt;D:黄忠-马超&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(874, 1, '因暗杀未遂，被曹操断九指，割舌，分肢体而死的是谁？', 0, '', '', '&lt;p&gt;A:华佗&lt;/p&gt;&lt;p&gt;B:吉平&lt;/p&gt;&lt;p&gt;C:王子服&lt;/p&gt;&lt;p&gt;D:种辑&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(875, 1, '诸葛亮常自比管仲和谁？', 0, '', '', '&lt;p&gt;A:乐毅&lt;/p&gt;&lt;p&gt;B:张良&lt;/p&gt;&lt;p&gt;C:孙武&lt;/p&gt;&lt;p&gt;D:姜子牙&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(876, 1, '周瑜为何要派诸葛亮去聚铁山袭击曹军？', 0, '', '', '&lt;p&gt;A:借曹操子手杀死诸葛亮&lt;/p&gt;&lt;p&gt;B:探明曹军的军事部署&lt;/p&gt;&lt;p&gt;C:试探刘备的实力&lt;/p&gt;&lt;p&gt;D:试探诸葛亮的才智&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(877, 1, '谁曾因谏司马昭不可伐蜀而被杀？', 0, '', '', '&lt;p&gt;A:胡烈&lt;/p&gt;&lt;p&gt;B:夏侯咸&lt;/p&gt;&lt;p&gt;C:句安&lt;/p&gt;&lt;p&gt;D:邓敦&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(878, 1, '在第二次世界大战时期，当德军封锁列宁格勒的时候，有一条被称为“生命之路”的湖，它的命名字是什么：', 0, '', '', '&lt;p&gt;A:拉多加湖&lt;/p&gt;&lt;p&gt;B:贝加尔湖&lt;/p&gt;&lt;p&gt;C:伏尔加湖&lt;/p&gt;&lt;p&gt;D:涅瓦湖&lt;/p&gt;', 4, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(879, 1, '最近的一次俄罗斯全国性的人口普查是在哪一年：', 0, '', '', '&lt;p&gt;A:1992&lt;/p&gt;&lt;p&gt;B:1996&lt;/p&gt;&lt;p&gt;C:1999&lt;/p&gt;&lt;p&gt;D:2002&lt;/p&gt;', 4, 'D', 'D', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(880, 1, '普京什么时候当选俄罗斯总统，他是第几任：', 0, '', '', '&lt;p&gt;A:2001年，第二任&lt;/p&gt;&lt;p&gt;B:2000年，第三任&lt;/p&gt;&lt;p&gt;C:2000年，第二任&lt;/p&gt;&lt;p&gt;D:2002年，第三任&lt;/p&gt;', 4, 'C', 'C', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(881, 1, '在俄罗斯总共进行过几次车臣战争：', 0, '', '', '&lt;p&gt;A:1&lt;/p&gt;&lt;p&gt;B:2&lt;/p&gt;&lt;p&gt;C:3&lt;/p&gt;&lt;p&gt;D:4&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(882, 1, '包括我们地球在类的太阳系诞生于50亿年前，那么地球上的生命诞生于多少年前？', 0, '', '', '&lt;p&gt;A:40亿年前&lt;/p&gt;&lt;p&gt;B:20亿年前&lt;/p&gt;&lt;p&gt;C:10亿年前&lt;/p&gt;&lt;p&gt;D:1亿年前&lt;/p&gt;&lt;p&gt;E:500万年前&lt;/p&gt;', 5, 'A', 'A', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 3),
(883, 1, '人类诞生于多少年前？', 0, '', '', '&lt;p&gt;A:1亿年前&lt;/p&gt;&lt;p&gt;B:500万年前&lt;/p&gt;&lt;p&gt;C:100万年前&lt;/p&gt;&lt;p&gt;D:5千年前&lt;/p&gt;', 4, 'B', 'B', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1483279915, 1, '', 0, 0, 2),
(885, 1, '&lt;p&gt;asd&amp;nbsp;&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;asdas&amp;nbsp;&lt;/p&gt;', 4, 'A', '', '', 1483417538, 1, '', 1, 0, 0),
(886, 1, '&lt;p&gt;asdasdsadsad&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;asdsadsad&lt;/p&gt;', 4, 'A', '&lt;p&gt;asdasdasd&lt;/p&gt;', '', 1485101251, 1, '', 2, 0, 0),
(887, 1, '&lt;p&gt;s阿达撒旦撒打算的222&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;a撒旦撒打算打算&lt;/p&gt;', 4, '&lt;p&gt;A&lt;/p&gt;', '', '', 1486478140, 1, '', 0, 0, 1),
(888, 6, '&lt;p&gt;演示知识点&lt;/p&gt;', 1, 'peadmin', '', '', 4, '&lt;p&gt;演示知识点&lt;/p&gt;', '&lt;p&gt;演示知识点&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"演示知识点";}}', 1493997684, 1, '', 0, 0, 3),
(889, 1, '&lt;p&gt;11111&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;11111&lt;/p&gt;', 4, '', '&lt;p&gt;111&lt;/p&gt;', '', 1495089106, 1, '', 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questype`
--

CREATE TABLE IF NOT EXISTS `x2_questype` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `questype` varchar(60) NOT NULL DEFAULT '',
  `questsort` int(1) NOT NULL DEFAULT '0',
  `questchoice` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`),
  KEY `questchoice` (`questchoice`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `x2_questype`
--

INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES
(1, '单选题', 0, 1),
(2, '多选题', 0, 2),
(3, '判断题', 0, 4),
(4, '定值填空', 0, 5),
(5, '填空题', 1, 2),
(6, '问答题', 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `x2_record`
--

CREATE TABLE IF NOT EXISTS `x2_record` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `recordquestionid` int(11) NOT NULL DEFAULT '0',
  `recorduserid` int(11) NOT NULL DEFAULT '0',
  `recordquestion` text NOT NULL,
  `recordtime` int(11) NOT NULL DEFAULT '0',
  `recordsubjectid` int(11) NOT NULL DEFAULT '0',
  `recordknowsid` int(11) NOT NULL DEFAULT '0',
  `recordquestype` int(11) NOT NULL DEFAULT '0',
  `recordexamid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recordid`),
  KEY `recordquestionid` (`recordquestionid`,`recorduserid`,`recordtime`),
  KEY `recordsubjectid` (`recordsubjectid`,`recordknowsid`,`recordquestype`),
  KEY `recordexamid` (`recordexamid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_reply`
--

CREATE TABLE IF NOT EXISTS `x2_reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `replyuserid` int(11) NOT NULL DEFAULT '0',
  `replyusername` varchar(120) NOT NULL DEFAULT '',
  `replycommentid` int(11) NOT NULL DEFAULT '0',
  `replytime` int(11) NOT NULL DEFAULT '0',
  `replycontent` text NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_sections`
--

CREATE TABLE IF NOT EXISTS `x2_sections` (
  `sectionid` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(120) NOT NULL DEFAULT '',
  `sectionsubjectid` int(11) NOT NULL DEFAULT '0',
  `sectiondescribe` text NOT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `section` (`section`),
  KEY `sectionsubjectid` (`sectionsubjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `x2_sections`
--

INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`) VALUES
(1, '演示章节', 1, ''),
(5, '测试章节二', 2, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_seminar`
--

CREATE TABLE IF NOT EXISTS `x2_seminar` (
  `seminarid` int(11) NOT NULL AUTO_INCREMENT,
  `seminartitle` varchar(240) NOT NULL DEFAULT '',
  `seminarcatid` int(11) NOT NULL DEFAULT '0',
  `seminarthumb` varchar(240) NOT NULL DEFAULT '',
  `seminargallery` tinytext NOT NULL,
  `seminartpl` varchar(120) NOT NULL DEFAULT '',
  `seminaruserid` int(11) NOT NULL DEFAULT '0',
  `seminarusername` varchar(120) NOT NULL DEFAULT '',
  `seminardescribe` text NOT NULL,
  `seminartime` int(11) NOT NULL DEFAULT '0',
  `seminarstatus` int(1) NOT NULL DEFAULT '0',
  `seminarsequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seminarid`),
  KEY `seminarcatid` (`seminarcatid`),
  KEY `seminarstatus` (`seminarstatus`),
  KEY `seminartime` (`seminartime`),
  KEY `seminarsequence` (`seminarsequence`),
  KEY `seminaruserid` (`seminaruserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_session`
--

CREATE TABLE IF NOT EXISTS `x2_session` (
  `sessionid` varchar(32) NOT NULL,
  `sessionuserid` int(11) NOT NULL DEFAULT '0',
  `sessionusername` varchar(120) NOT NULL DEFAULT '',
  `sessionpassword` varchar(32) NOT NULL DEFAULT '',
  `sessionip` varchar(24) NOT NULL DEFAULT '',
  `sessionmanage` tinyint(1) DEFAULT '0',
  `sessiongroupid` tinyint(4) NOT NULL DEFAULT '0',
  `sessioncurrent` varchar(16) NOT NULL DEFAULT '',
  `sessionrandcode` char(6) NOT NULL DEFAULT '',
  `sessionlogintime` int(11) NOT NULL DEFAULT '0',
  `sessiontimelimit` int(11) NOT NULL DEFAULT '0',
  `sessionlasttime` int(11) NOT NULL DEFAULT '0',
  `sessionmaster` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `sessionlasttime` (`sessionlasttime`),
  KEY `sessioncurrent` (`sessioncurrent`),
  KEY `sessionmaster` (`sessionmaster`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_special`
--

CREATE TABLE IF NOT EXISTS `x2_special` (
  `specialid` int(11) NOT NULL AUTO_INCREMENT,
  `contentspecialid` int(11) NOT NULL DEFAULT '0',
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  PRIMARY KEY (`specialid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`),
  KEY `contentspecialid` (`contentspecialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_specialsort`
--

CREATE TABLE IF NOT EXISTS `x2_specialsort` (
  `sortid` int(11) NOT NULL AUTO_INCREMENT,
  `sorttitle` varchar(240) NOT NULL DEFAULT '',
  `sortthumb` varchar(120) NOT NULL DEFAULT '',
  `sorttpl` varchar(24) NOT NULL DEFAULT '',
  `sortseminarid` int(11) NOT NULL DEFAULT '0',
  `sortsequence` int(11) NOT NULL DEFAULT '0',
  `sortdescribe` text NOT NULL,
  PRIMARY KEY (`sortid`),
  KEY `sortseminarid` (`sortseminarid`,`sortsequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_subject`
--

CREATE TABLE IF NOT EXISTS `x2_subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `subjectsetting` text NOT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `x2_subject`
--

INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES
(1, '演示课程', 'a:1:{s:9:"questypes";a:4:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:6;s:1:"1";}}'),
(2, '测试科目二', 'a:1:{s:9:"questypes";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user`
--

CREATE TABLE IF NOT EXISTS `x2_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `useropenid` varchar(48) NOT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `useremail` varchar(60) NOT NULL DEFAULT '',
  `userpassword` char(32) NOT NULL DEFAULT '',
  `usercoin` int(11) NOT NULL DEFAULT '0',
  `userregip` varchar(24) NOT NULL DEFAULT '',
  `userregtime` int(11) NOT NULL DEFAULT '0',
  `userlogtime` int(11) NOT NULL DEFAULT '0',
  `usergroupid` tinyint(4) NOT NULL DEFAULT '0',
  `usermoduleid` int(11) NOT NULL DEFAULT '0',
  `manager_apps` varchar(240) NOT NULL,
  `photo` varchar(120) NOT NULL DEFAULT '',
  `usertruename` varchar(24) NOT NULL DEFAULT '',
  `normal_favor` varchar(250) NOT NULL DEFAULT '',
  `teacher_subjects` text NOT NULL,
  `userischeck` int(1) NOT NULL,
  `userprofile` text NOT NULL,
  `usersequence` int(11) NOT NULL,
  `userreferrer` int(11) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`),
  KEY `username` (`username`),
  KEY `module` (`usercoin`),
  KEY `userregtime` (`userregtime`),
  KEY `usermoduleid` (`usermoduleid`),
  KEY `userlogtime` (`userlogtime`),
  KEY `useropenid` (`useropenid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `x2_user`
--

INSERT INTO `x2_user` (`userid`, `useropenid`, `username`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `usergroupid`, `usermoduleid`, `manager_apps`, `photo`, `usertruename`, `normal_favor`, `teacher_subjects`, `userischeck`, `userprofile`, `usersequence`, `userreferrer`) VALUES
(1, '', 'peadmin', '958074@163.com', '244153a2599be7685c32d2281f57ae67', 809, '127.0.0.1', 1471795200, 0, 1, 0, 'a:6:{i:0;s:4:"user";i:1;s:7:"content";i:2;s:4:"exam";i:3;s:8:"document";i:4;s:6:"course";i:5;s:4:"bank";}', 'files/attach/images/content/20170628/14986180757806.jpg', 'test', '', '', 0, '', 2, 0),
(2, '', '教师管理员', '958074@126.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1471795200, 0, 9, 0, '', 'app/core/styles/img/noimage.gif', '', '', 'a:1:{i:0;s:1:"1";}', 0, '', 0, 0),
(3, '', 'aboboli', '', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1489046159, 0, 8, 0, '', '', '阿卜卜', '', '', 0, '', 0, 0),
(4, '', 'wmlzjs', 'arris@qq.com', '30d3aee234b10c1e6a0eab1262ce917d', 0, '127.0.0.1', 1490184419, 0, 8, 0, '', '', '', '', '', 0, '', 0, 0),
(5, '', 'xiaodouya', 'xiaodouya@163.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1492619421, 0, 8, 0, '', '', '', '', '', 0, '', 0, 0),
(6, '', 'xiaoluobo', 'xiaoluobo@163.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1492619694, 0, 8, 0, '', '', '问题2', '', '', 1, '', 0, 0),
(7, '', '18738317214', '410782198502140077', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1492670532, 0, 8, 0, '', '', '问题1', '', '', 1, '', 0, 0),
(9, '', 'zzl', 'zzl@seactl.com', 'a73957f4597bf809a0282daaa1f428a3', 0, '127.0.0.1', 1494210327, 0, 8, 0, '', '', '', '', '', 0, '', 0, 0),
(10, '', 'chenhua', 'chenhua@seactrl.com', '814444127604540e1fba1e28ea85b181', 0, '127.0.0.1', 1494210327, 0, 8, 0, '', '', '', '', '', 0, '', 0, 0),
(11, '', 'lyx', 'lyx@seactrl.com', '24039cd1651b80de0570fddf3e5e6036', 0, '127.0.0.1', 1494210327, 0, 8, 0, '', 'app/core/styles/img/noimage.gif', '', '', '', 0, '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_user_group`
--

CREATE TABLE IF NOT EXISTS `x2_user_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `groupmoduleid` tinyint(4) NOT NULL DEFAULT '0',
  `groupdescribe` tinytext NOT NULL,
  `groupright` text NOT NULL,
  `groupmoduledefault` int(1) NOT NULL DEFAULT '0',
  `groupdefault` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `groupname` (`groupname`,`groupmoduleid`),
  KEY `groupmoduledefault` (`groupmoduledefault`),
  KEY `groupdefault` (`groupdefault`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `x2_user_group`
--

INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES
(1, '管理员', 1, '管理员', '', 1, 0),
(8, '普通用户', 9, '普通用户', '', 0, 1),
(9, '教师', 12, '教师', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
