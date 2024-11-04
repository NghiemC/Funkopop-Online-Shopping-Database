CREATE TABLE `funkopop`.`product_tag` (
  `productId` BIGINT NOT NULL,
  `tagId` BIGINT NOT NULL,
  PRIMARY KEY (`productId`, `tagId`),
  INDEX `idx_pt_product` (`productId`),
  INDEX `idx_pt_tag` (`tagId`),
  CONSTRAINT `fk_pt_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pt_tag`
    FOREIGN KEY (`tagId`)
    REFERENCES `funkopop`.`tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
