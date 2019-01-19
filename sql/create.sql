create database txcrm  character set UTF8mb4 collate utf8mb4_bin;

use txcrm;

ALTER TABLE `txcrm`.`tx_address` 
CHANGE COLUMN `customer_id` `customer_id` INT(11) NULL ,
CHANGE COLUMN `address` `location` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL ;

ALTER TABLE `txcrm`.`tx_order` 
DROP COLUMN `shipping_address`,
ADD COLUMN `ship_id` INT(11) NULL AFTER `customer_id`;

ALTER TABLE `txcrm`.`tx_address` 
ADD COLUMN `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL AFTER `email`;

