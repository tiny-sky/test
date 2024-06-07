-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmb59p1
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-04-06 16:45:33',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-06 16:45:33',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-06 16:45:33',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-06 16:45:33',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-06 16:45:33',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-06 16:45:33',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='在线留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-04-06 16:45:33',1,1,'提问1','回复1',1),(82,'2021-04-06 16:45:33',2,2,'提问2','回复2',2),(83,'2021-04-06 16:45:33',3,3,'提问3','回复3',3),(84,'2021-04-06 16:45:33',4,4,'提问4','回复4',4),(85,'2021-04-06 16:45:33',5,5,'提问5','回复5',5),(86,'2021-04-06 16:45:33',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmb59p1/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmb59p1/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmb59p1/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingpiaoxinxi`
--

DROP TABLE IF EXISTS `dingpiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingpiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingpiaodingdan` varchar(200) DEFAULT NULL COMMENT '订票订单',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `fangyingshijian` varchar(200) DEFAULT NULL COMMENT '放映时间',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `zhifujiage` varchar(200) DEFAULT NULL COMMENT '支付价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `goupiaoxuzhi` varchar(200) DEFAULT NULL COMMENT '购票须知',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingpiaodingdan` (`dingpiaodingdan`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingpiaoxinxi`
--

LOCK TABLES `dingpiaoxinxi` WRITE;
/*!40000 ALTER TABLE `dingpiaoxinxi` DISABLE KEYS */;
INSERT INTO `dingpiaoxinxi` VALUES (51,'2021-04-06 16:45:33','订票订单1','电影名称1','放映时间1','放映厅1',1,'票价1','支付价格1','用户账号1','用户姓名1','用户手机1','购票须知1','未支付',99.9,20,'1,3,5,7,9'),(52,'2021-04-06 16:45:33','订票订单2','电影名称2','放映时间2','放映厅2',2,'票价2','支付价格2','用户账号2','用户姓名2','用户手机2','购票须知2','未支付',99.9,20,'1,3,5,7,9'),(53,'2021-04-06 16:45:33','订票订单3','电影名称3','放映时间3','放映厅3',3,'票价3','支付价格3','用户账号3','用户姓名3','用户手机3','购票须知3','未支付',99.9,20,'1,3,5,7,9'),(54,'2021-04-06 16:45:33','订票订单4','电影名称4','放映时间4','放映厅4',4,'票价4','支付价格4','用户账号4','用户姓名4','用户手机4','购票须知4','未支付',99.9,20,'1,3,5,7,9'),(55,'2021-04-06 16:45:33','订票订单5','电影名称5','放映时间5','放映厅5',5,'票价5','支付价格5','用户账号5','用户姓名5','用户手机5','购票须知5','未支付',99.9,20,'1,3,5,7,9'),(56,'2021-04-06 16:45:33','订票订单6','电影名称6','放映时间6','放映厅6',6,'票价6','支付价格6','用户账号6','用户姓名6','用户手机6','购票须知6','未支付',99.9,20,'1,3,5,7,9');
/*!40000 ALTER TABLE `dingpiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusspiaowuxinxi`
--

DROP TABLE IF EXISTS `discusspiaowuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusspiaowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='票务信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusspiaowuxinxi`
--

LOCK TABLES `discusspiaowuxinxi` WRITE;
/*!40000 ALTER TABLE `discusspiaowuxinxi` DISABLE KEYS */;
INSERT INTO `discusspiaowuxinxi` VALUES (141,'2021-04-06 16:45:33',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-06 16:45:33',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-06 16:45:33',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-06 16:45:33',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-06 16:45:33',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-06 16:45:33',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusspiaowuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinpianyugao`
--

DROP TABLE IF EXISTS `discussxinpianyugao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinpianyugao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727972415 DEFAULT CHARSET=utf8 COMMENT='新片预告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinpianyugao`
--

LOCK TABLES `discussxinpianyugao` WRITE;
/*!40000 ALTER TABLE `discussxinpianyugao` DISABLE KEYS */;
INSERT INTO `discussxinpianyugao` VALUES (151,'2021-04-06 16:45:33',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-06 16:45:33',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-06 16:45:33',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-06 16:45:33',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-06 16:45:33',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-06 16:45:33',6,6,'用户名6','评论内容6','回复内容6'),(1617727953453,'2021-04-06 16:52:32',43,1617727934110,NULL,'测试',NULL),(1617727972414,'2021-04-06 16:52:51',1617727719477,1617727934110,NULL,'好看',NULL);
/*!40000 ALTER TABLE `discussxinpianyugao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyingshijian`
--

DROP TABLE IF EXISTS `fangyingshijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyingshijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727617755 DEFAULT CHARSET=utf8 COMMENT='放映时间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyingshijian`
--

LOCK TABLES `fangyingshijian` WRITE;
/*!40000 ALTER TABLE `fangyingshijian` DISABLE KEYS */;
INSERT INTO `fangyingshijian` VALUES (71,'2021-04-06 16:45:33','00:00'),(73,'2021-04-06 16:45:33','时间3'),(74,'2021-04-06 16:45:33','时间4'),(75,'2021-04-06 16:45:33','时间5'),(1617727610707,'2021-04-06 16:46:49','10:30'),(1617727617754,'2021-04-06 16:46:57','12:30');
/*!40000 ALTER TABLE `fangyingshijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyingting`
--

DROP TABLE IF EXISTS `fangyingting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='放映厅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyingting`
--

LOCK TABLES `fangyingting` WRITE;
/*!40000 ALTER TABLE `fangyingting` DISABLE KEYS */;
INSERT INTO `fangyingting` VALUES (31,'2021-04-06 16:45:33','1号厅-杜比全景影像'),(32,'2021-04-06 16:45:33','2号厅'),(33,'2021-04-06 16:45:33','类型3'),(34,'2021-04-06 16:45:33','类型4'),(35,'2021-04-06 16:45:33','类型5'),(36,'2021-04-06 16:45:33','6号厅');
/*!40000 ALTER TABLE `fangyingting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617728038736 DEFAULT CHARSET=utf8 COMMENT='官方公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-04-06 16:45:33','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-04-06 16:45:33','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-04-06 16:45:33','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-04-06 16:45:33','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-04-06 16:45:33','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-04-06 16:45:33','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617728038735,'2021-04-06 16:53:58','每美队大战变形酱缸','<p>啊叭叭叭叭叭叭</p>',0,1617727934110,'123','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerenriji`
--

DROP TABLE IF EXISTS `gerenriji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerenriji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `rijibiaoti` varchar(200) DEFAULT NULL COMMENT '日记标题',
  `rijineirong` longtext COMMENT '日记内容',
  `shijian` date DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='个人日记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerenriji`
--

LOCK TABLES `gerenriji` WRITE;
/*!40000 ALTER TABLE `gerenriji` DISABLE KEYS */;
INSERT INTO `gerenriji` VALUES (61,'2021-04-06 16:45:33','用户账号1','日记标题1','日记内容1','2021-04-07'),(62,'2021-04-06 16:45:33','用户账号2','日记标题2','日记内容2','2021-04-07'),(63,'2021-04-06 16:45:33','用户账号3','日记标题3','日记内容3','2021-04-07'),(64,'2021-04-06 16:45:33','用户账号4','日记标题4','日记内容4','2021-04-07'),(65,'2021-04-06 16:45:33','用户账号5','日记标题5','日记内容5','2021-04-07'),(66,'2021-04-06 16:45:33','用户账号6','日记标题6','日记内容6','2021-04-07');
/*!40000 ALTER TABLE `gerenriji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727893853 DEFAULT CHARSET=utf8 COMMENT='影视新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2021-04-06 16:45:33','超级谍战大片','可真姐好看','http://localhost:8080/jspmb59p1/upload/news_picture1.jpg','测试\r\n'),(132,'2021-04-06 16:45:33','标题2','简介2','http://localhost:8080/jspmb59p1/upload/news_picture2.jpg','内容2'),(133,'2021-04-06 16:45:33','标题3','简介3','http://localhost:8080/jspmb59p1/upload/news_picture3.jpg','内容3'),(134,'2021-04-06 16:45:33','标题4','简介4','http://localhost:8080/jspmb59p1/upload/news_picture4.jpg','内容4'),(1617727893852,'2021-04-06 16:51:33','蓝忘记','测试','http://localhost:8080/jspmb59p1/upload/1617727886827.jpg','测试\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dingpiaoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617728076992 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1617728011048,'2021-04-06 16:53:30','2021470532675888573','piaowuxinxi',1617727934110,22,'测试','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao2.jpg',1,39.88,39.88,39.88,39.88,1,'已支付','1',NULL,NULL),(1617728076991,'2021-04-06 16:54:36','2021470543238006136','piaowuxinxi',1617727934110,1617727841488,'武士','http://localhost:8080/jspmb59p1/upload/1617727801264.jpg',1,28.99,28.99,28.99,28.99,1,'已支付','1',NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piaowuxinxi`
--

DROP TABLE IF EXISTS `piaowuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piaowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yanyuan` varchar(200) DEFAULT NULL COMMENT '演员',
  `shangyingshijian` varchar(200) DEFAULT NULL COMMENT '上映时间',
  `jianjie` longtext COMMENT '简介',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `fangyingshijian` varchar(200) DEFAULT NULL COMMENT '放映时间',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `yingyuandizhi` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `goupiaoxuzhi` varchar(200) DEFAULT NULL COMMENT '购票须知',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727841489 DEFAULT CHARSET=utf8 COMMENT='票务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piaowuxinxi`
--

LOCK TABLES `piaowuxinxi` WRITE;
/*!40000 ALTER TABLE `piaowuxinxi` DISABLE KEYS */;
INSERT INTO `piaowuxinxi` VALUES (22,'2021-04-06 16:45:33','测试','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao2.jpg','测试','测试','2018年5月10日','ces 测试\r\n','3D电影','1号厅-杜比全景影像','12:30','http://localhost:8080/jspmb59p1/upload/1617727751493.mp4','测试','特惠购票，一经售出概不退款','未支付',3,2,7,39.88,20,',1'),(23,'2021-04-06 16:45:33','电影名称3','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao3.jpg','导演3','演员3','上映时间3','简介3','3D电影','放映厅3','放映时间3','','影院地址3','购票须知3','未支付',3,3,3,99.9,20,'1,3,5,7,9'),(24,'2021-04-06 16:45:33','电影名称4','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao4.jpg','导演4','演员4','上映时间4','简介4','3D电影','放映厅4','放映时间4','','影院地址4','购票须知4','未支付',4,4,4,99.9,20,'1,3,5,7,9'),(25,'2021-04-06 16:45:33','电影名称5','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao5.jpg','导演5','演员5','上映时间5','简介5','3D电影','放映厅5','放映时间5','','影院地址5','购票须知5','未支付',5,5,5,99.9,20,'1,3,5,7,9'),(26,'2021-04-06 16:45:33','电影名称6','http://localhost:8080/jspmb59p1/upload/piaowuxinxi_haibao6.jpg','导演6','演员6','上映时间6','简介6','3D电影','放映厅6','放映时间6','','影院地址6','购票须知6','未支付',6,6,6,99.9,20,'1,3,5,7,9'),(1617727841488,'2021-04-06 16:50:40','武士','http://localhost:8080/jspmb59p1/upload/1617727801264.jpg','测试','武士','2020年1月2日','下次一定\r\n','2D电影','6号厅','00:00','http://localhost:8080/jspmb59p1/upload/1617727823373.mp4','测试','特惠购票，一经售出概不退款','未支付',0,0,2,28.99,30,',1');
/*!40000 ALTER TABLE `piaowuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','pxegj3lyf107edj14hoyi4rjg8wmy7ja','2021-04-06 16:46:17','2021-04-06 17:46:18'),(2,1617727934110,'123','yonghu','用户','gsq7zjcbpmqyh9u66ncr9tmuqqyzwdm3','2021-04-06 16:52:18','2021-04-06 17:52:19');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-06 16:45:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinpianyugao`
--

DROP TABLE IF EXISTS `xinpianyugao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinpianyugao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yanyuan` varchar(200) DEFAULT NULL COMMENT '演员',
  `shangyingriqi` date DEFAULT NULL COMMENT '上映日期',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjieshao` longtext COMMENT '电影介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727719478 DEFAULT CHARSET=utf8 COMMENT='新片预告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinpianyugao`
--

LOCK TABLES `xinpianyugao` WRITE;
/*!40000 ALTER TABLE `xinpianyugao` DISABLE KEYS */;
INSERT INTO `xinpianyugao` VALUES (41,'2021-04-06 16:45:33','电影名称1','http://localhost:8080/jspmb59p1/upload/xinpianyugao_haibao1.jpg','导演1','演员1','2021-04-07','','电影介绍1','2021-04-07 00:45:33',1),(43,'2021-04-06 16:45:33','超凡蜘蛛侠','http://localhost:8080/jspmb59p1/upload/xinpianyugao_haibao3.jpg','测试','测试','2021-04-21','http://localhost:8080/jspmb59p1/upload/1617727682545.mp4','测试测试\r\n','2021-04-07 00:52:35',7),(44,'2021-04-06 16:45:33','电影名称4','http://localhost:8080/jspmb59p1/upload/xinpianyugao_haibao4.jpg','导演4','演员4','2021-04-07','','电影介绍4','2021-04-07 00:45:33',4),(45,'2021-04-06 16:45:33','电影名称5','http://localhost:8080/jspmb59p1/upload/xinpianyugao_haibao5.jpg','导演5','演员5','2021-04-07','','电影介绍5','2021-04-07 00:45:33',5),(46,'2021-04-06 16:45:33','电影名称6','http://localhost:8080/jspmb59p1/upload/xinpianyugao_haibao6.jpg','导演6','演员6','2021-04-07','','电影介绍6','2021-04-07 00:45:33',6),(1617727719477,'2021-04-06 16:48:39','梵高的世界','http://localhost:8080/jspmb59p1/upload/1617727706320.jpg','法国','风格','2021-04-20','http://localhost:8080/jspmb59p1/upload/1617727717808.mp4','测试123\r\n','2021-04-07 00:52:40',1);
/*!40000 ALTER TABLE `xinpianyugao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617727934111 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-06 16:45:33','用户1','123456','用户姓名1','男','13823888881','773890001@qq.com','440300199101010001',100),(12,'2021-04-06 16:45:33','用户2','123456','用户姓名2','男','13823888882','773890002@qq.com','440300199202020002',100),(13,'2021-04-06 16:45:33','用户3','123456','用户姓名3','男','13823888883','773890003@qq.com','440300199303030003',100),(14,'2021-04-06 16:45:33','用户4','123456','用户姓名4','男','13823888884','773890004@qq.com','440300199404040004',100),(15,'2021-04-06 16:45:33','用户5','123456','用户姓名5','男','13823888885','773890005@qq.com','440300199505050005',100),(16,'2021-04-06 16:45:33','用户6','123456','用户姓名6','男','13823888886','773890006@qq.com','440300199606060006',100),(1617727934110,'2021-04-06 16:52:14','123','123','斯皮尔伯格',NULL,'14578596684','123@qq.com','445678965896578965',171.01);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-07  9:49:38
