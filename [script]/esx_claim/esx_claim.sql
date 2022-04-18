USE `essentialmode`;
ALTER TABLE `users`
  ADD COLUMN `havegift` TINYINT(1) NULL DEFAULT '0' AFTER `name`;
	
INSERT INTO `essentialmode`.`items` (`name`, `label`, `limit`, `can_remove`) VALUES ('claim', '在線獎金禮包', '1', '0');