CREATE TABLE `funko`.`Order` (
  `Order_ID` BIGINT NOT NULL AUTO_INCREMENT,
  `User_ID` BIGINT NOT NULL,
  `Cart_ID` BIGINT NOT NULL,
  `Order_Date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Total_Amount` DECIMAL(10,2) NOT NULL,
  `Payment_Method` VARCHAR(50) NOT NULL DEFAULT 'Credit Card',
  `Pop_ID` BIGINT NULL,
  PRIMARY KEY (`Order_ID`),
  FOREIGN KEY (`User_ID`) REFERENCES `funko`.`User`(`User_ID`),
  FOREIGN KEY (`Cart_ID`) REFERENCES `funko`.`Cart`(`Cart_ID`),
  FOREIGN KEY (`Pop_ID`) REFERENCES `funko`.`FunkoPop`(`Pop_ID`)
);
