CREATE DATABASE ShopDB;

CREATE TABLE `ShopDB`.`Products` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NULL,
  `Price` INT NULL,
  `WarehouseAmount` INT NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `ShopDB`.`Customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL,
  `LastName` VARCHAR(50) NULL,
  `Email` VARCHAR(50) NULL,
  `Address` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `ShopDB`.`Orders` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NULL,
  `Date` DATE NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_order_customer_id_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_order_customer_id`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `ShopDB`.`Customers` (`ID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION);

CREATE TABLE `ShopDB`.`OrderItems` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT NULL,
  `ProductID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_orderItems_order_id_idx` (`OrderID` ASC) VISIBLE,
  INDEX `fk_orderItems_product_id_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_orderItems_order_id`
    FOREIGN KEY (`OrderID`)
    REFERENCES `ShopDB`.`Orders` (`ID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderItems_product_id`
    FOREIGN KEY (`ProductID`)
    REFERENCES `ShopDB`.`Products` (`ID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION);
