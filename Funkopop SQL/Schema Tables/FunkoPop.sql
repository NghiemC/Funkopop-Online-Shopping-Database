CREATE TABLE `funko`.`FunkoPop` (
  `Pop_ID` BIGINT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Series_ID` BIGINT NULL,
  `Fandom_ID` BIGINT NULL,
  `Special_Id` BIGINT NULL,  -- Corrected column name
  `Price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`Pop_ID`),
  FOREIGN KEY (`Series_ID`) REFERENCES `funko`.`Series`(`Series_ID`),
  FOREIGN KEY (`Fandom_ID`) REFERENCES `funko`.`Fandom`(`Fandom_ID`),
  FOREIGN KEY (`Special_Id`) REFERENCES `funko`.`Special`(`Special_Id`)  -- Corrected foreign key reference
);
