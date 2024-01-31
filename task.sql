START TRANSACTION;

CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(50),
    Price FLOAT,
    WarehouseAmount INT,
    PRIMARY KEY (ProductID)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL,
    Date DATE,
    PRIMARY KEY (OrderID)
);

CREATE TABLE OrderItems (
	ID INT AUTO_INCREMENT,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE SET NULL,
    ProductID INT,
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE SET NULL,
	PRIMARY KEY (ID)
);

ROLLBACK;
