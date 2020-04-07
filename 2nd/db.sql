/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : openrma

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-03-16 13:42:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for active_sessions
-- ----------------------------
DROP TABLE IF EXISTS `active_sessions`;
CREATE TABLE `active_sessions` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NOT NULL ,
`user_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`user_email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`session_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user_hostname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`local_ip`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`public_ip`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`session_start_time`  datetime NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of active_sessions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for attachments
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`rma_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`att_desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`att_type`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`file`  mediumblob NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of attachments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=25

;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES ('1', 'Product'), ('2', 'Service'), ('3', 'Labour'), ('4', 'Mobile'), ('5', 'Laptop'), ('6', 'Desktop'), ('7', 'Tools'), ('8', 'Software'), ('9', 'CPU'), ('10', 'Graphics Card'), ('11', 'Hard Drive'), ('12', 'RAM Memory'), ('13', 'Printer'), ('14', 'Tablet'), ('15', 'Power Supply'), ('16', 'Power Adapter'), ('17', 'Scanner'), ('18', 'Keyboard'), ('19', 'Mouse'), ('20', 'Monitor'), ('24', 'Brand');
COMMIT;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
`contactid`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`custid`  int(11) NOT NULL ,
`ContactName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Phone`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`contactid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=42

;

-- ----------------------------
-- Records of contacts
-- ----------------------------
BEGIN;
INSERT INTO `contacts` VALUES ('40', '1', 'Tom', 'Jones', '+44 123456789', 'tom@jones.com'), ('41', '280', 'Martin', 'CFO', '9514359053', '');
COMMIT;

-- ----------------------------
-- Table structure for custom_entries
-- ----------------------------
DROP TABLE IF EXISTS `custom_entries`;
CREATE TABLE `custom_entries` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`customfield`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`entryname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=37

;

-- ----------------------------
-- Records of custom_entries
-- ----------------------------
BEGIN;
INSERT INTO `custom_entries` VALUES ('27', 'custom6', 'Yes'), ('28', 'custom6', 'No'), ('29', 'custom7', 'Yes'), ('30', 'custom7', 'No'), ('31', 'custom8', 'Yes'), ('32', 'custom8', 'No'), ('33', 'custom9', 'Yes'), ('34', 'custom9', 'No'), ('35', 'custom10', 'Yes'), ('36', 'custom10', 'No');
COMMIT;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`fname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`lname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`address`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`city`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`postcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`company`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`phone`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`mobile1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`address2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`state`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`custom1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`custom2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`custom3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`custom4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`custom5`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' ,
`registerDate`  date NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=396

;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
INSERT INTO `customers` VALUES ('1', 'Hewlett', 'Packard', '1501 Page Mill Road', 'Palo Alto', 'CA 94304', 'Hewlett-Packard', '1-650-857-1501', '1-650-857-1501', '', '1501 Page Mill Road', 'State', 'United States of America', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', '2018-05-28'), ('13', 'Kathy ', 'Leonard', '5821 Aleander Avenue', 'Fontana', '92336', 'D.G High School', '453575800998', '453575800998', '', '5821 Aleander Avenue', 'Fontana', 'United States of America', 'Custom Field1', 'Custom Field2', 'Custom Field3', 'Custom Field4', 'Custom Field5', '2018-12-28'), ('14', 'Candy', 'Thomas', '9340 Baseline Road', 'Alta Lama', '91799', 'Unified School District', '9548785100', '9340 Baseline Road', '', '9340 Baseline Road', 'Alta Lama', 'United States of America', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', '2018-12-28'), ('15', 'Glen', 'Jones', '7850 Limonite Ave', 'Riverside', '92509', 'Dance Express', '9058745266', '97458521000', '', '7850 Limonite Ave', 'Riverside', 'United States of America', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', '2018-12-28'), ('16', 'Todd', 'Vals', '980  Westing Str.', 'Ontario', '917628', 'Montaclair Motors', '9084032254558', '9084032254558', '', '980  Westing Str.', 'Ontario', 'Canada', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', 'Custom Field', '2018-12-28'), ('142', 'Aracely', 'Mundo', '7212 nw 31st St', 'Miami', '33172', 'Mundo Electronic', '', '3055975234', 'aracelymtz7@hotmail.com', '', 'Florida', 'United States of America', '', '', '', '', '', '2018-12-28'), ('149', 'Richard ', 'Boyd', '54 The Row', 'Dungannon', 'BT71 7gf', '', '', '07786334338', 'accounts@express-systems.co.uk,', 'Moygashel', 'Tyrone', '', '', '', '', '', '', '2018-12-25'), ('158', 'Tony', 'Stark', 'Mumbai Street', 'Florida', 'P0ST 001', 'Stark Industries', '+123456789', '+987654321', 'tony@st.ark', '', 'Florida', 'United States of America', '', '', '', '', '', '2018-12-28'), ('165', 'Johannes Keemetswe', 'Hannis', 'P O BOX 20 Kumakwane', 'Gaborone', 'NONE', 'NONE', '', '72414669', 'rutangsechaba@gmail.com', '', 'NONE', 'Botswana', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', '2019-01-07'), ('175', 'Thomas', 'Beijens', 'Blokakker 24', 'Udenhout', '5071LC', '', '013-4700528', '06-27045634', 'thomas.beijens@gmail.com', '', '', 'Netherlands', '', '', '', '', '', '2019-01-12'), ('179', 'David', 'Test', '8 high st', 'ruskington', 'ng34 8fe', '', '077970789878', '077970789878', 'info@inkandtondirect.co.uk', '', 'Lincolnshire', 'United Kingdom', '', '', '', '', '', '2019-01-15'), ('180', 'Robinson', 'Cindy', '1610 Hartford hwy', 'Dothan', '36301', '', '3347920551', '', '', '', '', '', '', '', '', '', '', '2019-01-15'), ('222', 'john', 'doe', '1 somewhere', 'some place', '12345', '', '123-456-7890', '', 'srunkles@jacs-solutions.com', '', '', '', '', '', '', '', '', '2019-06-26'), ('352', 'Steven', 'Runkles', '6190 Freedom Ave', 'Sykesville', '21784', '', '443-718-4333', '443-985-9659', 'sarunklesjr@hotmail.com', '', '', '', '', '', '', '', '', '2019-06-27'), ('383', 'Al Rajhi Bank', 'ACS', 'Riyadh', 'Riyadh', '', 'ACS', '', '', ',', '', '', 'Saudi Arabia', '', '', '', '', '', '2019-09-01'), ('388', 'Lyle', 'Vogler', '2582 Waker Woods Ct NW', 'Grand Rapids', '49544', '', '616-889-1302', '', 'lylevogler@gmail.com,', '', 'MI', 'United States of America', '', '', '', '', '', '2019-09-06'), ('389', 'Johanna ', 'escobar', 'Panay Ave', 'Quezon city', '1112', '', '', '09358441201', 'j.erikaescobar21@gmail.com', '', '', '', '', '', '', '', '', '2019-09-10'), ('392', 'Shane', 'Marsh', 'Conway St', 'Lismore', '2480', 'Ongmac', '0266215981', '', 'shane@ongmac.com.au', '', 'NSW', 'Australia', '', '', '', '', '', '2019-09-16'), ('393', 'Diana', 'Kongsyahyiu', 'Sultan Hasanuddin', 'Makassar', '90112', 'Multi Rasa', '876543', '081176165', 'diana@gmail.com', '', 'Sulawesi Selatan', 'Indonesia', '', '', '', '', '', '2019-09-17'), ('395', 'Ted', 'Fravel', '245 Township Line Road', 'Hatfield', '19440', '', '', '', 'tfravel@parker.com', '', '', '', '', '', '', '', '', '2019-09-18');
COMMIT;

-- ----------------------------
-- Table structure for damages
-- ----------------------------
DROP TABLE IF EXISTS `damages`;
CREATE TABLE `damages` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=23

;

-- ----------------------------
-- Records of damages
-- ----------------------------
BEGIN;
INSERT INTO `damages` VALUES ('1', 'Broken Screen'), ('2', 'Display needs repairing'), ('3', 'Display not workig'), ('4', 'The keyboard is not functioning'), ('5', 'Format required'), ('6', 'Backup data required'), ('7', 'Recovery required'), ('8', 'Not working'), ('9', 'Not Opening'), ('10', 'Computer keeps restarting'), ('11', 'Computer is slow'), ('12', 'Computer freezes'), ('13', 'The Screen is Frozen'), ('14', 'Computer Won’t Start'), ('15', 'PC blue screen of death'), ('16', 'Pop-up ads'), ('17', 'Unusual noises'), ('18', 'The Screen is Blank'), ('19', 'Microphone not working'), ('20', 'Speaker not working'), ('21', 'On/off button not working'), ('22', 'Volume buttons not working');
COMMIT;

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=121

;

-- ----------------------------
-- Records of devices
-- ----------------------------
BEGIN;
INSERT INTO `devices` VALUES ('1', 'HP Pro Desk - Elite Desk'), ('2', 'Google Pixel 2 XL'), ('3', 'Honor 9'), ('4', 'HTC U11'), ('5', 'Huawei Mate 10 Pro'), ('6', 'iPad 1'), ('7', 'iPad 3'), ('8', 'iPad 3'), ('9', 'iPad 4'), ('10', 'iPhone'), ('11', 'iPhone 3G'), ('12', 'iPhone 3GS'), ('13', 'iPhone 4'), ('14', 'iPhone 4S'), ('15', 'iPhone 5'), ('16', 'iPhone 5c'), ('17', 'iPhone 5s'), ('18', 'iPhone 6'), ('19', 'iPhone 6 Plus'), ('20', 'iPhone 6s'), ('21', 'iPhone 6s Plus'), ('22', 'iPhone 7'), ('23', 'iPhone 7 Plus'), ('24', 'iPhone 8'), ('25', 'iPhone 8 Plus'), ('26', 'iPhone SE'), ('27', 'iPhone X'), ('28', 'iPhoneXs'), ('29', 'iPhone Xs MAX'), ('30', 'OnePlus 5T'), ('31', 'Samsung Galaxy (original)'), ('32', 'Samsung Galaxy 5'), ('33', 'Samsung Galaxy Chat'), ('34', 'Samsung Galaxy Core'), ('35', 'Samsung Galaxy Core 2'), ('36', 'Samsung Galaxy Express'), ('37', 'Samsung Galaxy Express 2'), ('38', 'Samsung Galaxy J'), ('39', 'Samsung Galaxy J2 Prime'), ('40', 'Samsung Galaxy J5'), ('41', 'Samsung Galaxy J5 (2016)'), ('42', 'Samsung Galaxy J7'), ('43', 'Samsung Galaxy Note 8'), ('44', 'Samsung Galaxy S'), ('45', 'Samsung Galaxy S II'), ('46', 'Samsung Galaxy S III'), ('47', 'Samsung Galaxy S4'), ('48', 'Samsung Galaxy S5'), ('49', 'Samsung Galaxy S6'), ('50', 'Samsung Galaxy S7'), ('51', 'Samsung Galaxy S8'), ('52', 'Samsung Galaxy S8'), ('53', 'Samsung Galaxy S8 Plus'), ('54', 'Samsung Galaxy Tab S'), ('55', 'Samsung Galaxy Tab S2'), ('56', 'Samsung Galaxy Tab S3'), ('57', 'Samsung Galaxy Trend 2 Lite'), ('101', 'Samsung Galaxy Note 10+'), ('102', 'Samsung Galaxy Note 10'), ('103', 'Samsung Galaxy Note 9'), ('104', 'Samsung Galaxy Note 8'), ('105', 'OnePlus 7 Pro'), ('106', 'Xiaomi Mi 9'), ('107', 'Google Pixel 3'), ('108', 'Samsung Galaxy S10 Plus'), ('109', 'iPhone XR'), ('110', 'Huawei P30 Pro'), ('111', 'Xiaomi Mi Mix 3'), ('120', 'iPhone 4');
COMMIT;

-- ----------------------------
-- Table structure for emailtemplates
-- ----------------------------
DROP TABLE IF EXISTS `emailtemplates`;
CREATE TABLE `emailtemplates` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`subject`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`body`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10

;

-- ----------------------------
-- Records of emailtemplates
-- ----------------------------
BEGIN;
INSERT INTO `emailtemplates` VALUES ('1', 'Notification of Repair for {PRODUCT}. Your Repair Service {RMA} is completed.Notification of Repair for {PRODUCT}. Your Repair Service {RMA} is completed.', 'Dear {CUSTOMER}, this is to inform you that your repair order with RMA ID:{RMA} for product {PRODUCT} has completed and it\'s ready for pickup from our repair shop.'), ('2', 'Cost quote for your Repair', 'This is to inform you about the cost of your repair.'), ('3', 'No fault found for your repair', 'This is to inform you that we have no found any problem with your repair.'), ('4', 'Unit is Replaced', 'This is to inform you that your unit has replaced and will sent back to you soon.'), ('9', 'Unit is Ready', 'This is to inform you that your repair has complete and is ready to pick up.');
COMMIT;

-- ----------------------------
-- Table structure for increment
-- ----------------------------
DROP TABLE IF EXISTS `increment`;
CREATE TABLE `increment` (
`incrementid`  bigint(20) NOT NULL ,
`rmaid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`incrementid`, `rmaid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of increment
-- ----------------------------
BEGIN;
INSERT INTO `increment` VALUES ('1', 'R-2018123922-1'), ('2', 'R-20181231010-2'), ('3', 'R-20181231031-3'), ('4', 'R-20181231224-4'), ('5', 'R-20181231344-5'), ('6', 'R-20181231755-6'), ('7', 'R-20181231756-7'), ('8', 'R-20181231756-8'), ('9', 'R-2018124923-9'), ('10', 'R-2018124931-10'), ('11', 'R-20181241213-11'), ('12', 'R-20181241228-12'), ('13', 'R-20181241258-13'), ('14', 'R-2018125913-14'), ('15', 'R-20181251116-15'), ('16', 'R-20181251139-16'), ('17', 'R-20181251218-17'), ('18', 'R-20181251244-18'), ('19', 'R-20181251347-19'), ('20', 'R-20181251417-20'), ('21', 'R-20181251420-21'), ('22', 'R-2018125179-22'), ('23', 'R-20181261127-23'), ('24', 'R-20181271030-24'), ('25', 'R-2018127115-25'), ('26', 'R-20181271144-26'), ('27', 'R-20181271527-27'), ('28', 'R-20181282356-28'), ('29', 'R-201812121039-29'), ('30', 'R-201812122023-30'), ('31', 'R-201812142142-31'), ('32', 'R-201812142156-32'), ('33', 'R-201812142223-33'), ('34', 'R-201812141656-34'), ('35', 'R-201812161515-35'), ('36', 'R-201812161543-36'), ('37', 'R-20181217216-37'), ('38', 'R-201812221848-38'), ('39', 'R-201812251054-39'), ('40', 'R-20181226831-40'), ('41', 'R-201812291325-41'), ('42', 'R-201912227-42'), ('43', 'R-2019132014-43'), ('44', 'R-201917032-44'), ('45', 'R-2019171329-45'), ('46', 'R-201917145-46'), ('47', 'R-2019171511-47'), ('48', 'R-2019181357-48'), ('49', 'R-201918145-49'), ('50', 'R-201918154-50'), ('51', 'R-201919940-51'), ('52', 'R-2019191938-52'), ('53', 'AK-201919-53'), ('54', 'R-2019110925-54'), ('55', 'R-20191101014-55'), ('56', 'R-20191112341-56'), ('57', 'R-20191121946-57'), ('58', 'R-2019201-58'), ('59', 'R-2019114128-59'), ('60', 'R-20191141230-60'), ('61', 'R-20191151556-61'), ('62', 'R-2019115129-62'), ('63', 'R-20191171044-63'), ('64', 'R-20191171052-64'), ('65', 'R-20191171223-65'), ('66', 'R-20191181328-66'), ('67', 'R-20191181157-67'), ('68', 'R-2019119130-68'), ('69', 'RJ100069'), ('70', 'R-20191232113-70'), ('71', 'R-20191241057-71'), ('72', 'R-20191241812-72'), ('73', 'R-20191241816-73'), ('74', 'R-20191241817-74'), ('75', 'R-20191241828-75'), ('76', 'R-2019126152-76'), ('77', 'R-2019128152-77'), ('78', 'R-20191291427-78'), ('79', 'RMA-0079GI'), ('80', 'R-20191301836-80'), ('81', 'R-20191301846-81'), ('82', 'R-201923056-82'), ('83', 'R-201924954-83'), ('84', 'R-2019241644-84'), ('85', 'R-201925134-85'), ('86', 'R-2019281225-86'), ('87', 'R-2019291222-87'), ('88', 'R-2019292317-88'), ('89', 'R-20192111334-89'), ('90', 'R-201921118-90'), ('91', 'R-20192131517-91'), ('92', 'R-20192131546-92'), ('93', 'R-20192131328-93'), ('94', 'R-20192161415-94'), ('95', 'R-20192171325-95'), ('96', 'R-20192171430-96'), ('97', 'R-17-2-2019-17:49-97-CPSC'), ('98', 'R-17-2-2019-17:54-98-CPSC'), ('99', 'R-17-2-2019-17:56-99-CPSC'), ('100', 'R-20192181539-100');
INSERT INTO `increment` VALUES ('101', 'R-2019219238-101'), ('102', 'R-2019221648-102'), ('103', 'R-20192221426-103'), ('104', 'R-20192222257-104'), ('105', 'R-20192222314-105'), ('106', 'R-20192251814-106'), ('107', 'R-20192261416-107'), ('108', 'R-20192261316-108'), ('109', 'R-2019227162-109'), ('110', 'R-20192271530-110'), ('111', 'R-20192271612-111'), ('112', 'R-201932236-112'), ('113', 'R-2019331519-113'), ('114', 'R-2019331547-114'), ('115', 'R-2019331712-115'), ('116', 'R-201935204-116'), ('117', 'R-2019361139-117'), ('118', 'R-2019361233-118'), ('119', 'R-2019381254-119'), ('120', 'R-20193111934-120'), ('121', 'R-20193121643-121'), ('122', 'R-2019313173-122'), ('123', 'R-20193141947-123'), ('124', 'R-20193142025-124'), ('125', 'R-20193142025-125'), ('126', 'R-20193151026-126'), ('127', 'R-20193151227-127'), ('128', 'R-20193151324-128'), ('129', 'R-20193211021-129'), ('130', 'R-20193211055-130'), ('131', 'R-20193212029-131'), ('132', 'R-2019322912-132'), ('133', 'R-2019322211-133'), ('134', 'R-20193251030-134'), ('135', 'R-20193251051-135'), ('136', 'R-2019325115-136'), ('137', 'R-20193251122-137'), ('138', 'R-20193251123-138'), ('139', 'R-20193251124-139'), ('140', 'R-20193261015-140'), ('141', 'R-20193261445-141'), ('142', 'R-2019329181-142'), ('143', 'R-2019411111-143'), ('144', 'R-2019411032-144'), ('145', 'R-20194112052-145'), ('146', 'R-20194112229-146'), ('147', 'R-20194121428-147'), ('148', 'R-20194121624-148'), ('149', '2019414938-149'), ('150', '20194141555-150'), ('151', '20194141559-151'), ('152', '2019414169-152'), ('153', 'R-201941528-153'), ('154', '154'), ('155', '155'), ('156', 'R-20194151834-156'), ('157', 'R-20194151837-157'), ('158', 'R-20194161439-158'), ('159', 'R-20194171136-159'), ('160', 'R-2019417127-160'), ('161', 'R-20194181047-161'), ('162', 'R-20194181053-162'), ('163', 'R-2019419953-163'), ('164', 'R-20194191416-164'), ('165', 'R-20194191426-165'), ('166', 'R-20194191447-166'), ('167', 'R-20194231823-167'), ('168', 'R-20194251237-168'), ('169', 'R-20194272211-169'), ('170', 'R-2019427171-170'), ('171', 'R-20194301452-171'), ('172', 'R-2019511312-172'), ('173', 'R-2019511814-173'), ('174', 'R-2019511719-174'), ('175', 'R-201951180-175'), ('176', 'R-201951205-176'), ('177', 'R-201952121-177'), ('178', 'R-201953924-178'), ('179', 'R-2019531422-179'), ('180', 'R-2019581656-180'), ('181', 'R-2019591843-181'), ('182', 'R-2019591929-182'), ('183', 'R-20195121147-183'), ('184', 'R-2019512120-184'), ('185', 'R-20195121851-185'), ('186', 'R-2019512192-186'), ('187', 'R-20195121911-187'), ('188', 'R-20195121924-188'), ('189', 'R-2019512214-189'), ('190', 'R-20195122151-190'), ('191', 'R-20195131214-191'), ('192', 'R-20195131621-192'), ('193', 'R-20195142241-193'), ('194', 'R-2019515033-194'), ('195', 'R-2019515047-195'), ('196', 'R-20195191357-196'), ('197', 'R-20195191757-197'), ('198', 'R-2019522954-198'), ('199', 'R-2019522108-199'), ('200', 'R-20195222024-200');
INSERT INTO `increment` VALUES ('201', 'R-20195241041-201'), ('202', 'R-20195251024-202'), ('203', 'R-20195262329-203'), ('204', 'R-2019529161-204'), ('205', 'R-62420195291433-20510000'), ('206', 'R-62420195291839-20610000'), ('207', '20195301243-020710000'), ('208', '0201964166-2080'), ('209', '02019651614-2090'), ('210', '02019651631-2100'), ('211', '02019651650-2110'), ('212', 'R-2019661451-212'), ('213', 'R-201969206-213'), ('214', 'R-2019692018-214'), ('215', 'R-2019691932-215'), ('216', 'R-2019691938-216'), ('217', 'R-2019611043-217'), ('218', 'R-20196111827-218'), ('219', 'R-20196111316-219'), ('220', '020196121656-2200'), ('221', '02019612170-2210'), ('222', '02019612172-2220'), ('223', 'R-20196131623-223'), ('224', '02019613195-2240'), ('225', '020196141926-2250'), ('226', '020196151047-2260'), ('227', '020196171845-2270'), ('228', '020196171915-2280'), ('229', '020196211156-2290'), ('230', '02019621128-2300'), ('231', '020196211444-2310'), ('232', '020196211546-2320'), ('233', 'R-2019622932-233'), ('234', 'R-2019622102-234'), ('235', 'R-20196221012-235'), ('236', 'R-20196231538-236'), ('237', 'R-2019624919-237'), ('238', 'R-2019624927-238'), ('239', '020196241513-2390'), ('240', '020196241816-2400'), ('241', '020196251833-2410'), ('242', '020196251839-2420'), ('243', 'R-2019627240-243'), ('244', '020196271047-2440'), ('245', 'R-20196271940-245'), ('246', '020196271610-2460'), ('247', '020196271823-2470'), ('248', 'R-20196271543-248'), ('249', '020196281025-2490'), ('250', 'R-201982116-250'), ('251', 'R-2019821027-251'), ('252', 'R-2019821055-252'), ('253', 'R-2019821118-253'), ('254', 'R-2019832134-254'), ('255', 'R-2019851034-255'), ('256', 'R-2019851041-256'), ('257', 'R-2019851046-257'), ('258', 'R-2019851056-258'), ('259', 'R-2019862243-259'), ('260', 'R-201986234-260'), ('261', 'R-20198131457-261'), ('262', 'R-20198131538-262'), ('263', 'R-201981592-263'), ('264', 'R-20198171258-264'), ('265', 'R-2019820231-265'), ('266', 'R-2019821853-266'), ('267', 'R-20198211442-267'), ('268', 'R-20198221643-268'), ('269', 'R-20198221830-269'), ('270', 'R-2019824130-270'), ('271', 'R-20198241435-271'), ('272', 'R-00272'), ('273', 'R-2019911548-273'), ('274', 'R-201992956-274'), ('275', 'R-2019951020-275'), ('276', 'R-2019951213-276'), ('277', 'R-2019951222-277'), ('278', 'R-2019951227-278'), ('279', 'R-20199101324-279'), ('280', 'R-20199101329-280'), ('281', 'R-20199101231-281'), ('282', 'R-20199131541-282'), ('283', 'R-20199161233-283'), ('284', 'R-201991749-284'), ('285', 'R-2019917149-285'), ('286', 'R-20199181337-286'), ('287', 'R-20199201844-287'), ('288', 'R-201992527-288'), ('289', 'R-20199251450-289'), ('290', 'R-2019925156-290'), ('291', 'R-20199271650-291'), ('292', 'R-2019929226-292'), ('293', 'R-201912311246-293'), ('294', 'R-2020131216-294');
COMMIT;

-- ----------------------------
-- Table structure for multiparts
-- ----------------------------
DROP TABLE IF EXISTS `multiparts`;
CREATE TABLE `multiparts` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`partRMA`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`partCode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`partDescription`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`partSerial`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`partQty`  int(11) NULL DEFAULT NULL ,
`partProblem`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`partTechNotes`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of multiparts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`serviceid`  int(11) NOT NULL ,
`subject`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
`notes`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ,
`date`  date NOT NULL ,
`action`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`snooze`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of notifications
-- ----------------------------
BEGIN;
INSERT INTO `notifications` VALUES ('1', '1', 'test111', 'testtesetese', '2020-03-11', null, null), ('2', '1', 'test', 'ALLLLLLLLL', '2020-03-12', null, null), ('4', '27', 'teste3', 'testetsetsetsetsetsetsetsetsetsetsets', '2020-03-12', null, null), ('5', '497', '1111', '222222222222222222222222222', '2020-03-12', null, null);
COMMIT;

-- ----------------------------
-- Table structure for phonelogs
-- ----------------------------
DROP TABLE IF EXISTS `phonelogs`;
CREATE TABLE `phonelogs` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`customerid`  int(10) NOT NULL ,
`date`  date NOT NULL ,
`technician`  int(10) NOT NULL ,
`note`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ,
`reference`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`type`  int(10) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of phonelogs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for phonelogs_types
-- ----------------------------
DROP TABLE IF EXISTS `phonelogs_types`;
CREATE TABLE `phonelogs_types` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of phonelogs_types
-- ----------------------------
BEGIN;
INSERT INTO `phonelogs_types` VALUES ('1', 'Agreements'), ('2', 'Notes'), ('3', 'Issues'), ('4', 'Complaints'), ('5', 'Other');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`code`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`category`  bigint(20) UNSIGNED NOT NULL ,
`vendorID`  int(10) UNSIGNED NOT NULL ,
`unitPrice`  decimal(8,2) NOT NULL ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`tax`  int(11) UNSIGNED NOT NULL ,
`stock`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY (`tax`) REFERENCES `tax` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
FOREIGN KEY (`vendorID`) REFERENCES `vendors` (`vendorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
INDEX `fk_categories_product` (`category`) USING BTREE ,
INDEX `fk_tax_product` (`tax`) USING BTREE ,
INDEX `fk_vendor_product` (`vendorID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=30

;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('13', '001', '2', '1', '25.00', 'Windows Recovery for Laptop', '1', '1'), ('14', '002', '1', '1', '30.00', 'Windows Recovery for Desktops', '1', '1'), ('15', '003', '1', '1', '15.00', 'Tablet System Recovery', '1', '1'), ('16', '004', '2', '1', '30.00', 'Virus Removal Service', '1', '1'), ('17', '005', '1', '1', '50.00', 'HDD Data Recovery', '1', '1'), ('18', '006', '1', '1', '120.00', 'Display Replacement', '1', '1'), ('19', '007', '1', '1', '50.00', 'Laptop Internal Cleaning', '1', '1'), ('20', '008', '1', '1', '50.00', 'Antivirus Installation', '1', '1'), ('21', '009', '1', '1', '80.00', 'Microsoft Office Installation', '3', '1'), ('22', '010', '2', '1', '20.00', 'Hardware Component Installation', '3', '150'), ('23', '011', '2', '4', '30.00', 'Intel CPU Fan Standard', '2', '150'), ('24', '012', '2', '4', '40.00', 'Intel CPU Fan Noiseless', '2', '150'), ('25', '013', '2', '4', '25.00', 'Intel PCI-e Network Card', '1', '150'), ('26', '014', '2', '4', '30.00', 'Intel PCI Network Card', '1', '150'), ('27', '015', '2', '2', '20.00', 'Nvidia GPU Fan Standard', '1', '150'), ('28', '016', '2', '2', '30.00', 'Nvidia GPU Fan Noiseless', '1', '150'), ('29', '017', '2', '2', '50.00', 'Nvidia Generic GPU', '1', '150');
COMMIT;

-- ----------------------------
-- Table structure for product_service
-- ----------------------------
DROP TABLE IF EXISTS `product_service`;
CREATE TABLE `product_service` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`productId`  int(10) UNSIGNED NOT NULL ,
`serviceId`  bigint(20) NOT NULL ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`qty`  decimal(8,2) NULL DEFAULT NULL ,
`unitPrice`  decimal(8,2) NULL DEFAULT NULL ,
`total`  decimal(8,2) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
INDEX `fk_service_productservice_idx` (`serviceId`) USING BTREE ,
INDEX `fk_product_service_product_idx` (`productId`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of product_service
-- ----------------------------
BEGIN;
INSERT INTO `product_service` VALUES ('1', '17', '195', 'HDD Data Recovery', '2.00', '50.00', '100.00'), ('2', '17', '-1', 'HDD Data Recovery', '1.00', '50.00', '50.00'), ('3', '13', '1', 'Windows Recovery for Laptop', '1.00', '25.00', '25.00');
COMMIT;

-- ----------------------------
-- Table structure for rma_status
-- ----------------------------
DROP TABLE IF EXISTS `rma_status`;
CREATE TABLE `rma_status` (
`statusID`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`statusName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`statusColor`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`statusID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=14

;

-- ----------------------------
-- Records of rma_status
-- ----------------------------
BEGIN;
INSERT INTO `rma_status` VALUES ('1', 'Awaiting repair', 'Orange'), ('2', 'Repair in Proccess', 'LightGreen'), ('3', 'Awaiting Supplier', 'LightPink'), ('4', 'Awaiting Parts', 'BlueViolet'), ('5', 'Repair Completed', 'Green'), ('6', 'Sent to Customer', 'Silver'), ('7', 'Credit', 'White'), ('8', 'Awaiting Customer Confirmation', 'YellowGreen'), ('9', 'Awaiting to be sent to Supplier', 'BlueViolet'), ('10', 'Sent to Supplier', 'Pink'), ('11', 'Repaired/Replacement from Supplier', 'Red'), ('12', 'Awaiting Repair', 'Orange'), ('13', 'Warte auf Reparatur', 'Orange');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
`ID`  int(11) NULL DEFAULT NULL ,
`UserName`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`MainApp`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainNewCust`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainSaveCust`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainDelCust`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainSearchCust`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainNewRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainSaveRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainPrintRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainPrintTicket`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainPrintParcel`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainPrintSN`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`MainGenSN`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`ServicesMgm`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMServiceMgm`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMAttachments`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMItemService`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMNotification`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMActionLog`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMSearchRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMAddPart`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMDelPart`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMPrintRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMPrintParcel`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMPrintSupp`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMPrintCheckout`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMSaveRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SMDelRMA`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SettingsPanel`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPGen`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPRMAStat`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPSupp`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPDevices`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPDamages`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPCateg`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPTech`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPWarrenty`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPSMS`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPEmail`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPBusiLoc`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPCustField`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPBackupExport`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`SPRoles`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`Exporting`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`ExportSearch`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`InventoryMgm`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`IMNew`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`IMEdit`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`IMDel`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`IMSearch`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`Reporting`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' ,
`PhoneLog`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'true' ,
`PLNew`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'true' ,
`PLEdit`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'true' ,
`PLDel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'true' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('-1', null, 'true', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'true', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'true', 'true', 'true', 'true'), ('1', 'admin', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'), ('2', 'user', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true');
COMMIT;

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`clientid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`rmaid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`clientname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`mobile`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`cost`  decimal(10,2) NULL DEFAULT NULL ,
`opendate`  datetime NULL DEFAULT NULL ,
`timespent`  time NULL DEFAULT NULL ,
`description`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`includesoftware`  int(11) NULL DEFAULT NULL ,
`includecharger`  int(11) NULL DEFAULT NULL ,
`includecase`  int(11) NULL DEFAULT NULL ,
`includebattery`  int(11) NULL DEFAULT NULL ,
`includeother`  int(11) NULL DEFAULT NULL ,
`otherdesc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`machinetype`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`serialnumber`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`technician`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`machinecond`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`techdesc`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`finished`  int(11) NULL DEFAULT NULL ,
`delivered`  int(11) NULL DEFAULT NULL ,
`shelf`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`phone`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`rma_status`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`supplier_cost`  decimal(10,2) NULL DEFAULT NULL ,
`supplier`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`estimatedate`  date NULL DEFAULT NULL ,
`warranty`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom5`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`internalnotes`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`store`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`accessories`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`custom6`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom7`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom8`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom9`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`custom10`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`finished_date`  date NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=498

;

-- ----------------------------
-- Records of services
-- ----------------------------
BEGIN;
INSERT INTO `services` VALUES ('1', '1', '201789-RMA', 'Corporation Intel', '(408) 765-8080', '45.02', '2019-01-01 00:00:00', '00:00:04', 'CPU Not Working', '0', '0', '0', '0', '1', 'CPU Fan', 'Intel Core i5 5700', '98201720355', 'Main Technician', 'Pins Off', 'Need further inspection.', '1', '0', 'A1', '(408) 765-8080', 'Repair Completed', '0.01', 'Intel Corporation', '2019-08-05', 'Not in Warranty', 'Custom Field1', 'Custom Field2', 'Custom Field3', 'Custom Field4', 'Custom Field5', 'Internal Notes.  Just for Internal Use.', 'Main Store', 'CPU Fan', 'Custom Field6', 'Custom Field7', 'Custom Field8', 'Custom Field9', 'Custom Field10', '2019-05-04'), ('27', '13', '2018418-RMA', 'Kathy  Leonard', '453575800998', '160.00', '2019-01-25 10:17:57', '00:00:00', 'Printer is not working with error 51.10\r\nSome times when we restart it it works for a while.', '0', '0', '0', '0', '1', 'Power Cord, Couple of Sheets', 'HP Laserjet P3015 DN', 'HP666555444', 'John Doe', 'Scratched and Damaged Externally', 'Inspection Scheduled for 15/08', '1', '0', '', '453575800998', 'Awaiting Parts', '50.00', 'Hewlett Packard', '2019-08-05', 'Warranty for 6 Months', 'Custom Service Field', 'Custom Service Field', 'Custom Service Field', 'Custom Service Field', 'Custom Service Field', 'Customer is a bit hurry so we need to look at it asap.', 'Main Store', 'Power Cord,Power Cord, Couple of Sheets', '', '', '', '', '', '2019-09-02'), ('195', '16', '201858-RMA', 'Todd Vals', '9084032254558', '50.00', '2019-02-05 19:02:24', '00:00:05', 'Computer keeps restarting', null, null, null, null, null, '', 'Acer Arpire 540', 'A456-884755', 'John Abraham', 'Scratched', 'Infected with virus 10/3/2018 7:01:31 PM', '0', '0', '', '9084032254558', 'Repair Completed', '0.00', 'Acer', '2019-08-05', 'Warranty Plan For 3 Years', '', '', '', '', '', '', 'Main Store', 'Keyboard,Mouse,Power Cord,', '', '', '', '', '', null), ('196', '16', '20189232-RMA', 'Todd Vals', '9084032254558', '50.00', '2019-03-05 19:03:44', '00:00:02', 'On/off button not working\r\nVolume buttons not workin', null, null, null, null, null, '', 'iPhone XS MAX', 'ABC4566788', 'John Abraham', 'Scratched', 'Infected with virus 10/3/2018 7:01:31 PM\r\nok na rin ito', '1', '0', '', '9084032254558', 'Awaiting Supplier', '0.00', 'Apple', '2019-08-05', 'Warranty Plan For 1 Year', '', '', '', '', '', 'ready and tapos na ', 'Main Store', 'Charger,Battery,Power Cord,Memory Card,Cables,', '', '', '', '', '', '2019-05-03'), ('197', '15', '319351-RMA', 'Glen Jones', '97458521000', '50.00', '2019-03-09 19:03:59', '00:00:00', 'Not charging when in sleep mode', null, null, null, null, null, '', 'iPhone XS MAX', 'ABC4566788', 'John Abraham', 'Scratched', 'Needs replacement from Apple.', '0', '0', '', '9058745266', 'Repair Completed', '0.00', 'Apple', '2019-08-05', 'Warranty Plan For 1 Year', '', '', '', '', '', '', 'Main Store', 'Charger,Battery,Power Cord,Memory Card,Cables,', '', '', '', '', '', null), ('198', '14', '201810416-RMA', 'Candy Thomas', '9340 Baseline Road', '0.00', '2019-03-12 12:59:45', '00:00:00', 'Computer keeps restarting', null, null, null, null, null, '', 'Dell 540', '', 'Anthony Hall', '', '', '0', '0', '', '9548785100', 'Awaiting Parts', '0.00', '', '2019-08-05', '', '', '', '', '', '', '', 'Main Store', '', '', '', '', '', '', '2019-04-15'), ('199', '142', '20411363-RMA', 'Aracely Mexicana', '3055975234', '0.00', '2019-03-26 11:40:08', '00:00:00', 'the Laptop Doesn\'t start', null, null, null, null, null, '', 'LEN 320 Ideapad', 'PF12UZNG', 'Administrator', 'Used', 'Download SO from Lenovo Website', '1', '0', '', '', 'Repair Completed', '0.00', 'lenovo', '2019-08-05', 'Warranty Plan For 1 Year', 'LEN-80XR00AHUS-p', '', '', '', '', '', 'Main Store', 'Charger,Power Cord,', '', '', '', '', '', null), ('200', '142', '2018104-RMA', 'Aracely Mexicana', '3055975234', '0.00', '2019-04-01 12:31:43', '00:00:20', 'Computer Won’t Start', null, null, null, null, null, 'Box', 'Len 320 Ideapad Blue', 'PF12UZNG', 'Juan Ramirez', 'new', '10/4/2018 12:29:34 PM\r\nJuan Ramirez', '1', '0', '', '', 'Repair Completed', '0.00', 'Apple', '2019-08-05', 'Warranty Plan For 1 Year', 'Bought 7/12/18', 'Invoice 14354', 'Sales Person: Rhona Lombana', '', '', '', 'Main Store', 'Charger,Power Cord,Box', '', '', '', '', '', '2019-09-04'), ('208', '149', 'R-2018-40', 'Richard  Boyd', '07786334338', '0.00', '2019-04-02 08:32:00', '00:00:00', 'problem with hard drive', null, null, null, null, null, '', 'Samsung Galaxy Tab S3', 'kjlkmp4rjkel', 'Technician', 'good', '', '1', '0', '', '', 'Awaiting to be sent to Supplier', '0.00', 'Saver.gr', '2019-08-05', '', '', '', '', '', '', '', 'Main Store', '', '', '', '', '', '', null), ('216', '158', 'RMA-593852', 'Tony Stark', '+987654321', '0.00', '2019-04-03 15:58:16', '00:00:00', 'Suit Not Flying', null, null, null, null, null, 'Boots, Gloves', 'Fighting Shoot', '0123456789', 'John', 'Suit is scratched and burned', 'Power Battery Problem', '1', '0', '', '+123456789', 'Repair Completed', '0.00', 'Marvel', '2019-08-05', 'No Warranty', '2018-12-20', '', '', '', '', '', 'Main Store', 'Boots, Gloves', '', '', '', '', '', '2019-08-12'), ('227', '168', 'R-2019181', 'Ben Dueck', '6153678', '20.00', '2019-04-08 14:05:26', '00:25:00', 'Does not turn on', null, null, null, null, null, '', 'Makita 5007NKX', '', 'Placido Sho', '', 'replaced Switch damaged\r\n', '1', '0', '', '', 'Awaiting Customer Confirmation', '0.00', 'Makita', '2019-01-18', '', '652342', '', '', '', '', '', 'Main Store', '', '', '', '', '', '', null), ('236', '175', 'R-20', 'Thomas Beijens', '06-27045634', '0.00', '2019-04-12 20:01:59', '00:00:00', 'de pc is traag 2 test', null, null, null, null, null, '', 'Samsung Galaxy S III', '1234567890', 'Jas', 'hoek van de pc weg', '', '1', '0', '', '013-4700528', 'Repair Completed', '0.00', 'D&H Canada', '2019-08-05', '', '', '', '', '', '', '', 'Main Store', 'Case,Mouse,Power Cord,USB Stick,Memory Card,Cables,Printer,', '', '', '', '', '', '2019-08-12'), ('240', '179', 'R-2019116-61', 'David Test', '077970789878', '0.00', '2019-04-15 15:56:13', '00:00:00', 'Screen damaged', null, null, null, null, null, '', 'Laptop', '0989e8896876', 'David', 'Light scratches', '', '1', '0', '', '077970789878', 'Repair Completed', '0.00', 'acer', '2019-01-19', '', '', '', '', '', '', '', 'Main Store', 'Software,Case,Charger,Battery,Monitor,Power Cord,', '', '', '', '', '', '2019-09-18'), ('245', '183', 'R-20191-66', 'John Orfanidis', '+44 7519547100', '150.00', '2019-04-18 13:28:28', '00:00:03', 'iPhone is not charging all the time,\r\nSometimes is chrging sometimes not.', null, null, null, null, null, 'Comes with Charger and cable', 'iPhone Xs MAX', 'IPF58877445566', 'Tim Janders', 'Scratched Sceen on top', 'iPhone need update to the latest\r\nfirmware version. 1/18/2019 1:26:49 PM', '1', '0', 'SHELF B5', '+44 7519547100', 'Sent to Customer', '50.65', 'Apple', '2019-08-05', 'Not in Warranty', '', '', '', '', '', 'Customer is ugly. >>>Needs attention in communication <<<', 'Main Store', 'Case,Charger,Battery,Power Cord,Comes with Charger and cable', '', '', '', '', '', '2019-08-02'), ('283', '14', 'R-2019293', 'Candy Thomas', '9340 Baseline Road', '0.00', '2019-02-13 13:28:06', '00:00:01', 'probleme avec sont chargeur ', null, null, null, null, null, '', 'iPhone 7 Plus', '4505663401596', 'Marwan ben ali ', 'starke Gebrauchsspuren', 'probleme de service', '1', '0', '', '9548785100', 'Awaiting Supplier', '0.00', 'Apple', '2019-08-05', 'Warranty for 6 Months', '', '', '', '', '', '', 'Main Store', 'Case,Charger,', '', '', '', '', '', '2019-05-03'), ('294', '222', 'RMA-20191', 'Bula Bendos', '8975678675', '0.00', '2019-02-19 00:14:36', '00:00:00', 'It doesn\'t work anymore. Please go over and test truly', null, null, null, null, null, '', 'Dcl200', '674764', 'John', '', '', '0', '0', '', '8578895555', 'Repair Completed', '0.00', '', '2019-08-05', 'No Warranty', '2019-02-04', '', '', '', '', '', 'Main Store', '', '', '', '', '', '', null), ('332', '252', 'R-201-128', 'David Austin', '817-855-5568', '0.00', '2019-03-15 13:24:09', '00:04:19', 'PC blue screen of death', null, null, null, null, null, '', 'Desktop', 'ABB5887996', 'Preston', 'Like New', 'Format required\r\n3/18/2019 9:16:44 PM', '0', '0', '', '817-584-6894', 'Repair Completed', '0.00', 'Dell', '2019-08-05', 'Not in Warranty', '', '', '', '', '', 'Customer needs the word done within 2 days.', 'Main Store', 'Case,', '', '', '', '', '', null), ('497', '142', 'R-20956-274', 'Aracely Mundo', '3055975234', '0.00', '2019-09-02 09:56:45', '00:00:00', 'Computer Won’t Start\r\nSpeaker not working9/2/2019 9:55:24 AM\r\n\r\n9/2/2019 9:55:27 AM\r\n\r\n', null, null, null, null, null, '', 'Samsung Galaxy J5', '', 'Technician', '', '', '0', '0', '', '', 'Awaiting Repair', '0.00', 'Dell', '2019-09-02', '', '', '', '', '', '', '', 'Main Store', 'Memory Card,', '', '', '', '', '', null);
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`value`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES ('clientresultlimit', '500'), ('clientresultlimitcloud', '15'), ('companyaddress1', 'Business Center 25'), ('companyaddress2', '2 nd Floor'), ('companycity', 'Manchester'), ('companycurrency', '$'), ('companyemail', 'info@openrma.com'), ('companyfax', '+44 0123'), ('companylocation', 'Main Store'), ('companyname', 'OpenRMA Repair Centre'), ('companypostcode', 'M402RH'), ('companytel1', '+447519547107'), ('companytel2', '+447519547107'), ('costperhour', '50'), ('customer_reference1', 'Quick Code'), ('customer_reference2', 'Billing Name'), ('customer_reference3', 'Occupation'), ('customer_reference4', 'Status'), ('customer_reference5', 'Vat Number'), ('customer_referenceshow', 'false'), ('custom_cost_shipping_field', 'Shipping'), ('DATABASEVERSION', '4.99'), ('dbhost', 'demo.openrma.com'), ('dbname', 'openrma'), ('dbpass', 'openrma'), ('dbuser', 'openrma'), ('defaultStatusComplete', 'Repair Completed'), ('defaultvatname', 'VAT'), ('defaultvatvalue', '1'), ('default_lang', 'en-US'), ('default_sms_gateway', 'RedOxygen'), ('estimateDays', '7'), ('formheaderaddress1', 'Manchester'), ('formheaderaddress2', 'Business Centre'), ('formheadercity', 'Manchester'), ('formheadercompany', 'OpenRMA Technologies'), ('formheaderemail', 'support@openrma.com'), ('formheaderpostcode', 'M40 2RH'), ('formheadertel1', '+447519547107'), ('formheadertel2', '+447519547107'), ('included_accessories', 'Software,Case,Charger,Battery,Monitor,Keyboard,Mouse,Display,Power Cord,Original Package,Remote Control,USB Stick,Memory Card,Cables,Printer'), ('messageBirdAPI', ''), ('messageBirdCountryCode', ''), ('messageBirdFromName', ''), ('messageBirdMsisdn', ''), ('PrintTicketCustomServiceField1', 'false'), ('PrintTicketCustomServiceField10', 'false'), ('PrintTicketCustomServiceField2', 'false'), ('PrintTicketCustomServiceField3', 'false'), ('PrintTicketCustomServiceField4', 'false'), ('PrintTicketCustomServiceField5', 'false'), ('PrintTicketCustomServiceField6', 'false'), ('PrintTicketCustomServiceField7', 'false'), ('PrintTicketCustomServiceField8', 'false'), ('PrintTicketCustomServiceField9', 'false'), ('printTicketLine1', 'OpenRMA Repair Centre'), ('printTicketLine1Font', 'Arial'), ('printTicketLine1FontSize', '16'), ('printTicketLine1Style', 'Bold'), ('printTicketLine2', '25 Fenchurch Avenue, Manchester'), ('printTicketLine2Font', 'Arial'), ('PrintTicketLine2FontSize', '9'), ('printTicketLine2Style', 'Regular'), ('printTicketLine3', 'Tel: +447519547108 Email: info@openrma.com'), ('rmaiddigits', 'XXX'), ('rmaidformat', '{Year}{Month}{Day}{Hour}{Minutes}-'), ('rmaidprefix', 'R-'), ('rmaidsuffix', ''), ('rmaresultlimit', '500'), ('rmaresultlimitcloud', '15'), ('ro_account', ''), ('ro_countryprefix', ''), ('ro_email', ''), ('ro_pass', ''), ('services_reference1', 'Customer Invoice'), ('services_reference10', 'Can be Tested ?'), ('services_reference10_print', 'False'), ('services_reference1_print', 'False'), ('services_reference2', 'Date of Purchase'), ('services_reference2_print', 'False'), ('services_reference3', 'Supplier RMA'), ('services_reference3_print', 'False'), ('services_reference4', 'Supplier Tracking'), ('services_reference4_print', 'False'), ('services_reference5', 'Device Password/Pattern'), ('services_reference5_print', 'False'), ('services_reference6', 'Warranty Sticker Damaged ?'), ('services_reference6_print', 'False'), ('services_reference7', 'Screen Broken ?'), ('services_reference7_print', 'False'), ('services_reference8', 'Call or Text Customer ?'), ('services_reference8_print', 'False'), ('services_reference9', 'Can it be fixed ?'), ('services_reference9_print', 'False'), ('services_reference_show', 'true'), ('SMSNetgrApiPassword', 'password'), ('SMSNetgrApiToken', 'token123'), ('SMSNetgrCountryPrefix', '30'), ('SMSNetgrFrom', 'OpenRMA'), ('SMSNetgrURL', 'https://sms.net.gr/index.php/api/do');
INSERT INTO `settings` VALUES ('SMSNetgrUsername', 'username'), ('smtp_autosend_oncomplete', 'False'), ('smtp_autosend_oncreate', 'False'), ('smtp_cc_address', ''), ('smtp_complete_status', ''), ('smtp_from', ''), ('smtp_host', ''), ('smtp_html_format', 'true'), ('smtp_pass', ''), ('smtp_port', '25'), ('smtp_ssl', 'false'), ('smtp_user', ''), ('ticket_terms', 'Our company does not cover damage resulting from improper handling, negligence, intentional acts, misuse and abuse, and such damage will void the Warranty. Our company is not responsible for any data loss including the software, the operating system, provided by the original manufacturer, whether installed by us during the manufacture of system or otherwise. By taking this ticket you are accept our above terms.'), ('twilio_auth', ''), ('twilio_countryprefix', ''), ('twilio_number', ''), ('twilio_sid', ''), ('vatdisplayoncheckoutform', 'False');
COMMIT;

-- ----------------------------
-- Table structure for smstemplates
-- ----------------------------
DROP TABLE IF EXISTS `smstemplates`;
CREATE TABLE `smstemplates` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`smstext`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of smstemplates
-- ----------------------------
BEGIN;
INSERT INTO `smstemplates` VALUES ('1', 'Your Drone is ready. You can pick it up.'), ('2', 'Your Repair has completed. We will deliver it soon.'), ('3', 'Your Repair is out of Warranty plan. Please call us for more details.'), ('4', 'There was a problem with your repair. Please call us for more information.'), ('5', 'Hi. You Tech Trade repair has been completed. Please call us to arrange delivery');
COMMIT;

-- ----------------------------
-- Table structure for stores
-- ----------------------------
DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`address1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`address2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`telephone1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`telephone2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fax`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`city`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`postcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`keepstock`  int(11) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of stores
-- ----------------------------
BEGIN;
INSERT INTO `stores` VALUES ('1', 'Main Store', 'Manchester UK', null, null, null, null, null, 'Canton', null, '0');
COMMIT;

-- ----------------------------
-- Table structure for tax
-- ----------------------------
DROP TABLE IF EXISTS `tax`;
CREATE TABLE `tax` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`location`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`rate`  decimal(8,6) UNSIGNED NOT NULL ,
`active`  int(1) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of tax
-- ----------------------------
BEGIN;
INSERT INTO `tax` VALUES ('1', 'Standard Tax', 'United Kingdom', '20.000000', '1'), ('2', 'Reduced Tax', 'United Kingdom', '5.000000', '1'), ('3', 'Zero Tax', 'United Kingdom', '0.000000', '1'), ('4', 'IVA', 'Protugal', '23.000000', '1'), ('6', 'GST', 'Australia', '10.000000', '1');
COMMIT;

-- ----------------------------
-- Table structure for technicians
-- ----------------------------
DROP TABLE IF EXISTS `technicians`;
CREATE TABLE `technicians` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`TechName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`username`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`password`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of technicians
-- ----------------------------
BEGIN;
INSERT INTO `technicians` VALUES ('1', 'Main Technician', 'tech@openrma.com', 'admin', 'admin'), ('2', 'Junior Technician', 'junior@openra.com', 'user', 'user');
COMMIT;

-- ----------------------------
-- Table structure for technicianscloud
-- ----------------------------
DROP TABLE IF EXISTS `technicianscloud`;
CREATE TABLE `technicianscloud` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`TechName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`username`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`password`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`psalt`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`access_token`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`last_session_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=34

;

-- ----------------------------
-- Records of technicianscloud
-- ----------------------------
BEGIN;
INSERT INTO `technicianscloud` VALUES ('1', 'John Orfanidis', 'jorfan81@hotmail.com', 'jorfan', '31bb394abb12ffc88d734a4271dc77e2656e0091c61642d4201ef11e13ff3a79', 'sLUBjZrm2GrE2qKOfdTQ', null, null), ('33', 'Demo User', 'demo@openrma.com', 'demo', 'e5bc0c63c5e14926c3c5632818bd215e0bea87610a0894f98012d35510a94b6e', 'NjWtJ8mngmT2w96mbb5t', null, '1qq0hg94dhdav20r5tve10q977');
COMMIT;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
`id`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`rmaid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`date`  datetime NOT NULL ,
`details`  varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`technician`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of transactions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors` (
`vendorID`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`vendorName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorAddress`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorCity`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorTel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorFax`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorEmail`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorZipCode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`vendorCountry`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
PRIMARY KEY (`vendorID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of vendors
-- ----------------------------
BEGIN;
INSERT INTO `vendors` VALUES ('1', 'Apple', '1 Infinite Loop', 'Cupertino', '1-800-275-2273', ' 1-800-780-5009', 'help@apple.com', 'CA 95014', 'United States'), ('2', 'Nvidia Corporation', '2701 San Tomas Expressway', 'Santa Clara', '1+ (408) 486-2000', '1+ (408) 486-2000', 'help@nvidia.com', 'CA 95050', 'United States'), ('3', 'Hewlett Packard', '1501 Page Mill Road', 'Palo Alto', '1-650-857-1501', '1-650-857-1501', 'help@hp.com', 'CA 94304', 'United States'), ('4', 'Intel Corporation', '2200 Mission College Blvd', 'Santa Clara', '(408) 765-8080', '(408) 765-8080', 'help@intel.com', 'CA 95054-1549', 'United States'), ('5', 'Samsung', '3655 North 1st Street', 'San Jose', '1-800-726-7864', '1-800-726-7864', 'help@samsung.com', '95134\r\n', 'United States');
COMMIT;

-- ----------------------------
-- Table structure for warranties
-- ----------------------------
DROP TABLE IF EXISTS `warranties`;
CREATE TABLE `warranties` (
`ID`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`Warrant Code`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`Duration`  int(255) UNSIGNED NOT NULL ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10

;

-- ----------------------------
-- Records of warranties
-- ----------------------------
BEGIN;
INSERT INTO `warranties` VALUES ('3', 'WarrantPlan3', 'Warranty Plan For 3 Years', '1095'), ('4', 'DOA15', 'Dead On Arrival Warranty Active for 15 Days ', '8'), ('5', 'Warrant Plan 6M', 'Warranty for 6 Months', '180'), ('9', '6 Months Warranty', '6 Months return to base warranty', '182');
COMMIT;

-- ----------------------------
-- Auto increment value for active_sessions
-- ----------------------------
ALTER TABLE `active_sessions` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for attachments
-- ----------------------------
ALTER TABLE `attachments` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for categories
-- ----------------------------
ALTER TABLE `categories` AUTO_INCREMENT=25;

-- ----------------------------
-- Auto increment value for contacts
-- ----------------------------
ALTER TABLE `contacts` AUTO_INCREMENT=42;

-- ----------------------------
-- Auto increment value for custom_entries
-- ----------------------------
ALTER TABLE `custom_entries` AUTO_INCREMENT=37;

-- ----------------------------
-- Auto increment value for customers
-- ----------------------------
ALTER TABLE `customers` AUTO_INCREMENT=396;

-- ----------------------------
-- Auto increment value for damages
-- ----------------------------
ALTER TABLE `damages` AUTO_INCREMENT=23;

-- ----------------------------
-- Auto increment value for devices
-- ----------------------------
ALTER TABLE `devices` AUTO_INCREMENT=121;

-- ----------------------------
-- Auto increment value for emailtemplates
-- ----------------------------
ALTER TABLE `emailtemplates` AUTO_INCREMENT=10;

-- ----------------------------
-- Auto increment value for multiparts
-- ----------------------------
ALTER TABLE `multiparts` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for notifications
-- ----------------------------
ALTER TABLE `notifications` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for phonelogs
-- ----------------------------
ALTER TABLE `phonelogs` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for phonelogs_types
-- ----------------------------
ALTER TABLE `phonelogs_types` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for product
-- ----------------------------
ALTER TABLE `product` AUTO_INCREMENT=30;

-- ----------------------------
-- Auto increment value for product_service
-- ----------------------------
ALTER TABLE `product_service` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for rma_status
-- ----------------------------
ALTER TABLE `rma_status` AUTO_INCREMENT=14;

-- ----------------------------
-- Auto increment value for services
-- ----------------------------
ALTER TABLE `services` AUTO_INCREMENT=498;

-- ----------------------------
-- Auto increment value for smstemplates
-- ----------------------------
ALTER TABLE `smstemplates` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for stores
-- ----------------------------
ALTER TABLE `stores` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for tax
-- ----------------------------
ALTER TABLE `tax` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for technicians
-- ----------------------------
ALTER TABLE `technicians` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for technicianscloud
-- ----------------------------
ALTER TABLE `technicianscloud` AUTO_INCREMENT=34;

-- ----------------------------
-- Auto increment value for transactions
-- ----------------------------
ALTER TABLE `transactions` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for vendors
-- ----------------------------
ALTER TABLE `vendors` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for warranties
-- ----------------------------
ALTER TABLE `warranties` AUTO_INCREMENT=10;
