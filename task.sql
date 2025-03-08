create database ShopDB;
USE ShopDB;
CREATE TABLE Products (     ProductID INT AUTO_INCREMENT,     Name VARCHAR(50),     Description VARCHAR(100),     Price INT,     WarehouseAmount INT,     PRIMARY KEY (ProductID) );
CREATE TABLE Customers (     CustomerID INT AUTO_INCREMENT,     FirstName VARCHAR(50),     LastName VARCHAR(50),     Email VARCHAR(50),     Address VARCHAR(100),     PRIMARY KEY (CustomerID) );
CREATE TABLE Orders (     OrderID INT AUTO_INCREMENT,     CustomerID INT,     Date DATE,     PRIMARY KEY (OrderID) );
CREATE TABLE OrderItems (     OrderItemID INT AUTO_INCREMENT,     OrderID INT,     ProductID INT,     PRIMARY KEY (OrderItemID) );
ALTER TABLE Orders  ADD CONSTRAINT Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL;
ALTER TABLE OrderItems  ADD CONSTRAINT Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE SET NULL;
ALTER TABLE OrderItems  ADD CONSTRAINT Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE SET NULL;
