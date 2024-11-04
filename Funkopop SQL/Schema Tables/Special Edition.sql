CREATE TABLE `funkopop`.`special_edition` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `productId` BIGINT NOT NULL,
  `editionName` VARCHAR(100) NOT NULL,
  `editionNumber` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_special_edition_product` (`productId` ASC),
  CONSTRAINT `fk_special_edition_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
