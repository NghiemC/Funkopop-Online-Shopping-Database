CREATE TABLE `funkopop`.`product` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `userId` BIGINT NOT NULL,
  `title` VARCHAR(75) NOT NULL,
  `metaTitle` VARCHAR(100) NULL,
  `slug` VARCHAR(100) NOT NULL,
  `summary` TINYTEXT NULL,
  `type` SMALLINT(6) NOT NULL DEFAULT 0,
  `sku` VARCHAR(100) NOT NULL,
  `price` FLOAT NOT NULL DEFAULT 0,
  `discount` FLOAT NOT NULL DEFAULT 0,
  `quantity` SMALLINT(6) NOT NULL DEFAULT 0,
  `shop` TINYINT(1) NOT NULL DEFAULT 0,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NULL DEFAULT NULL,
  `publishedAt` DATETIME NULL DEFAULT NULL,
  `startsAt` DATETIME NULL DEFAULT NULL,
  `endsAt` DATETIME NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `funkoPopName` VARCHAR(100) NOT NULL,
  `series` VARCHAR(100) NOT NULL,
  `releaseYear` YEAR NOT NULL,
  `condition` VARCHAR(50) NOT NULL,
  `value` DECIMAL(10, 2) NOT NULL,
  `purchaseDate` DATE NOT NULL,
  `media` VARCHAR(100) NOT NULL,
  `seriesId` BIGINT NULL,
  `collectionId` BIGINT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uq_slug` (`slug` ASC),
  INDEX `idx_product_user` (`userId` ASC),
  INDEX `idx_product_series` (`seriesId` ASC),
  CONSTRAINT `fk_product_user`
    FOREIGN KEY (`userId`)
    REFERENCES `funkopop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_series`
    FOREIGN KEY (`seriesId`)
    REFERENCES `funkopop`.`series` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_collection`
    FOREIGN KEY (`collectionId`)
    REFERENCES `funkopop`.`collection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
