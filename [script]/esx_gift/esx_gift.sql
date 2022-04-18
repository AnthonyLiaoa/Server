USE `essentialmode`;
ALTER TABLE `users`
	ADD COLUMN `havegift` TINYINT(1) NULL DEFAULT '0' AFTER `name`;
	
INSERT INTO `essentialmode`.`items` (`name`, `label`, `limit`, `can_remove`) VALUES ('gift', '新手禮包', '1', '0');