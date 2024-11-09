/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmh79by
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmh79by` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmh79by`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmh79by/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmh79by/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmh79by/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jibenxinxi` */

DROP TABLE IF EXISTS `jibenxinxi`;

CREATE TABLE `jibenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `shiyongjun` varchar(200) DEFAULT NULL COMMENT '食用菌',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `tupianzhanshi` varchar(200) DEFAULT NULL COMMENT '图片展示',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619320063430 DEFAULT CHARSET=utf8 COMMENT='基本信息';

/*Data for the table `jibenxinxi` */

insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (31,'2021-04-25 10:56:35','编号1','食用菌1','担子菌亚门','详细介绍1','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi1.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (32,'2021-04-25 10:56:35','编号2','食用菌2','担子菌亚门','详细介绍2','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi2.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (33,'2021-04-25 10:56:35','编号3','食用菌3','担子菌亚门','详细介绍3','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi3.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (34,'2021-04-25 10:56:35','编号4','食用菌4','担子菌亚门','详细介绍4','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi4.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (35,'2021-04-25 10:56:35','编号5','食用菌5','担子菌亚门','详细介绍5','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi5.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (36,'2021-04-25 10:56:35','编号6','食用菌6','担子菌亚门','详细介绍6','http://localhost:8080/ssmh79by/upload/jibenxinxi_tupianzhanshi6.jpg');
insert  into `jibenxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`leibie`,`xiangxijieshao`,`tupianzhanshi`) values (1619320063429,'2021-04-25 11:07:43','1619320042394','测试食用菌','子囊菌亚门','<p>测试<img src=\"http://localhost:8080/ssmh79by/upload/1619320061291.jpg\"></p>','http://localhost:8080/ssmh79by/upload/1619320056765.jpg');

/*Table structure for table `junfangxinxi` */

DROP TABLE IF EXISTS `junfangxinxi`;

CREATE TABLE `junfangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `junfangbianhao` varchar(200) NOT NULL COMMENT '菌房编号',
  `junfangmingcheng` varchar(200) DEFAULT NULL COMMENT '菌房名称',
  `suozaiweizhi` varchar(200) DEFAULT NULL COMMENT '所在位置',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `tupianzhanshi` varchar(200) DEFAULT NULL COMMENT '图片展示',
  PRIMARY KEY (`id`),
  UNIQUE KEY `junfangbianhao` (`junfangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619320125968 DEFAULT CHARSET=utf8 COMMENT='菌房信息';

/*Data for the table `junfangxinxi` */

insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (51,'2021-04-25 10:56:35','菌房编号1','菌房名称1','所在位置1','负责人1','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi1.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (52,'2021-04-25 10:56:35','菌房编号2','菌房名称2','所在位置2','负责人2','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi2.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (53,'2021-04-25 10:56:35','菌房编号3','菌房名称3','所在位置3','负责人3','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi3.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (54,'2021-04-25 10:56:35','菌房编号4','菌房名称4','所在位置4','负责人4','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi4.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (55,'2021-04-25 10:56:35','菌房编号5','菌房名称5','所在位置5','负责人5','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi5.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (56,'2021-04-25 10:56:35','菌房编号6','菌房名称6','所在位置6','负责人6','http://localhost:8080/ssmh79by/upload/junfangxinxi_tupianzhanshi6.jpg');
insert  into `junfangxinxi`(`id`,`addtime`,`junfangbianhao`,`junfangmingcheng`,`suozaiweizhi`,`fuzeren`,`tupianzhanshi`) values (1619320125967,'2021-04-25 11:08:45','1619320106224','测试菌房','测试位置','测试人','http://localhost:8080/ssmh79by/upload/1619320124775.jpg');

/*Table structure for table `putongguanliyuan` */

DROP TABLE IF EXISTS `putongguanliyuan`;

CREATE TABLE `putongguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanliyuanzhanghao` varchar(200) NOT NULL COMMENT '管理员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `gerenxiangpian` varchar(200) DEFAULT NULL COMMENT '个人相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanliyuanzhanghao` (`guanliyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619320032924 DEFAULT CHARSET=utf8 COMMENT='普通管理员';

/*Data for the table `putongguanliyuan` */

insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (21,'2021-04-25 10:56:35','普通管理员1','123456','姓名1','男','13823888881','440300199101010001','所属部门1','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian1.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (22,'2021-04-25 10:56:35','普通管理员2','123456','姓名2','男','13823888882','440300199202020002','所属部门2','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian2.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (23,'2021-04-25 10:56:35','普通管理员3','123456','姓名3','男','13823888883','440300199303030003','所属部门3','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian3.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (24,'2021-04-25 10:56:35','普通管理员4','123456','姓名4','男','13823888884','440300199404040004','所属部门4','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian4.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (25,'2021-04-25 10:56:35','普通管理员5','123456','姓名5','男','13823888885','440300199505050005','所属部门5','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian5.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (26,'2021-04-25 10:56:35','普通管理员6','123456','姓名6','男','13823888886','440300199606060006','所属部门6','http://localhost:8080/ssmh79by/upload/putongguanliyuan_gerenxiangpian6.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (1619320032923,'2021-04-25 11:07:12','1234','1234','测试管理员','女','12345678907','441323199002021452','生产部','http://localhost:8080/ssmh79by/upload/1619320023880.jpg');

/*Table structure for table `putongyonghu` */

DROP TABLE IF EXISTS `putongyonghu`;

CREATE TABLE `putongyonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `gerenxiangpian` varchar(200) DEFAULT NULL COMMENT '个人相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619319989559 DEFAULT CHARSET=utf8 COMMENT='普通用户';

/*Data for the table `putongyonghu` */

insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (11,'2021-04-25 10:56:35','普通用户1','123456','姓名1','男','13823888881','440300199101010001','所属部门1','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian1.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (12,'2021-04-25 10:56:35','普通用户2','123456','姓名2','男','13823888882','440300199202020002','所属部门2','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian2.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (13,'2021-04-25 10:56:35','普通用户3','123456','姓名3','男','13823888883','440300199303030003','所属部门3','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian3.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (14,'2021-04-25 10:56:35','普通用户4','123456','姓名4','男','13823888884','440300199404040004','所属部门4','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian4.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (15,'2021-04-25 10:56:35','普通用户5','123456','姓名5','男','13823888885','440300199505050005','所属部门5','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian5.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (16,'2021-04-25 10:56:35','普通用户6','123456','姓名6','男','13823888886','440300199606060006','所属部门6','http://localhost:8080/ssmh79by/upload/putongyonghu_gerenxiangpian6.jpg');
insert  into `putongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`xingming`,`xingbie`,`dianhua`,`shenfenzhenghao`,`suoshubumen`,`gerenxiangpian`) values (1619319989558,'2021-04-25 11:06:29','123','123','测试用户','男','12345678908','441323199002024521','技术部','http://localhost:8080/ssmh79by/upload/1619319987906.jpg');

/*Table structure for table `shengzhangxinxi` */

DROP TABLE IF EXISTS `shengzhangxinxi`;

CREATE TABLE `shengzhangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `shiyongjun` varchar(200) DEFAULT NULL COMMENT '食用菌',
  `dangqianwendu` float DEFAULT NULL COMMENT '当前温度',
  `dangqianshidu` float DEFAULT NULL COMMENT '当前湿度',
  `shengzhangqingkuang` longtext COMMENT '生长情况',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619320101389 DEFAULT CHARSET=utf8 COMMENT='生长信息';

/*Data for the table `shengzhangxinxi` */

insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (41,'2021-04-25 10:56:35','编号1','食用菌1',1,1,'生长情况1','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (42,'2021-04-25 10:56:35','编号2','食用菌2',2,2,'生长情况2','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (43,'2021-04-25 10:56:35','编号3','食用菌3',3,3,'生长情况3','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (44,'2021-04-25 10:56:35','编号4','食用菌4',4,4,'生长情况4','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (45,'2021-04-25 10:56:35','编号5','食用菌5',5,5,'生长情况5','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (46,'2021-04-25 10:56:35','编号6','食用菌6',6,6,'生长情况6','2021-04-25 10:56:35');
insert  into `shengzhangxinxi`(`id`,`addtime`,`bianhao`,`shiyongjun`,`dangqianwendu`,`dangqianshidu`,`shengzhangqingkuang`,`gengxinshijian`) values (1619320101388,'2021-04-25 11:08:20','1619320042394','测试食用菌',23.3,32.2,'<p>良好<img src=\"http://localhost:8080/ssmh79by/upload/1619320099817.jpg\"></p>','2021-04-25 11:08:12');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','73pzmwcpafelrh2mv8garzczi8tm5p9z','2021-04-25 11:05:34','2021-04-25 12:05:53');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619319989558,'123','putongyonghu','普通用户','eljtb00o5ukdy21yy9dbc21qjzwfhrz8','2021-04-25 11:08:54','2021-04-25 12:08:54');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619320032923,'1234','putongguanliyuan','普通管理员','eq0ulhcn66dd5ln312310jewz7u5g87b','2021-04-25 11:09:15','2021-04-25 12:09:15');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 10:56:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
