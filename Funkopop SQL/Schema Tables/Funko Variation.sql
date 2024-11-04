CREATE TABLE `funkopop`.`funko_variation` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `productId` BIGINT NOT NULL,
  `variationName` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_funko_variation_product` (`productId` ASC),
  CONSTRAINT `fk_funko_variation_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
