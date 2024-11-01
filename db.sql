/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmt6296
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmt6296` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmt6296`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmt6296/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmt6296/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmt6296/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fuwuyewu` */

DROP TABLE IF EXISTS `fuwuyewu`;

CREATE TABLE `fuwuyewu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yewumingcheng` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `chengjieshijian` varchar(200) DEFAULT NULL COMMENT '承接时间',
  `yewuxiangqing` longtext COMMENT '业务详情',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='服务业务';

/*Data for the table `fuwuyewu` */

insert  into `fuwuyewu`(`id`,`addtime`,`yewumingcheng`,`yewuleixing`,`fengmiantupian`,`chengjieshijian`,`yewuxiangqing`,`jiage`) values (41,'2021-03-12 15:41:18','业务名称1','业务类型1','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian1.jpg','承接时间1','业务详情1',1),(42,'2021-03-12 15:41:18','业务名称2','业务类型2','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian2.jpg','承接时间2','业务详情2',2),(43,'2021-03-12 15:41:18','业务名称3','业务类型3','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian3.jpg','承接时间3','业务详情3',3),(44,'2021-03-12 15:41:18','业务名称4','业务类型4','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian4.jpg','承接时间4','业务详情4',4),(45,'2021-03-12 15:41:18','业务名称5','业务类型5','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian5.jpg','承接时间5','业务详情5',5),(46,'2021-03-12 15:41:18','业务名称6','业务类型6','http://localhost:8080/ssmt6296/upload/fuwuyewu_fengmiantupian6.jpg','承接时间6','业务详情6',6);

/*Table structure for table `jiedanjiesuan` */

DROP TABLE IF EXISTS `jiedanjiesuan`;

CREATE TABLE `jiedanjiesuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiedanyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '接单员账号',
  `jiedanyuanxingming` varchar(200) DEFAULT NULL COMMENT '接单员姓名',
  `jiesuanshijian` date DEFAULT NULL COMMENT '结算时间',
  `jiedanshu` int(11) DEFAULT NULL COMMENT '接单数',
  `jiesuanjine` int(11) DEFAULT NULL COMMENT '结算金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535462599 DEFAULT CHARSET=utf8 COMMENT='接单结算';

/*Data for the table `jiedanjiesuan` */

insert  into `jiedanjiesuan`(`id`,`addtime`,`jiedanyuanzhanghao`,`jiedanyuanxingming`,`jiesuanshijian`,`jiedanshu`,`jiesuanjine`,`beizhu`) values (81,'2021-03-12 15:41:18','接单员账号1','接单员姓名1','2021-03-12',1,1,'备注1'),(82,'2021-03-12 15:41:18','接单员账号2','接单员姓名2','2021-03-12',2,2,'备注2'),(83,'2021-03-12 15:41:18','接单员账号3','接单员姓名3','2021-03-12',3,3,'备注3'),(84,'2021-03-12 15:41:18','接单员账号4','接单员姓名4','2021-03-12',4,4,'备注4'),(85,'2021-03-12 15:41:18','接单员账号5','接单员姓名5','2021-03-12',5,5,'备注5'),(86,'2021-03-12 15:41:18','接单员账号6','接单员姓名6','2021-03-12',6,6,'备注6'),(1615535462598,'2021-03-12 15:51:01','1','xxx接单员','2021-03-31',11,1111,'无');

/*Table structure for table `jiedanxinxi` */

DROP TABLE IF EXISTS `jiedanxinxi`;

CREATE TABLE `jiedanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiadanbianhao` varchar(200) DEFAULT NULL COMMENT '下单编号',
  `yewumingcheng` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shangmendizhi` varchar(200) DEFAULT NULL COMMENT '上门地址',
  `jiedanyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '接单员账号',
  `jiedanyuanxingming` varchar(200) DEFAULT NULL COMMENT '接单员姓名',
  `jiedanyuanshouji` varchar(200) DEFAULT NULL COMMENT '接单员手机',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535428909 DEFAULT CHARSET=utf8 COMMENT='接单信息';

/*Data for the table `jiedanxinxi` */

insert  into `jiedanxinxi`(`id`,`addtime`,`xiadanbianhao`,`yewumingcheng`,`yewuleixing`,`jiage`,`yonghuzhanghao`,`xiadanshijian`,`yonghuxingming`,`yonghushouji`,`shangmendizhi`,`jiedanyuanzhanghao`,`jiedanyuanxingming`,`jiedanyuanshouji`,`jiedanshijian`,`zhuangtai`) values (71,'2021-03-12 15:41:18','下单编号1','业务名称1','业务类型1','价格1','用户账号1','下单时间1','用户姓名1','用户手机1','上门地址1','接单员账号1','接单员姓名1','接单员手机1','2021-03-12 15:41:18','进行中'),(72,'2021-03-12 15:41:18','下单编号2','业务名称2','业务类型2','价格2','用户账号2','下单时间2','用户姓名2','用户手机2','上门地址2','接单员账号2','接单员姓名2','接单员手机2','2021-03-12 15:41:18','进行中'),(73,'2021-03-12 15:41:18','下单编号3','业务名称3','业务类型3','价格3','用户账号3','下单时间3','用户姓名3','用户手机3','上门地址3','接单员账号3','接单员姓名3','接单员手机3','2021-03-12 15:41:18','进行中'),(74,'2021-03-12 15:41:18','下单编号4','业务名称4','业务类型4','价格4','用户账号4','下单时间4','用户姓名4','用户手机4','上门地址4','接单员账号4','接单员姓名4','接单员手机4','2021-03-12 15:41:18','进行中'),(75,'2021-03-12 15:41:18','下单编号5','业务名称5','业务类型5','价格5','用户账号5','下单时间5','用户姓名5','用户手机5','上门地址5','接单员账号5','接单员姓名5','接单员手机5','2021-03-12 15:41:18','进行中'),(76,'2021-03-12 15:41:18','下单编号6','业务名称6','业务类型6','价格6','用户账号6','下单时间6','用户姓名6','用户手机6','上门地址6','接单员账号6','接单员姓名6','接单员手机6','2021-03-12 15:41:18','进行中'),(1615535428908,'2021-03-12 15:50:28','202131215482483521937','业务名称4','业务类型4','4','1','2021-03-20 00:00:00','xxx用户','12345678910','xxxx宿舍','1','xxx接单员','12345678910','2021-03-12 15:50:13','已完成');

/*Table structure for table `jiedanyuan` */

DROP TABLE IF EXISTS `jiedanyuan`;

CREATE TABLE `jiedanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiedanyuanzhanghao` varchar(200) NOT NULL COMMENT '接单员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiedanyuanxingming` varchar(200) DEFAULT NULL COMMENT '接单员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiedanyuanshouji` varchar(200) DEFAULT NULL COMMENT '接单员手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiedanyuanzhanghao` (`jiedanyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535381346 DEFAULT CHARSET=utf8 COMMENT='接单员';

/*Data for the table `jiedanyuan` */

insert  into `jiedanyuan`(`id`,`addtime`,`jiedanyuanzhanghao`,`mima`,`jiedanyuanxingming`,`xingbie`,`nianling`,`touxiang`,`jiedanyuanshouji`) values (21,'2021-03-12 15:41:18','接单员1','123456','接单员姓名1','男','年龄1','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang1.jpg','13823888881'),(22,'2021-03-12 15:41:18','接单员2','123456','接单员姓名2','男','年龄2','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang2.jpg','13823888882'),(23,'2021-03-12 15:41:18','接单员3','123456','接单员姓名3','男','年龄3','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang3.jpg','13823888883'),(24,'2021-03-12 15:41:18','接单员4','123456','接单员姓名4','男','年龄4','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang4.jpg','13823888884'),(25,'2021-03-12 15:41:18','接单员5','123456','接单员姓名5','男','年龄5','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang5.jpg','13823888885'),(26,'2021-03-12 15:41:18','接单员6','123456','接单员姓名6','男','年龄6','http://localhost:8080/ssmt6296/upload/jiedanyuan_touxiang6.jpg','13823888886'),(1615535381345,'2021-03-12 15:49:41','1','1','xxx接单员','男','22','http://localhost:8080/ssmt6296/upload/1615535390898.jpg','12345678910');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535335254 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (101,'2021-03-12 15:41:18',1,'用户名1','留言内容1','回复内容1'),(102,'2021-03-12 15:41:18',2,'用户名2','留言内容2','回复内容2'),(103,'2021-03-12 15:41:18',3,'用户名3','留言内容3','回复内容3'),(104,'2021-03-12 15:41:18',4,'用户名4','留言内容4','回复内容4'),(105,'2021-03-12 15:41:18',5,'用户名5','留言内容5','回复内容5'),(106,'2021-03-12 15:41:18',6,'用户名6','留言内容6','回复内容6'),(1615535335253,'2021-03-12 15:48:54',1615535306559,'1','留言留言留言留言留言留言留言留言留言留言留言留言留言留言留言',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-12 15:41:18','标题1','简介1','http://localhost:8080/ssmt6296/upload/news_picture1.jpg','<h1>内容1</h1><h1>asdasdas内容1</h1><h1>asdasdas内容1</h1><h1>asdasdas内容1</h1><h1>asdasdas内容1</h1><p>asdasdas</p>'),(92,'2021-03-12 15:41:18','标题2','简介2','http://localhost:8080/ssmt6296/upload/news_picture2.jpg','内容2'),(93,'2021-03-12 15:41:18','标题3','简介3','http://localhost:8080/ssmt6296/upload/news_picture3.jpg','内容3'),(94,'2021-03-12 15:41:18','标题4','简介4','http://localhost:8080/ssmt6296/upload/news_picture4.jpg','内容4'),(95,'2021-03-12 15:41:18','标题5','简介5','http://localhost:8080/ssmt6296/upload/news_picture5.jpg','内容5'),(96,'2021-03-12 15:41:18','标题6','简介6','http://localhost:8080/ssmt6296/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','e7ysmpnjlta81dua4jmal18q6s2z0cbv','2021-03-12 15:46:57','2021-03-12 16:50:49'),(2,1615535306559,'1','yonghu','用户','l88k4p7ae6j4hv9zp0u4xqmgbosxiuis','2021-03-12 15:48:31','2021-03-12 16:51:15'),(3,1615535381345,'1','jiedanyuan','接单员','s2eeliamxthnrryasctyztszpnfrd1vc','2021-03-12 15:49:45','2021-03-12 16:51:09');

/*Table structure for table `tuidanxinxi` */

DROP TABLE IF EXISTS `tuidanxinxi`;

CREATE TABLE `tuidanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuidanbianhao` varchar(200) DEFAULT NULL COMMENT '退单编号',
  `xiadanbianhao` varchar(200) DEFAULT NULL COMMENT '下单编号',
  `yewumingcheng` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `tuidanshijian` datetime DEFAULT NULL COMMENT '退单时间',
  `tuidanliyou` longtext COMMENT '退单理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tuidanbianhao` (`tuidanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='退单信息';

/*Data for the table `tuidanxinxi` */

insert  into `tuidanxinxi`(`id`,`addtime`,`tuidanbianhao`,`xiadanbianhao`,`yewumingcheng`,`yewuleixing`,`jiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`tuidanshijian`,`tuidanliyou`,`sfsh`,`shhf`) values (61,'2021-03-12 15:41:18','退单编号1','下单编号1','业务名称1','业务类型1','价格1','用户账号1','用户姓名1','用户手机1','2021-03-12 15:41:18','退单理由1','是',''),(62,'2021-03-12 15:41:18','退单编号2','下单编号2','业务名称2','业务类型2','价格2','用户账号2','用户姓名2','用户手机2','2021-03-12 15:41:18','退单理由2','是',''),(63,'2021-03-12 15:41:18','退单编号3','下单编号3','业务名称3','业务类型3','价格3','用户账号3','用户姓名3','用户手机3','2021-03-12 15:41:18','退单理由3','是',''),(64,'2021-03-12 15:41:18','退单编号4','下单编号4','业务名称4','业务类型4','价格4','用户账号4','用户姓名4','用户手机4','2021-03-12 15:41:18','退单理由4','是',''),(65,'2021-03-12 15:41:18','退单编号5','下单编号5','业务名称5','业务类型5','价格5','用户账号5','用户姓名5','用户手机5','2021-03-12 15:41:18','退单理由5','是',''),(66,'2021-03-12 15:41:18','退单编号6','下单编号6','业务名称6','业务类型6','价格6','用户账号6','用户姓名6','用户手机6','2021-03-12 15:41:18','退单理由6','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-12 15:41:18');

/*Table structure for table `xiadanxinxi` */

DROP TABLE IF EXISTS `xiadanxinxi`;

CREATE TABLE `xiadanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiadanbianhao` varchar(200) DEFAULT NULL COMMENT '下单编号',
  `yewumingcheng` varchar(200) DEFAULT NULL COMMENT '业务名称',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shangmendizhi` varchar(200) DEFAULT NULL COMMENT '上门地址',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiadanbianhao` (`xiadanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535325434 DEFAULT CHARSET=utf8 COMMENT='下单信息';

/*Data for the table `xiadanxinxi` */

insert  into `xiadanxinxi`(`id`,`addtime`,`xiadanbianhao`,`yewumingcheng`,`yewuleixing`,`jiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`shangmendizhi`,`xiadanshijian`,`beizhu`,`sfsh`,`shhf`,`ispay`) values (51,'2021-03-12 15:41:18','下单编号1','业务名称1','业务类型1','价格1','用户账号1','用户姓名1','用户手机1','上门地址1','2021-03-12 15:41:18','备注1','是','','未支付'),(52,'2021-03-12 15:41:18','下单编号2','业务名称2','业务类型2','价格2','用户账号2','用户姓名2','用户手机2','上门地址2','2021-03-12 15:41:18','备注2','是','','未支付'),(53,'2021-03-12 15:41:18','下单编号3','业务名称3','业务类型3','价格3','用户账号3','用户姓名3','用户手机3','上门地址3','2021-03-12 15:41:18','备注3','是','','未支付'),(54,'2021-03-12 15:41:18','下单编号4','业务名称4','业务类型4','价格4','用户账号4','用户姓名4','用户手机4','上门地址4','2021-03-12 15:41:18','备注4','是','','未支付'),(55,'2021-03-12 15:41:18','下单编号5','业务名称5','业务类型5','价格5','用户账号5','用户姓名5','用户手机5','上门地址5','2021-03-12 15:41:18','备注5','是','','未支付'),(56,'2021-03-12 15:41:18','下单编号6','业务名称6','业务类型6','价格6','用户账号6','用户姓名6','用户手机6','上门地址6','2021-03-12 15:41:18','备注6','是','','未支付'),(1615535325433,'2021-03-12 15:48:45','202131215482483521937','业务名称4','业务类型4','4','1','xxx用户','12345678910','xxxx宿舍','2021-03-20 00:00:00','无','是','111','已支付');

/*Table structure for table `yewuleixing` */

DROP TABLE IF EXISTS `yewuleixing`;

CREATE TABLE `yewuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yewuleixing` varchar(200) DEFAULT NULL COMMENT '业务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535231613 DEFAULT CHARSET=utf8 COMMENT='业务类型';

/*Data for the table `yewuleixing` */

insert  into `yewuleixing`(`id`,`addtime`,`yewuleixing`) values (31,'2021-03-12 15:41:18','业务类型1'),(32,'2021-03-12 15:41:18','业务类型2'),(33,'2021-03-12 15:41:18','业务类型3'),(34,'2021-03-12 15:41:18','业务类型4'),(35,'2021-03-12 15:41:18','业务类型5'),(36,'2021-03-12 15:41:18','业务类型6'),(1615535231612,'2021-03-12 15:47:11','快递上门');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shangmendizhi` varchar(200) DEFAULT NULL COMMENT '上门地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615535306560 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`,`shangmendizhi`) values (11,'2021-03-12 15:41:18','用户1','123456','用户姓名1','男',1,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang1.jpg','13823888881','上门地址1'),(12,'2021-03-12 15:41:18','用户2','123456','用户姓名2','男',2,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang2.jpg','13823888882','上门地址2'),(13,'2021-03-12 15:41:18','用户3','123456','用户姓名3','男',3,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang3.jpg','13823888883','上门地址3'),(14,'2021-03-12 15:41:18','用户4','123456','用户姓名4','男',4,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang4.jpg','13823888884','上门地址4'),(15,'2021-03-12 15:41:18','用户5','123456','用户姓名5','男',5,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang5.jpg','13823888885','上门地址5'),(16,'2021-03-12 15:41:18','用户6','123456','用户姓名6','男',6,'http://localhost:8080/ssmt6296/upload/yonghu_touxiang6.jpg','13823888886','上门地址6'),(1615535306559,'2021-03-12 15:48:26','1','1','xxx用户','男',22,'http://localhost:8080/ssmt6296/upload/1615535344301.jpg','12345678910','xxxx宿舍');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
