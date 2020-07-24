DELETE FROM `CubeCart_cookie_consent` WHERE `log_hash` = 'd41d8cd98f00b204e9800998ecf8427e'; #EOQ
ALTER TABLE `CubeCart_coupons` ADD `coupon_per_customer` INT(10) UNSIGNED NULL DEFAULT NULL; #EOQ
CREATE TABLE `CubeCart_customer_coupon` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `used` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `email` (`email`),
  KEY `coupon` (`coupon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; #EOQ
DELETE FROM `CubeCart_option_matrix` WHERE `status` = 0; #EOQ