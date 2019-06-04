-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 11:09:55
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL COMMENT '用户ID',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `user_pwd` varchar(255) NOT NULL COMMENT '密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `user_name`, `user_pwd`) VALUES
(1, 'zhangsan', '123456'),
(2, 'lisi', 'qwerty'),
(3, 'air', '123456'),
(4, 'wangwu', 'qazx12'),
(5, 'zhaoliu', '123qwe'),
(6, 'zhao', '122334'),
(7, '12344', '2323'),
(8, '', ''),
(9, 'zhangsan@qq.com', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` double NOT NULL COMMENT '商品价格',
  `num` int(30) NOT NULL COMMENT '商品库存',
  `picture` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `picture`, `details`) VALUES
(1, 'Apple Macbook Pro 13.3【带触控栏】Core i5 8G 256G SSD 深空灰 苹果笔记本电脑 轻薄本 MR9Q2CH/A', 12499, 66, '[{"title":"small","src":"/images/p01-0.jpg"},{"title":"big","src":"/images/p01-1.jpg"}]', '<h1>商品详情描述</h1>'),
(2, 'Apple Macbook Pro 13.3【无触控栏】Core i5 8G 128G SSD 银色 苹果笔记本电脑 轻薄本 MPXR2CH/A', 9099, 79, '[{https://img14.360buyimg.com/n0/jfs/t1/21951/13/3055/154601/5c234e1cE7ec26f8b/df432157f93e1278.jpg},{https://img14.360buyimg.com/n0/jfs/t1/29855/34/3055/106504/5c234ed1E555c0c57/c77aab3715b1330d.jpg}]', '商品名称：AppleMPXR2CH/A\r\n系统：MAC\r\n内存容量：8G\r\n处理器：Intel 其他\r\n硬盘容量：128G固态'),
(3, 'Apple MacBook Air 13.3 | 2018款Retina Core i5 8G 128G SSD 银色 苹果笔记本电脑 轻薄本 MREA2CH/A', 8699, 34, '[{"src":"https://img14.360buyimg.com/n0/jfs/t1/3796/23/13488/146183/5bd8a3f5E4062cffd/153210ae11da3aaa.jpg"},{"src":"https://img14.360buyimg.com/n0/jfs/t1/7466/8/3902/23391/5bd8a3fdEc901747f/2bb7d95feea130ff.jpg"}]', '商品名称：AppleMacBook Air\r\n系统：其他\r\n处理器：Intel 其他\r\n内存容量：8G'),
(4, 'Apple MacBook Air 13.3 | Core i5 8G 256G SSD 银色 苹果笔记本电脑 轻薄本 Z0UU00056原MQD42CH/A', 7188, 100, '[{"src":"https://img14.360buyimg.com/n0/jfs/t1/20264/11/2997/167543/5c231efeEa139f83d/a2ad5e2122fb9cce.jpg"},{"src":"https://img14.360buyimg.com/n0/jfs/t1/10556/22/6570/118262/5c231f04Eb5e743f9/e838666adb1edf04.jpg"}]', '内存容量：8G\r\n硬盘容量：256G固态\r\n待机时长：9小时以上'),
(5, 'Apple Macbook Pro 15.4【带触控栏】Core i7 16G 256G RP555X 深空灰 苹果笔记本电脑 轻薄本 MR932CH/A', 17499, 88, '[{"src":"https://img14.360buyimg.com/n0/jfs/t19960/20/1662777286/277967/615ccafb/5b4f0dd7Nf3eb96b8.jpg"},{"src":"https://img14.360buyimg.com/n0/jfs/t23212/240/1049590393/117739/fe939687/5b4f0dcfNd58d6625.jpg"}]', '商品名称：AppleMacBook Pro\r\n特性：背光键盘，其他\r\n显卡类别：集成显卡\r\n硬盘容量：256G固态'),
(6, 'Apple Macbook Pro 15.4【带触控栏】Core i7 16G 512G RP560X 银色 苹果笔记本电脑轻薄本工作站MR972CH/A', 19499, 120, '[{"src":"https://img14.360buyimg.com/n0/jfs/t1/11563/29/3866/159586/5c2329c8E0f30ab16/059172d9637b2933.jpg"},{"src":"https://img14.360buyimg.com/n0/jfs/t1/26541/10/3046/106364/5c2329dbEfa4025b5/7efc936552f07453.jpg"}]', '内存容量：16G\r\n硬盘容量：512G固态\r\n分辨率：超高清屏（2K/3k/4K)\r\n特性：窄边框，背光键盘，指纹识别...');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `price` double NOT NULL COMMENT '商品价格',
  `num` int(30) NOT NULL COMMENT '商品库存',
  `details` varchar(255) NOT NULL COMMENT '商品详情',
  `user` varchar(255) NOT NULL COMMENT '用户名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`id`, `title`, `pic`, `price`, `num`, `details`, `user`) VALUES
(1001, 'nike跑步鞋 出一双nike跑步鞋  去年九月于南京江宁万达商场nike专柜购入', '[{"one":"../img/1-0.jpg"},{"two":"../img/1-0.jpg"},{"three":"../img/1-0.jpg"}]', 209.3, 1, '出一双nike跑步鞋 去年九月于南京江宁万达商场nike专柜购入 保证正品 鞋盒还在 大概八成新吧 穿的次数不算太多 适合春夏秋季 网面的 如有需要可拍实物图 非常干净', '丁***4'),
(1002, 'iPhone各种修 承接各种iPhone维修', '[{"one":"../img/2-0.png"},{"two":"../img/2-1.jpg"},{"three":"../img/2-2.jpg"}]', 70, 10, '承接各种iPhone维修。进水、摔坏。各种疑难杂症丢过来。各种搬板。天津市南开区鞍山西道时代数码广场4楼A005，谢鹏，13902177699、wx同号。', 't***5'),
(1003, '大喜自制2018春秋新款复古纯色夹克港风显瘦', '[{"one":"../img/3-0.jpg"},{"two":"../img/3-1.jpg"},{"three":"../img/3-0.jpg"}]', 31.18, 2, '颜色分类连衣裙-银灰蓝,尺码S', 't***2'),
(1004, '天然兔毛水晶', '[{"one":"../img/4-0.jpg"},{"two":"../img/4-1.jpg"},{"three":"../img/4-2.jpg"}]', 47.6, 5, '天然红兔毛手链，又称“维纳斯水晶”。 能补充三轮的能量，可以加强身体的活力，魅力和亲和力，活血抗衰老。能唤醒并开启能量脉轮，增加健康和运气。能激发斗志，增强自信心，使人静心宁神。可招财避浊气，可以起到护身符的作用。 尺寸约7mm左右', 'T***6'),
(1005, '星巴克爱丽丝dannijo安娜苏 环保袋帆布袋联名款礼袋保温', '[{"one":"../img/5-0.jpg"},{"two":"../img/5-1.jpg"},{"three":"../img/5-2.jpg"}]', 52.5, 6, '新品，没用过，75包邮要的来，不讲价', 'm***姐'),
(1006, '万代 shf 暴雪机器人 红爹 全新 不包', '[{"one":"../img/6-0.jpg"},{"two":"../img/6-0.jpg"},{"three":"../img/6-0.jpg"}]', 600, 6, '感兴趣的话给我留言吧！', 't***9'),
(1007, '自用飞利浦239C4Q显示器', '[{"one":"../img/7-0.jpg"},{"two":"../img/7-0.jpg"},{"three":"../img/7-0.jpg"}]', 300, 3, '换大的了，淘汰下来一个，自用很爱惜的，ips led屏幕，23寸，性价比高', 'm***3'),
(1008, '【正品支持鉴定】Nike 空军一号 36码', '[{"one":"../img/8-0.jpg"},{"two":"../img/8-1.jpg"},{"three":"../img/8-2.jpg"}]', 420, 5, '品牌型号:Nike af1 空军一号 36码新旧程度:95新个人最近比较缺钱才决定把这双鞋卖了这双鞋百搭真的没话说关键是很好看支持各大鉴定.可以小刀', '谭***8'),
(1009, 'sacai x nike 40码全新可面交', '[{"one":"../img/9-0.jpg"},{"two":"../img/9-1.jpg"},{"three":"../img/9-2.jpg"}]', 2800, 3, '如题，本人在北京中国传媒大学，可当面线下用毒鉴定，鉴定费我出，全新，打开过鞋盒看过一眼鞋子，没有试穿，鞋底干净，最外面那个快递寄过来的nike snkrs的快递纸箱子不小心打泼了一点洗衣液在上面，不过里面的橙色鞋盒和鞋子没有影响，要是在意快递盒的慎拍，有想法的私聊我噢', '田***n'),
(1010, '正品古着Nike耐克宽松多口袋束脚工装裤男女情侣装学生卫裤长裤潮', '[{"one":"../img/10-0.jpg"},{"two":"../img/10-1.jpg"},{"three":"../img/10-2.jpg"}]', 44, 6, '正品古着Nike耐克宽松多口袋束脚工装裤男女情侣装学生卫裤长裤潮', '只***笑');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_email` varchar(30) NOT NULL COMMENT '邮箱',
  `user_pwd` varchar(30) NOT NULL COMMENT '密码',
  `user_sex` tinyint(2) NOT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pwd`, `user_sex`) VALUES
(10001, 'zhangsan', 'zhangsan@163.com', '1234567', 1),
(10002, 'lisi', 'lisi@163.com', '123456', 1),
(10003, 'wangwu', 'wangwu@163.com', '123456', 1),
(10009, 'air', 'air123@qq.com', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=1011;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=10010;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
