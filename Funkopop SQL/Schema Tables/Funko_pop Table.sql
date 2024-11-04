-- Funko Pop Table
CREATE TABLE `funkopop`.`funko_pop` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `series_id` BIGINT NOT NULL,
  `release_year` INT NOT NULL,
  `condition` VARCHAR(50) NOT NULL,
  `value` FLOAT NOT NULL,
  `purchase_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_funko_series`
    FOREIGN KEY (`series_id`)
    REFERENCES `funkopop`.`series` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
