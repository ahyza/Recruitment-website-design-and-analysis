/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : job

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-06-20 17:34:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_collection
-- ----------------------------
DROP TABLE IF EXISTS `db_collection`;
CREATE TABLE `db_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_collection
-- ----------------------------

-- ----------------------------
-- Table structure for db_company
-- ----------------------------
DROP TABLE IF EXISTS `db_company`;
CREATE TABLE `db_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(64) DEFAULT NULL COMMENT '公司名称',
  `companyLogo` varchar(255) DEFAULT NULL COMMENT '公司logo',
  `companyUser` varchar(64) DEFAULT NULL COMMENT '招聘人姓名',
  `companyUserid` int(11) DEFAULT NULL,
  `companyType` int(2) DEFAULT NULL COMMENT '公司类型',
  `companyDesc` varchar(1024) DEFAULT NULL COMMENT '公司介绍',
  `companyScale` varchar(64) DEFAULT NULL COMMENT '公司规模',
  `companyAddress` varchar(1024) DEFAULT NULL COMMENT '公司地址',
  `companyEmail` varchar(64) DEFAULT NULL COMMENT '公司邮箱',
  `companyPhone` varchar(64) DEFAULT NULL COMMENT '公司电话',
  `companyManager` varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  `companyTel` varchar(255) DEFAULT NULL COMMENT '联系人电话',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_company
-- ----------------------------
INSERT INTO `db_company` VALUES ('5', '华为', '0ac0070e-d3ba-4bfc-9102-c2d4d573f4f7.jpg', '小王', '10', '1', '..', '1000人以上', '..', null, '17777777777', '小李', '1111111111');
INSERT INTO `db_company` VALUES ('4', '小米', 'ff7ecf09-cdf3-4cfb-ae9b-c5dfbbe2f692.jpg', '小张', '9', '1', '...', '1000人以上', '...', null, '17777777777', '小李', '1111111111');

-- ----------------------------
-- Table structure for db_info
-- ----------------------------
DROP TABLE IF EXISTS `db_info`;
CREATE TABLE `db_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoTitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `infoContent` varchar(2048) DEFAULT NULL COMMENT '内容',
  `infoTime` varchar(64) DEFAULT NULL COMMENT '发布时间',
  `infoUserid` int(11) DEFAULT NULL,
  `infoType` int(2) DEFAULT NULL COMMENT '信息类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_info
-- ----------------------------
INSERT INTO `db_info` VALUES ('9', 'Java工程师', 'Java工程师', '2022-06-20', '8', '1');
INSERT INTO `db_info` VALUES ('10', '软件开发', '软件开发', '2022-06-20', '8', '1');
INSERT INTO `db_info` VALUES ('11', '房产中介', '房产中介', '2022-06-20', '8', '1');
INSERT INTO `db_info` VALUES ('12', '储备店长', '储备店长', '2022-06-20', '8', '1');

-- ----------------------------
-- Table structure for db_job
-- ----------------------------
DROP TABLE IF EXISTS `db_job`;
CREATE TABLE `db_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `jobType` varchar(64) DEFAULT NULL COMMENT '工作类型',
  `jobNum` int(11) DEFAULT NULL COMMENT '招聘人数',
  `jobDesc` varchar(1024) DEFAULT NULL COMMENT '岗位介绍',
  `jobXlyq` varchar(255) DEFAULT NULL COMMENT '学历要求',
  `jobYyyq` varchar(255) DEFAULT NULL COMMENT '语言要求',
  `jobSalary` varchar(255) DEFAULT NULL COMMENT '薪资',
  `jobAddress` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `jobStart` varchar(255) DEFAULT NULL COMMENT '起始时间',
  `jobEnd` varchar(255) DEFAULT NULL COMMENT '截止时间',
  `companyId` int(11) DEFAULT NULL,
  `jobStatus` int(2) DEFAULT NULL COMMENT '职位状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_job
-- ----------------------------
INSERT INTO `db_job` VALUES ('4', '软件工程', '4', '2', '...', '本科', '英语', '4000', '南京', '2022/5/20', '2022/10/20', '4', '1');
INSERT INTO `db_job` VALUES ('5', '新零售融合经理', '4', '2', '...', '本科', '英语', '4000', '南京', '2022/5/20', '2022/10/20', '4', '1');
INSERT INTO `db_job` VALUES ('7', '游戏业务部-C/C++ 高级工程师招聘', '4', '2', '..', '本科', '英语', '4000', '南京', '2022/5/20', '2022/10/20', '4', '1');
INSERT INTO `db_job` VALUES ('8', '中级工程师', '4', '2', 's', '本科', '英语', '4000', '南京', '2022/5/20', '2022/10/20', '5', '1');
INSERT INTO `db_job` VALUES ('9', '渠道销售专员', '7', '2', '..', '本科', '英语', '4000', '南京', '2022/5/20', '2022/10/20', '5', '1');

-- ----------------------------
-- Table structure for db_letter
-- ----------------------------
DROP TABLE IF EXISTS `db_letter`;
CREATE TABLE `db_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `letterTitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `letterContent` varchar(1024) DEFAULT NULL COMMENT '内容',
  `letterSend` int(11) DEFAULT NULL COMMENT '发送人',
  `letterReceive` int(11) DEFAULT NULL COMMENT '接收人',
  `letterStatus` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_letter
-- ----------------------------
INSERT INTO `db_letter` VALUES ('6', '简历', '简历', '8', '9', '2');
INSERT INTO `db_letter` VALUES ('7', '已阅', '已阅', '9', '8', '2');

-- ----------------------------
-- Table structure for db_resume
-- ----------------------------
DROP TABLE IF EXISTS `db_resume`;
CREATE TABLE `db_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `jobId` int(11) DEFAULT NULL,
  `seekerId` int(11) DEFAULT NULL,
  `resumeName` varchar(64) DEFAULT NULL,
  `resumeStatus` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_resume
-- ----------------------------
INSERT INTO `db_resume` VALUES ('6', '4', '4', '2', '简历1', '1');
INSERT INTO `db_resume` VALUES ('7', '4', '7', '2', '简历1', '2');

-- ----------------------------
-- Table structure for db_seeker
-- ----------------------------
DROP TABLE IF EXISTS `db_seeker`;
CREATE TABLE `db_seeker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seekerName` varchar(64) DEFAULT NULL COMMENT '姓名',
  `seekerGender` varchar(11) DEFAULT NULL COMMENT '性别',
  `seekerBirth` varchar(255) DEFAULT NULL COMMENT '生日',
  `seekerMarry` varchar(11) DEFAULT NULL COMMENT '是否结婚',
  `seekerEducation` varchar(64) DEFAULT NULL COMMENT '学历',
  `seekerEmail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `seekerAddress` varchar(1024) DEFAULT NULL COMMENT '地址',
  `seekerOnjob` varchar(64) DEFAULT NULL COMMENT '是否在职',
  `seekerImag` varchar(1024) DEFAULT NULL COMMENT '照片',
  `seekerResume` varchar(255) DEFAULT NULL COMMENT '简历名称',
  `seekerUserid` int(11) DEFAULT NULL,
  `seekerHj` varchar(255) DEFAULT NULL COMMENT '户籍',
  `seekerZzd` varchar(255) DEFAULT NULL COMMENT '暂住地',
  `seekerEvaluation` varchar(1024) DEFAULT NULL COMMENT '自我评价',
  `seekerReward` varchar(1024) DEFAULT NULL COMMENT '得奖情况',
  `seekerQwgzlx` varchar(1024) DEFAULT NULL COMMENT '期望工作类型',
  `seekerQwgzdd` varchar(255) DEFAULT NULL COMMENT '期望工作地点',
  `seekerQwxz` varchar(255) DEFAULT NULL COMMENT '期望薪资',
  `seekerGzjl` varchar(1024) DEFAULT NULL COMMENT '工作经历',
  `seekerXmjy` varchar(1024) DEFAULT NULL COMMENT '项目经验',
  `seekerWydj` varchar(255) DEFAULT NULL COMMENT '外语等级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_seeker
-- ----------------------------
INSERT INTO `db_seeker` VALUES ('2', 'zhangsan', '男', '1998.10.22', '否', '本科', '123@qq.com', '南京', '否', 'b8a1640e-7f10-4aad-b3b6-9c01c30baa6a.jpg', '简历1', '8', '江苏', '南京', '...', '...', 'java', '南京', '5000', '...', '..', '4');

-- ----------------------------
-- Table structure for db_user
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(64) DEFAULT NULL COMMENT '用户名',
  `userPass` varchar(64) DEFAULT NULL COMMENT '密码',
  `userRole` int(2) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES ('1', 'admin', '123456', '3');
INSERT INTO `db_user` VALUES ('8', 'zhangsan', '123456', '1');
INSERT INTO `db_user` VALUES ('9', 'xiaomi', '123456', '2');
INSERT INTO `db_user` VALUES ('10', 'huawei', '123456', '2');
