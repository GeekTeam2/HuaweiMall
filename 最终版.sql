/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.27 : Database - web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`web` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `web`;

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `oid` varchar(98) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `total` varchar(98) DEFAULT NULL,
  `adress` varchar(98) DEFAULT NULL,
  `name` varchar(98) DEFAULT NULL,
  `telephone` varchar(98) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `uid` varchar(98) DEFAULT NULL,
  `id` varchar(98) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `itemid` varchar(98) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id` varchar(98) DEFAULT NULL,
  `oid` varchar(98) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

/*Table structure for table `phone` */

DROP TABLE IF EXISTS `phone`;

CREATE TABLE `phone` (
  `cid` varchar(100) NOT NULL,
  `headline` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `colour` varchar(50) DEFAULT NULL,
  `sys` varchar(50) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `phone` */

insert  into `phone`(`cid`,`headline`,`price`,`colour`,`sys`,`color`,`version`) values ('1','荣耀V9 全网通标配版 4GB+64GB (极光蓝)','￥2599','极光蓝','全网通标配版','blue','荣耀V9'),('2','荣耀V9 全网通高配版 6GB+64GB (极光蓝)','￥2999','极光蓝','全网通高配版','blue','荣耀V9'),('3','荣耀V9 全网通尊享版 6GB+128GB (极光蓝)','￥3499','极光蓝','全网通尊享版','blue','荣耀V9'),('4','荣耀V9 全网通标配版 4GB+64GB (魅焰红)','￥2599','魅焰红','全网通标配版','red','荣耀V9'),('5','荣耀V9 全网通高配版 6GB+64GB (魅焰红)','￥2999','魅焰红','全网通高配版','red','荣耀V9'),('6','荣耀V9 全网通尊享版 6GB+128GB (魅焰红)','￥3499','魅焰红','全网通尊享版','red','荣耀V9'),('7','华为畅享7 2GB+16GB 全网通标配版（香槟金）','￥899','香槟金','全网通版','yold','华为畅享7'),('8','华为畅享7 2GB+16GB 全网通标配版（黑色）','￥899','黑色','全网通版','black','华为畅享7');

/*Table structure for table `pictures` */

DROP TABLE IF EXISTS `pictures`;

CREATE TABLE `pictures` (
  `colour` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pictures` */

insert  into `pictures`(`colour`,`image`,`color`,`version`) values ('极光蓝','img/product/honourV9/blue1.jpg','blue','荣耀V9'),('极光蓝','img/product/honourV9/blue2.jpg','blue','荣耀V9'),('极光蓝','img/product/honourV9/blue3.jpg','blue','荣耀V9'),('极光蓝','img/product/honourV9/blue4.jpg','blue','荣耀V9'),('极光蓝','img/product/honourV9/blue5.jpg','blue','荣耀V9'),('魅焰红','img/product/honourV9/red1.jpg','red','荣耀V9'),('魅焰红','img/product/honourV9/red2.jpg','red','荣耀V9'),('魅焰红','img/product/honourV9/red3.jpg','red','荣耀V9'),('魅焰红','img/product/honourV9/red4.jpg','red','荣耀V9'),('魅焰红','img/product/honourV9/red5.jpg','red','荣耀V9'),('香槟金','img/product/changxiang7/golden1.jpg','yold','华为畅享7'),('香槟金','img/product/changxiang7/golden2.jpg','yold','华为畅享7'),('香槟金','img/product/changxiang7/golden3.jpg','yold','华为畅享7'),('香槟金','img/product/changxiang7/golden4.jpg','yold','华为畅享7'),('香槟金','img/product/changxiang7/golden5.jpg','yold','华为畅享7'),('黑色','img/product/changxiang7/black1.jpg','black','华为畅享7'),('黑色','img/product/changxiang7/black2.jpg','black','华为畅享7'),('黑色','img/product/changxiang7/black3.jpg','black','华为畅享7'),('黑色','img/product/changxiang7/black4.jpg','black','华为畅享7'),('黑色','img/product/changxiang7/black5.jpg','black','华为畅享7');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desca` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`sort`,`name`,`desca`,`tag`,`price`,`image`) values (1,'热销单品','荣耀V9','最高优惠200+赠好礼','remai','￥2599','img/indexGoods/hotsale_01.jpg'),(2,'热销单品','华为畅享7','购机赠好礼','maizeng','￥899','img/indexGoods/hotsale_02.jpg'),(3,'热销单品','荣耀V9 play','北欧极简设计 新品热卖','xinpin','￥999','img/indexGoods/hotsale_03.jpg'),(4,'热销单品','华为畅享7 plus','赠价值99元礼品','mianxi','￥1699','img/indexGoods/hotsale_04.jpg'),(5,'热销单品','荣耀8 青春版','最高优惠50元','yongquan','￥1099','img/indexGoods/hotsale_05.jpg'),(6,'热销单品','HUAWEI 麦芒6','5.9“ 全面屏 出色四镜头',NULL,'￥2399','img/indexGoods/hotsale_06.jpg'),(7,'热销单品','荣耀8','领卷下单减350+赠好礼','tehui','￥2099','img/indexGoods/hotsale_07.jpg'),(8,'热销单品','HUAWEI nova2','直降300元+赠好礼','zhijiang','￥2199','img/indexGoods/hotsale_08.jpg'),(9,'热销单品','HUAWEI P10 Plus','赠豪华配件大礼包',NULL,'￥3988','img/indexGoods/hotsale_banner.jpg'),(10,'笔记本电脑','HUAWEI MateBook D','最高优惠600元+赠好礼','tehui','￥5688','img/indexGoods/laptop_01.jpg'),(11,'笔记本电脑','HUAWEI MateBook E','尊享6期分期免息','mianxi','￥6888','img/indexGoods/laptop_02.jpg'),(12,'笔记本电脑','HUAWEI MateBook ','尊享6期分期免息','tehui','￥5388','img/indexGoods/laptop_03.jpg'),(13,'精品平板','华为平板M3 10.1寸','哈曼卡顿品质立体声',NULL,'￥1899','img/indexGoods/pad_01.jpg'),(14,'精品平板','华为畅玩平板','强芯片 大内存 持久流畅','baokuan','￥799','img/indexGoods/pad_02.jpg'),(15,'精品平板','华为平板M3 8英寸','哈曼卡顿品质立体声',NULL,'￥1399','img/indexGoods/pad_03.jpg'),(16,'精品平板','荣耀畅玩平板2 9.6英寸','9.6英寸护眼滤蓝光高清屏',NULL,'￥999','img/indexGoods/pad_04.jpg'),(17,'精品平板','华为平板M3','2K高清屏 麒麟950','remai','￥1888','img/indexGoods/pad_05.png'),(18,'精品平板','荣耀畅玩平板2 7英寸','掌上炫彩世界',NULL,'￥599','img/indexGoods/pad_06.jpg'),(19,'精品平板','荣耀平板2','八核强芯片大容量','remai','￥1299','img/indexGoods/pad_07.jpg'),(20,'精品平板','荣耀Water Play','10.24 首发',NULL,'￥1999','img/indexGoods/pad_banner.jpg'),(21,'手机','华为畅玩6','柔光自拍','shoufa','￥599','img/indexGoods/mobile_01.jpg'),(22,'手机','HUAWEI nave青春版','直降200','zhijiang','￥1799','img/indexGoods/mobile_02.jpg'),(23,'手机','HUAWEI nave青春版','直降200','zhijiang','￥1999','img/indexGoods/mobile_03.jpg'),(24,'手机','HUAWEI nave2 Plus','直降300元','zhijiang','￥2599','img/indexGoods/mobile_04.jpg'),(25,'手机','荣耀畅玩6A','8核芯片',NULL,'￥799','img/indexGoods/mobile_05.JPG'),(26,'手机','HUAWEI Mate9 Pro','赠价值199配件',NULL,'￥4899','img/indexGoods/mobile_06.jpg'),(27,'手机','华为畅享6s','机身高颜值',NULL,'￥1299','img/indexGoods/mobile_07.jpg'),(29,'手机','荣耀8','双镜头',NULL,'￥1999','img/indexGoods/mobile_banner.jpg'),(29,'手机','荣耀8','双镜头',NULL,'￥1999','img/indexGoods/mobile_banner.jpg'),(30,'智能穿戴','HUAWEI WATCH 2','华为第二代智能运动手表',NULL,'￥1688','img/indexGoods/watch_01.png'),(31,'智能穿戴','荣耀畅玩手环 A2','智能大屏',NULL,'￥199','img/indexGoods/watch_02.jpg'),(33,'智能穿戴','荣耀手环3','50米防水手环','baokuan','￥299','img/indexGoods/watch_03.jpg'),(33,'智能穿戴','荣耀手环3','50米防水手环','baokuan','￥299','img/indexGoods/watch_04.jpg'),(34,'智能穿戴','华为运动手环','独立GPS 50米防水',NULL,'￥298','img/indexGoods/watch_05.jpg'),(35,'智能穿戴','华为手环B3 青春版','是手环 也是耳机',NULL,'￥499','img/indexGoods/watch_06.jpg'),(36,'智能穿戴','荣耀手表 s1','游泳防水',NULL,'￥699','img/indexGoods/watch_07.png'),(37,'智能穿戴','HUAWEI WATCH 2 pro',NULL,NULL,'￥2599','img/indexGoods/watch_banner.jpg'),(38,'智能家居','华为随身wifi','4G全网通',NULL,'￥499','img/indexGoods/smartHome_01.jpg'),(39,'智能家居','荣耀路由','智能体验 快人一步','xinpin','￥249','img/indexGoods/smartHome_02.jpg'),(40,'智能家居','华为子母路由盒','双WiFi覆盖 适合大户型',NULL,'￥599','img/indexGoods/smartHome_03.png'),(41,'智能家居','华为路由x1','不见天线',NULL,'￥149','img/indexGoods/smartHome_04.jpg'),(42,'智能家居','华为路由WS318','高性能双天线',NULL,'￥129','img/indexGoods/smartHome_05.jpg'),(43,'智能家居','荣耀盒子Pro','双千兆网速 大户覆盖','zhijiang','￥499','img/indexGoods/smartHome_06.jpg'),(44,'智能家居','荣耀分布式路由','99元订金限量预售',NULL,'￥899','img/indexGoods/smartHome_banner.jpg'),(45,'热销配件','华为运动蓝牙耳机','音乐无束缚','zhijiang','￥299','img/indexGoods/hotsellpart_01.jpg'),(46,'热销配件','华为全景相机','美无边境','xinpin','￥899','img/indexGoods/hotsellpart_02.jpg'),(47,'热销配件','荣耀电源','匠心工艺',NULL,'￥169','img/indexGoods/hotsellpart_03.jpg'),(48,'热销配件','华为运动心率蓝牙耳机','自在运动','xinpin','￥699','img/indexGoods/hotsellpart_04.jpg'),(49,'热销配件','荣耀魔声耳机','世界音你不同',NULL,'￥249','img/indexGoods/hotsellpart_05.jpg'),(50,'热销配件','华为电源','双向快充',NULL,'￥199','img/indexGoods/hotsellpart_06.jpg'),(51,'热销配件','华为体脂秤','逆龄神器',NULL,'￥199','img/indexGoods/hotsellpart_banner.jpg'),(52,'品牌配件','地宝 智能扫地机器人','纤薄机身 扫拖一体',NULL,'￥1099','img/indexGoods/brandpart_01.jpg'),(53,'品牌配件','720空气质量检测仪','8项环境指标 保障居家健康',NULL,'￥599','img/indexGoods/brandpart_02.jpg'),(54,'品牌配件','三思智能彩色球泡灯','智能球泡灯，引爆乐生活！',NULL,'￥99','img/indexGoods/brandpart_03.jpg'),(55,'品牌配件','车载手机支架','轻松单手取放，环抱设计',NULL,'￥88','img/indexGoods/brandpart_04.jpg'),(56,'品牌配件','车载负离子空气净化器','新一代负离子净化器，快速净化车内空气',NULL,'￥99','img/indexGoods/brandpart_05.jpg'),(57,'品牌配件','科沃斯 智能扫地机器人','扫拖一体真规划，智能控水',NULL,'￥1599','img/indexGoods/brandpart_06.jpg'),(58,'品牌配件','欧普 智清读写台灯','眼见清澈光',NULL,'￥199','img/indexGoods/brandpart_banner.jpg'),(59,'精品推荐','欧普 智清读写台灯','眼见清澈光',NULL,'￥198','img/indexGoods/brandpart_banner.jpg'),(60,'精品推荐','车载手机支架','轻松单手取放，环抱设计',NULL,'￥88','img/indexGoods/brandpart_04.jpg'),(61,'精品推荐','720空气质量检测仪','8项环境指标 保障居家健康',NULL,'￥599','img/indexGoods/brandpart_02.jpg'),(62,'精品推荐','华为体脂秤','逆龄神器',NULL,'￥199','img/indexGoods/hotsellpart_banner.jpg'),(63,'精品推荐','华为全景相机','美无边境',NULL,'￥899','img/indexGoods/hotsellpart_02.jpg'),(64,'精品推荐','荣耀盒子Pro','双千兆网速 大户覆盖',NULL,'￥499','img/indexGoods/smartHome_06.jpg'),(65,'精品推荐','华为随身wifi','4G全网通',NULL,'￥499','img/indexGoods/smartHome_01.jpg'),(66,'精品推荐','HUAWEI WATCH 2','华为第二代智能运动手表',NULL,'￥1688','img/indexGoods/watch_01.png'),(67,'精品推荐','华为畅享6s','机身高颜值',NULL,'￥1299','img/indexGoods/mobile_01.jpg'),(68,'精品推荐','荣耀V10','最高优惠200',NULL,'￥2599','img/indexGoods/hotsale_03.jpg'),(68,'精品推荐','荣耀V10','最高优惠200',NULL,'￥2599','img/indexGoods/hotsale_03.jpg'),(70,'精品推荐','荣耀8 青春版','最高优惠50元',NULL,'￥1099','img/indexGoods/hotsale_05.jpg'),(71,'精品推荐','HUAWEI MateBook E','尊享6期分期免息',NULL,'￥6888','img/indexGoods/laptop_02.jpg'),(72,'精品推荐','华为平板M3 8英寸','强芯片 大内存 持久流畅',NULL,'￥1399','img/indexGoods/pad_03.jpg'),(73,'笔记本电脑','HUAWEI MateBook X','极窄边框4.4mm，屏占比高达88%',NULL,NULL,'img/indexGoods/laptop_banner.jpg'),(74,'精品推荐','荣耀8','领卷下单减350+赠好礼',NULL,'￥2099','img/indexGoods/hotsale_07.jpg'),(75,'精品推荐','荣耀Water Play','10.24 首发',NULL,'￥2099','img/indexGoods/pad_banner.jpg');

/*Table structure for table `total` */

DROP TABLE IF EXISTS `total`;

CREATE TABLE `total` (
  `color` varchar(50) DEFAULT NULL,
  `sys` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `tid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `total` */

insert  into `total`(`color`,`sys`,`version`,`tid`) values ('香槟金,黑色','全网通版','华为畅享7','1'),('极光蓝,魅焰红','全网通标配版,全网通高配版,全网通尊享版','荣耀V9','2');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(80) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telephone` varchar(13) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`email`,`telephone`,`birthday`,`sex`,`state`,`code`) values ('1CB7673BCB264AC39F55AE3650F8B513','付珊珊','698d51a19d8a121ce581499d7b701668','zhuangximin@store.com',NULL,'2017-09-01',NULL,'1',''),('4A1B627DB5414D808D30EBC24521FD79','zhuang','zxc123456','123456@qq.com',NULL,NULL,NULL,NULL,NULL),('8C15831A6CAD4332AF58E00E3656441D','付珊珊','698d51a19d8a121ce581499d7b701668','fushanshan@store.com',NULL,'2017-09-01',NULL,'0','5DD5E8EFDC644BD2A1CD2ACF1F0FD666'),('AF8EC02120454AE7B55FC651EEE40DAD','庄希敏','698d51a19d8a121ce581499d7b701668','zhuangximin@store.com',NULL,'1995-01-01',NULL,'1',''),('B208F33C69944D1988615E25883C65D2','asd','698d51a19d8a121ce581499d7b701668','zhuangximin@store.com',NULL,'2017-09-06',NULL,'1',''),('EB258ED4B5B94E8D9BD0B6C779B0903A','zxm','123456','zhuangximin@store.com',NULL,'2017-09-11',NULL,'1','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
