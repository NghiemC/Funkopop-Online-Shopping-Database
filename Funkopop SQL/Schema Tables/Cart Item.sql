CREATE TABLE `funkopop`.`cart_item` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `productId` BIGINT NOT NULL,
  `cartId` BIGINT NOT NULL,
  `sku` VARCHAR(100) NOT NULL,
  `price` FLOAT NOT NULL DEFAULT 0,
  `discount` FLOAT NOT NULL DEFAULT 0,
  `quantity` SMALLINT(6) NOT NULL DEFAULT 0,
  `active` TINYINT(1) NOT NULL DEFAULT 0,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_cart_item_product` (`productId` ASC),
  CONSTRAINT `fk_cart_item_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `funkopop`.`cart_item` 
ADD INDEX `idx_cart_item_cart` (`cartId` ASC);
ALTER TABLE `funkopop`.`cart_item` 
ADD CONSTRAINT `fk_cart_item_cart`
  FOREIGN KEY (`cartId`)
  REFERENCES `funkopop`.`cart` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;