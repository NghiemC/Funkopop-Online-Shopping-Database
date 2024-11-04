CREATE TABLE `funkopop`.`product_meta` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `productId` BIGINT NOT NULL,
  `key` VARCHAR(50) NOT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `funkoPopName` VARCHAR(100) NOT NULL,
  `series` VARCHAR(100) NOT NULL,
  `releaseYear` YEAR NOT NULL,
  `condition` VARCHAR(50) NOT NULL,
  `value` DECIMAL(10, 2) NOT NULL,
  `purchaseDate` DATE NOT NULL,
  `seriesId` BIGINT NULL,
  CONSTRAINT `fk_product_meta_series`
    FOREIGN KEY (`seriesId`)
    REFERENCES `funkopop`.`series` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  `collectionId` BIGINT NULL,
  CONSTRAINT `fk_product_meta_collection`
    FOREIGN KEY (`collectionId`)
    REFERENCES `funkopop`.`collection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  PRIMARY KEY (`id`),
  INDEX `idx_meta_product` (`productId` ASC),
  UNIQUE INDEX `uq_product_meta` (`productId` ASC, `key` ASC),
  CONSTRAINT `fk_meta_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;
