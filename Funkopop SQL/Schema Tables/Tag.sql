CREATE TABLE `funkopop`.`tag` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_tag_name` (`name`)
);
