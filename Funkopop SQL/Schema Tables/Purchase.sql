CREATE TABLE `funkopop`.`purchase` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `productId` BIGINT NOT NULL,
  `userId` BIGINT NOT NULL,
  `quantity` SMALLINT(6) NOT NULL DEFAULT 0,
  `purchaseDate` DATETIME NOT NULL,
  `transactionId` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_purchase_product` (`productId` ASC),
  INDEX `idx_purchase_user` (`userId` ASC),
  INDEX `idx_purchase_transaction` (`transactionId` ASC),
  CONSTRAINT `fk_purchase_product`
    FOREIGN KEY (`productId`)
    REFERENCES `funkopop`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_user`
    FOREIGN KEY (`userId`)
    REFERENCES `funkopop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_transaction`
    FOREIGN KEY (`transactionId`)
    REFERENCES `funkopop`.`transaction` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
