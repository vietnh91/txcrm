/*
 Navicat Premium Data Transfer

 Source Server         : tx
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : ec2-3-85-164-60.compute-1.amazonaws.com:3306
 Source Schema         : txcrm

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 07/01/2019 22:40:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tx_address
-- ----------------------------
DROP TABLE IF EXISTS `tx_address`;
CREATE TABLE `tx_address`  (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_address
-- ----------------------------
INSERT INTO `tx_address` VALUES (1, NULL, 'Tân House', NULL, NULL);
INSERT INTO `tx_address` VALUES (2, NULL, '-', NULL, NULL);
INSERT INTO `tx_address` VALUES (3, NULL, 'Dung mang về', NULL, NULL);
INSERT INTO `tx_address` VALUES (4, NULL, NULL, NULL, NULL);
INSERT INTO `tx_address` VALUES (5, NULL, 'Dung ship', NULL, NULL);
INSERT INTO `tx_address` VALUES (6, NULL, 'qua lấy', NULL, NULL);
INSERT INTO `tx_address` VALUES (7, NULL, '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', NULL, NULL);
INSERT INTO `tx_address` VALUES (8, NULL, '81A Trần Quốc Toản - 01639923468', NULL, NULL);
INSERT INTO `tx_address` VALUES (9, NULL, 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', NULL, NULL);
INSERT INTO `tx_address` VALUES (10, NULL, 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL);
INSERT INTO `tx_address` VALUES (16, NULL, 'Tân House', NULL, NULL);
INSERT INTO `tx_address` VALUES (17, NULL, 'Dung mang về', NULL, NULL);
INSERT INTO `tx_address` VALUES (18, NULL, 'Dung ship', NULL, NULL);
INSERT INTO `tx_address` VALUES (19, NULL, 'qua lấy', NULL, NULL);
INSERT INTO `tx_address` VALUES (20, NULL, '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', NULL, NULL);
INSERT INTO `tx_address` VALUES (21, NULL, '81A Trần Quốc Toản - 01639923468', NULL, NULL);
INSERT INTO `tx_address` VALUES (22, NULL, 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', NULL, NULL);
INSERT INTO `tx_address` VALUES (23, NULL, 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL);

-- ----------------------------
-- Table structure for tx_catalog
-- ----------------------------
DROP TABLE IF EXISTS `tx_catalog`;
CREATE TABLE `tx_catalog`  (
  `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `catalog_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catalog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_catalog
-- ----------------------------
INSERT INTO `tx_catalog` VALUES (1, 'PRODUCT_UNIT', 'cuộn');
INSERT INTO `tx_catalog` VALUES (2, 'PRODUCT_UNIT', 'pc');
INSERT INTO `tx_catalog` VALUES (3, 'PRODUCT_UNIT', 'bag');
INSERT INTO `tx_catalog` VALUES (4, 'PRODUCT_UNIT', 'ổ');
INSERT INTO `tx_catalog` VALUES (5, 'PRODUCT_UNIT', '100g');
INSERT INTO `tx_catalog` VALUES (6, 'PRODUCT_UNIT', 'chiếc');
INSERT INTO `tx_catalog` VALUES (7, 'PRODUCT_UNIT', 'túi');
INSERT INTO `tx_catalog` VALUES (8, 'PRODUCT_UNIT', '250g');
INSERT INTO `tx_catalog` VALUES (9, 'PRODUCT_UNIT', 'hộp');

-- ----------------------------
-- Table structure for tx_customer
-- ----------------------------
DROP TABLE IF EXISTS `tx_customer`;
CREATE TABLE `tx_customer`  (
  `customer_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_customer
-- ----------------------------
INSERT INTO `tx_customer` VALUES (1, 'Anh Ân', '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (2, 'Anh Nguyên', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (3, 'Ben', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (4, 'Chị Cúc CSIP', 'qua lấy', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (5, 'Chị Hồng Linh CCIHP', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (6, 'Chị Ly', 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (7, 'Chị Minh (Dung)', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (8, 'Chi Ngạc', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (9, 'Chị Susu', '81A Trần Quốc Toản - 01639923468', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (10, 'Chị Trang', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (11, 'Dung', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (12, 'Đi chợ mùa thu', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (13, 'Giang', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (14, 'Hiếu Blue', 'Dung ship', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (15, 'Hoàng Hiền', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (16, 'Hùng (bạn Nhung)', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (17, 'Lê (bạn Dung)', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (18, 'Ngọc Chu', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (19, 'Nguyễn Mạnh Tùng', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (20, 'Nhân Trần', 'Dung mang về', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (21, 'SunPlay', NULL, '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (22, 'Tân House', 'Tân House', '', NULL, '2019-01-03 14:27:32', NULL);
INSERT INTO `tx_customer` VALUES (23, 'Thu SunPlay', NULL, '', NULL, '2019-01-03 14:27:32', NULL);

-- ----------------------------
-- Table structure for tx_order
-- ----------------------------
DROP TABLE IF EXISTS `tx_order`;
CREATE TABLE `tx_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime NULL DEFAULT NULL,
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_net` decimal(10, 0) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `invoice_status` int(1) NULL DEFAULT 0,
  `shipping_cost` decimal(10, 2) NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_order
-- ----------------------------
INSERT INTO `tx_order` VALUES (1, '2018-09-03 00:00:00', '1', NULL, NULL, 1, NULL, NULL, 22);
INSERT INTO `tx_order` VALUES (2, '2018-09-07 00:00:00', '10', NULL, NULL, 1, NULL, NULL, 16);
INSERT INTO `tx_order` VALUES (3, '2018-09-07 00:00:00', '11', NULL, NULL, 1, NULL, NULL, 11);
INSERT INTO `tx_order` VALUES (4, '2018-09-08 00:00:00', '12', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO `tx_order` VALUES (5, '2018-09-08 00:00:00', '13', NULL, NULL, 1, NULL, NULL, 17);
INSERT INTO `tx_order` VALUES (6, '2018-09-08 00:00:00', '14', NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO `tx_order` VALUES (7, '2018-09-08 00:00:00', '15', NULL, NULL, 1, NULL, NULL, 15);
INSERT INTO `tx_order` VALUES (8, '2018-09-08 00:00:00', '16', NULL, NULL, 1, NULL, NULL, 18);
INSERT INTO `tx_order` VALUES (9, '2018-09-08 00:00:00', '17', NULL, NULL, 1, NULL, NULL, 21);
INSERT INTO `tx_order` VALUES (10, '2018-09-08 00:00:00', '18', NULL, NULL, 1, NULL, NULL, 12);
INSERT INTO `tx_order` VALUES (11, '2018-09-09 00:00:00', '19', NULL, NULL, 1, NULL, NULL, 10);
INSERT INTO `tx_order` VALUES (12, '2018-09-03 00:00:00', '2', NULL, NULL, 1, NULL, NULL, 13);
INSERT INTO `tx_order` VALUES (13, '2018-09-09 00:00:00', '20', NULL, NULL, 1, NULL, NULL, 23);
INSERT INTO `tx_order` VALUES (14, '2018-09-09 00:00:00', '21', NULL, NULL, 1, NULL, NULL, 12);
INSERT INTO `tx_order` VALUES (15, '2018-09-10 00:00:00', '22', NULL, NULL, 1, NULL, NULL, 21);
INSERT INTO `tx_order` VALUES (16, '2018-09-10 00:00:00', '23', NULL, NULL, 1, NULL, NULL, 7);
INSERT INTO `tx_order` VALUES (17, '2018-09-10 00:00:00', '24', NULL, NULL, 1, NULL, NULL, 9);
INSERT INTO `tx_order` VALUES (18, '2018-09-10 00:00:00', '25', NULL, NULL, 1, NULL, NULL, 22);
INSERT INTO `tx_order` VALUES (19, '2018-09-11 00:00:00', '26', NULL, NULL, 1, NULL, NULL, 5);
INSERT INTO `tx_order` VALUES (20, '2018-09-11 00:00:00', '27', NULL, NULL, 1, NULL, NULL, 13);
INSERT INTO `tx_order` VALUES (21, '2018-09-11 00:00:00', '28', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO `tx_order` VALUES (22, '2018-09-12 00:00:00', '29', NULL, NULL, 1, -22.00, NULL, 6);
INSERT INTO `tx_order` VALUES (23, '2018-09-05 00:00:00', '3', NULL, NULL, 1, NULL, NULL, 20);
INSERT INTO `tx_order` VALUES (24, '2018-09-12 00:00:00', '30', NULL, NULL, 1, NULL, NULL, 2);
INSERT INTO `tx_order` VALUES (25, '2018-09-12 00:00:00', '31', NULL, NULL, 1, NULL, NULL, 13);
INSERT INTO `tx_order` VALUES (26, '2018-09-12 00:00:00', '32', NULL, NULL, 1, NULL, NULL, 19);
INSERT INTO `tx_order` VALUES (27, '2018-09-12 00:00:00', '33', NULL, NULL, 1, NULL, NULL, 3);
INSERT INTO `tx_order` VALUES (28, '2018-09-13 00:00:00', '34', NULL, NULL, 1, NULL, NULL, 13);
INSERT INTO `tx_order` VALUES (29, '2018-09-05 00:00:00', '4', NULL, NULL, 1, NULL, NULL, 13);
INSERT INTO `tx_order` VALUES (30, '2018-09-05 00:00:00', '5', NULL, NULL, 1, NULL, NULL, 8);
INSERT INTO `tx_order` VALUES (31, '2018-09-06 00:00:00', '6', NULL, NULL, 1, NULL, NULL, 16);
INSERT INTO `tx_order` VALUES (32, '2018-09-07 00:00:00', '7', NULL, NULL, 1, NULL, NULL, 14);
INSERT INTO `tx_order` VALUES (33, '2018-09-07 00:00:00', '8', NULL, NULL, 1, NULL, NULL, 4);
INSERT INTO `tx_order` VALUES (34, '2018-09-07 00:00:00', '9', NULL, NULL, 1, NULL, NULL, 22);

-- ----------------------------
-- Table structure for tx_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tx_order_item`;
CREATE TABLE `tx_order_item`  (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `quantity` int(10) NULL DEFAULT NULL,
  `adjusted` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_order_item
-- ----------------------------
INSERT INTO `tx_order_item` VALUES (1, 1, 12, 1, 0);
INSERT INTO `tx_order_item` VALUES (2, 1, 7, 2, 0);
INSERT INTO `tx_order_item` VALUES (3, 1, 9, 2, 0);
INSERT INTO `tx_order_item` VALUES (4, 12, 6, 1, -10);
INSERT INTO `tx_order_item` VALUES (5, 23, 7, 1, 0);
INSERT INTO `tx_order_item` VALUES (6, 23, 11, 1, 0);
INSERT INTO `tx_order_item` VALUES (7, 29, 6, 1, -10);
INSERT INTO `tx_order_item` VALUES (8, 29, 11, 1, -5);
INSERT INTO `tx_order_item` VALUES (9, 30, 16, 1, 0);
INSERT INTO `tx_order_item` VALUES (10, 30, 6, 1, 0);
INSERT INTO `tx_order_item` VALUES (11, 31, 15, 20, 0);
INSERT INTO `tx_order_item` VALUES (12, 32, 12, 2, 0);
INSERT INTO `tx_order_item` VALUES (13, 32, 15, 20, 0);
INSERT INTO `tx_order_item` VALUES (14, 32, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (15, 33, 14, 1, 0);
INSERT INTO `tx_order_item` VALUES (16, 33, 15, 2, 0);
INSERT INTO `tx_order_item` VALUES (17, 34, 6, 1, 0);
INSERT INTO `tx_order_item` VALUES (18, 2, 8, 2, -90);
INSERT INTO `tx_order_item` VALUES (19, 3, 17, 1, -10);
INSERT INTO `tx_order_item` VALUES (20, 4, 6, 2, 0);
INSERT INTO `tx_order_item` VALUES (21, 5, 6, 1, 0);
INSERT INTO `tx_order_item` VALUES (22, 5, 4, 1, 0);
INSERT INTO `tx_order_item` VALUES (23, 5, 15, 12, 0);
INSERT INTO `tx_order_item` VALUES (24, 6, 7, 1, 0);
INSERT INTO `tx_order_item` VALUES (25, 6, 9, 1, 0);
INSERT INTO `tx_order_item` VALUES (26, 6, 11, 1, 0);
INSERT INTO `tx_order_item` VALUES (27, 7, 6, 1, 0);
INSERT INTO `tx_order_item` VALUES (28, 8, 1, 1, 0);
INSERT INTO `tx_order_item` VALUES (29, 9, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (30, 9, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (31, 9, 13, 1, 0);
INSERT INTO `tx_order_item` VALUES (32, 9, 9, 1, NULL);
INSERT INTO `tx_order_item` VALUES (33, 10, 13, 3, 0);
INSERT INTO `tx_order_item` VALUES (34, 10, 11, 5, 0);
INSERT INTO `tx_order_item` VALUES (35, 10, 10, 3, 0);
INSERT INTO `tx_order_item` VALUES (36, 10, 8, 7, 0);
INSERT INTO `tx_order_item` VALUES (37, 11, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (38, 11, 12, 1, 0);
INSERT INTO `tx_order_item` VALUES (39, 13, 1, 1, 0);
INSERT INTO `tx_order_item` VALUES (40, 14, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (41, 14, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (42, 14, 13, 1, 0);
INSERT INTO `tx_order_item` VALUES (43, 14, 11, 4, 0);
INSERT INTO `tx_order_item` VALUES (44, 15, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (45, 15, 11, 2, NULL);
INSERT INTO `tx_order_item` VALUES (46, 16, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (47, 17, 6, 2, 0);
INSERT INTO `tx_order_item` VALUES (48, 17, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (49, 18, 12, 1, 0);
INSERT INTO `tx_order_item` VALUES (50, 18, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (51, 18, 4, 1, 0);
INSERT INTO `tx_order_item` VALUES (52, 19, 1, 1, 0);
INSERT INTO `tx_order_item` VALUES (53, 19, 11, 2, 0);
INSERT INTO `tx_order_item` VALUES (54, 20, 17, 2, 0);
INSERT INTO `tx_order_item` VALUES (55, 21, 19, 1, 0);
INSERT INTO `tx_order_item` VALUES (56, 22, 19, 2, 0);
INSERT INTO `tx_order_item` VALUES (57, 22, 12, 1, 0);
INSERT INTO `tx_order_item` VALUES (58, 22, 18, 1, 0);
INSERT INTO `tx_order_item` VALUES (59, 22, 15, 6, 0);
INSERT INTO `tx_order_item` VALUES (60, 24, 7, 1, 0);
INSERT INTO `tx_order_item` VALUES (61, 24, 11, 1, 0);
INSERT INTO `tx_order_item` VALUES (62, 24, 13, 1, 0);
INSERT INTO `tx_order_item` VALUES (63, 24, 18, 1, 0);
INSERT INTO `tx_order_item` VALUES (64, 24, 6, 1, 0);
INSERT INTO `tx_order_item` VALUES (65, 25, 6, 1, -10);
INSERT INTO `tx_order_item` VALUES (66, 26, 10, 1, 0);
INSERT INTO `tx_order_item` VALUES (67, 26, 8, 1, 0);
INSERT INTO `tx_order_item` VALUES (68, 26, 13, 1, 0);
INSERT INTO `tx_order_item` VALUES (69, 26, 19, 3, 0);
INSERT INTO `tx_order_item` VALUES (70, 26, 15, 20, 0);
INSERT INTO `tx_order_item` VALUES (71, 27, 1, 1, 0);
INSERT INTO `tx_order_item` VALUES (72, 28, 7, 1, -8);
INSERT INTO `tx_order_item` VALUES (73, 28, 11, 1, -9);

-- ----------------------------
-- Table structure for tx_product
-- ----------------------------
DROP TABLE IF EXISTS `tx_product`;
CREATE TABLE `tx_product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_product
-- ----------------------------
INSERT INTO `tx_product` VALUES (1, 'CUTI', 'Cuộn tinh than tre', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (2, 'CUMA', 'Cuộn matcha', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (3, 'CUSO', 'Cuộn chocolate', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (4, 'CULA', 'Cuộn latte', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (5, 'CHUm', 'Bánh chuối chocolate (miếng)', NULL, '2', 15.00);
INSERT INTO `tx_product` VALUES (6, 'CHUo', 'Bánh chuối chocolate (ổ)', NULL, '4', 100.00);
INSERT INTO `tx_product` VALUES (7, 'QCHA1', 'Quy chanh cốm 100g', NULL, '3', 40.00);
INSERT INTO `tx_product` VALUES (8, 'QCHA2', 'Quy chanh cốm 250g', NULL, '3', 90.00);
INSERT INTO `tx_product` VALUES (9, 'QCHU1', 'Quy chuối 100g', NULL, '3', 40.00);
INSERT INTO `tx_product` VALUES (10, 'QCHU2', 'Quy chuối 250g', NULL, '3', 90.00);
INSERT INTO `tx_product` VALUES (11, 'QHU1', 'Basil cookies 100g', NULL, '3', 45.00);
INSERT INTO `tx_product` VALUES (12, 'QHU2', 'Basil cookies 250g', NULL, '3', 100.00);
INSERT INTO `tx_product` VALUES (13, 'QHAA1', 'Quy hạnh nhân 100g (cũ)', NULL, '3', 40.00);
INSERT INTO `tx_product` VALUES (14, 'QHAA2', 'Quy hạnh nhân 250g (cũ)', NULL, '3', 90.00);
INSERT INTO `tx_product` VALUES (15, 'QBE', 'Gấu ôm hạnh nhân', NULL, '2', 5.00);
INSERT INTO `tx_product` VALUES (16, 'BR', 'Brownies hạt óc chó', NULL, '2', 60.00);
INSERT INTO `tx_product` VALUES (17, 'BR5', 'Brownies hạt óc chó 50K', NULL, '2', 50.00);
INSERT INTO `tx_product` VALUES (18, 'CUBA', 'Cuộn Earl Grey', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (19, 'QVE', 'Vegan chocolate cookies', NULL, '5', 50.00);
INSERT INTO `tx_product` VALUES (20, 'BR3', 'Brownies', NULL, '2', 30.00);
INSERT INTO `tx_product` VALUES (21, 'QVnib', 'Vegan cookies cacao nibs', NULL, '5', 55.00);
INSERT INTO `tx_product` VALUES (22, 'BOLA', 'Bông lan trứng muối', NULL, '1', 250.00);
INSERT INTO `tx_product` VALUES (23, 'CUSN', 'Bánh cuộn sinh nhật', NULL, '6', 175.00);
INSERT INTO `tx_product` VALUES (24, 'BMSA', 'Bánh mỳ sấy', NULL, '7', 60.00);
INSERT INTO `tx_product` VALUES (25, 'CUSOBA', 'Cuộn Chocolate Earl Grey', NULL, '1', 280.00);
INSERT INTO `tx_product` VALUES (26, 'TBOLACL', 'Bông lan chanh leo (Test)', NULL, '4', 75.00);
INSERT INTO `tx_product` VALUES (27, 'QHA1', 'Quy hạnh nhân 100g ', NULL, '3', 45.00);
INSERT INTO `tx_product` VALUES (28, 'QHA2', 'Quy hạnh nhân 250g ', NULL, '3', 100.00);
INSERT INTO `tx_product` VALUES (29, 'CUTIB', 'Cuộn tinh than tre kem đậu biếc', NULL, '1', 300.00);
INSERT INTO `tx_product` VALUES (30, 'CUDFMCL', 'Cuộn củ dền phô mai chanh leo', NULL, '1', 300.00);
INSERT INTO `tx_product` VALUES (31, 'CUCLX', 'Cuộn chanh leo kem xoài', NULL, '1', 300.00);
INSERT INTO `tx_product` VALUES (32, 'QFING', 'Quy ngón tay hộp 20 cái', NULL, '9', 75.00);
INSERT INTO `tx_product` VALUES (33, 'TCHF1', 'Chiffon Cà phê Quế và hạt óc chó', NULL, '4', 180.00);
INSERT INTO `tx_product` VALUES (34, 'QCL', 'Quy mứt chanh leo', NULL, '9', 60.00);
INSERT INTO `tx_product` VALUES (35, 'TCHF2', 'Chiffon Earl Grey (hộp 4 miếng)', NULL, '9', 100.00);
INSERT INTO `tx_product` VALUES (36, 'CUDSO', 'Cuộn lá dứa chocolate', NULL, '1', 300.00);
INSERT INTO `tx_product` VALUES (37, 'CUBASO', 'Cuộn Earl Grey kem chocolate', NULL, '1', 300.00);
INSERT INTO `tx_product` VALUES (38, 'KHOBOLO', 'Khoai tây bỏ lò ', NULL, '9', 50.00);
INSERT INTO `tx_product` VALUES (39, 'CHUCHO', 'Bánh chuối chocolate hạt óc chó', NULL, '4', 150.00);
INSERT INTO `tx_product` VALUES (40, 'QHO1', 'Quy hồng sấy 100g', NULL, '5', 45.00);
INSERT INTO `tx_product` VALUES (41, 'QHO2', 'Quy hồng sấy 250g', NULL, '8', 100.00);
INSERT INTO `tx_product` VALUES (42, 'CHUm2', 'Bánh chuối chocolate (miếng)', NULL, '2', 10.00);
INSERT INTO `tx_product` VALUES (43, 'XMRLL', 'Christmas Roll', NULL, '6', 200.00);
INSERT INTO `tx_product` VALUES (44, 'CHEETA', 'Cheese tart ', NULL, '6', NULL);

-- ----------------------------
-- Table structure for tx_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tx_tmp`;
CREATE TABLE `tx_tmp`  (
  `tmp_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `adjust` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipping_cost` decimal(10, 2) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`tmp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_tmp
-- ----------------------------
INSERT INTO `tx_tmp` VALUES (1, '2018-09-03 00:00:00', '1', 'Tân House', 'QHU2', '0', 'Done', NULL, '1', 'Tân House', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (2, '2018-09-03 00:00:00', '1', 'Tân House', 'QCHA1', '0', 'Done', NULL, '2', 'Tân House', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (3, '2018-09-03 00:00:00', '1', 'Tân House', 'QCHU1', '0', 'Done', NULL, '2', 'Tân House', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (4, '2018-09-03 00:00:00', '2', 'Giang', 'CHUo', '-10', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (5, '2018-09-05 00:00:00', '3', 'Nhân Trần', 'QCHA1', '0', 'Done', NULL, '1', 'Dung mang về', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (6, '2018-09-05 00:00:00', '3', 'Nhân Trần', 'QHU1', '0', 'Done', NULL, '1', 'Dung mang về', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (7, '2018-09-05 00:00:00', '4', 'Giang', 'CHUo', '-10', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (8, '2018-09-05 00:00:00', '4', 'Giang', 'QHU1', '-4.5', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (9, '2018-09-05 00:00:00', '5', 'Chi Ngạc', 'BR', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (10, '2018-09-05 00:00:00', '5', 'Chi Ngạc', 'CHUo', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (11, '2018-09-06 00:00:00', '6', 'Hùng (bạn Nhung)', 'QBE', '0', 'Done', NULL, '20', NULL, NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (12, '2018-09-07 00:00:00', '7', 'Hiếu Blue', 'QHU2', '0', 'Done', NULL, '2', 'Dung ship', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (13, '2018-09-07 00:00:00', '7', 'Hiếu Blue', 'QBE', '0', 'Done', NULL, '20', 'Dung ship', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (14, '2018-09-07 00:00:00', '7', 'Hiếu Blue', 'QCHA2', '0', 'Done', NULL, '1', 'Dung ship', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (15, '2018-09-07 00:00:00', '8', 'Chị Cúc CSIP', 'QHAA2', '0', 'Done', NULL, '1', 'qua lấy', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (16, '2018-09-07 00:00:00', '8', 'Chị Cúc CSIP', 'QBE', '0', 'Done', NULL, '2', 'qua lấy', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (17, '2018-09-07 00:00:00', '9', 'Tân House', 'CHUo', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (18, '2018-09-07 00:00:00', '10', 'Hùng (bạn Nhung)', 'QCHA2', '-90', 'Done', NULL, '2', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (19, '2018-09-07 00:00:00', '11', 'Dung', 'BR5', '-10', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (20, '2018-09-08 00:00:00', '12', 'Anh Ân', 'CHUo', '0', 'Done', NULL, '2', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (21, '2018-09-08 00:00:00', '13', 'Lê (bạn Dung)', 'ChUo', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (22, '2018-09-08 00:00:00', '13', 'Lê (bạn Dung)', 'CULA', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (23, '2018-09-08 00:00:00', '13', 'Lê (bạn Dung)', 'QBE', '0', 'Done', NULL, '12', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (24, '2018-09-08 00:00:00', '14', 'Anh An ', 'QCHA1', '0', 'Done', NULL, '1', '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (25, '2018-09-08 00:00:00', '14', 'Anh An ', 'QCHU1', '0', 'Done', NULL, '1', '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (26, '2018-09-08 00:00:00', '14', 'Anh An ', 'QHU1', '0', 'Done', NULL, '1', '1 Tôn Thất Tùng, nhà thuốc số 2, cổng đi về hướng Phạm Ngọc Thạch 0904.293.673', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (27, '2018-09-08 00:00:00', '15', 'Hoàng Hiền', 'CHUo', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (28, '2018-09-08 00:00:00', '16', 'Ngọc Chu', 'CUTI', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (29, '2018-09-08 00:00:00', '17', 'SunPlay', 'QCHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (30, '2018-09-08 00:00:00', '17', 'SunPlay', 'QCHA2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (31, '2018-09-08 00:00:00', '17', 'SunPlay', 'QHAA1', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (32, '2018-09-08 00:00:00', '17', 'SunPlay', 'QCHU1', NULL, 'Done', NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (33, '2018-09-08 00:00:00', '18', 'Đi chợ mùa thu', 'QHAA1', '0', 'Done', NULL, '3', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (34, '2018-09-08 00:00:00', '18', 'Đi chợ mùa thu', 'QHU1', '0', 'Done', NULL, '5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (35, '2018-09-08 00:00:00', '18', 'Đi chợ mùa thu', 'QCHU2', '0', 'Done', NULL, '3', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (36, '2018-09-08 00:00:00', '18', 'Đi chợ mùa thu', 'QCHA2', '0', 'Done', NULL, '7', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (37, '2018-09-09 00:00:00', '19', 'Chị Trang', 'QCHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (38, '2018-09-09 00:00:00', '19', 'Chị Trang', 'QHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (39, '2018-09-09 00:00:00', '20', 'Thu SunPlay', 'CUTI', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (40, '2018-09-09 00:00:00', '21', 'Đi chợ mùa thu', 'QCHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (41, '2018-09-09 00:00:00', '21', 'Đi chợ mùa thu', 'QCHA2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (42, '2018-09-09 00:00:00', '21', 'Đi chợ mùa thu', 'QHAA1', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (43, '2018-09-09 00:00:00', '21', 'Đi chợ mùa thu', 'QHU1', '0', 'Done', NULL, '4', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (44, '2018-09-10 00:00:00', '22', 'SunPlay', 'QCHA2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (45, '2018-09-10 00:00:00', '22', 'SunPlay', 'QHU1', NULL, 'Done', NULL, '1.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (46, '2018-09-10 00:00:00', '23', 'Chị Minh (Dung)', 'QCHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (47, '2018-09-10 00:00:00', '24', 'Chị Susu', 'CHUo', '0', 'Done', NULL, '2', '81A Trần Quốc Toản - 01639923468', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (48, '2018-09-10 00:00:00', '24', 'Chị Susu', 'QCHU2', '0', 'Done', NULL, '1', '81A Trần Quốc Toản - 01639923468', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (49, '2018-09-10 00:00:00', '25', 'Tân House', 'QHU2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (50, '2018-09-10 00:00:00', '25', 'Tân House', 'QCHA2', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (51, '2018-09-10 00:00:00', '25', 'Tân House', 'CULA', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (52, '2018-09-11 00:00:00', '26', 'Chị Hồng Linh CCIHP', 'CUTI', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (53, '2018-09-11 00:00:00', '26', 'Chị Hồng Linh CCIHP', 'QHU1', '0', 'Done', NULL, '1.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (54, '2018-09-11 00:00:00', '27', 'Giang', 'BR5', '0', 'Done', NULL, '2', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (55, '2018-09-11 00:00:00', '28', 'Anh Nguyên', 'QVE', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (56, '2018-09-12 00:00:00', '29', 'Chị Ly', 'QVE', '0', 'Done', NULL, '2', 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', -22.00, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (57, '2018-09-12 00:00:00', '29', 'Chị Ly', 'QHU2', '0', 'Done', NULL, '1', 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (58, '2018-09-12 00:00:00', '29', 'Chị Ly', 'CUBA', '0', 'Done', NULL, '0.5', 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (59, '2018-09-12 00:00:00', '29', 'Chị Ly', 'QBE', '0', 'Done', NULL, '6', 'Số 20 ngách 35 ngõ 234 Hoàng Ngọc Phách, 0975371939', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (60, '2018-09-12 00:00:00', '30', 'Anh Nguyên', 'QCHA1', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (61, '2018-09-12 00:00:00', '30', 'Anh Nguyên', 'QHU1', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (62, '2018-09-12 00:00:00', '30', 'Anh Nguyên', 'QHAA1', '0', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (63, '2018-09-12 00:00:00', '30', 'Anh Nguyên', 'CUBA', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (64, '2018-09-12 00:00:00', '30', 'Anh Nguyên', 'CHUo', '0', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (65, '2018-09-12 00:00:00', '31', 'Giang', 'CHUo', '-10', 'Done', NULL, '0.5', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (66, '2018-09-12 00:00:00', '32', 'Nguyễn Mạnh Tùng', 'QCHU2', '0', 'Done', NULL, '1', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (67, '2018-09-12 00:00:00', '32', 'Nguyễn Mạnh Tùng', 'QCHA2', '0', 'Done', NULL, '1', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (68, '2018-09-12 00:00:00', '32', 'Nguyễn Mạnh Tùng', 'QHAA1', '0', 'Done', NULL, '1', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (69, '2018-09-12 00:00:00', '32', 'Nguyễn Mạnh Tùng', 'QVE', '0', 'Done', NULL, '2.5', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (70, '2018-09-12 00:00:00', '32', 'Nguyễn Mạnh Tùng', 'QBE', '0', 'Done', NULL, '20', 'Chung cư chealsea park, ngõ 114 Trung Kính, 0988037893', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (71, '2018-09-12 00:00:00', '33', 'Ben', 'CUTI', '0', 'Done', NULL, '0.5', NULL, NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (72, '2018-09-13 00:00:00', '34', 'Giang', 'QCHA1', '-8', 'Done', NULL, '1', '-', NULL, NULL, NULL);
INSERT INTO `tx_tmp` VALUES (73, '2018-09-13 00:00:00', '34', 'Giang', 'QHU1', '-9', 'Done', NULL, '1', '-', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
