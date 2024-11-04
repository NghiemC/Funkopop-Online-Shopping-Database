CREATE TABLE `funko`.`Purchase` (
  `Purchase_ID` BIGINT NOT NULL AUTO_INCREMENT,
  `User_ID` BIGINT NOT NULL,
  `Cart_ID` BIGINT NOT NULL,
  `Purchase_Date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Total_Amount` DECIMAL(10,2) NOT NULL,
  `Payment_Method` VARCHAR(50) NOT NULL DEFAULT 'Credit Card',
  PRIMARY KEY (`Purchase_ID`),
  FOREIGN KEY (`User_ID`) REFERENCES `funko`.`User`(`User_ID`),
  FOREIGN KEY (`Cart_ID`) REFERENCES `funko`.`Cart`(`Cart_ID`)
);
