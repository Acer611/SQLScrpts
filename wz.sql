/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : wz

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-11-12 11:30:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for check_code
-- ----------------------------
DROP TABLE IF EXISTS `check_code`;
CREATE TABLE `check_code` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '唯一标识',
  `ip` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ip 地址',
  `msg_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'messageId',
  `phone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `check_code` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '验证码',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `expire_at` datetime DEFAULT NULL COMMENT '过期时间',
  `is_use` tinyint(1) DEFAULT NULL COMMENT '是否使用 0 未使用  1 已使用',
  `use_at` datetime DEFAULT NULL COMMENT '使用时间',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '是否删除 0 未删除  1 已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='手机验证码表';

-- ----------------------------
-- Records of check_code
-- ----------------------------
INSERT INTO `check_code` VALUES ('dd68ec66f4d647ec81498c94d9d9c343', '0:0:0:0:0:0:0:1', null, '18301403656', 'QCF7', '2019-11-04 19:55:49', '2019-11-04 20:00:49', '0', null, '0');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('73', '七台河市', '10');
INSERT INTO `city` VALUES ('279', '万宁市', '24');
INSERT INTO `city` VALUES ('280', '三亚市', '24');
INSERT INTO `city` VALUES ('127', '三明市', '14');
INSERT INTO `city` VALUES ('164', '三门峡市', '17');
INSERT INTO `city` VALUES ('3', '上海市', '3');
INSERT INTO `city` VALUES ('136', '上饶市', '15');
INSERT INTO `city` VALUES ('281', '东方市', '24');
INSERT INTO `city` VALUES ('214', '东莞市', '20');
INSERT INTO `city` VALUES ('147', '东营市', '16');
INSERT INTO `city` VALUES ('352', '中卫市', '30');
INSERT INTO `city` VALUES ('215', '中山市', '20');
INSERT INTO `city` VALUES ('235', '临夏回族自治州', '21');
INSERT INTO `city` VALUES ('16', '临汾市', '6');
INSERT INTO `city` VALUES ('148', '临沂市', '16');
INSERT INTO `city` VALUES ('297', '临沧市', '25');
INSERT INTO `city` VALUES ('282', '临高县', '24');
INSERT INTO `city` VALUES ('50', '丹东市', '8');
INSERT INTO `city` VALUES ('99', '丽水市', '12');
INSERT INTO `city` VALUES ('298', '丽江市', '25');
INSERT INTO `city` VALUES ('379', '乌兰察布市', '32');
INSERT INTO `city` VALUES ('380', '乌海市', '32');
INSERT INTO `city` VALUES ('357', '乌苏市', '31');
INSERT INTO `city` VALUES ('358', '乌鲁木齐市', '31');
INSERT INTO `city` VALUES ('283', '乐东黎族自治县', '24');
INSERT INTO `city` VALUES ('249', '乐山市', '22');
INSERT INTO `city` VALUES ('137', '九江市', '15');
INSERT INTO `city` VALUES ('27', '云林县', '7');
INSERT INTO `city` VALUES ('216', '云浮市', '20');
INSERT INTO `city` VALUES ('359', '五家渠市', '31');
INSERT INTO `city` VALUES ('284', '五指山市', '24');
INSERT INTO `city` VALUES ('110', '亳州市', '13');
INSERT INTO `city` VALUES ('183', '仙桃市', '18');
INSERT INTO `city` VALUES ('74', '伊 春 市', '10');
INSERT INTO `city` VALUES ('360', '伊宁市', '31');
INSERT INTO `city` VALUES ('217', '佛山市', '20');
INSERT INTO `city` VALUES ('75', '佳木斯市', '10');
INSERT INTO `city` VALUES ('285', '保亭黎族苗族自治县', '24');
INSERT INTO `city` VALUES ('5', '保定市', '5');
INSERT INTO `city` VALUES ('299', '保山市', '25');
INSERT INTO `city` VALUES ('165', '信阳市', '17');
INSERT INTO `city` VALUES ('286', '儋州市', '24');
INSERT INTO `city` VALUES ('361', '克拉玛依市', '31');
INSERT INTO `city` VALUES ('111', '六安市', '13');
INSERT INTO `city` VALUES ('270', '六盘水市', '23');
INSERT INTO `city` VALUES ('236', '兰州市', '21');
INSERT INTO `city` VALUES ('381', '兴安盟', '32');
INSERT INTO `city` VALUES ('250', '内江市', '22');
INSERT INTO `city` VALUES ('251', '凉山彝族自治州', '22');
INSERT INTO `city` VALUES ('382', '包头市', '32');
INSERT INTO `city` VALUES ('1', '北京市', '1');
INSERT INTO `city` VALUES ('331', '北海市', '28');
INSERT INTO `city` VALUES ('184', '十堰市', '18');
INSERT INTO `city` VALUES ('86', '南京市', '11');
INSERT INTO `city` VALUES ('252', '南充市', '22');
INSERT INTO `city` VALUES ('332', '南宁市', '28');
INSERT INTO `city` VALUES ('128', '南平市', '14');
INSERT INTO `city` VALUES ('28', '南投县', '7');
INSERT INTO `city` VALUES ('138', '南昌市', '15');
INSERT INTO `city` VALUES ('87', '南通市', '11');
INSERT INTO `city` VALUES ('166', '南阳市', '17');
INSERT INTO `city` VALUES ('362', '博乐市', '31');
INSERT INTO `city` VALUES ('129', '厦门市', '14');
INSERT INTO `city` VALUES ('76', '双鸭山市', '10');
INSERT INTO `city` VALUES ('29', '台东县', '7');
INSERT INTO `city` VALUES ('30', '台中县', '7');
INSERT INTO `city` VALUES ('31', '台中市', '7');
INSERT INTO `city` VALUES ('32', '台北县', '7');
INSERT INTO `city` VALUES ('33', '台北市', '7');
INSERT INTO `city` VALUES ('34', '台南县', '7');
INSERT INTO `city` VALUES ('35', '台南市', '7');
INSERT INTO `city` VALUES ('100', '台州市', '12');
INSERT INTO `city` VALUES ('112', '合肥市', '13');
INSERT INTO `city` VALUES ('139', '吉安市', '15');
INSERT INTO `city` VALUES ('64', '吉林市', '9');
INSERT INTO `city` VALUES ('363', '吐鲁番市', '31');
INSERT INTO `city` VALUES ('17', '吕梁市', '6');
INSERT INTO `city` VALUES ('353', '吴忠市', '30');
INSERT INTO `city` VALUES ('167', '周口市', '17');
INSERT INTO `city` VALUES ('383', '呼伦贝尔市', '32');
INSERT INTO `city` VALUES ('384', '呼和浩特市', '32');
INSERT INTO `city` VALUES ('364', '和田市', '31');
INSERT INTO `city` VALUES ('185', '咸宁市', '18');
INSERT INTO `city` VALUES ('321', '咸阳市', '27');
INSERT INTO `city` VALUES ('365', '哈密市', '31');
INSERT INTO `city` VALUES ('77', '哈尔滨市', '10');
INSERT INTO `city` VALUES ('6', '唐山市', '5');
INSERT INTO `city` VALUES ('168', '商丘市', '17');
INSERT INTO `city` VALUES ('322', '商洛市', '27');
INSERT INTO `city` VALUES ('366', '喀什市', '31');
INSERT INTO `city` VALUES ('36', '嘉义县', '7');
INSERT INTO `city` VALUES ('37', '嘉义市', '7');
INSERT INTO `city` VALUES ('101', '嘉兴市', '12');
INSERT INTO `city` VALUES ('237', '嘉峪关市', '21');
INSERT INTO `city` VALUES ('65', '四平市', '9');
INSERT INTO `city` VALUES ('354', '固原市', '30');
INSERT INTO `city` VALUES ('367', '图木舒克市', '31');
INSERT INTO `city` VALUES ('38', '基隆市', '7');
INSERT INTO `city` VALUES ('368', '塔城市', '31');
INSERT INTO `city` VALUES ('78', '大 庆 市', '10');
INSERT INTO `city` VALUES ('79', '大兴安岭地区', '10');
INSERT INTO `city` VALUES ('18', '大同市', '6');
INSERT INTO `city` VALUES ('300', '大理白族自治州', '25');
INSERT INTO `city` VALUES ('51', '大连市', '8');
INSERT INTO `city` VALUES ('238', '天水市', '21');
INSERT INTO `city` VALUES ('2', '天津市', '2');
INSERT INTO `city` VALUES ('186', '天门市', '18');
INSERT INTO `city` VALUES ('19', '太原市', '6');
INSERT INTO `city` VALUES ('369', '奎屯市', '31');
INSERT INTO `city` VALUES ('149', '威海市', '16');
INSERT INTO `city` VALUES ('200', '娄底市', '19');
INSERT INTO `city` VALUES ('187', '孝感市', '18');
INSERT INTO `city` VALUES ('130', '宁德市', '14');
INSERT INTO `city` VALUES ('102', '宁波市', '12');
INSERT INTO `city` VALUES ('113', '安庆市', '13');
INSERT INTO `city` VALUES ('323', '安康市', '27');
INSERT INTO `city` VALUES ('169', '安阳市', '17');
INSERT INTO `city` VALUES ('271', '安顺市', '23');
INSERT INTO `city` VALUES ('287', '定安县', '24');
INSERT INTO `city` VALUES ('239', '定西市', '21');
INSERT INTO `city` VALUES ('39', '宜兰县', '7');
INSERT INTO `city` VALUES ('253', '宜宾市', '22');
INSERT INTO `city` VALUES ('188', '宜昌市', '18');
INSERT INTO `city` VALUES ('140', '宜春市', '15');
INSERT INTO `city` VALUES ('324', '宝鸡市', '27');
INSERT INTO `city` VALUES ('114', '宣城市', '13');
INSERT INTO `city` VALUES ('115', '宿州市', '13');
INSERT INTO `city` VALUES ('88', '宿迁市', '11');
INSERT INTO `city` VALUES ('40', '屏东县', '7');
INSERT INTO `city` VALUES ('288', '屯昌县', '24');
INSERT INTO `city` VALUES ('345', '山南地区', '29');
INSERT INTO `city` VALUES ('201', '岳阳市', '19');
INSERT INTO `city` VALUES ('333', '崇左市', '28');
INSERT INTO `city` VALUES ('116', '巢湖市', '13');
INSERT INTO `city` VALUES ('254', '巴中市', '22');
INSERT INTO `city` VALUES ('385', '巴彦淖尔市', '32');
INSERT INTO `city` VALUES ('89', '常州市', '11');
INSERT INTO `city` VALUES ('202', '常德市', '19');
INSERT INTO `city` VALUES ('240', '平凉市', '21');
INSERT INTO `city` VALUES ('170', '平顶山市', '17');
INSERT INTO `city` VALUES ('255', '广元市', '22');
INSERT INTO `city` VALUES ('256', '广安市', '22');
INSERT INTO `city` VALUES ('218', '广州市', '20');
INSERT INTO `city` VALUES ('241', '庆阳市', '21');
INSERT INTO `city` VALUES ('370', '库尔勒市', '31');
INSERT INTO `city` VALUES ('7', '廊坊市', '5');
INSERT INTO `city` VALUES ('325', '延安市', '27');
INSERT INTO `city` VALUES ('66', '延边朝鲜族自治州', '9');
INSERT INTO `city` VALUES ('171', '开封市', '17');
INSERT INTO `city` VALUES ('8', '张家口市', '5');
INSERT INTO `city` VALUES ('203', '张家界市', '19');
INSERT INTO `city` VALUES ('242', '张掖市', '21');
INSERT INTO `city` VALUES ('41', '彰化县', '7');
INSERT INTO `city` VALUES ('90', '徐州市', '11');
INSERT INTO `city` VALUES ('301', '德宏傣族景颇族自治州', '25');
INSERT INTO `city` VALUES ('150', '德州市', '16');
INSERT INTO `city` VALUES ('257', '德阳市', '22');
INSERT INTO `city` VALUES ('20', '忻州市', '6');
INSERT INTO `city` VALUES ('204', '怀化市', '19');
INSERT INTO `city` VALUES ('302', '怒江傈傈族自治州', '25');
INSERT INTO `city` VALUES ('303', '思茅市', '25');
INSERT INTO `city` VALUES ('189', '恩施土家族苗族自治州', '18');
INSERT INTO `city` VALUES ('219', '惠州市', '20');
INSERT INTO `city` VALUES ('258', '成都市', '22');
INSERT INTO `city` VALUES ('91', '扬州市', '11');
INSERT INTO `city` VALUES ('9', '承德市', '5');
INSERT INTO `city` VALUES ('141', '抚州市', '15');
INSERT INTO `city` VALUES ('52', '抚顺市', '8');
INSERT INTO `city` VALUES ('346', '拉萨市', '29');
INSERT INTO `city` VALUES ('220', '揭阳市', '20');
INSERT INTO `city` VALUES ('259', '攀枝花市', '22');
INSERT INTO `city` VALUES ('304', '文山壮族苗族自治州', '25');
INSERT INTO `city` VALUES ('289', '文昌市', '24');
INSERT INTO `city` VALUES ('172', '新乡市', '17');
INSERT INTO `city` VALUES ('142', '新余市', '15');
INSERT INTO `city` VALUES ('42', '新竹县', '7');
INSERT INTO `city` VALUES ('43', '新竹市', '7');
INSERT INTO `city` VALUES ('92', '无锡市', '11');
INSERT INTO `city` VALUES ('347', '日喀则地区', '29');
INSERT INTO `city` VALUES ('151', '日照市', '16');
INSERT INTO `city` VALUES ('305', '昆明市', '25');
INSERT INTO `city` VALUES ('371', '昌吉市　', '31');
INSERT INTO `city` VALUES ('290', '昌江黎族自治县', '24');
INSERT INTO `city` VALUES ('348', '昌都地区', '29');
INSERT INTO `city` VALUES ('306', '昭通市', '25');
INSERT INTO `city` VALUES ('21', '晋中市', '6');
INSERT INTO `city` VALUES ('22', '晋城市', '6');
INSERT INTO `city` VALUES ('143', '景德镇市', '15');
INSERT INTO `city` VALUES ('307', '曲靖市', '25');
INSERT INTO `city` VALUES ('23', '朔州市', '6');
INSERT INTO `city` VALUES ('53', '朝阳市', '8');
INSERT INTO `city` VALUES ('54', '本溪市', '8');
INSERT INTO `city` VALUES ('334', '来宾市', '28');
INSERT INTO `city` VALUES ('103', '杭州市', '12');
INSERT INTO `city` VALUES ('67', '松原市', '9');
INSERT INTO `city` VALUES ('349', '林芝地区', '29');
INSERT INTO `city` VALUES ('313', '果洛藏族自治州', '26');
INSERT INTO `city` VALUES ('152', '枣庄市', '16');
INSERT INTO `city` VALUES ('335', '柳州市', '28');
INSERT INTO `city` VALUES ('205', '株洲市', '19');
INSERT INTO `city` VALUES ('336', '桂林市', '28');
INSERT INTO `city` VALUES ('44', '桃园县', '7');
INSERT INTO `city` VALUES ('221', '梅州市', '20');
INSERT INTO `city` VALUES ('337', '梧州市', '28');
INSERT INTO `city` VALUES ('308', '楚雄彝族自治州', '25');
INSERT INTO `city` VALUES ('326', '榆林市', '27');
INSERT INTO `city` VALUES ('243', '武威市', '21');
INSERT INTO `city` VALUES ('190', '武汉市', '18');
INSERT INTO `city` VALUES ('272', '毕节地区', '23');
INSERT INTO `city` VALUES ('206', '永州市', '19');
INSERT INTO `city` VALUES ('327', '汉中市', '27');
INSERT INTO `city` VALUES ('222', '汕头市', '20');
INSERT INTO `city` VALUES ('223', '汕尾市', '20');
INSERT INTO `city` VALUES ('224', '江门市', '20');
INSERT INTO `city` VALUES ('117', '池州市', '13');
INSERT INTO `city` VALUES ('55', '沈阳市', '8');
INSERT INTO `city` VALUES ('10', '沧州市', '5');
INSERT INTO `city` VALUES ('338', '河池市', '28');
INSERT INTO `city` VALUES ('225', '河源市', '20');
INSERT INTO `city` VALUES ('131', '泉州市', '14');
INSERT INTO `city` VALUES ('153', '泰安市', '16');
INSERT INTO `city` VALUES ('93', '泰州市', '11');
INSERT INTO `city` VALUES ('260', '泸州市', '22');
INSERT INTO `city` VALUES ('173', '洛阳市', '17');
INSERT INTO `city` VALUES ('154', '济南市', '16');
INSERT INTO `city` VALUES ('155', '济宁市', '16');
INSERT INTO `city` VALUES ('174', '济源市', '17');
INSERT INTO `city` VALUES ('314', '海东地区', '26');
INSERT INTO `city` VALUES ('315', '海北藏族自治州', '26');
INSERT INTO `city` VALUES ('316', '海南藏族自治州', '26');
INSERT INTO `city` VALUES ('291', '海口市', '24');
INSERT INTO `city` VALUES ('317', '海西蒙古族藏族自治州', '26');
INSERT INTO `city` VALUES ('156', '淄博市', '16');
INSERT INTO `city` VALUES ('118', '淮北市', '13');
INSERT INTO `city` VALUES ('119', '淮南市', '13');
INSERT INTO `city` VALUES ('94', '淮安市', '11');
INSERT INTO `city` VALUES ('226', '深圳市', '20');
INSERT INTO `city` VALUES ('227', '清远市', '20');
INSERT INTO `city` VALUES ('104', '温州市', '12');
INSERT INTO `city` VALUES ('328', '渭南市', '27');
INSERT INTO `city` VALUES ('105', '湖州市', '12');
INSERT INTO `city` VALUES ('207', '湘潭市', '19');
INSERT INTO `city` VALUES ('208', '湘西土家族苗族自治州', '19');
INSERT INTO `city` VALUES ('228', '湛江市', '20');
INSERT INTO `city` VALUES ('120', '滁州市', '13');
INSERT INTO `city` VALUES ('157', '滨州市', '16');
INSERT INTO `city` VALUES ('175', '漯河市', '17');
INSERT INTO `city` VALUES ('132', '漳州市', '14');
INSERT INTO `city` VALUES ('158', '潍坊市', '16');
INSERT INTO `city` VALUES ('191', '潜江市', '18');
INSERT INTO `city` VALUES ('229', '潮州市', '20');
INSERT INTO `city` VALUES ('292', '澄迈县', '24');
INSERT INTO `city` VALUES ('45', '澎湖县', '7');
INSERT INTO `city` VALUES ('391', '澳门特别行政区', '33');
INSERT INTO `city` VALUES ('176', '濮阳市', '17');
INSERT INTO `city` VALUES ('159', '烟台市', '16');
INSERT INTO `city` VALUES ('177', '焦作市', '17');
INSERT INTO `city` VALUES ('80', '牡丹江市', '10');
INSERT INTO `city` VALUES ('339', '玉林市', '28');
INSERT INTO `city` VALUES ('318', '玉树藏族自治州', '26');
INSERT INTO `city` VALUES ('309', '玉溪市', '25');
INSERT INTO `city` VALUES ('230', '珠海市', '20');
INSERT INTO `city` VALUES ('293', '琼中黎族苗族自治县', '24');
INSERT INTO `city` VALUES ('294', '琼海市', '24');
INSERT INTO `city` VALUES ('244', '甘南藏族自治州', '21');
INSERT INTO `city` VALUES ('261', '甘孜藏族自治州', '22');
INSERT INTO `city` VALUES ('68', '白城市', '9');
INSERT INTO `city` VALUES ('69', '白山市', '9');
INSERT INTO `city` VALUES ('295', '白沙黎族自治县', '24');
INSERT INTO `city` VALUES ('245', '白银市', '21');
INSERT INTO `city` VALUES ('340', '百色市', '28');
INSERT INTO `city` VALUES ('209', '益阳市', '19');
INSERT INTO `city` VALUES ('95', '盐城市', '11');
INSERT INTO `city` VALUES ('56', '盘锦市', '8');
INSERT INTO `city` VALUES ('262', '眉山市', '22');
INSERT INTO `city` VALUES ('355', '石嘴山市', '30');
INSERT INTO `city` VALUES ('11', '石家庄市', '5');
INSERT INTO `city` VALUES ('372', '石河子市　', '31');
INSERT INTO `city` VALUES ('192', '神农架林区', '18');
INSERT INTO `city` VALUES ('133', '福州市', '14');
INSERT INTO `city` VALUES ('12', '秦皇岛市', '5');
INSERT INTO `city` VALUES ('373', '米泉市', '31');
INSERT INTO `city` VALUES ('310', '红河哈尼族彝族自治州', '25');
INSERT INTO `city` VALUES ('106', '绍兴市', '12');
INSERT INTO `city` VALUES ('81', '绥 化 市', '10');
INSERT INTO `city` VALUES ('263', '绵阳市', '22');
INSERT INTO `city` VALUES ('160', '聊城市', '16');
INSERT INTO `city` VALUES ('231', '肇庆市', '20');
INSERT INTO `city` VALUES ('264', '自贡市', '22');
INSERT INTO `city` VALUES ('107', '舟山市', '12');
INSERT INTO `city` VALUES ('121', '芜湖市', '13');
INSERT INTO `city` VALUES ('46', '花莲县', '7');
INSERT INTO `city` VALUES ('96', '苏州市', '11');
INSERT INTO `city` VALUES ('47', '苗栗县', '7');
INSERT INTO `city` VALUES ('232', '茂名市', '20');
INSERT INTO `city` VALUES ('193', '荆州市', '18');
INSERT INTO `city` VALUES ('194', '荆门市', '18');
INSERT INTO `city` VALUES ('134', '莆田市', '14');
INSERT INTO `city` VALUES ('161', '莱芜市', '16');
INSERT INTO `city` VALUES ('162', '菏泽市', '16');
INSERT INTO `city` VALUES ('144', '萍乡市', '15');
INSERT INTO `city` VALUES ('57', '营口市', '8');
INSERT INTO `city` VALUES ('58', '葫芦岛市', '8');
INSERT INTO `city` VALUES ('122', '蚌埠市', '13');
INSERT INTO `city` VALUES ('13', '衡水市', '5');
INSERT INTO `city` VALUES ('210', '衡阳市', '19');
INSERT INTO `city` VALUES ('108', '衢州市', '12');
INSERT INTO `city` VALUES ('195', '襄樊市', '18');
INSERT INTO `city` VALUES ('311', '西双版纳傣族自治州', '25');
INSERT INTO `city` VALUES ('319', '西宁市', '26');
INSERT INTO `city` VALUES ('329', '西安市', '27');
INSERT INTO `city` VALUES ('178', '许昌市', '17');
INSERT INTO `city` VALUES ('341', '贵港市', '28');
INSERT INTO `city` VALUES ('273', '贵阳市', '23');
INSERT INTO `city` VALUES ('342', '贺州市', '28');
INSERT INTO `city` VALUES ('265', '资阳市', '22');
INSERT INTO `city` VALUES ('145', '赣州市', '15');
INSERT INTO `city` VALUES ('386', '赤峰市', '32');
INSERT INTO `city` VALUES ('70', '辽源市', '9');
INSERT INTO `city` VALUES ('59', '辽阳市', '8');
INSERT INTO `city` VALUES ('266', '达州市', '22');
INSERT INTO `city` VALUES ('24', '运城市', '6');
INSERT INTO `city` VALUES ('97', '连云港市', '11');
INSERT INTO `city` VALUES ('312', '迪庆藏族自治州', '25');
INSERT INTO `city` VALUES ('71', '通化市', '9');
INSERT INTO `city` VALUES ('387', '通辽市', '32');
INSERT INTO `city` VALUES ('267', '遂宁市', '22');
INSERT INTO `city` VALUES ('274', '遵义市', '23');
INSERT INTO `city` VALUES ('14', '邢台市', '5');
INSERT INTO `city` VALUES ('350', '那曲地区', '29');
INSERT INTO `city` VALUES ('15', '邯郸市', '5');
INSERT INTO `city` VALUES ('211', '邵阳市', '19');
INSERT INTO `city` VALUES ('179', '郑州市', '17');
INSERT INTO `city` VALUES ('212', '郴州市', '19');
INSERT INTO `city` VALUES ('388', '鄂尔多斯市', '32');
INSERT INTO `city` VALUES ('196', '鄂州市', '18');
INSERT INTO `city` VALUES ('246', '酒泉市', '21');
INSERT INTO `city` VALUES ('4', '重庆市', '4');
INSERT INTO `city` VALUES ('109', '金华市', '12');
INSERT INTO `city` VALUES ('247', '金昌市', '21');
INSERT INTO `city` VALUES ('343', '钦州市', '28');
INSERT INTO `city` VALUES ('60', '铁岭市', '8');
INSERT INTO `city` VALUES ('275', '铜仁地区', '23');
INSERT INTO `city` VALUES ('330', '铜川市', '27');
INSERT INTO `city` VALUES ('123', '铜陵市', '13');
INSERT INTO `city` VALUES ('356', '银川市', '30');
INSERT INTO `city` VALUES ('389', '锡林郭勒盟', '32');
INSERT INTO `city` VALUES ('61', '锦州市', '8');
INSERT INTO `city` VALUES ('98', '镇江市', '11');
INSERT INTO `city` VALUES ('72', '长春市', '9');
INSERT INTO `city` VALUES ('213', '长沙市', '19');
INSERT INTO `city` VALUES ('25', '长治市', '6');
INSERT INTO `city` VALUES ('374', '阜康市', '31');
INSERT INTO `city` VALUES ('62', '阜新市', '8');
INSERT INTO `city` VALUES ('124', '阜阳市', '13');
INSERT INTO `city` VALUES ('344', '防城港市', '28');
INSERT INTO `city` VALUES ('233', '阳江市', '20');
INSERT INTO `city` VALUES ('26', '阳泉市', '6');
INSERT INTO `city` VALUES ('375', '阿克苏市', '31');
INSERT INTO `city` VALUES ('376', '阿勒泰市', '31');
INSERT INTO `city` VALUES ('377', '阿图什市', '31');
INSERT INTO `city` VALUES ('268', '阿坝藏族羌族自治州', '22');
INSERT INTO `city` VALUES ('390', '阿拉善盟', '32');
INSERT INTO `city` VALUES ('378', '阿拉尔市', '31');
INSERT INTO `city` VALUES ('351', '阿里地区', '29');
INSERT INTO `city` VALUES ('248', '陇南市', '21');
INSERT INTO `city` VALUES ('296', '陵水黎族自治县', '24');
INSERT INTO `city` VALUES ('197', '随州市', '18');
INSERT INTO `city` VALUES ('269', '雅安市', '22');
INSERT INTO `city` VALUES ('163', '青岛市', '16');
INSERT INTO `city` VALUES ('63', '鞍山市', '8');
INSERT INTO `city` VALUES ('234', '韶关市', '20');
INSERT INTO `city` VALUES ('382', '香港特别行政区', '34');
INSERT INTO `city` VALUES ('125', '马鞍山市', '13');
INSERT INTO `city` VALUES ('180', '驻马店市', '17');
INSERT INTO `city` VALUES ('48', '高雄县', '7');
INSERT INTO `city` VALUES ('49', '高雄市', '7');
INSERT INTO `city` VALUES ('82', '鸡 西 市', '10');
INSERT INTO `city` VALUES ('83', '鹤 岗 市', '10');
INSERT INTO `city` VALUES ('182', '鹤壁市', '17');
INSERT INTO `city` VALUES ('146', '鹰潭市', '15');
INSERT INTO `city` VALUES ('198', '黄冈市', '18');
INSERT INTO `city` VALUES ('320', '黄南藏族自治州', '26');
INSERT INTO `city` VALUES ('126', '黄山市', '13');
INSERT INTO `city` VALUES ('199', '黄石市', '18');
INSERT INTO `city` VALUES ('84', '黑 河 市', '10');
INSERT INTO `city` VALUES ('276', '黔东南苗族侗族自治州', '23');
INSERT INTO `city` VALUES ('277', '黔南布依族苗族自治州', '23');
INSERT INTO `city` VALUES ('278', '黔西南布依族苗族自治州', '23');
INSERT INTO `city` VALUES ('85', '齐齐哈尔市', '10');
INSERT INTO `city` VALUES ('135', '龙岩市', '14');

-- ----------------------------
-- Table structure for config_job_category
-- ----------------------------
DROP TABLE IF EXISTS `config_job_category`;
CREATE TABLE `config_job_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jobCategory` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名字  （简单上手，在家 躺赚，轻松兼职，极速可做）',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态  0  可用  1 停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='分类名字  （简单上手，在家 躺赚，轻松兼职，极速可做）';

-- ----------------------------
-- Records of config_job_category
-- ----------------------------
INSERT INTO `config_job_category` VALUES ('1', '简单上手', '0');
INSERT INTO `config_job_category` VALUES ('2', '在家躺赚', '0');
INSERT INTO `config_job_category` VALUES ('3', '轻松兼职', '0');
INSERT INTO `config_job_category` VALUES ('4', '极速可做', '0');

-- ----------------------------
-- Table structure for config_job_label
-- ----------------------------
DROP TABLE IF EXISTS `config_job_label`;
CREATE TABLE `config_job_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lable` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位标签（ 0  火爆  1 急聘   2  热门）',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态  0 启用   1  停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='职位label  标签 热门  急聘  火爆';

-- ----------------------------
-- Records of config_job_label
-- ----------------------------
INSERT INTO `config_job_label` VALUES ('1', '热门', '0');
INSERT INTO `config_job_label` VALUES ('2', '急聘', '0');
INSERT INTO `config_job_label` VALUES ('3', '火爆', '0');

-- ----------------------------
-- Table structure for job_position
-- ----------------------------
DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `companyId` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `kfId` bigint(20) DEFAULT NULL COMMENT '客服ID',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位标题',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '类型 （长期可做  短期 ）',
  `cleanType` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '结算方式（300元/天）',
  `needPeople` int(11) DEFAULT '0' COMMENT '招聘人数',
  `hasPeople` int(11) DEFAULT '0' COMMENT '已录取人数',
  `reportPeople` int(11) DEFAULT '0' COMMENT '报名人数',
  `money` varchar(255) COLLATE utf8_bin DEFAULT '0' COMMENT '薪资',
  `jobRequired` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工作要求（兼职  性别）',
  `taskType` int(11) DEFAULT NULL COMMENT '任务类型（服务员  收银员,关联jobTitledetail 的id ）',
  `workflow` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工作流程',
  `jobDetail` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位详情',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工作详细地点',
  `location` int(11) DEFAULT NULL COMMENT '位置  关联city 表的id',
  `lable` tinyint(2) DEFAULT NULL COMMENT '职位标签（ 0  火爆  1 急聘   2  热门）',
  `category` tinyint(2) DEFAULT NULL COMMENT '职位分类  （1 简单  2 躺赚 3 轻松   4 极速 关联 config_job_category 的ID）',
  `publishTime` datetime DEFAULT NULL COMMENT '发布时间',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_2` (`companyId`),
  KEY `index_1` (`taskType`,`location`,`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='职位信息';

-- ----------------------------
-- Records of job_position
-- ----------------------------
INSERT INTO `job_position` VALUES ('1', '1', '1', '急聘 传单员', '长期可做', '日结', '9999', '50', '15', '200/天', '和复活节但是', '29', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '1', '1', '1', '2019-11-06 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('2', '1', '1', '急聘 美工', '长期可做', '日结', '9999', '50', '15', '200/天', '和复活节但是', '29', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '1', '1', '1', '2019-11-06 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('3', '1', '1', '直聘 理发师', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '28', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '2', '1', '2', '2019-11-06 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('4', '1', '1', '急聘 普工', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '28', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '2', '1', '2', '2019-11-06 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('5', '1', '1', '急聘 传单员', '长期可做', '日结', '9999', '50', '15', '250/天', '和复活节但是', '27', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '3', '1', '3', '2019-10-30 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('6', '1', '1', '急聘 传菜员', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '27', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '3', '1', '3', '2019-10-31 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('7', '1', '1', '急聘 理发师', '长期可做', '日结', '9999', '50', '15', '350/天', '和复活节但是', '26', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '4', '1', '4', '2019-11-01 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('8', '1', '1', '急聘 客服', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '26', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '4', '1', '4', '2019-11-02 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('9', '1', '1', '急聘 翻译', '长期可做', '日结', '9999', '50', '15', '200/天', '和复活节但是', '25', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '5', '1', '1', '2019-11-03 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('10', '1', '1', '急聘 文员', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '25', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '5', '1', '1', '2019-11-06 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('11', '1', '1', '急聘 促销', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '24', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '6', '1', '3', '2019-11-05 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');
INSERT INTO `job_position` VALUES ('12', '1', '1', '急聘 传单员', '长期可做', '日结', '9999', '50', '15', '300/天', '和复活节但是', '24', '法沙发沙发', '会发生考核方式客户反馈是否开始疯狂撒谎合肥发挥后发双方开始发生', '北京市海淀区', '6', '1', '4', '2019-11-04 15:04:08', '2019-11-06 15:04:13', '2019-11-06 15:04:17');

-- ----------------------------
-- Table structure for job_title
-- ----------------------------
DROP TABLE IF EXISTS `job_title`;
CREATE TABLE `job_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位标签（一级）',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否删除（ 0 为删除   1  已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='一级职位表';

-- ----------------------------
-- Records of job_title
-- ----------------------------
INSERT INTO `job_title` VALUES ('1', '体力达人', '0');
INSERT INTO `job_title` VALUES ('2', '室内推荐', '0');
INSERT INTO `job_title` VALUES ('3', '专业推荐', '0');
INSERT INTO `job_title` VALUES ('4', '特色职业', '0');
INSERT INTO `job_title` VALUES ('5', '简单易做', '0');
INSERT INTO `job_title` VALUES ('6', '跑腿办事', '0');
INSERT INTO `job_title` VALUES ('7', '演艺达人', '0');
INSERT INTO `job_title` VALUES ('8', '优秀青年', '0');

-- ----------------------------
-- Table structure for job_title_detail
-- ----------------------------
DROP TABLE IF EXISTS `job_title_detail`;
CREATE TABLE `job_title_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '关联job_title表的ID',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '是否删除  0 未删除 1  已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='详细职业表';

-- ----------------------------
-- Records of job_title_detail
-- ----------------------------
INSERT INTO `job_title_detail` VALUES ('1', '1', '普工', '0');
INSERT INTO `job_title_detail` VALUES ('2', '1', '餐饮工', '0');
INSERT INTO `job_title_detail` VALUES ('3', '1', '服务员', '0');
INSERT INTO `job_title_detail` VALUES ('4', '1', '安保', '0');
INSERT INTO `job_title_detail` VALUES ('5', '1', '会展执行', '0');
INSERT INTO `job_title_detail` VALUES ('6', '1', '快递配送', '0');
INSERT INTO `job_title_detail` VALUES ('7', '2', '话务客服', '0');
INSERT INTO `job_title_detail` VALUES ('8', '2', '促销导购', '0');
INSERT INTO `job_title_detail` VALUES ('9', '2', '文员', '0');
INSERT INTO `job_title_detail` VALUES ('10', '2', '展会协助', '0');
INSERT INTO `job_title_detail` VALUES ('11', '2', '销售', '0');
INSERT INTO `job_title_detail` VALUES ('12', '3', '司机代驾', '0');
INSERT INTO `job_title_detail` VALUES ('13', '3', '技师技工', '0');
INSERT INTO `job_title_detail` VALUES ('14', '3', '美容美发', '0');
INSERT INTO `job_title_detail` VALUES ('15', '3', '月嫂阿姨', '0');
INSERT INTO `job_title_detail` VALUES ('16', '3', '在线老师', '0');
INSERT INTO `job_title_detail` VALUES ('17', '4', '普工', '0');
INSERT INTO `job_title_detail` VALUES ('18', '4', '家教导师', '0');
INSERT INTO `job_title_detail` VALUES ('19', '4', '客服', '0');
INSERT INTO `job_title_detail` VALUES ('20', '4', '健身教练', '0');
INSERT INTO `job_title_detail` VALUES ('21', '4', '翻译', '0');
INSERT INTO `job_title_detail` VALUES ('22', '4', '婚礼主持', '0');
INSERT INTO `job_title_detail` VALUES ('23', '4', '摄影摄像', '0');
INSERT INTO `job_title_detail` VALUES ('24', '4', '旅游导游', '0');
INSERT INTO `job_title_detail` VALUES ('25', '4', '美工设计', '0');
INSERT INTO `job_title_detail` VALUES ('26', '4', '创意策划', '0');
INSERT INTO `job_title_detail` VALUES ('27', '4', '财务会计', '0');
INSERT INTO `job_title_detail` VALUES ('28', '4', '软件开发', '0');
INSERT INTO `job_title_detail` VALUES ('29', '5', '传单派发', '0');
INSERT INTO `job_title_detail` VALUES ('30', '5', '低碳拉访', '0');
INSERT INTO `job_title_detail` VALUES ('31', '5', '打包分拣', '0');
INSERT INTO `job_title_detail` VALUES ('32', '5', '充场', '0');
INSERT INTO `job_title_detail` VALUES ('33', '5', '问卷调查', '0');
INSERT INTO `job_title_detail` VALUES ('34', '5', '审核录入', '0');
INSERT INTO `job_title_detail` VALUES ('35', '5', '保洁', '0');
INSERT INTO `job_title_detail` VALUES ('36', '6', '挂号排队', '0');
INSERT INTO `job_title_detail` VALUES ('37', '6', '送餐', '0');
INSERT INTO `job_title_detail` VALUES ('38', '6', '宠物寄养', '0');
INSERT INTO `job_title_detail` VALUES ('39', '6', '车票代购', '0');
INSERT INTO `job_title_detail` VALUES ('40', '7', '礼仪模特', '0');
INSERT INTO `job_title_detail` VALUES ('41', '7', '群众演员', '0');
INSERT INTO `job_title_detail` VALUES ('42', '7', '演出', '0');
INSERT INTO `job_title_detail` VALUES ('43', '7', '主播', '0');
INSERT INTO `job_title_detail` VALUES ('44', '8', '志愿者', '0');
INSERT INTO `job_title_detail` VALUES ('45', '8', '救生员', '0');
INSERT INTO `job_title_detail` VALUES ('46', '8', '实习生', '0');
INSERT INTO `job_title_detail` VALUES ('47', '8', '社会义工', '0');

-- ----------------------------
-- Table structure for provincial
-- ----------------------------
DROP TABLE IF EXISTS `provincial`;
CREATE TABLE `provincial` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `provincial` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='省份';

-- ----------------------------
-- Records of provincial
-- ----------------------------
INSERT INTO `provincial` VALUES ('1', '北京市');
INSERT INTO `provincial` VALUES ('2', '天津市');
INSERT INTO `provincial` VALUES ('3', '上海市');
INSERT INTO `provincial` VALUES ('4', '重庆市');
INSERT INTO `provincial` VALUES ('5', '河北省');
INSERT INTO `provincial` VALUES ('6', '山西省');
INSERT INTO `provincial` VALUES ('7', '台湾省');
INSERT INTO `provincial` VALUES ('8', '辽宁省');
INSERT INTO `provincial` VALUES ('9', '吉林省');
INSERT INTO `provincial` VALUES ('10', '黑龙江省');
INSERT INTO `provincial` VALUES ('11', '江苏省');
INSERT INTO `provincial` VALUES ('12', '浙江省');
INSERT INTO `provincial` VALUES ('13', '安徽省');
INSERT INTO `provincial` VALUES ('14', '福建省');
INSERT INTO `provincial` VALUES ('15', '江西省');
INSERT INTO `provincial` VALUES ('16', '山东省');
INSERT INTO `provincial` VALUES ('17', '河南省');
INSERT INTO `provincial` VALUES ('18', '湖北省');
INSERT INTO `provincial` VALUES ('19', '湖南省');
INSERT INTO `provincial` VALUES ('20', '广东省');
INSERT INTO `provincial` VALUES ('21', '甘肃省');
INSERT INTO `provincial` VALUES ('22', '四川省');
INSERT INTO `provincial` VALUES ('23', '贵州省');
INSERT INTO `provincial` VALUES ('24', '海南省');
INSERT INTO `provincial` VALUES ('25', '云南省');
INSERT INTO `provincial` VALUES ('26', '青海省');
INSERT INTO `provincial` VALUES ('27', '陕西省');
INSERT INTO `provincial` VALUES ('28', '广西壮族自治区');
INSERT INTO `provincial` VALUES ('29', '西藏自治区');
INSERT INTO `provincial` VALUES ('30', '宁夏回族自治区');
INSERT INTO `provincial` VALUES ('31', '新疆维吾尔自治区');
INSERT INTO `provincial` VALUES ('32', '内蒙古自治区');
INSERT INTO `provincial` VALUES ('33', '澳门特别行政区');
INSERT INTO `provincial` VALUES ('34', '香港特别行政区');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '链接地址',
  `content` text COLLATE utf8_bin COMMENT '软文内容',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否删除 0 未删除  1  已删除',
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '软文标签',
  `readTimes` bigint(20) DEFAULT '0' COMMENT '阅读次数',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `imgUrl` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '软文icon',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='软文表';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', '那些年摸爬滚打出来的精华', 'https://www.jianshu.com/p/0649ff8948d8', null, '0', '三人行', '0', '2019-11-08 19:52:27', null);
INSERT INTO `t_article` VALUES ('2', '职场第1课：第一份工作的15个保命秘籍', 'https://www.jianshu.com/p/ea79d629db5d', null, '0', '职场', '0', '2019-11-08 19:59:42', null);
INSERT INTO `t_article` VALUES ('3', '这24条职场弯路，你本可以绕开的', 'https://www.jianshu.com/p/94da0eec4a36', null, '0', '职场', '0', '2019-11-08 20:00:24', null);
INSERT INTO `t_article` VALUES ('4', '熬夜时间长了会怎么样？', 'https://www.zhihu.com/question/344061018/answer/881971543', null, '0', '生活方式', '0', '2019-11-08 20:02:55', null);
INSERT INTO `t_article` VALUES ('5', '如何过极简的生活？', 'https://www.zhihu.com/question/30055346/answer/878882918', null, '0', '生活方式', '0', '2019-11-08 20:03:56', null);
INSERT INTO `t_article` VALUES ('6', '普通本科毕业生找工作真的很难吗?', 'https://www.zhihu.com/question/320784313/answer/882436619', null, '0', '求职', '0', '2019-11-08 20:04:39', null);
INSERT INTO `t_article` VALUES ('7', '老北京口中的“三馆”，藏着说不完的学问！', 'https://zhuanlan.zhihu.com/p/89809203', null, '0', '美食', '0', '2019-11-08 20:05:27', null);
INSERT INTO `t_article` VALUES ('8', '北京稻香村有哪些好吃的点心？', 'https://www.zhihu.com/question/23383198/answer/861437760', null, '0', '美食', '0', '2019-11-08 20:06:11', null);
INSERT INTO `t_article` VALUES ('9', '在北京有哪些适合一个人玩的地方？', 'https://www.zhihu.com/question/32177689/answer/871394946', null, '0', '美食', '0', '2019-11-08 20:06:38', null);
INSERT INTO `t_article` VALUES ('10', '旅行的意义在于什么呢？', 'https://www.zhihu.com/question/349398312/answer/882481289', null, '0', '旅行', '0', '2019-11-08 20:08:18', null);
INSERT INTO `t_article` VALUES ('11', '国内冬季旅行最佳目的地有啥推荐？', 'https://www.zhihu.com/question/52504090/answer/881156060', null, '0', '旅行', '0', '2019-11-08 20:08:45', null);
INSERT INTO `t_article` VALUES ('12', '比西藏神秘，2020最佳旅行国度Top1！被称为全球最幸福的地方', 'https://zhuanlan.zhihu.com/p/89919854', null, '0', '旅行', '0', '2019-11-08 20:09:47', null);

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `banner` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'banner 地址',
  `targetUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '跳转链接',
  `status` tinyint(2) DEFAULT '0' COMMENT '是否删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('1', 'http://localhost:9999/images/123.jpg', null, '0', '2019-11-07 15:22:28', '2019-11-07 15:22:31');
INSERT INTO `t_banner` VALUES ('2', 'http://localhost:9999/images/1234.jpg', null, '0', '2019-11-07 15:23:00', '2019-11-07 15:23:03');

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `description` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '公司介绍',
  `authentication` tinyint(1) DEFAULT NULL COMMENT '是否认证  0 未认证  1 已认证',
  `domain` tinyint(255) DEFAULT NULL COMMENT '所在地  关联城市表  ',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业类型',
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '经营状态',
  `registeredCapital` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '注册资本',
  `registerDate` datetime DEFAULT NULL COMMENT '注册时间',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '注册地址',
  `registrationAuthority` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '登记机关',
  `creditCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '统一社会信用代码',
  `groupCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '组织机构代码',
  `businessScop` text COLLATE utf8_bin COMMENT '经营范围',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公司信息';

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '上市500强', '这是一家比较强的公司', '1', '1', '1', null, null, '2019-06-19 18:24:59', null, null, null, null, null, '2019-11-06 18:24:53', '2019-11-06 18:24:56');

-- ----------------------------
-- Table structure for t_kf_config
-- ----------------------------
DROP TABLE IF EXISTS `t_kf_config`;
CREATE TABLE `t_kf_config` (
  `id` bigint(20) NOT NULL,
  `platform` tinyint(2) DEFAULT NULL COMMENT '平台 （1 华为  2 小米 3 魅族  4 oppo 5  vivo  6 当乐 7 引用汇  8 百度应用  8 机锋市场  9 安卓市场 10 安卓市场  11 豌豆荚 12 360手机助手  13 阿里分发中心   ）',
  `position` tinyint(2) DEFAULT NULL COMMENT '客服放置位置',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态  0  启用  1 停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客服配置信息表';

-- ----------------------------
-- Records of t_kf_config
-- ----------------------------

-- ----------------------------
-- Table structure for t_kf_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_kf_detail`;
CREATE TABLE `t_kf_detail` (
  `id` bigint(20) NOT NULL,
  `confId` bigint(20) DEFAULT NULL COMMENT '客服配置表的ID   关联 t_kf_config表的ID',
  `qq` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '微信',
  `aliPay` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '支付宝',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客服详情';

-- ----------------------------
-- Records of t_kf_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` tinyint(2) NOT NULL COMMENT '消息类型  0  系统消息  1 报名信息  ',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '消息标题',
  `content` text COLLATE utf8_bin COMMENT '消息内容',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '消息状态 （0  未读  1 已读）',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '关联t_user 表的id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_1` (`status`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统消息和站内消息表';

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '0', '系统消息', 0xE8BF99E698AFE4B880E69DA1E7B3BBE7BB9FE6B688E681AF, '0', '0', '2019-11-07 16:56:00');
INSERT INTO `t_message` VALUES ('2', '0', '好消息', 0xE8BF99E698AFE4B88069E69DA1E7B3BBE7BB9FE5A5BDE6B688E681AF, '0', '0', '2019-11-08 16:56:04');
INSERT INTO `t_message` VALUES ('3', '0', '报名信息', 0xE682A8E79A84E68AA5E5908DE4BFA1E681AFE8A2ABE69FA5E79C8B, '1', '9', '2019-11-08 16:56:09');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `faceUrl` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '头像地址',
  `balance` decimal(12,2) DEFAULT NULL COMMENT '账户余额',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(2) DEFAULT NULL COMMENT '性别 0  男  1  女',
  `education` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `birthyear` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出生年份',
  `birthday` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出生年月日',
  `identity` tinyint(2) DEFAULT '1' COMMENT '身份  0 学生  1  非学生',
  `height` double DEFAULT NULL COMMENT '身高',
  `weight` double DEFAULT NULL COMMENT '体重',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '居住地点',
  `wechat` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '微信',
  `qq` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'QQ',
  `mail` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `descrption` text COLLATE utf8_bin COMMENT '自我介绍',
  `photo` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '个人照片',
  `relaName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '真是姓名',
  `id_card` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `schedule` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '简历完成进度',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '17986541236', 'e10adc3949ba59abbe56e057f20f883e', 'http://localhost:9999/images/1572699692887_images.jpg', '5000.00', '呵呵', '0', '博士后', '1993', '1993-07-20', '0', '0', '0', '奋斗啥方式', '13922222222', '123456789', '999@qq.com', 0xE59B9EE5A48DE79C8BE698AFE590A6E5BC80E5A78BE4BB98E6ACBEE9A1BAE4B8B0, 'qwe', '张呵呵', '658795412365458256', '10', '2019-11-02 17:55:27', '2019-11-02 17:55:27');
INSERT INTO `t_user` VALUES ('5', '18122223333', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, '2019-11-04 12:40:14', '2019-11-04 12:40:14');
INSERT INTO `t_user` VALUES ('9', '18301403656', 'e10adc3949ba59abbe56e057f20f883e', 'http://localhost:9999/images/1572923182864_下载.jpg', '185222200.00', '1234', '0', 'string', '2010', '2010-09-08', '0', '180', '178', '放沙发上看', '66666565', 'string', '3654@qq.com', 0xE4BB98E6ACBEE698AFE590A6E5BC80E5A78BE796AFE78B82E98081, 'http://localhost:9999/images/1573219458412_下载.jpg', 'string', '235412365422555555', 'string', '2019-11-04 16:57:32', '2019-11-04 17:00:48');
INSERT INTO `t_user` VALUES ('10', '13122225555', 'e10adc3949ba59abbe56e057f20f883e', 'http://localhost:9999/images/1573284141244_u=2830299245,1153803492&fm=26&gp=0.jpg', '10.00', '小三', '0', '还房贷', '1993', '1993', '0', '0', '0', 'fsfsfsfsdfd', 'string', 'string', '123@qq.com', 0x6A66736C6A666C73, 'string', '张三', 'string', 'string', '2019-11-09 14:11:39', '2019-11-09 15:21:07');

-- ----------------------------
-- Table structure for t_user_education
-- ----------------------------
DROP TABLE IF EXISTS `t_user_education`;
CREATE TABLE `t_user_education` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `schoolName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '学校',
  `domain` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `education` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '最高学历',
  `startTime` datetime DEFAULT NULL COMMENT '入学时间',
  `endTime` datetime DEFAULT NULL COMMENT '毕业时间',
  `experience` text COLLATE utf8_bin COMMENT '在校经历',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='学生教育信息';

-- ----------------------------
-- Records of t_user_education
-- ----------------------------
INSERT INTO `t_user_education` VALUES ('1', '9', '剑桥大学', '经济法', '博士后', '2019-11-05 11:36:57', '2019-11-05 11:36:57', 0xE68EA5E8BF9BE69DA5E688BFE997B4E698AFE99BB7E9948BE5B0B1E698AFE6B5AAE8B4B9, '2019-11-05 11:36:57', '2019-11-05 11:46:09');
INSERT INTO `t_user_education` VALUES ('2', '9', '剑桥大学', '经济法', '博士后', '2019-11-05 11:36:57', '2019-11-05 11:36:57', 0xE68EA5E8BF9BE69DA5E688BFE997B4E698AFE99BB7E9948BE5B0B1E698AFE6B5AAE8B4B9, '2019-11-05 11:45:37', '2019-11-05 11:36:57');
INSERT INTO `t_user_education` VALUES ('3', '10', '点点滴滴', '', '博士', '2019-11-09 14:12:23', '2019-11-09 14:12:23', 0xE6B395E5B888E6B395E890A8E88AACE69292E58F91E7949FE58F91E7949F, '2019-11-09 15:23:35', '2019-11-09 14:12:23');

-- ----------------------------
-- Table structure for t_user_like_job
-- ----------------------------
DROP TABLE IF EXISTS `t_user_like_job`;
CREATE TABLE `t_user_like_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID  关联t_user表',
  `positId` bigint(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1` (`userId`,`positId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户收藏职位表';

-- ----------------------------
-- Records of t_user_like_job
-- ----------------------------
INSERT INTO `t_user_like_job` VALUES ('1', '9', '1', '2019-11-07 17:36:42');
INSERT INTO `t_user_like_job` VALUES ('2', '9', '3', '2019-11-07 17:36:53');
INSERT INTO `t_user_like_job` VALUES ('3', '9', '4', '2019-11-07 17:37:05');
INSERT INTO `t_user_like_job` VALUES ('4', '9', '6', '2019-11-07 17:37:18');
INSERT INTO `t_user_like_job` VALUES ('5', '9', '8', '2019-11-07 17:37:27');
INSERT INTO `t_user_like_job` VALUES ('6', '9', '9', '2019-11-07 17:37:37');
INSERT INTO `t_user_like_job` VALUES ('7', '9', '11', '2019-11-07 17:37:47');
INSERT INTO `t_user_like_job` VALUES ('8', '9', '2', '2019-11-08 15:24:18');

-- ----------------------------
-- Table structure for t_user_position
-- ----------------------------
DROP TABLE IF EXISTS `t_user_position`;
CREATE TABLE `t_user_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `positId` bigint(20) DEFAULT NULL COMMENT '职位ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态（0 已报名  1被查看  2  待面试  3 已录取  4 已拒绝）',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_1` (`userId`,`positId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户报名职位关联关系表';

-- ----------------------------
-- Records of t_user_position
-- ----------------------------
INSERT INTO `t_user_position` VALUES ('1', '9', '1', '0', '2019-11-07 21:19:14', '2019-11-07 21:19:17');
INSERT INTO `t_user_position` VALUES ('2', '9', '2', '0', '2019-11-07 21:19:29', '2019-11-07 21:19:31');
INSERT INTO `t_user_position` VALUES ('3', '9', '3', '0', '2019-11-07 21:19:39', '2019-11-07 21:19:43');

-- ----------------------------
-- Table structure for t_user_workexperience
-- ----------------------------
DROP TABLE IF EXISTS `t_user_workexperience`;
CREATE TABLE `t_user_workexperience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位',
  `startTime` datetime DEFAULT NULL COMMENT '入职时间',
  `endTime` datetime DEFAULT NULL COMMENT '离职时间',
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `workTime` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工作年限',
  `workContent` text COLLATE utf8_bin COMMENT '工作内容',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工作经历';

-- ----------------------------
-- Records of t_user_workexperience
-- ----------------------------
INSERT INTO `t_user_workexperience` VALUES ('1', '9', '非经济法律上', '2019-11-05 12:16:31', '2019-11-05 12:16:31', '快手', '5年', 0xE5B0B1E58F91E7949FE4BA86E7BAA0E7BAB7, '2019-11-05 12:16:31', '2019-11-05 12:20:16');
INSERT INTO `t_user_workexperience` VALUES ('2', '10', '法师法萨芬', '2019-11-09 14:12:28', '2019-11-09 14:12:28', '恢复上课', '1', 0xE6B395E5B888E6B395E890A8E88AACE69292E58F91E7949FE58F91E7949F, '2019-11-09 15:24:25', '2019-11-09 14:12:28');
