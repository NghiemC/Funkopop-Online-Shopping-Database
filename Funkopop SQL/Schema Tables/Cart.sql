CREATE TABLE `funkopop`.`cart` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `userId` BIGINT NULL DEFAULT NULL,
  `sessionId` VARCHAR(100) NOT NULL,
  `token` VARCHAR(100) NOT NULL,
  `status` SMALLINT(6) NOT NULL DEFAULT 0,
  `firstName` VARCHAR(50) NULL DEFAULT NULL,
  `middleName` VARCHAR(50) NULL DEFAULT NULL,
  `lastName` VARCHAR(50) NULL DEFAULT NULL,
  `mobile` VARCHAR(15) NULL,
  `email` VARCHAR(50) NULL,
  `line1` VARCHAR(50) NULL DEFAULT NULL,
  `line2` VARCHAR(50) NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `province` VARCHAR(50) NULL DEFAULT NULL,
  `country` VARCHAR(50) NULL DEFAULT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_cart_user` (`userId` ASC),
  CONSTRAINT `fk_cart_user`
    FOREIGN KEY (`userId`)
    REFERENCES `funkopop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);